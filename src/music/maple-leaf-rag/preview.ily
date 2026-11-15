\version "2.26.0"
\language "english"

maple-leaf-rag-preview = \new PianoStaff <<
    \new Staff = "RH" {
        \key af \major
        \time 2/4
        \partial 8
        \clef treble

        \tempo "Tempo di marcia"

          r8 \bar ".|:" |
        | r16 \stemDown af'16[ <ef' ef''>16 af'16] c''16[ <ef' ef''>8 g'16] |
        | <ef' ef''>16[ g'16 bf'16 <ef' ef''>16~] <ef' ef''>4 |
    }

    \new Dynamics {
          s8 \bar ".|:" |
        | s2\f |
        | s2 |
    }

    \new Staff = "LH" {
        \key af \major
        \clef bass

          \stemUp <ef, ef>8 \bar ".|:" |
        | \stemDown <af, af>8[ <ef af c'>8] <ef af c'>8[ <a, a>8] |
        | <bf, bf>8[ <ef g df'>8] <ef g df'>8[ <ef, ef>8] |
    }
>>
