{-# LANGUAGE BlockArguments #-}
{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}

module Main (main) where

import Control.DeepSeq (NFData, force)
import Control.Exception (evaluate)
import Control.Monad (forM_, when)
import Control.Monad.ST.Strict (ST, runST)

import Data.Aeson (FromJSON, ToJSON, decodeStrict, encodeFile)
import Data.ByteString qualified as BS
import Data.Kind (Type)
import Data.STRef.Strict (STRef, newSTRef, readSTRef, writeSTRef)
import Data.Text (Text)
import Data.Time.Clock.POSIX (getPOSIXTime)
import Data.Vector qualified as V
import Data.Vector.Hashtables qualified as H
import Data.Vector.Mutable qualified as VM
import Data.Vector.Unboxed.Mutable qualified as VUM
import Data.Word (Word32, Word8)

import GHC.Generics (Generic)

type HashTable :: Type -> Type -> Type -> Type
type HashTable s k v = H.Dictionary (H.PrimState (ST s)) VM.MVector k VM.MVector v

type Post :: Type
data Post = MkPost
  { _id :: !Text
  , tags :: !(V.Vector Text)
  , title :: !Text
  }
  deriving stock (Generic, Show)
  deriving anyclass (FromJSON, ToJSON, NFData)

type RelatedPosts :: Type
data RelatedPosts = MkRelatedPosts
  { _id :: !Text
  , tags :: !(V.Vector Text)
  , related :: !(V.Vector Post)
  }
  deriving stock (Generic, Show)
  deriving anyclass (FromJSON, ToJSON, NFData)

limitTopN :: Int
limitTopN = 5

inputFile, outputFile :: FilePath
inputFile = "../posts.json"
outputFile = "../related_posts_haskell.json"

main :: IO ()
main = do
  Just (posts :: V.Vector Post) <- (evaluate . force) . decodeStrict =<< BS.readFile inputFile

  start <- getPOSIXTime
  relatedPosts <- evaluate . force $ runST (computeRelatedPosts posts)
  end <- getPOSIXTime

  putStrLn $ "Processing time (w/o IO): " ++ show (round . (* 1000) $ end - start :: Int) ++ "ms"
  encodeFile outputFile relatedPosts

computeRelatedPosts :: V.Vector Post -> ST s (V.Vector RelatedPosts)
computeRelatedPosts posts = do
  tagMap :: HashTable s Text (VUM.STVector s Word32) <- H.initialize 128

  let postsIdx = V.indexed posts

  V.forM_ postsIdx \(i, MkPost{tags}) ->
    V.forM_ tags $
      H.alterM
        tagMap
        ( \case
            Just v -> do
              let len = VUM.length v
              v' <- VUM.grow v 1
              VUM.write v' len (fromIntegral i)
              pure $ Just v'
            Nothing -> Just <$> VUM.replicate 1 (fromIntegral i)
        )

  sharedTags :: VUM.STVector s Word8 <- VUM.replicate (V.length posts) 0
  topN :: VUM.STVector s Word32 <- VUM.replicate (limitTopN * 2) 0

  V.forM postsIdx \(ix, MkPost{_id, tags}) -> do
    topPosts :: VM.STVector s Post <- VM.new limitTopN
    minTagsST :: STRef s Word8 <- newSTRef 0

    V.forM_ tags \tag -> do
      idxs <- H.lookup' tagMap tag
      VUM.forM_ idxs $ VUM.modify sharedTags (+ 1) . fromIntegral

    VUM.write sharedTags ix 0 -- exclude self from related posts
    VUM.iforM_ sharedTags \jx count -> do
      minTags <- readSTRef minTagsST
      when (count > minTags) do
        upperBound <- getUpperBound ((limitTopN - 2) * 2) count topN
        let insertPos = upperBound + 2
        VUM.write topN insertPos (fromIntegral count)
        VUM.write topN (insertPos + 1) (fromIntegral jx)
        writeSTRef minTagsST . fromIntegral =<< VUM.read topN (limitTopN * 2 - 2)

    forM_ [0 .. limitTopN - 1] \kx -> do
      i <- VUM.read topN (kx * 2 + 1)
      VM.write topPosts kx (posts V.! fromIntegral i)

    VUM.set sharedTags 0 -- reset
    VUM.set topN 0 -- reset
    related <- V.freeze topPosts
    pure $ MkRelatedPosts{_id, tags, related}
 where
  getUpperBound :: Int -> Word8 -> VUM.STVector s Word32 -> ST s Int
  getUpperBound upperBound count topN = do
    if upperBound >= 0
      then do
        count' <- VUM.read topN upperBound
        if count > fromIntegral count'
          then do
            VUM.write topN (upperBound + 2) count'
            VUM.write topN (upperBound + 3) =<< VUM.read topN (upperBound + 1)
            getUpperBound (upperBound - 2) count topN
          else pure upperBound
      else pure upperBound
