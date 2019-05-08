module Components.Dynamic.Base (inBase) where

import Components.Navbar
import Components.Footer
    
inBase :: Html () -> Html ()
inBase inner = doctypehtml_ ( do headData
                                 body_ ( do navbar
                                            inner ) )