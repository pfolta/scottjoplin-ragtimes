\version "2.26.0"
\language "english"

weeping-willow-preview = \new PianoStaff <<
    \new Staff = "RH" {
        \key g \major
        \time 2/4
        \clef treble

        \tempo "Not fast"

        \set Score.currentBarNumber = #5

        | \bar ".|:" \stemDown <g' b' d''>4 <g' b' g''>4 |
        | << { \stemUp <g' b'>16[ as'16 <g' b'>16 <f'_~ g'_~ b'^~ d''^~>16] <f' g' b' d''>16[ d''8 e''16] } \\ { \stemDown s4 s16 <f' g' b'>8. } >> |
        | << { \stemUp d''16[ c''8 g'16^~] g'16[ a'8 g'16] } \\ { \stemDown <e' g'>8.[ e'16_~] \stemUp \once \omit Flag e'16 \stemDown ef'8. } >> |
    }

    \new Dynamics {
        | \bar ".|:" s2\f |
        | s2 |
        | s2 |
    }

    \new Staff = "LH" {
        \key g \major
        \clef bass

        | \bar ".|:" g,8[ <d g b>8] d,8[ <d g b>8] |
        | g,8[ <d g b>8] b,8[ <d g b>8] |
        | << { \stemUp c4 c4 } \\ { \stemDown c8[ <e g c'>8] c8[ <ef g c'>8] } >> |
    }
>>
