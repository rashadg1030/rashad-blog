{-# LANGUAGE OverloadedStrings #-}

module Pages.Contact (render) where

import Lucid
import Lucid.Base
import Lucid.Html5
import Data.Text.Internal.Lazy
import Components.Dynamic.Base

render :: Text
render = renderText $ inBase contactPage

-- Add Canon Later
contactPage :: Html ()
contactPage = pre_ [class_ "contact-info"] ( do "contactInfo :: Rashad"
                                                "\n"
                                                "contactInfo = Contact { email    = \"rashad.sasaki@gmail.com\"" 
                                                "\n                      , "
                                                "location = \"Los Angeles, CA\""
                                                "\n                      , "
                                                "twitter  = "
                                                (a_ [href_ "https://twitter.com/GoverRashad"] "\"@GoverRashad\"")
                                                "\n                      , "
                                                "linkedIn = " 
                                                (a_ [href_ "https://www.linkedin.com/in/rashad-gover-2557b1132/"] "\"https://www.linkedin.com/in/rashad-gover-2557b1132/\"")
                                                " }"
                                            ) 

-- CONTACT PAGE DESIGN --
{--
<pre><code>contactInfo :: Rashad 
<span>contactInfo</span> = Contact { <span>email</span>     = <span>"rashad.sasaki@gmail.com"</span>
                      , <span>location</span>  = <span>"Los Angeles, CA"</span>
                      , <span>linkedIn</span>  = <span>""</span>
                      , <span>instagram</span> = <span>"COMING SOON"</span> }
</code></pre>
--}

{--
contactInfo :: Rashad 
contactInfo = Contact { email     = "rashad.sasaki@gmail.com"
                      , location  = "Los Angeles, CA"
                      , linkedIn  = ""
                      , instagram = "COMING SOON" } 
--}