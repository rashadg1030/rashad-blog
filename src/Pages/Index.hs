{-# LANGUAGE OverloadedStrings #-}

module Pages.Index (render) where

import Data.Text.Internal.Lazy
import Data.Monoid
import Lucid
import Lucid.Base
import Lucid.Html5

render :: Text
render = renderText indexPage

indexPage :: Html ()
indexPage = undefined

-- Add Canon Later
-- indexPage :: Html ()
-- indexPage = baseTemplate (do splashContainer "Rashad Gover" "Abstraction Engineer for Hire" "Download Resume" "./Rashad_Gover.pdf" -- Need content container after this!!
--                              contentWrapper $ (do content "What I Do" $ grid3col (div1 "Learn" randomText) (div1 "Build" randomText) (div1 "Teach" randomText)
--                                                   ribbon (img_ [class_ "pure-img-responsive", src_ "../img/education-graphing-paper-homework-167682.jpg", width_ "300"]) (do h2_ [class_ "content-head content-head-ribbon"] "Good Vibrations"; p_ randomText)
--                                                   with (content "Contact Me" $ gridAsymm contactForm testDiv) [class_ " content-bottom"]
--                                                   footer $ p_ "This the footer"))
              

