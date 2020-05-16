module Components.Icon exposing
    ( check
    , plus
    , userCheck
    , userMinus
    , userPlus
    , x
    )

import Element exposing (..)
import Element.Background as Background
import Element.Border as Border
import Element.Input as Input
import FeatherIcons
import Utils.Styles as Styles


i : FeatherIcons.Icon -> msg -> Element msg
i icon msg =
    Input.button
        [ padding 5
        , Border.rounded 50
        , mouseOver
            [ Background.color Styles.palette.ltgray
            ]

        --, Element.focused
        --    [ Background.color Styles.palette.ltgray
        --    ]
        ]
        { onPress = Just msg
        , label =
            html
                (FeatherIcons.toHtml [] icon)
        }


x : msg -> Element msg
x msg =
    i FeatherIcons.x msg


check : msg -> Element msg
check msg =
    i FeatherIcons.check msg


plus : msg -> Element msg
plus msg =
    i FeatherIcons.plus msg


userPlus : msg -> Element msg
userPlus msg =
    i FeatherIcons.userPlus msg


userMinus : msg -> Element msg
userMinus msg =
    i FeatherIcons.userMinus msg


userCheck : msg -> Element msg
userCheck msg =
    i FeatherIcons.userCheck msg