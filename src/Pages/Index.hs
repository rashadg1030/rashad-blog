{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards   #-}

module Pages.Index (render, dropExt, getPosts) where

import           Components.Dynamic.Base
import           Components.Dynamic.Post
import           Control.Monad.IO.Class
import           Data.Monoid
import qualified Data.Text               as T
import qualified Data.Text.Internal.Lazy as Lazy
import           Data.Text.IO            hiding (putStrLn)
import           Lucid
import           Lucid.Base
import           Lucid.Html5
import           Prelude                 hiding (lines, readFile)
import           System.Directory
import Data.List

render :: IO Lazy.Text
render = renderTextT $ inBaseIO indexPage

indexPage :: HtmlT IO ()
indexPage = do h1_ "Home Page"
               p_ "Welcome to my blog! My name is Rashad."
               p_ "I'm a programmer that loves programming in general, but I'm primarily interested in functional and/or statically typed programming languages like Haskell and Scheme."
               p_ "I'm discovering the intersection between logic, mathematics, and computation."
               p_ "On my blog you will find a wide range of topics, from software design to generative art."
               p_ "Enjoy!" 
               downloadButton "Download My Resume" "./Rashad_Gover.pdf"
               archive

postToListItem :: Post -> HtmlT IO ()
postToListItem Post{..} = li_ [class_ "post-item"] (do a_ [href_ href, class_ "post-item-link"] (toHtml title)
                                                       p_ $ toHtml date
                                                       -- tags 
                                                   ) 

downloadButton :: HtmlT IO () -> T.Text -> HtmlT IO ()
downloadButton name href = (a_ [class_ "button", href_ href, download_ ""] name)

archive :: HtmlT IO ()
archive = div_ [class_ "archive"] (do h1_ "Archive"
                                      ul_ [class_ "archive-list"] (do posts <- liftIO getPosts
                                                                      mapM_ postToListItem posts))

getPosts :: IO [Post]
getPosts = liftIO $ do
  filePaths <- listDirectory "./posts/"
  contents <- mapM readFile ((++) "./posts/" <$> filePaths)
  let titles = contentToTitle <$> contents
  let dates  = contentToDate <$> contents
  let hrefs  = (htmlExt . dropExt)  <$> filePaths
  let posts  = zipToPosts titles dates hrefs
  return $ reverse . sort $ posts

zipToPosts :: [T.Text] -> [T.Text] -> [FilePath] -> [Post]
zipToPosts ts ds hs = tupleToPost <$> zip3 ts ds hs
  where
    tupleToPost :: (T.Text, T.Text, String) -> Post
    tupleToPost (t, d, h) = Post { title = t, date = d, href = T.pack $ "./" <> h, tags = [] }

dropExt :: FilePath -> String
dropExt = takeWhile ('.' /=)

htmlExt :: String -> FilePath
htmlExt = (\x -> x ++ ".html")

(#!!) :: Int -> [a] -> a
(#!!) = flip (!!)

contentToTitle :: T.Text -> T.Text
contentToTitle = parseTitle . (1 #!!) . T.lines
  where
    parseTitle :: T.Text -> T.Text
    parseTitle = T.dropWhile (' '==) . T.dropWhile (\x -> or $ (x==) <$> ['t', 'i', 'l', 'e', ':'])

contentToDate :: T.Text -> T.Text
contentToDate = parseDate . (2 #!!) . T.lines
  where
    parseDate :: T.Text -> T.Text
    parseDate = T.dropWhile (' '==) . T.dropWhile (\x -> or $ (x==) <$> ['d', 'a', 't', 'e', ':'])

-- mapM_ :: (Foldable t, Monad m) => (a -> m b) -> t a -> m ()
-- mapM :: (Traversable t, Monad m) => (a -> m b) -> t a -> m (t b)
-- renderTextT :: Monad m => HtmlT m a -> m T.Text


