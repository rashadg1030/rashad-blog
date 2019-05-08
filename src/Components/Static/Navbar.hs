module Components.Static.Navbar (navbar) where

import Lucid
import Lucid.Base
import Lucid.Html5
import Data.Text

navbar :: Html ()
navbar = undefined

navbarItem :: Text -> Text -> Html ()
navbarItem name link = undefined

-- navBarItems :: [Html ()]
-- navBarItems = (mkNavBarItem "data Rashad" "#") : [equalSignItem] ++ (L.intersperse pipe $ [ mkNavBarItem "Software" "#"
--                                                                                           , mkNavBarItem "Research" "#"
--                                                                                           , mkNavBarItem "Library" "#"
--                                                                                           , mkNavBarItem "Art" "#" 
--                                                                                           , mkNavBarItem "Contact {..}" "./contact.html" ])