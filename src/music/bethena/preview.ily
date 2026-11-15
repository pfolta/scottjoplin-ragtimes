\version "2.26.0"
\language "english"

bethena-preview = \new PianoStaff <<
    \new Staff = "RH" {
        \key g \major
        \time 3/4
        \clef treble

        \tempo "Valse tempo"

        \set Score.currentBarNumber = #9

        | << { \stemUp a'8^\markup { \italic "Valse cantabile" } g'4 b'8 a'4 } \\ { \stemDown <b d'>2. } >> |
        | << { \stemUp a'8 g'4 b'8 a'4 } \\ { \stemDown <cs' g'>2. } >> |
        | << { \stemUp a'8 c''4 b'8 a'4 } \\ { \stemDown <c' fs'>2 <c' fs'>4 } >> |
    }

    \new Dynamics {
        | s2.\mp |
        | s2. |
        | s2. |
    }

    \new Staff = "LH" {
        \key g \major
        \clef bass

        | g,4 \stemDown <d g>4 <d g>4 |
        | \stemUp <e, e>4 \stemDown <e g a>4 <e g a>4 |
        | << { \stemUp r4 <fs a>4 r4 } \\ { \stemDown <d, d>2 <ds, ds>4 } >> |
    }
>>
