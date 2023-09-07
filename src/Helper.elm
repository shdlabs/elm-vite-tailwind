module Helper exposing (tail, tailSvg, tw)

{-| Helper for tailwind autocomplition and highlighting

     (tail { css = "bg-red-100..." })

     returns replacement for Html.Attribute.class

-}

import Html exposing (Attribute)
import Html.Attributes exposing (class)
import Svg
import Svg.Attributes as SvgAttr


{-| Helper for tailwind autocomplition and highlighting

    Html.Atributes.classList [ ( tw { css = "bg-red-100..." }, True ) ]

returns highlighted tailwindCSS string

-}
tw : { css : String } -> String
tw classes =
    classes.css


{-| Helper for tailwind autocomplition and highlighting

    tail { css = "bg-red-100..." }

returns replacement for Html.Attribute.class

-}
tail : { css : String } -> Attribute msg
tail css =
    class (tw css)


{-| Helper for tailwind autocomplition and highlighting

    tailSvg { css = "bg-red-100..." }

returns replacement for Svg.Attribute.class

-}
tailSvg : { css : String } -> Svg.Attribute msg
tailSvg css =
    SvgAttr.class (tw css)
