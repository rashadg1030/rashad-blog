{-# LANGUAGE OverloadedStrings #-}

module Pages.Index (render) where

import Data.Text.Internal.Lazy
import Data.Monoid
import Lucid
import Lucid.Base
import Lucid.Html5
import Components.Dynamic.Base
import Components.Dynamic.Post

render :: Text
render = renderText $ inBase indexPage

indexPage :: Html ()
indexPage = do h1_ "Home Page"
               p_ "Welcome to my blog! My name is Rashad." 
               p_ "I'm a programmer that loves programming in general, but I'm primarily interested in functional and/or statically typed programming languages like Haskell and Scheme."
               p_ "I'm discovering the intersection between logic, mathematics, and computation."
               p_ "On my blog you will find a wide range of topics, from software design to generative art."
               p_ "Enjoy!"

archive :: Html ()
archive = undefined

getPosts :: IO [Post]
getPosts = undefined 

-- Add Canon Later

