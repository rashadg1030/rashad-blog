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
                             contentWrapper $ (do grid4col testDiv testDiv testDiv testDiv
                                                  gridAsymm testDiv testDiv))

testDiv :: Html ()
testDiv = div_ (do h1_ "Title"; p_ "Lorem ipsum do lasd did ads. do re mi fas goj dhasd yt aohdfj deeyu iope.")

splashContainer :: Html () -> Html () -> Html () -> Text -> Html ()
splashContainer title subTitle buttonName buttonLink = div_ [class_ "splash-container"] (div_ [class_ "splash"] (do h1_ [class_ "splash-head"] title 
                                                                                                                    p_ [class_ "splash-subhead"] subTitle
                                                                                                                    p_ (a_ [href_ buttonLink, class_ "pure-button pure-button-primary", download_ "Rashad_Gover"] buttonName))) 
                                                                                                                
contentWrapper :: Html () -> Html ()
contentWrapper inner = div_ [class_ "content-wrapper"] inner
                                                                                                                    
grid4col :: Html () -> Html () -> Html () -> Html () -> Html ()
grid4col g1 g2 g3 g4 = div_ [class_ "pure-g"] (do div_ [class_ "pure-u-1 pure-u-md-1-2 pure-u-lg-1-4"] g1
                                                  div_ [class_ "pure-u-1 pure-u-md-1-2 pure-u-lg-1-4"] g2
                                                  div_ [class_ "pure-u-1 pure-u-md-1-2 pure-u-lg-1-4"] g3
                                                  div_ [class_ "pure-u-1 pure-u-md-1-2 pure-u-lg-1-4"] g4) 
            
gridAsymm :: Html () -> Html () -> Html ()
gridAsymm smallg bigg = div_ [class_ "pure-g"] (do div_ [class_ "pure-u-1 pure-u-md-1-2 pure-u-lg-2-5"] smallg
                                                   div_ [class_ "pure-u-1 pure-u-md-1-2 pure-u-lg-3-5"] bigg)
                                            
              

