{-# LANGUAGE OverloadedStrings #-}
import Web.Scotty

import Data.Monoid (mconcat)
import Data.Text.Lazy (Text)

main :: IO ()
main = scotty 3000 $ do
    get "/:word" $ do
        beam <- param "word"
        html $ mconcat ["<h1>ça fonctionne !!!!!, ", beam, " me up!</h1>"]
