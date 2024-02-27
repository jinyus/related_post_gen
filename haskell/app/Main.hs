{-# LANGUAGE BlockArguments #-}
{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}

module Main (main) where

import Control.DeepSeq (NFData, force)
import Control.Exception (evaluate)
import Control.Monad (forM, forM_, when)
import Control.Monad.ST (ST, runST)

import Data.Aeson (FromJSON, ToJSON, decodeStrict, encodeFile)
import Data.ByteString qualified as BS
import Data.Functor ((<&>))
import Data.Kind (Type)
import Data.Text (Text)
import Data.Time.Clock.POSIX (getPOSIXTime)
import Data.Vector qualified as V
import Data.Vector.Hashtables qualified as H
import Data.Vector.Mutable qualified as VM
import Data.Vector.Unboxed qualified as VU
import Data.Vector.Unboxed.Mutable qualified as VUM

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
  tagMap <- H.initialize 0

  let postsLen = V.length posts
  let postsIdx = V.indexed posts

  populateTagMap tagMap postsIdx

  forM postsIdx \(idx, MkPost{_id, tags}) -> do
    (sharedTagsM :: VUM.STVector s Int) <- VUM.replicate postsLen 0
    countTags sharedTagsM tags tagMap
    VUM.write sharedTagsM idx 0 -- exclude self from related posts
    topN <- calculateTopN sharedTagsM
    let related = [1, 3 .. 10] <&> \n -> posts V.! (topN VU.! n)
    pure $ MkRelatedPosts{_id, tags, related = V.fromList related}

populateTagMap :: HashTable s Text (VU.Vector Int) -> V.Vector (Int, Post) -> ST s ()
populateTagMap tagMap posts = do
  forM_ posts \(i, MkPost{tags}) ->
    forM_ tags $ H.alterM tagMap (pure . Just . \case Just v -> VU.snoc v i; Nothing -> VU.singleton i)

countTags :: VUM.STVector s Int -> V.Vector Text -> HashTable s Text (VU.Vector Int) -> ST s ()
countTags sharedTagsM tags tagMap = do
  forM_ tags \tag -> do
    idxs <- H.lookup' tagMap tag
    VU.forM_ idxs $ VUM.modify sharedTagsM (+ 1)

calculateTopN :: VUM.STVector s Int -> ST s (VU.Vector Int)
calculateTopN sharedTagsM = do
  let n = VUM.length sharedTagsM
  topN <- VUM.replicate (limitTopN * 2) 0
  loop sharedTagsM topN (0, n, 0)
  VU.freeze topN
 where
  loop :: VUM.STVector s Int -> VUM.STVector s Int -> (Int, Int, Int) -> ST s ()
  loop sharedTags topN (i, len, minTags) = do
    when (i < len) do
      count <- VUM.read sharedTags i
      if count > minTags
        then do
          up <- calcUpperBound topN (6, count)
          when (up < 6) do
            vecmove topN (up + 2) topN (up + 4) (6 - up)
          VUM.write topN (up + 2) count
          VUM.write topN (up + 3) i
          minTags' <- VUM.read topN 8
          loop sharedTags topN (i + 1, len, minTags')
        else loop sharedTags topN (i + 1, len, minTags)

  calcUpperBound :: VUM.STVector s Int -> (Int, Int) -> ST s Int
  calcUpperBound topN (upperBound, count) = do
    if upperBound >= 0
      then do
        bound <- VUM.read topN upperBound
        if count > bound
          then calcUpperBound topN (upperBound - 2, count)
          else pure upperBound
      else pure upperBound

vecmove :: VUM.STVector s Int -> Int -> VUM.STVector s Int -> Int -> Int -> ST s ()
vecmove src srcIdx dest destIdx len = do
  temp <- VUM.clone (VUM.slice srcIdx len src)
  VUM.copy (VUM.slice destIdx len dest) temp
{-# INLINE vecmove #-}
