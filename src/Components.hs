{-# LANGUAGE OverloadedStrings #-}

module Components where

import Data.Text
import Lucid
import Lucid.Html5
import Lucid.Base

header :: Html ()
header = head_ ( do meta_ [charset_ "utf-8"]
                    meta_ [ name_ "viewport"
                          , content_ "width=device-width, initial-scale=1"
                          ]
                    link_ [ href_ "https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.4/css/bulma.min.css"
                          , rel_ "stylesheet"
                          ]
                    script_ [ defer_ ""
                            , src_ "https://use.fontawesome.com/releases/v5.3.1/js/all.js" 
                            ] ("" :: Html ())
                    title_ "rλshλd1030" )

mkListItem :: Html () -> Text -> Html ()
mkListItem t link = li_ (a_ [href_ link] t)

navBarItems :: Html ()
navBarItems = ul_ $ mconcat [ mkListItem "Home" "#index"
                            , mkListItem "Blog" "#blog"
                            , mkListItem "Laboratory" "#laboratory"
                            , mkListItem "Art" "#art"
                            , mkListItem "Contact" "#contact" 
                            ]

navBar :: Html ()
navBar = div_ [class_ "tabs is-toggle is-toggle-rounded"] navBarItems

resumeButton :: Html ()
resumeButton = a_ [class_ "button is-rounded is-primary", href_ "./Rashad_Gover.pdf", download_ "Rashad_Gover"] resumeIcon

resumeIcon :: Html ()
resumeIcon = do
  span_ [ class_ "icon" ] ( i_ [ class_ "fas fa-download" ] "" )
  span_ "Download Resume" 

card :: Text -> Text -> Html () -> Html ()
card image icon desc = div_ [ class_ "card" ] ( do div_ [ class_ "card-image" ] ( figure_ [ class_ "image is-4by3" ] ( img_ [ src_ image, alt_ "Placeholder" ] ) )
                                                   div_ [ class_ "card-content" ] ( do div_ [ class_ "media" ] ( div_ [ class_ "media-left" ] ( figure_ [ class_ "image is-48by48" ] ( img_ [ src_ icon, alt_ "Placeholder" ] ) ) ) 
                                                                                       div_ [ class_ "media-content"] ( do p_ [ class_ "title is-4" ] "Rashad Gover" 
                                                                                                                           p_ [ class_ "subtitle is-6" ] "rashad.saski@gmail.com" ) ) 
                                                   div_ [ class_ "content" ] desc )

footer :: Html ()
footer = footer_ [ class_ "footer" ] ( div_ [ class_ "content has-text-centered" ] ( p_ ( do strong_ "Lucid & Bulma "
                                                                                             "by " 
                                                                                             a_ [ href_ "#" ] "Rashad Gover"
                                                                                             ". The source code is licensed " 
                                                                                             a_ [ href_ "http://opensource.org/licenses/mit-license.php" ] "MIT"
                                                                                             ". The website content is licensed "
                                                                                             a_ [ href_ "http://creativecommons.org/licenses/by-nc-sa/4.0/" ] "CC BY NC SA 4.0"
                                                                                             "." ) ) )

-- <footer class="footer">
-- <div class="content has-text-centered">
--     <p>
--     <strong>Bulma</strong> by <a href="https://jgthms.com">Jeremy Thomas</a>. The source code is licensed
--     <a href="http://opensource.org/licenses/mit-license.php">MIT</a>. The website content
--     is licensed <a href="http://creativecommons.org/licenses/by-nc-sa/4.0/">CC BY NC SA 4.0</a>.
--     </p>
-- </div>
-- </footer>

-- <div class="card">
--   <div class="card-image">
--     <figure class="image is-4by3">
--       <img src="https://bulma.io/images/placeholders/1280x960.png" alt="Placeholder image">
--     </figure>
--   </div>
--   <div class="card-content">
--     <div class="media">
--       <div class="media-left">
--         <figure class="image is-48x48">
--           <img src="https://bulma.io/images/placeholders/96x96.png" alt="Placeholder image">
--         </figure>
--       </div>
--       <div class="media-content">
--         <p class="title is-4">John Smith</p>
--         <p class="subtitle is-6">@johnsmith</p>
--       </div>
--     </div>

--     <div class="content">
--       Lorem ipsum dolor sit amet, consectetur adipiscing elit.
--       Phasellus nec iaculis mauris. <a>@bulmaio</a>.
--       <a href="#">#css</a> <a href="#">#responsive</a>
--       <br>
--       <time datetime="2016-1-1">11:09 PM - 1 Jan 2016</time>
--     </div>
--   </div>
-- </div> 


