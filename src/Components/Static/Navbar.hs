{-# LANGUAGE OverloadedStrings #-}

module Components.Static.Navbar (navbar, navbarIO) where

import Lucid
import Lucid.Base
import Lucid.Html5
import Data.Text

-- Add Canon Later
navbar :: Html ()
navbar = div_ [class_ "navbar"] (do navbarItem "data Rashad" "./index.html"
                                    equals
                                    navbarItem "Software" "./software.html"
                                    pipe
                                    navbarItem "Research" "./research.html"
                                    pipe
                                    navbarItem "Library" "./library.html"
                                    pipe
                                    navbarItem "Art" "./art.html"
                                    pipe
                                    navbarItem "Contact {..}" "./contact.html")

navbarItem :: Html () -> Text -> Html ()
navbarItem name href = a_ [class_ "navbar-item", href_ href] name

equals :: Html ()
equals = span_ " = "

pipe :: Html ()
pipe = span_ " | "

navbarIO :: HtmlT IO ()
navbarIO = div_ [class_ "navbar"] (do navbarItemIO "data Rashad" "./index.html"
                                      equalsIO
                                      navbarItemIO "Software" "./software.html"
                                      pipeIO
                                      navbarItemIO "Research" "./research.html"
                                      pipeIO
                                      navbarItemIO "Library" "./library.html"
                                      pipeIO
                                      navbarItemIO "Art" "./art.html"
                                      pipeIO
                                      navbarItemIO "Contact {..}" "./contact.html")

navbarItemIO :: HtmlT IO () -> Text -> HtmlT IO ()
navbarItemIO name href = a_ [class_ "navbar-item", href_ href] name

equalsIO :: HtmlT IO ()
equalsIO = span_ " = "

pipeIO :: HtmlT IO ()
pipeIO = span_ " | "