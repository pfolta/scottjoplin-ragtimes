\version "2.26.0"
\language "english"

original-rags-preview = \new PianoStaff <<
    \new Staff = "RH" {
        \key g \major
        \time 2/4
        \clef treble

        \set Score.currentBarNumber = #9
        \partial 8.

          \stemDown d''16[ g''16 b''16] \bar ".|:" |
        | \show-measure-number \section <d'' d'''>16[ g''16 b''16 <d''_~ d'''^~>16] <d'' d'''>16[ b''16 <d'' d'''>16 b''16] |
        | <d'' d'''>16[ g''16 b''16 <d''_~ d'''^~>16] <d'' d'''>16[ b''16 <d'' d'''>16 b''16] |
    }

    \new Dynamics {
          s8. \bar ".|:" |
        | \section s2\p |
        | s2 |
    }

    \new Staff = "LH" {
        \key g \major
        \clef bass

          s8. \bar ".|:" |
        | \section \stemDown g8[ <b d'>8] d8[ <b d'>8] |
        | g8[ <b d'>8] d8[ <b d'>8] |
    }
>>
