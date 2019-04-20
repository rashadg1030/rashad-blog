module Components where

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
                            ] ""
                    title_ "rλshλd1030" )

mkListItem :: Html () -> Text -> Html ()
mkListItem t link = li_ (a_ [href_ link] t)

navBar :: Html ()
navBar = ul_ $ mconcat [ mkListItem "Home" "#index"
                       , mkListItem "Blog" "#blog"
                       , mkListItem "Laboratory" "#laboratory"
                       , mkListItem "Art" "#art"
                       , mkListItem "Contact" "#contact" 
                       ]

resumeButton :: Html ()
resumeButton = a_ [class_ "button is-rounded is-primary", href_ "./Rashad_Gover.pdf", download_ "Rashad_Gover"] resumeIcon

resumeIcon :: Html ()
resumeIcon = do
  span_ [ class_ "icon" ] ( i_ [ class_ "fas fa-download" ] "" )
  span_ "Download Resume" 
