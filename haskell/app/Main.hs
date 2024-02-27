{-# LANGUAGE BlockArguments #-}
{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE NoImplicitPrelude #-}

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
import Data.Vector (Vector, freeze, fromList, indexed, length, singleton, snoc, (!))
import Data.Vector.Hashtables hiding (fromList)
import Data.Vector.Mutable (STVector)
import Data.Vector.Mutable qualified as VM

import GHC.Generics (Generic)

import Prelude hiding (length)

type HashTable :: Type -> Type -> Type -> Type
type HashTable s k v = Dictionary (PrimState (ST s)) VM.MVector k VM.MVector v

type Post :: Type
data Post = MkPost
  { _id :: !Text
  , tags :: !(Vector Text)
  , title :: !Text
  }
  deriving stock (Generic, Show)
  deriving anyclass (FromJSON, ToJSON, NFData)

type RelatedPosts :: Type
data RelatedPosts = MkRelatedPosts
  { _id :: !Text
  , tags :: !(Vector Text)
  , related :: !(Vector Post)
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
  Just (posts :: Vector Post) <- (evaluate . force) . decodeStrict =<< BS.readFile inputFile

  start <- getPOSIXTime
  relatedPosts <- evaluate . force $ runST (computeRelatedPosts posts)
  end <- getPOSIXTime

  putStrLn $ "Processing time (w/o IO): " ++ show (round . (* 1000) $ end - start :: Int) ++ "ms"
  encodeFile outputFile relatedPosts

computeRelatedPosts :: Vector Post -> ST s (Vector RelatedPosts)
computeRelatedPosts posts = do
  tagMap <- initialize 0

  let postsLen = length posts
  let postsIdx = indexed posts

  populateTagMap tagMap postsIdx

  forM postsIdx \(idx, MkPost{_id, tags}) -> do
    (sharedTagsM :: STVector s Int) <- VM.replicate postsLen 0
    countTags sharedTagsM tags tagMap
    VM.write sharedTagsM idx 0 -- exclude self from related posts
    topN <- calculateTopN sharedTagsM
    let related = [1, 3 .. 10] <&> \n -> posts ! (topN ! n)
    pure $ MkRelatedPosts{_id, tags, related = fromList related}

populateTagMap :: HashTable s Text (Vector Int) -> Vector (Int, Post) -> ST s ()
populateTagMap tagMap posts = do
  forM_ posts \(i, MkPost{tags}) ->
    forM_ tags $ alterM tagMap (pure . Just . \case Just v -> snoc v i; Nothing -> singleton i)

countTags :: STVector s Int -> Vector Text -> HashTable s Text (Vector Int) -> ST s ()
countTags sharedTagsM tags tagMap = do
  forM_ tags \tag -> do
    idxs <- lookup' tagMap tag
    forM_ idxs $ VM.modify sharedTagsM (+ 1)

calculateTopN :: STVector s Int -> ST s (Vector Int)
calculateTopN sharedTagsM = do
  let n = VM.length sharedTagsM
  topN <- VM.replicate (limitTopN * 2) 0
  loop sharedTagsM topN (0, n, 0)
  freeze topN
 where
  loop :: STVector s Int -> STVector s Int -> (Int, Int, Int) -> ST s ()
  loop sharedTags topN (i, len, minTags) = do
    when (i < len) do
      count <- VM.read sharedTags i
      if count > minTags
        then do
          up <- calcUpperBound topN (6, count)
          when (up < 6) do
            vecmove topN (up + 2) topN (up + 4) (6 - up)
          VM.write topN (up + 2) count
          VM.write topN (up + 3) i
          minTags' <- VM.read topN 8
          loop sharedTags topN (i + 1, len, minTags')
        else loop sharedTags topN (i + 1, len, minTags)

  calcUpperBound :: STVector s Int -> (Int, Int) -> ST s Int
  calcUpperBound topN (upperBound, count) = do
    if upperBound >= 0
      then do
        bound <- VM.read topN upperBound
        if count > bound
          then calcUpperBound topN (upperBound - 2, count)
          else pure upperBound
      else pure upperBound

vecmove :: STVector s Int -> Int -> STVector s Int -> Int -> Int -> ST s ()
vecmove src srcIdx dest destIdx len = do
  temp <- VM.clone (VM.slice srcIdx len src)
  VM.copy (VM.slice destIdx len dest) temp
{-# INLINE vecmove #-}
