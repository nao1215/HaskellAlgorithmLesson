module Main (main) where

import           Lib        (fibonacci, maxInList, sumList)
import           Test.Hspec

main :: IO ()
main = hspec $ do
  describe "maxInList" $ do
    it "returns Nothing for an empty list" $ do
      maxInList ([] :: [Int]) `shouldBe` Nothing

    it "returns the maximum element for a non-empty list" $ do
      maxInList ([1, 2, 3] :: [Int]) `shouldBe` Just 3

  describe "sumList" $ do
    it "returns 0 for an empty list" $ do
      sumList ([] :: [Int]) `shouldBe` 0

    it "returns the sum of all elements for a non-empty list" $ do
      sumList ([1, 2, 3] :: [Int]) `shouldBe` 6

  describe "fibonacci" $ do
    it "returns 0 for negative input" $ do
      fibonacci (-1) `shouldBe` 0

    it "returns 0 for n = 0" $ do
      fibonacci 0 `shouldBe` 0

    it "returns 1 for n = 1" $ do
      fibonacci 1 `shouldBe` 1

    it "returns 1 for n = 2" $ do
      fibonacci 2 `shouldBe` 1

    it "returns 6765 for n = 20" $ do
      fibonacci 20 `shouldBe` 6765
