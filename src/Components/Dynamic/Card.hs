module Components.Dynamic.Card (Card, cardToHtml) where

import Lucid
import Lucid.Base
import Lucid.Html5
import Data.Text
import Components.Dynamic.Image

data Card = Card { title :: Text,
                   image :: Image,
                   content :: Text
                 }

cardToHtml :: Card -> Html ()
cardToHtml card = undefined 