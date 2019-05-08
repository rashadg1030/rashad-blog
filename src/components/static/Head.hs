module Components.Static.Head (head) where 

head :: Html ()
head = head_ ( do meta_ [ charset_ "utf-8" ]
                        meta_ [ name_ "viewport"
                            , content_ "width=device-width, initial-scale=1"
                            ]
                        link_ [ href_ "./style.css"
                            , rel_ "stylesheet"
                            ]
                        title_ "RλSHλD1030" )