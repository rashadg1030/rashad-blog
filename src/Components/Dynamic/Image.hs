module Components.Dynamic.Image (Image, imageToHtml) where

import Lucid
import Lucid.Base
import Lucid.Html5
import Data.Text

data Image = Image { source :: Text
                   , alternate :: Text
                   , height :: Maybe Int
                   , width :: Maybe Int
                   }

imageToHtml :: Image -> Html ()
imageToHtml image = undefined