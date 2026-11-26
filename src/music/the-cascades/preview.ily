\version "2.26.0"
\language "english"

the-cascades-preview = \new PianoStaff <<
    \new Staff = "RH" {
        \key c \major
        \time 2/4
        \clef treble

        \tempo "Tempo di marcia"

        \set Score.currentBarNumber = #5

        | \bar ".|:" e''16[^(  ds''16 e''16 f''16] g''16[ a''16 c'''16 a''16)] |
        | b''16[^( c'''16 d'''16 f''16] a''16[ g''16 d''16 ds''16)] |
    }

    \new Dynamics {
        | s2\mf |
        | s2 |
    }

    \new Staff = "LH" {
        \key c \major
        \clef bass

        | <c c'>8[ <g c' e'>8] <e e'>8[ <ef ef'>8] |
        | <d d'>8[ <g b f'>8] <g, g>8[ < g b f'>8] |
    }
>>
