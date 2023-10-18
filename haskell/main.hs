#!/usr/bin/env stack
-- stack script --resolver lts-21.11 --optimize --package time,bytestring,aeson,text,vector,containers,deepseq
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveAnyClass #-}

import Data.Text
import Data.List as L
import Data.Maybe
import Data.ByteString as BS
import Data.Aeson as A
import Data.Vector as V
import GHC.Generics
import Data.Map as M
import Data.Time.Clock.POSIX
import Control.Exception
import Control.DeepSeq

data Post = Post
  { _id :: Text
  , title :: Text
  , tags :: Vector Text
  } deriving (Generic, Show, NFData)

instance FromJSON Post
instance ToJSON Post

data Post' = Post'
  { _id' :: Text
  , tags' :: Vector Text
  , related :: [Post]
  } deriving (Generic, Show, NFData)

instance FromJSON Post'
instance ToJSON Post' where
  toJSON (Post' a b c) = object ["_id" .= a, "tags" .= b, "related" .= c]
  -- because DuplicateRecordFields doesn't seem to work

main :: IO ()
main = do
    -- Just posts <- A.decodeStrict <$> BS.getContents :: IO (Maybe (Vector Post)) -- get from stdin instead
    t1 <- getMillis
    Just posts <- A.decodeStrict <$> BS.readFile "../posts.json" :: IO (Maybe (Vector Post))
    let indexedPosts = L.zip [0..] $ V.toList posts
    let postsByTag = L.foldl populateMap M.empty indexedPosts
    let postsWithMaps = L.map (\(i, p) -> (p, createMap posts postsByTag (i, p))) indexedPosts
    let result = L.map (makeResultPost posts) postsWithMaps
    Control.Exception.evaluate $ Control.DeepSeq.force result
    t2 <- getMillis -- putting this before writeFile yields 0ms
    putStrLn $ "Processing time (w/o IO): " L.++ show (t2 - t1) L.++ "ms"
    -- BS.putStr $ BS.toStrict $ A.encode result -- write to stdout instead
    A.encodeFile "../related_posts_haskell.json" result

getMillis :: IO Int
getMillis = (round . (*1000)) <$> getPOSIXTime

populateMap :: Map Text [Int] -> (Int, Post) -> Map Text [Int]
populateMap m (i, p) = V.foldl (\m' t -> M.alter (Just . (i:) . fromMaybe []) t m') m $ tags p

-- Iterate over the posts and for each post:
--     Create a map: PostIndex -> int to track the number of shared tags
--     For each tag, Iterate over the posts that have that tag
--     For each post, increment the shared tag count in the map.
createMap :: Vector Post -> Map Text [Int] -> (Int, Post) -> Map Int Int
createMap posts postsByTag (i, p) = V.foldl f M.empty $ tags p
  where
    f :: Map Int Int -> Text -> Map Int Int
    f m t = L.foldl increase m related
      where
        related = L.filter (/=i) $ fromMaybe [] $ M.lookup t postsByTag
        increase m' j = M.insertWith (+) j 1 m'

makeResultPost :: Vector Post -> (Post, Map Int Int) -> Post'
makeResultPost posts (p, m) = Post'
  { _id' = _id p
  , tags' = tags p
  -- TODO implement take 5 using foldl and omit sort
  , related = L.map (unsafeIndex posts . fst) $ L.take 5 $ sortOn ((0-) . snd) $ M.toList m
  }
