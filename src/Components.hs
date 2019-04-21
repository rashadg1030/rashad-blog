{-# LANGUAGE OverloadedStrings #-}

module Components where

import Data.Text
import Lucid
import Lucid.Html5
import Lucid.Base

baseTemplate :: Html () -> Html ()
baseTemplate body = doctypehtml_ ( do headData
                                      body_ ( do navBar navBarItems
                                                 body ) )

headData :: Html ()
headData = head_ ( do meta_ [ charset_ "utf-8" ]
                      meta_ [ name_ "viewport"
                            , content_ "width=device-width, initial-scale=1"
                            ]
                      link_ [ href_ "https://unpkg.com/purecss@1.0.0/build/pure-min.css"
                            , rel_ "stylesheet"
                            , integrity_ "sha384-nn4HPE8lTHyVtfCBi5yW9d20FjT8BJwUXyWZT9InLYax14RDjBj46LmSztkmNP9w"
                            , crossorigin_ "anonymous"
                            ]
                      link_ [ href_ "./style.css"
                            , rel_ "stylesheet"
                            ]
                      title_ "rλshλd1030" )

mkNavBarItem :: Html () -> Text -> Html ()
mkNavBarItem t link = li_ [class_ "pure-menu-item"] (a_ [href_ link, class_ "pure-menu-link"] t)

navBarItems :: [Html ()]
navBarItems = [ mkNavBarItem "Blog" "#"
              , mkNavBarItem "Laboratory" "#"
              , mkNavBarItem "Art" "#"
              , mkNavBarItem "Contact" "#" 
              ]

navBar :: [Html ()] -> Html ()
navBar items = div_ [class_ "header"] (div_ [class_ "home-menu pure-menu pure-menu-horizontal pure-menu-fixed"] (do a_ [class_ "pure-menu-heading", href_ "./index.html"] "rλshλd1030"
                                                                                                                    ul_ [class_ "pure-menu-list"] $ mconcat items))


splashContainer :: Html () -> Html () -> Html () -> Text -> Html ()
splashContainer title subTitle buttonName buttonLink = div_ [class_ "splash-container"] (div_ [class_ "splash"] (do h1_ [class_ "splash-head"] title 
                                                                                                                    p_ [class_ "splash-subhead"] subTitle
                                                                                                                    p_ (a_ [href_ buttonLink, class_ "pure-button pure-button-primary", download_ "Rashad_Gover"] buttonName)))                                                                                                                      
{--
<div class="splash-container">
    <div class="splash">
        <h1 class="splash-head">Big Bold Text</h1>
        <p class="splash-subhead">
            Lorem ipsum dolor sit amet, consectetur adipisicing elit.
        </p>
        <p>
            <a href="http://purecss.io" class="pure-button pure-button-primary">Get Started</a>
        </p>
    </div>
</div>
--}

{--
<div class="header">
    <div class="home-menu pure-menu pure-menu-horizontal pure-menu-fixed">
        <a class="pure-menu-heading" href="">Your Site</a>

        <ul class="pure-menu-list">
            <li class="pure-menu-item pure-menu-selected"><a href="#" class="pure-menu-link">Home</a></li>
            <li class="pure-menu-item"><a href="#" class="pure-menu-link">Tour</a></li>
            <li class="pure-menu-item"><a href="#" class="pure-menu-link">Sign Up</a></li>
        </ul>
    </div>
</div>
--}

