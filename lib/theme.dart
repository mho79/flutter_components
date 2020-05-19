import 'package:flutter/material.dart';

class RelovedTheme {
    static final Color _lightFocusColor = RelovedColors.raspberry;
//    static final Color _darkFocusColor = Colors.white.withOpacity(0.12);

    static ThemeData lightThemeData = themeData(lightColorScheme, _lightFocusColor);
//    static ThemeData darkThemeData = themeData(darkColorScheme);

    static ThemeData themeData(ColorScheme colorScheme, Color lightFocusColor) {
        return ThemeData(
            colorScheme: colorScheme,
            textTheme: _textTheme,
            primaryColor: colorScheme.primary,
            hoverColor: colorScheme.primary.withOpacity(.7),
            accentColor: colorScheme.primary,
            focusColor: lightFocusColor,
            fontFamily: 'RobotoCondensed',
            backgroundColor: RelovedColors.white,
            buttonTheme: ButtonThemeData(
                buttonColor: colorScheme.primary,
                focusColor: lightFocusColor,
                hoverColor: colorScheme.primary.withOpacity(.7),
                highlightColor: colorScheme.primary.withOpacity(.7),
                colorScheme: colorScheme.copyWith(primary: colorScheme.surface),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                ),
            ),
            floatingActionButtonTheme: FloatingActionButtonThemeData(
                backgroundColor: colorScheme.primary,
                focusColor: lightFocusColor,
                hoverColor: colorScheme.primary.withOpacity(.7),
                foregroundColor: colorScheme.onPrimary,
            ),
            appBarTheme: AppBarTheme(
                color: colorScheme.primary,
                textTheme: _textTheme.apply(bodyColor: colorScheme.onPrimary),
                iconTheme: IconThemeData(color: colorScheme.onPrimary),
                actionsIconTheme: IconThemeData(color: colorScheme.onPrimary)
            ),
            iconTheme: IconThemeData(
                color: RelovedColors.anthracite
            )
        );
    }

    static const ColorScheme lightColorScheme = ColorScheme(
        primary: RelovedColors.pinkRed,
        primaryVariant: RelovedColors.pinkRedAlt,
        secondary: RelovedColors.royalPurple,
        secondaryVariant: RelovedColors.vibrantPurple,
        background: RelovedColors.pinkRed,
        surface: RelovedColors.white,
        onBackground: RelovedColors.white,
        error: RelovedColors.red,
        onError: RelovedColors.white,
        onPrimary: RelovedColors.white,
        onSecondary: RelovedColors.white,
        onSurface: RelovedColors.white,
        brightness: Brightness.light,
    );

    static final TextTheme _textTheme = TextTheme(
        headline1: RelovedTypography.headline1,
        headline2: RelovedTypography.headline2,
        headline3: RelovedTypography.headline3,
        headline4: RelovedTypography.headline4,
        headline5: RelovedTypography.headline5,
        bodyText1: RelovedTypography.bodyText1,
        bodyText2: RelovedTypography.bodyText2,
        button: RelovedTypography.buttonText,
    );
}

class RelovedColors {
    RelovedColors._();

    static const int _pinkRed = 0xFFFF005E;
    static const MaterialColor pinkRed = MaterialColor(
        _pinkRed,
        const <int, Color>{
            50:  const Color(_pinkRed),
            100: const Color(_pinkRed),
            200: const Color(_pinkRed),
            300: const Color(_pinkRed),
            400: const Color(_pinkRed),
            500: const Color(_pinkRed),
            600: const Color(_pinkRed),
            700: const Color(_pinkRed),
            800: const Color(_pinkRed),
            900: const Color(_pinkRed),
        },
    );

    static const int _pinkRedAlt = 0xFFEA0056;
    static const MaterialColor pinkRedAlt = MaterialColor(
        _pinkRedAlt,
        const <int, Color>{
            50:  const Color(_pinkRedAlt),
            100: const Color(_pinkRedAlt),
            200: const Color(_pinkRedAlt),
            300: const Color(_pinkRedAlt),
            400: const Color(_pinkRedAlt),
            500: const Color(_pinkRedAlt),
            600: const Color(_pinkRedAlt),
            700: const Color(_pinkRedAlt),
            800: const Color(_pinkRedAlt),
            900: const Color(_pinkRedAlt),
        },
    );

    static const int _lightPink = 0xFFFFD9E8;
    static const MaterialColor lightPink = MaterialColor(
        _lightPink,
        const <int, Color>{
            50:  const Color(_lightPink),
            100: const Color(_lightPink),
            200: const Color(_lightPink),
            300: const Color(_lightPink),
            400: const Color(_lightPink),
            500: const Color(_lightPink),
            600: const Color(_lightPink),
            700: const Color(_lightPink),
            800: const Color(_lightPink),
            900: const Color(_lightPink),
        },
    );

    static const int _lightPinkAlt = 0xFFffD6E6;
    static const MaterialColor lightPinkAlt = MaterialColor(
        _lightPinkAlt,
        const <int, Color>{
            50:  const Color(_lightPinkAlt),
            100: const Color(_lightPinkAlt),
            200: const Color(_lightPinkAlt),
            300: const Color(_lightPinkAlt),
            400: const Color(_lightPinkAlt),
            500: const Color(_lightPinkAlt),
            600: const Color(_lightPinkAlt),
            700: const Color(_lightPinkAlt),
            800: const Color(_lightPinkAlt),
            900: const Color(_lightPinkAlt),
        },
    );

    static const int _raspberry = 0xFFA50047;
    static const MaterialColor raspberry = MaterialColor(
        _raspberry,
        const <int, Color>{
            50:  const Color(_raspberry),
            100: const Color(_raspberry),
            200: const Color(_raspberry),
            300: const Color(_raspberry),
            400: const Color(_raspberry),
            500: const Color(_raspberry),
            600: const Color(_raspberry),
            700: const Color(_raspberry),
            800: const Color(_raspberry),
            900: const Color(_raspberry),
        },
    );

    static const int _magenta = 0xFFC804A7;
    static const MaterialColor magenta = MaterialColor(
        _magenta,
        const <int, Color>{
            50:  const Color(_magenta),
            100: const Color(_magenta),
            200: const Color(_magenta),
            300: const Color(_magenta),
            400: const Color(_magenta),
            500: const Color(_magenta),
            600: const Color(_magenta),
            700: const Color(_magenta),
            800: const Color(_magenta),
            900: const Color(_magenta),
        },
    );

    static const int _richPurple = 0xFF7D0068;
    static const MaterialColor richPurple = MaterialColor(
        _richPurple,
        const <int, Color>{
            50:  const Color(_richPurple),
            100: const Color(_richPurple),
            200: const Color(_richPurple),
            300: const Color(_richPurple),
            400: const Color(_richPurple),
            500: const Color(_richPurple),
            600: const Color(_richPurple),
            700: const Color(_richPurple),
            800: const Color(_richPurple),
            900: const Color(_richPurple),
        },
    );

    static const int _vibrantPurple = 0xFF9904C8;
    static const MaterialColor vibrantPurple = MaterialColor(
        _vibrantPurple,
        const <int, Color>{
            50:  const Color(_vibrantPurple),
            100: const Color(_vibrantPurple),
            200: const Color(_vibrantPurple),
            300: const Color(_vibrantPurple),
            400: const Color(_vibrantPurple),
            500: const Color(_vibrantPurple),
            600: const Color(_vibrantPurple),
            700: const Color(_vibrantPurple),
            800: const Color(_vibrantPurple),
            900: const Color(_vibrantPurple),
        },
    );

    static const int _royalPurple = 0xFF680088;
    static const MaterialColor royalPurple = MaterialColor(
        _royalPurple,
        const <int, Color>{
            50:  const Color(_royalPurple),
            100: const Color(_royalPurple),
            200: const Color(_royalPurple),
            300: const Color(_royalPurple),
            400: const Color(_royalPurple),
            500: const Color(_royalPurple),
            600: const Color(_royalPurple),
            700: const Color(_royalPurple),
            800: const Color(_royalPurple),
            900: const Color(_royalPurple),
        },
    );

    static const int _orange = 0xFFFB6411;
    static const MaterialColor orange = MaterialColor(
        _orange,
        const <int, Color>{
            50:  const Color(_orange),
            100: const Color(_orange),
            200: const Color(_orange),
            300: const Color(_orange),
            400: const Color(_orange),
            500: const Color(_orange),
            600: const Color(_orange),
            700: const Color(_orange),
            800: const Color(_orange),
            900: const Color(_orange),
        },
    );

    static const int _orangeAlt = 0xFFFF610D;
    static const MaterialColor orangeAlt = MaterialColor(
        _orangeAlt,
        const <int, Color>{
            50:  const Color(_orangeAlt),
            100: const Color(_orangeAlt),
            200: const Color(_orangeAlt),
            300: const Color(_orangeAlt),
            400: const Color(_orangeAlt),
            500: const Color(_orangeAlt),
            600: const Color(_orangeAlt),
            700: const Color(_orangeAlt),
            800: const Color(_orangeAlt),
            900: const Color(_orangeAlt),
        },
    );

    static const int _rustRed = 0xFFBA3100;
    static const MaterialColor rustRed = MaterialColor(
        _rustRed,
        const <int, Color>{
            50:  const Color(_rustRed),
            100: const Color(_rustRed),
            200: const Color(_rustRed),
            300: const Color(_rustRed),
            400: const Color(_rustRed),
            500: const Color(_rustRed),
            600: const Color(_rustRed),
            700: const Color(_rustRed),
            800: const Color(_rustRed),
            900: const Color(_rustRed),
        },
    );

    static const int _paleGrey = 0xFFFAFBFD;
    static const MaterialColor paleGrey = MaterialColor(
        _paleGrey,
        const <int, Color>{
            50:  const Color(_paleGrey),
            100: const Color(_paleGrey),
            200: const Color(_paleGrey),
            300: const Color(_paleGrey),
            400: const Color(_paleGrey),
            500: const Color(_paleGrey),
            600: const Color(_paleGrey),
            700: const Color(_paleGrey),
            800: const Color(_paleGrey),
            900: const Color(_paleGrey),
        },
    );

    static const int _black = 0xFF000000;
    static const MaterialColor black = MaterialColor(
        _black,
        const <int, Color>{
            50:  const Color(_black),
            100: const Color(_black),
            200: const Color(_black),
            300: const Color(_black),
            400: const Color(_black),
            500: const Color(_black),
            600: const Color(_black),
            700: const Color(_black),
            800: const Color(_black),
            900: const Color(_black),
        },
    );

    static const int _anthracite = 0xFF262626;
    static const MaterialColor anthracite = MaterialColor(
        _anthracite,
        const <int, Color>{
            50:  const Color(_anthracite),
            100: const Color(_anthracite),
            200: const Color(_anthracite),
            300: const Color(_anthracite),
            400: const Color(_anthracite),
            500: const Color(_anthracite),
            600: const Color(_anthracite),
            700: const Color(_anthracite),
            800: const Color(_anthracite),
            900: const Color(_anthracite),
        },
    );

    static const int _brownishGrey = 0xFF676767;
    static const MaterialColor brownishGrey = MaterialColor(
        _brownishGrey,
        const <int, Color>{
            50:  const Color(_brownishGrey),
            100: const Color(_brownishGrey),
            200: const Color(_brownishGrey),
            300: const Color(_brownishGrey),
            400: const Color(_brownishGrey),
            500: const Color(_brownishGrey),
            600: const Color(_brownishGrey),
            700: const Color(_brownishGrey),
            800: const Color(_brownishGrey),
            900: const Color(_brownishGrey),
        },
    );

    static const int _veryLightPink = 0xFFBFBFBF;
    static const MaterialColor veryLightPink = MaterialColor(
        _veryLightPink,
        const <int, Color>{
            50:  const Color(_veryLightPink),
            100: const Color(_veryLightPink),
            200: const Color(_veryLightPink),
            300: const Color(_veryLightPink),
            400: const Color(_veryLightPink),
            500: const Color(_veryLightPink),
            600: const Color(_veryLightPink),
            700: const Color(_veryLightPink),
            800: const Color(_veryLightPink),
            900: const Color(_veryLightPink),
        },
    );

    static const int _iceBlue = 0xFFF1F2F3;
    static const MaterialColor iceBlue = MaterialColor(
        _iceBlue,
        const <int, Color>{
            50:  const Color(_iceBlue),
            100: const Color(_iceBlue),
            200: const Color(_iceBlue),
            300: const Color(_iceBlue),
            400: const Color(_iceBlue),
            500: const Color(_iceBlue),
            600: const Color(_iceBlue),
            700: const Color(_iceBlue),
            800: const Color(_iceBlue),
            900: const Color(_iceBlue),
        },
    );

    static const int _white = 0xFFFFFFFF;
    static const MaterialColor white = MaterialColor(
        _white,
        const <int, Color>{
            50:  const Color(_white),
            100: const Color(_white),
            200: const Color(_white),
            300: const Color(_white),
            400: const Color(_white),
            500: const Color(_white),
            600: const Color(_white),
            700: const Color(_white),
            800: const Color(_white),
            900: const Color(_white),
        },
    );

    static const int _gunmetal = 0xFF424B5A;
    static const MaterialColor gunmetal = MaterialColor(
        _gunmetal,
        const <int, Color>{
            50:  const Color(_gunmetal),
            100: const Color(_gunmetal),
            200: const Color(_gunmetal),
            300: const Color(_gunmetal),
            400: const Color(_gunmetal),
            500: const Color(_gunmetal),
            600: const Color(_gunmetal),
            700: const Color(_gunmetal),
            800: const Color(_gunmetal),
            900: const Color(_gunmetal),
        },
    );

    static const int _red = 0xFFFF0000;
    static const MaterialColor red = MaterialColor(
        _red,
        const <int, Color>{
            50:  const Color(_red),
            100: const Color(_red),
            200: const Color(_red),
            300: const Color(_red),
            400: const Color(_red),
            500: const Color(_red),
            600: const Color(_red),
            700: const Color(_red),
            800: const Color(_red),
            900: const Color(_red),
        },
    );

    static const int _grassGreen = 0xFF83CC14;
    static const MaterialColor grassGreen = MaterialColor(
        _grassGreen,
        const <int, Color>{
            50:  const Color(_grassGreen),
            100: const Color(_grassGreen),
            200: const Color(_grassGreen),
            300: const Color(_grassGreen),
            400: const Color(_grassGreen),
            500: const Color(_grassGreen),
            600: const Color(_grassGreen),
            700: const Color(_grassGreen),
            800: const Color(_grassGreen),
            900: const Color(_grassGreen),
        },
    );

    static const int _topaz = 0xFF14A9CC;
    static const MaterialColor topaz = MaterialColor(
        _topaz,
        const <int, Color>{
            50:  const Color(_topaz),
            100: const Color(_topaz),
            200: const Color(_topaz),
            300: const Color(_topaz),
            400: const Color(_topaz),
            500: const Color(_topaz),
            600: const Color(_topaz),
            700: const Color(_topaz),
            800: const Color(_topaz),
            900: const Color(_topaz),
        },
    );

    static const int _sunYellow = 0xFFFFD422;
    static const MaterialColor sunYellow = MaterialColor(
        _sunYellow,
        const <int, Color>{
            50:  const Color(_sunYellow),
            100: const Color(_sunYellow),
            200: const Color(_sunYellow),
            300: const Color(_sunYellow),
            400: const Color(_sunYellow),
            500: const Color(_sunYellow),
            600: const Color(_sunYellow),
            700: const Color(_sunYellow),
            800: const Color(_sunYellow),
            900: const Color(_sunYellow),
        },
    );
}

class RelovedTypography {
    RelovedTypography._();

    static const TextStyle display1 = TextStyle(
        color: RelovedColors.pinkRed,
        fontSize: 90,
        fontWeight: FontWeight.w900,
        height: 1,
    );

    static const TextStyle display2 = TextStyle(
        color: RelovedColors.royalPurple,
        fontSize: 70,
        fontWeight: FontWeight.w900,
        height: 1.07,
    );

    static const TextStyle display3 = TextStyle(
        color: RelovedColors.vibrantPurple,
        fontSize: 60,
        fontWeight: FontWeight.w900,
        height: .92,
    );

    static const TextStyle headline1 = TextStyle(
        color: RelovedColors.pinkRed,
        fontSize: 40,
        fontWeight: FontWeight.w900,
        height: 1.05,
    );

    static const TextStyle headline2 = TextStyle(
        color: RelovedColors.black,
        fontSize: 34,
        fontWeight: FontWeight.w900,
        height: 1.06,
    );

    static const TextStyle headline3 = TextStyle(
        color: RelovedColors.black,
        fontSize: 26,
        fontWeight: FontWeight.w900,
        height: 1.08,
    );

    static const TextStyle headline4 = TextStyle(
        color: RelovedColors.black,
        fontSize: 22,
        fontWeight: FontWeight.w900,
        height: 1.18,
    );

    static const TextStyle headline5 = TextStyle(
        color: RelovedColors.anthracite,
        fontSize: 22,
        fontWeight: FontWeight.w500,
        height: 1.18,
    );

    static const TextStyle bodyText1 = TextStyle(
        color: RelovedColors.anthracite,
        fontSize: 18,
        fontWeight: FontWeight.w400,
        height: 1.22,
    );

    static const TextStyle bodyText2 = TextStyle(
        color: RelovedColors.anthracite,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.14,
    );

    static const TextStyle filterText = TextStyle(
        color: RelovedColors.gunmetal,
        fontSize: 12,
        fontWeight: FontWeight.w900,
        height: 1.17,
    );

    static const TextStyle buttonText = TextStyle(
        color: RelovedColors.white,
        fontSize: 20,
        fontWeight: FontWeight.w400,
        height: 1.1,
    );
}