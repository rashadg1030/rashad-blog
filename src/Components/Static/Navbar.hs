{-# LANGUAGE OverloadedStrings #-}

module Components.Static.Navbar (navbar) where

import Lucid
import Lucid.Base
import Lucid.Html5
import Data.Text

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