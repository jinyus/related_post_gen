#!/usr/bin/env stack
-- stack script --resolver lts-21.11 --optimize --package bytestring,aeson,text,vector,containers
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DuplicateRecordFields #-}

import Data.Text
import Data.List as L
import Data.Maybe
import Data.ByteString.Lazy as BSL
import Data.Aeson as A
import Data.Vector as V
import GHC.Generics
import Data.Map as M

data Post = Post
  { _id :: Text
  , title :: Text
  , tags :: Vector Text
  } deriving (Generic, Show)

instance FromJSON Post
instance ToJSON Post

data Post' = Post'
  { _id' :: Text
  , tags' :: Vector Text
  , related :: [Post]
  } deriving (Generic, Show)

instance FromJSON Post'
instance ToJSON Post' where
  toJSON (Post' a b c) = object ["_id" .= a, "tags" .= b, "related" .= c]
  -- because DuplicateRecordFields doesn't seem to work

main :: IO ()
main = do
    -- Just posts <- A.decode <$> BSL.getContents :: IO (Maybe (Vector Post))
    Just posts <- A.decode <$> BSL.readFile "../posts.json" :: IO (Maybe (Vector Post))
    let indexedPosts = Prelude.zip [0..] $ V.toList posts
    let postsByTag = Prelude.foldl populateMap M.empty indexedPosts
    let theMaps = Prelude.map (\(i, p) -> (p, createMap posts postsByTag (i, p))) indexedPosts
    -- print $ makeResultPost' posts $ L.head theMaps
    -- print $ M.map Prelude.length postsByTag
    let result = L.map (makeResultPost posts) theMaps
    -- BSL.putStr $ A.encode result
    BSL.writeFile "../related_posts_haskell.json" $ A.encode result

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
    f m t = Prelude.foldl increase m related
      where
        related = Prelude.filter (/=i) $ fromMaybe [] $ M.lookup t postsByTag
        increase m' j = M.insertWith (+) j 1 m

makeResultPost :: Vector Post -> (Post, Map Int Int) -> Post'
makeResultPost posts (p, m) = Post'
  { _id' = _id p
  , tags' = tags p
  , related = L.map (unsafeIndex posts . fst) $ L.take 5 $ sortOn ((0-) . snd) $ M.toList m
  }
