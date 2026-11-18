\version "2.26.0"
\language "english"

peacherine-rag-preview = \new PianoStaff <<
    \new Staff = "RH" {
        \key ef \major
        \time 2/4
        \clef treble

        \tempo "Not too fast"

        \set Score.currentBarNumber = #5

        | \bar ".|:" \stemDown bf'8[ <g' ef''>8] <g' d''>8[ <g' c''>8] |
        | <g' bf'>16[ <g' ef''>8 <g'_~ d''^~>16] <g' d''>16[ c''16 bf'16 g'16] |
    }

    \new Staff = "LH" {
        \key ef \major
        \clef bass

        | \bar ".|:" \stemDown ef8[ <g bf ef'>8] bf,8[ <g bf ef'>8] |
        | ef8[ <g bf ef'>8] bf,8[ <g bf ef'>8] |
    }
>>
