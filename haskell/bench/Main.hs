module Main (main) where

import Control.DeepSeq (force)
import Control.Exception (evaluate)
import Control.Monad.ST.Strict (runST)

import Data.Aeson (FromJSON, decodeStrict)
import Data.ByteString qualified as BS
import Data.Maybe (fromJust)

import RelatedPostGen (computeRelatedPosts)

import Test.Tasty.Bench

input5k, input20k, input60k :: FilePath
input5k = "../posts_5k.json"
input20k = "../posts_20k.json"
input60k = "../posts_60k.json"

getPosts :: (FromJSON a) => FilePath -> IO a
getPosts path = fromJust . decodeStrict <$> BS.readFile path

main :: IO ()
main = do
  defaultMain
    [ env (evaluate . force =<< getPosts input5k) $ \posts5k ->
        env (evaluate . force =<< getPosts input20k) $ \posts20k ->
          env (evaluate . force =<< getPosts input60k) $ \posts60k ->
            bgroup
              "relatedPosts"
              [ bench "5k (nf)" $ nf (\p -> runST $ computeRelatedPosts p) posts5k
              , bench "20k (nf)" $ nf (\p -> runST $ computeRelatedPosts p) posts20k
              , bench "60k (nf)" $ nf (\p -> runST $ computeRelatedPosts p) posts60k
              ]
    ]
