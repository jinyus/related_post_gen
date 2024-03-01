{-# LANGUAGE BlockArguments #-}
{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}

module Main (main) where

import Control.DeepSeq (NFData, force)
import Control.Exception (evaluate)
import Control.Monad (when)
import Control.Monad.ST.Strict (ST, runST)

import Data.Aeson (FromJSON, ToJSON, decodeStrict, encodeFile)
import Data.Bits (Bits (shiftL, shiftR, (.&.), (.|.)))
import Data.ByteString qualified as BS
import Data.Kind (Type)
import Data.STRef.Unboxed (STRefU, newSTRefU, readSTRefU, writeSTRefU)
import Data.Text (Text)
import Data.Time.Clock.POSIX (getPOSIXTime)
import Data.Vector qualified as V
import Data.Vector.Hashtables qualified as H
import Data.Vector.Mutable qualified as VM
import Data.Vector.Unboxed.Mutable qualified as VUM
import Data.Word (Word32, Word64, Word8)

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
  relatedPosts <- evaluate . force $! runST (computeRelatedPosts posts)
  end <- getPOSIXTime

  putStrLn $ "Processing time (w/o IO): " ++ show (round . (* 1000) $ end - start :: Int) ++ "ms"
  encodeFile outputFile relatedPosts

computeRelatedPosts :: V.Vector Post -> ST s (V.Vector RelatedPosts)
computeRelatedPosts posts = do
  !tagMap :: HashTable s Text (VUM.STVector s Word32) <- H.initialize 0
  let !postsIdx = V.indexed posts

  V.forM_ postsIdx \(i, MkPost{tags}) ->
    V.forM_ tags $ H.alterM tagMap $ \case
      Just v -> do
        v' <- VUM.grow v 1
        VUM.write v' (VUM.length v) (fromIntegral i)
        pure (Just v')
      Nothing -> Just <$> VUM.replicate 1 (fromIntegral i)

  !sharedTags :: VUM.STVector s Word8 <- VUM.replicate (V.length posts) 0
  !topN :: VUM.STVector s Word64 <- VUM.replicate limitTopN 0

  V.forM postsIdx \(ix, MkPost{_id, tags}) -> do
    V.forM_ tags \tag -> do
      idxs <- H.lookup' tagMap tag
      VUM.forM_ idxs $ VUM.modify sharedTags (+ 1) . fromIntegral

    VUM.write sharedTags ix 0 -- exclude self from related posts
    !minTagsST :: STRefU s Word8 <- newSTRefU 0
    VUM.iforM_ sharedTags \jx count -> do
      minTags <- readSTRefU minTagsST
      when (count > minTags) do
        upperBound <- getUpperBound (limitTopN - 2) count topN
        VUM.write topN (upperBound + 1) (word64 (fromIntegral jx, count))
        writeSTRefU minTagsST . unword64Snd =<< VUM.read topN (limitTopN - 1)

    !related <- VUM.foldl (\acc a -> V.snoc acc (posts V.! fromIntegral (unword64Fst a))) V.empty topN
    VUM.set topN 0 -- reset
    VUM.set sharedTags 0 -- reset
    pure MkRelatedPosts{_id, tags, related}
 where
  getUpperBound :: Int -> Word8 -> VUM.STVector s Word64 -> ST s Int
  getUpperBound upperBound count topN = do
    if upperBound >= 0
      then do
        w <- VUM.read topN upperBound
        if count > unword64Snd w
          then do
            VUM.write topN (upperBound + 1) w
            getUpperBound (upperBound - 1) count topN
          else pure upperBound
      else pure upperBound

word64 :: (Word32, Word8) -> Word64
word64 (w32, w8) = ((fromIntegral w32 :: Word64) `shiftL` 8) .|. (fromIntegral w8 :: Word64)
{-# INLINE word64 #-}

unword64Fst :: Word64 -> Word32
unword64Fst w = fromIntegral (w `shiftR` 8)
{-# INLINE unword64Fst #-}

unword64Snd :: Word64 -> Word8
unword64Snd w = fromIntegral (w .&. 255)
{-# INLINE unword64Snd #-}
