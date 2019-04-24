{-# LANGUAGE OverloadedStrings #-}

module Components where

import Data.Text
import qualified Data.List as L
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
                      link_ [ href_ "https://unpkg.com/purecss@1.0.0/build/grids-responsive-min.css"
                            , rel_ "stylesheet"
                            ]
                      link_ [ href_ "./style.css"
                            , rel_ "stylesheet"
                            ]
                      title_ "RλSHλD1030" )

navBar :: [Html ()] -> Html ()
navBar items = div_ [class_ "header"] (div_ [class_ "home-menu pure-menu pure-menu-horizontal pure-menu-fixed"] (do a_ [class_ "pure-menu-heading lowercase", href_ "./index.html"] "RλSHλD1030"
                                                                                                                    ul_ [class_ "pure-menu-list"] $ mconcat items))

equalSignItem :: Html ()
equalSignItem = li_ [class_ "pure-menu-item"] "="

pipe :: Html ()
pipe = span_ "|"

mkNavBarItem :: Html () -> Text -> Html ()
mkNavBarItem t link = li_ [class_ "pure-menu-item"] (a_ [href_ link, class_ "pure-menu-link"] t)

navBarItems :: [Html ()]
navBarItems = (mkNavBarItem "data Rashad" "#") : [equalSignItem] ++ (L.intersperse pipe $ [ mkNavBarItem "Software" "#"
                                                                                          , mkNavBarItem "Research" "#"
                                                                                          , mkNavBarItem "Library" "#"
                                                                                          , mkNavBarItem "Art" "#" 
                                                                                          , mkNavBarItem "Contact {..}" "./contact.html" ])

contentWrapper :: Html () -> Html ()
contentWrapper inner = div_ [class_ "content-wrapper"] inner

content :: Html () -> Html () -> Html ()
content title inner = div_ [class_ "content"] (do h2_ [class_ "content-head is-center"] title
                                                  inner)
                                                                                                                    
grid4col :: Html () -> Html () -> Html () -> Html () -> Html ()
grid4col g1 g2 g3 g4 = div_ [class_ "pure-g"] (do div_ [class_ "pure-u-1 pure-u-md-1-2 pure-u-lg-1-4"] g1
                                                  div_ [class_ "pure-u-1 pure-u-md-1-2 pure-u-lg-1-4"] g2
                                                  div_ [class_ "pure-u-1 pure-u-md-1-2 pure-u-lg-1-4"] g3
                                                  div_ [class_ "pure-u-1 pure-u-md-1-2 pure-u-lg-1-4"] g4) 

grid3col :: Html () -> Html () -> Html () -> Html ()
grid3col g1 g2 g3 = div_ [class_ "pure-g"] (do div_ [class_ "pure-u-1 pure-u-lg-1-3"] g1
                                               div_ [class_ "pure-u-1 pure-u-lg-1-3"] g2
                                               div_ [class_ "pure-u-1 pure-u-lg-1-3"] g3) 
            
gridAsymm :: Html () -> Html () -> Html ()
gridAsymm smallg bigg = div_ [class_ "pure-g"] (do div_ [class_ "pure-u-1 pure-u-md-1-2 pure-u-lg-2-5"] smallg
                                                   div_ [class_ "pure-u-1 pure-u-md-1-2 pure-u-lg-3-5"] bigg)

footer :: Html () -> Html ()
footer inner = div_ [class_ "footer l-box is-center"] inner