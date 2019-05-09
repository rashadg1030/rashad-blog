{-# LANGUAGE OverloadedStrings #-}

module Components.Static.Navbar (navbar) where

import Lucid
import Lucid.Base
import Lucid.Html5
import Data.Text

navbar :: Html ()
navbar = div_ [class_ "navbar"] (do navbarItem "data Rashad" "./bio.html"
                                    navbarItem "=" ""
                                    navbarItem "Software" "./software.html"
                                    navbarItem "Research" "./research.html"
                                    navbarItem "Library" "./library.html"
                                    navbarItem "Art" "./art.html"
                                    navbarItem "Contact" "./contact.html")

navbarItem :: Html () -> Text -> Html ()
navbarItem name href = a_ [class_ "navbar-item", href_ href] name
-- navBarItems :: [Html ()]
-- navBarItems = (mkNavBarItem "data Rashad" "#") : [equalSignItem] ++ (L.intersperse pipe $ [ mkNavBarItem "Software" "#"
--                                                                                           , mkNavBarItem "Research" "#"
--                                                                                           , mkNavBarItem "Library" "#"
--                                                                                           , mkNavBarItem "Art" "#" 
--                                                                                           , mkNavBarItem "Contact {..}" "./contact.html" ])