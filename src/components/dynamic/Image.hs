module Components.Dynamic.Image (Image, imageToHtml) where

data Image = Image { source :: Text
                   , alternate :: Text
                   , height :: Maybe Int
                   , width :: Maybe Int
                   }

imageToHtml :: Image -> Html ()
imageToHtml image = undefined