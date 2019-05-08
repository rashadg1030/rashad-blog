module Components.Card (Card, cardToHtml) where

import Components.Image

data Card = Card { title :: Text,
                   image :: Image,
                   content :: Text
                 }

cardToHtml :: Card -> Html ()
cardToHtml card = undefined 