module Main where

import Graphics.Gloss

import Game
import Logic
import Rendering

window :: Display
window = InWindow "Functional" (screenWidth, screenHeight) (100, 100)

backgroundColor :: Color
backgroundColor = makeColor 0 0 0 255

main :: IO ()
main = play window backgroundColor 30 initialGame gameAsPicture transformGame (const id)
