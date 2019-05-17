{-# LANGUAGE OverloadedStrings #-}

module Components.Static.Header (header, headerIO) where 

import Lucid
import Lucid.Base
import Lucid.Html5
import Data.Text

header :: Html ()
header = head_ ( do meta_ [ charset_ "utf-8"
                          , name_ "viewport"
                          , content_ "width=device-width, initial-scale=1"
                          ]
                    link_ [ href_ "./style.css"
                          , rel_ "stylesheet"
                          ]
                    link_ [ href_ "https://fonts.googleapis.com/css?family=Nunito|Raleway"
                          , rel_ "stylesheet"
                          ]
                    title_ "rashadのblog" )

headerIO :: HtmlT IO ()
headerIO = head_ ( do meta_ [ charset_ "utf-8"
                            , name_ "viewport"
                            , content_ "width=device-width, initial-scale=1"
                            ]
                      link_ [ href_ "./style.css"
                            , rel_ "stylesheet"
                            ]
                      link_ [ href_ "https://fonts.googleapis.com/css?family=Nunito|Raleway"
                            , rel_ "stylesheet"
                            ]
                      title_ "rashadのblog" )