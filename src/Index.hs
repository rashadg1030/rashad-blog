{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExtendedDefaultRules #-}

module Index where

import Components
import Data.Text 
import Data.Monoid
import Lucid
import Lucid.Html5
import Lucid.Base

-- Add Canon Later
indexPage :: Html ()
indexPage = baseTemplate (do splashContainer "Rashad Gover" "Abstraction Engineer for Hire" "Download Resume" "./Rashad_Gover.pdf" -- Need content container after this!!
                             contentWrapper $ (do content "What I Do" $ grid3col (div1 "Learn" randomText) (div1 "Build" randomText) (div1 "Teach" randomText)
                                                  ribbon (img_ [class_ "pure-img-responsive", src_ "../img/education-graphing-paper-homework-167682.jpg", width_ "300"]) (do h2_ [class_ "content-head content-head-ribbon"] "Laboris nisi ut aliquip."; p_ "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                                                  with (content "Good Vibrations" $ gridAsymm testDiv testDiv) [class_ " content-bottom"]
                                                  footer $ p_ "This the footer"))

div1 :: Html () -> Html () -> Html ()
div1 title para = (do h1_ title 
                      p_  para)

randomText :: Html ()
randomText = "Lorem ipsum do lasd did ads. do re mi fas goj dhasd yt aohdfj deeyu iope. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

testDiv :: Html ()
testDiv = (do h1_ "Title"; p_ randomText)

splashContainer :: Html () -> Html () -> Html () -> Text -> Html ()
splashContainer title subTitle buttonName buttonLink = div_ [class_ "splash-container"] (div_ [class_ "splash"] (do h1_ [class_ "splash-head"] title 
                                                                                                                    p_ [class_ "splash-subhead"] subTitle
                                                                                                                    p_ (a_ [href_ buttonLink, class_ "pure-button pure-button-primary", download_ "Rashad_Gover"] buttonName))) 
                                                                                                                

                                            
              

