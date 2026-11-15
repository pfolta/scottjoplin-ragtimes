\version "2.26.0"
\language "english"

palm-leaf-rag-preview = \new PianoStaff <<
    \new Staff = "RH" {
        \key bf \major
        \time 2/4
        \clef treble

        \tempo "Play a little slow"

        \set Score.currentBarNumber = #5

        | \bar ".|:" \stemUp f'8[ g'16 a'16_~] a'16[ g'16 f'8] |
        | \stemDown <f'_~ a'^~ f''^~>4 <f' a' f''>16[ ef''16 c''16 cs''16] |
        | d''16[ d'''16 bf''16 f''16] g''16[ f''16 bf'16 d''16^~] |
    }

    \new Dynamics {
        | \bar ".|:" s2\mf |
        | s2 |
        | s2 |
    }

    \new Staff = "LH" {
        \key bf \major
        \clef bass

        | \bar ".|:" <c c'>8[ <f a ef'>8] f,8[ <f a ef'>8] |
        | c8[ <f a ef'>8] f,8[ <f a ef'>8] |
        | bf,8[ <f bf d'>8] f,8[ <f bf d'>8] |
    }
>>
