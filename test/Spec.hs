module Main (main) where

import Lib (maxInList, sumList)
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "maxInList" $ do
    it "returns Nothing for an empty list" $ do
      (maxInList ([] :: [Int])) `shouldBe` Nothing

    it "returns the maximum element for a non-empty list" $ do
      (maxInList ([1, 2, 3] :: [Int])) `shouldBe` Just 3

  describe "sumList" $ do
    it "returns 0 for an empty list" $ do
      (sumList ([] :: [Int])) `shouldBe` 0

    it "returns the sum of all elements for a non-empty list" $ do
      (sumList ([1, 2, 3] :: [Int])) `shouldBe` 6
