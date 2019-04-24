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
                             contentWrapper $ (do content "Goals" $ grid3col testDiv testDiv testDiv
                                                  gridAsymm testDiv testDiv
                                                  footer $ p_ "This the footer"))

testDiv :: Html ()
testDiv = div_ [class_ "l-box"] (do h1_ "Title"; p_ "Lorem ipsum do lasd did ads. do re mi fas goj dhasd yt aohdfj deeyu iope.")

splashContainer :: Html () -> Html () -> Html () -> Text -> Html ()
splashContainer title subTitle buttonName buttonLink = div_ [class_ "splash-container"] (div_ [class_ "splash"] (do h1_ [class_ "splash-head"] title 
                                                                                                                    p_ [class_ "splash-subhead"] subTitle
                                                                                                                    p_ (a_ [href_ buttonLink, class_ "pure-button pure-button-primary", download_ "Rashad_Gover"] buttonName))) 
                                                                                                                

                                            
              

