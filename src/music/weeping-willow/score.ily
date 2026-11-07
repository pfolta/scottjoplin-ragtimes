\version "2.26.0"
\language "english"

weeping-willow-score = \new PianoStaff <<
    \new Staff = "RH" {
        \key g \major
        \time 2/4
        \clef treble

        \tag #'layout { \tempo "Not fast" }
        \tag #'midi { \tempo 4 = 100 }

        | \stemDown d''16[ cs''16 d''16 e''16] fs''8[ g''8]
        | d''8[ d''8^~] d''16[ e''16 c''16 a'16] |
        | \stemUp g'16[ fs'16 g'16 a'16] b'8[ c''8] |
        | d'8[ d'8_~] d'16[ g'16 a'16 b'16] | \break

        | \section \repeat volta 2 { \stemDown <g' b' d''>4 <g' b' g''>4 |
        | << { \stemUp <g' b'>16[ as'16 <g' b'>16 <f'_~ g'_~ b'^~ d''^~>16] <f' g' b' d''>16[ d''8 e''16] } \\ { \stemDown s4 s16 <f' g' b'>8. } >> |
        | << { \stemUp d''16[ c''8 g'16^~] g'16[ a'8 g'16] } \\ { \stemDown <e' g'>8.[ e'16_~] \stemUp \once \omit Flag e'16 \stemDown ef'8. } >> |
        | \stemUp <d' b'>16[ g'16 e'16 d'16_~] d'16[ g'16 a'16 b'16] | \break

        | \stemDown <g' b' d''>4 <g' b' g''>4 |
        | <d'' fs''>16[ es''16 <d'' fs''>16 <d''_~ fs''^~ a''^~>16] <d'' fs'' a''>16[ d''16 fs''16 a''16] |
        | << { \stemUp b''16[ g''16 e''16 cs''16^~] cs''16[ a'16 b'16 cs''16] } \\ { \stemDown cs''4. g'8 } >> |
        | \stemUp <fs'_~ d''^~>4 <fs' d''>8[ g'16 b'16] |
        | \stemDown <g' b' d''>4 <g' b' g''>4 | \break

        | << { \stemUp <g' b'>16[ as'16 <g' b'>16 <f'_~ g'_~ b'^~ d''^~>16] <f' g' b' d''>16[ d''8 e''16] } \\ { \stemDown s4 s16 <f' g' b'>8. } >> |
        | << { \stemUp d''16[ c''8 g'16^~] g'16[ a'8 g'16] } \\ { \stemDown <e' g'>8.[ e'16_~] \stemUp \once \omit Flag e'16 \stemDown ef'8. } >> |
        | \stemUp <d' b'>16[ g'16 e'16 d'16_~] d'16[ b'16 as'16 b'16] |
        | \stemDown <b' ds''>4 <b' ds'' fs''>8.[ a''16] | \break

        | << { \stemUp a''16[ g''16 fs''16 g''16^~] g''16[ g''16 fs''16 e''16] } \\ { \stemDown <b' e''>8.[ as'16_~] as'4 } >> |
        | <b' e''>16[ d''16 cs''16 d''16^~] \stemUp d''16[ c''16 a'16 fs'16] |
        \alternative {
            { | g'4_~ g'16[ g'16 a'16 b'16] | }
            { | \stemDown g'8[ <d'' d'''>16 <d'' d'''>16] <d'' d'''>8[ <d'' es'' b''>8] | }
        }} \break

        \pageBreak

        | \section \repeat volta 2 { <d''_~ fs''^~ c'''^~>4 <d'' fs'' c'''>16[ <gs' b'>16 <a' c''>8] |
        | \stemUp <es' gs'>16[ <fs' a'>8 <gs' b'>16] \stemDown <a' c''>8[ <c'' e''>8] |
        | <as' cs''>16[ <b' d''>8 <d''_~ g''^~ b''^~>16] <d'' g'' b''>16[ <cs'' g'' as''>16 <d'' g'' b''>16 <b'_~ d''^~ g''^~>16] |
        | <b' d'' g''>16[ fs''16 <b' d'' g''>8] fs''16[ <b' d'' g''>8 g'16^~] | \break

        | g'16[ g'16 c''16 e''16] <g' c'' g''>8[ <a' c'' a''>16 <g'_~ b'^~ g''^~>16] |
        | <g' b' g''>16[ b'16 d''16 e''16] << { \stemUp e''16[ d''16 e''16 d''16] } \\ { \stemDown <f' b'>8[ <f' g'>8] } >> |
        | \stemUp <e' g' c''>16[ g'16 c''16 e''16] \stemDown <g' c'' g''>8[ <a' c'' a''>16 <b'_~ d''_~ g''^~ b''^~>16] |
        | <b' d'' g'' b''>16[ g''16 b''8] <d'' g'' b'' d'''>8[ <d'' es'' b''>8] | \break

        | <d''_~ fs''^~ c'''^~>4 <d'' fs'' c'''>16[ <gs' b'>16 <a' c''>8] |
        | \stemUp <es' gs'>16[ <fs' a'>8 <gs' b'>16] \stemDown <a' c''>8[ <c'' e''>8] |
        | <as' cs''>16[ <b' d''>8 <d''_~ g''^~ b''^~>16] <d'' g'' b''>16[ <cs'' g'' as''>16 <d'' g'' b''>16 <b'_~ d''^~ g''^~>16] |
        | <b' d'' g''>16[ fs''16 <b' d'' g''>8] fs''16[ <b' d'' g''>8 g'16^~] | \break

        | g'16[ g'16 c''16 e''16] << { \stemDown <g' c'' g''>8[ <a' c'' a''>16 <g'_~ b'_~ g''^~>16] } \\ { \hideNotes <g' c'' g''>8[ <a' c'' a''>16 <g'_~ b'_~ g''^~>16] \unHideNotes } >> |
        | << { \stemUp g''16[ e''16 d''16 b'16] e'16[ b'16 g'16 e'16] } \\ { \stemDown <g' b'>4 d'4 } >> |
        | \stemUp <cs' g'>4 <c' d' fs' a'>16[ <c' d' fs' a'>8 <b_~ d'_~ g'^~>16] |
        \alternative {
            { | \stemDown <b d' g'>8[ <d'' d'''>16 <d'' d'''>16] <d'' d'''>8[ <d'' es'' b''>8] | }
            { | \stemUp <b_~ d'_~ g'^~>4\repeatTie <b d' g'>16[ g'16 a'16 b'16] | }
        }} \break

        | \section \stemDown <g' b' d''>4 <g' b' g''>4 |
        | << { \stemUp <g' b'>16[ as'16 <g' b'>16 <f'_~ g'_~ b'^~ d''^~>16] <f' g' b' d''>16[ d''8 e''16] } \\ { \stemDown s4 s16 <f' g' b'>8. } >> |
        | << { \stemUp d''16[ c''8 g'16^~] g'16[ a'8 g'16] } \\ { \stemDown <e' g'>8.[ e'16_~] \stemUp \once \omit Flag e'16 \stemDown ef'8. } >> |
        | \stemUp <d' b'>16[ g'16 e'16 d'16_~] d'16[ g'16 a'16 b'16] | \break

        \pageBreak

        | \stemDown <g' b' d''>4 <g' b' g''>4 |
        | <d'' fs''>16[ es''16 <d'' fs''>16 <d''_~ fs''^~ a''^~>16] <d'' fs'' a''>16[ d''16 fs''16 a''16] |
        | << { \stemUp b''16[ g''16 e''16 cs''16^~] cs''16[ a'16 b'16 cs''16] } \\ { \stemDown cs''4. g'8 } >> |
        | \stemUp <fs'_~ d''^~>4 <fs' d''>8[ g'16 b'16] | \break

        | \stemDown <g' b' d''>4 <g' b' g''>4 |
        | << { \stemUp <g' b'>16[ as'16 <g' b'>16 <f'_~ g'_~ b'^~ d''^~>16] <f' g' b' d''>16[ d''8 e''16] } \\ { \stemDown s4 s16 <f' g' b'>8. } >> |
        | << { \stemUp d''16[ c''8 g'16^~] g'16[ a'8 g'16] } \\ { \stemDown <e' g'>8.[ e'16_~] \stemUp \once \omit Flag e'16 \stemDown ef'8. } >> |
        | \stemUp <d' b'>16[ g'16 e'16 d'16_~] d'16[ b'16 as'16 b'16] | \break

        | \stemDown <b' ds''>4 <b' ds'' fs''>8.[ a''16] |
        | << { \stemUp a''16[ g''16 fs''16 g''16^~] g''16[ g''16 fs''16 e''16] } \\ { \stemDown <b' e''>8.[ as'16_~] as'4 } >> |
        | <b' e''>16[ d''16 cs''16 d''16^~] \stemUp d''16[ c''16 a'16 fs'16] |
        | g'8 r8 \stemDown <g' b' d'' g''>8 r8 | \break

        | \section \key c \major \repeat volta 2 { << { \stemUp e'16[ g'16 c''16 d''16] e''16[ g''8 e''16^~] } \\ { \stemDown e'4_~ e'8.[ gs'16_~] } >> |
        | << { \stemDown e''16[ ds''16 <gs' e''>8] } \\ { \stemDown \once \override Stem.length = #3 \once \omit Flag gs'16 s8. } >> <gs' f''>8[ <gs' e''>16 <a'_~ c''^~>16] |
        | <a' c''>16[ b'16 <a' c''>8] \stemUp <e' bf' c''>16[ <e' bf' c''>8 <f'_~ a'^~ c''^~>16] |
        | <f'_~ a'^~ c''^~>4 \stemDown <f' a' c''>16[ a'16 c''16 f''16] |
        | <c'' f'' a''>8[ <c'' f'' a''>8] <c'' f'' a''>8[ <c'' ds'' af''>8] | \break

        | <c'' e'' g''>8.[ e''16] c''16[ d''16 e''16 c''16] |
        | b'16[^( b''16 g''16) e''16^~] e''16[ g''16^( fs''16 ds''16)] |
        | e''8 r8 <g' g''>4 |
        | << { \stemUp e'16[ g'16 c''16 d''16] e''16[ g''8 e''16^~] } \\ { \stemDown e'4_~ e'8.[ gs'16_~] } >> |
        | << { \stemDown e''16[ ds''16 <gs' e''>8] } \\ { \stemDown \once \override Stem.length = #3 \once \omit Flag gs'16 s8. } >> <gs' f''>8[ <gs' e''>16 <a'_~ c''^~>16] | \break

        \pageBreak

        | <a' c''>16[ b'16 <a' c''>8] \stemUp <e' bf' c''>16[ <e' bf' c''>8 <f'_~ a'^~ c''^~>16] |
        | <f'_~ a'^~ c''^~>4 \stemDown <f' a' c''>16[ a'16 c''16 f''16] |
        | <c'' f'' a''>8[ <c'' f'' a''>8] <c'' f'' a''>8[ <c'' ds'' af''>8] |
        | <c'' e'' g''>8.[ e''16] c''16[ d''16 e''8] |
        | \stemUp <fs' c''>4 <f' b' d''>16[ <f' b' d''>8 <e'_~ g'^~ c''^~>16] | \break

        \alternative {
            { | <e' g' c''>8[ g'8_^] fs'8_^[ f'8_^] | }
            { | <e' g' c''>8[\repeatTie g'16_( a'16)] \stemDown b'16[^( c''16 d''16 e''16)] | }
        }}
        | \section \repeat volta 2 { <b' d''>4 <b'_~ g''^~>4 |
        | <b' g''>16[ d''16 <b' b''>16 d''16] f''16[ a''16 g''16 f''16] |
        | e''16[ ds''16 e''16 g''16^~] g''4 | \break

        | c''16[ ds''16 fs''16 a''16] g''16[ e''16 g''16 c'''16] |
        | <d'' f'' c'''>8[ <d'' f'' b''>16 <d''_~ f''^~ b''^~>16] <d'' f'' b''>16[ <d'' f'' as''>16 <d'' f'' b''>8] |
        | <d''_~ f''^~>4 <d'' f''>16[ d''16 f''16 b''16] |
        | <c'' e'' b''>8[ <c'' e'' a''>16 <c''_~ e''^~ a''^~>16] <c'' e'' a''>16[ <c'' e'' gs''>16 <c'' e'' a''>8] | \break

        | <c''_~ e''^~>4 <c'' e''>16[ g'16 c''16 e''16] |
        | <b' d''>4 <b'_~ g''^~>4 |
        | <b' g''>16[ d''16 <b' b''>16 d''16] f''16[ a''16 g''16 f''16] |
        | << { \stemDown e''16[ ds''16 e''16 <bf'_~ g''^~>16] } \\ { \stemDown s8. \once \override Stem.length = #3 \once \omit Flag bf'16_~ } >> << { \stemUp g''16[ e''16 g''8] } \\ { \stemDown bf'4 } >> |
        | <a'_~ f''^~>4 <a' f''>16[ a'16 c''16 f''16] | \break

        | <c'' f'' a''>8[ <c'' f'' a''>8] <c'' f'' a''>8[ <c'' ds'' af''>8] |
        | <c'' e'' g''>8.[ e''16] c''16[ d''16 e''8] |
        | \stemUp <fs' c''>4 <f' b' d''>16[ <f' b' d''>8 <e'_~ g'^~ c''^~>16] |
        \alternative {
            { | <e' g' c''>8[ g'16_( a'16)] \stemDown b'16[^( c''16 d''16 e''16)] | }
            { | \stemUp <e' g' c''>4\repeatTie \stemDown <c'' e'' g'' c'''>8^^ r8 | }
        }}

        \fermata-over-bar-line
        \fine
    }

    \new Dynamics {
        | s2\f |
        | s2 |
        | s2 |
        | s2 |

        | \section \repeat volta 2 { s2\f |
        | s2 |
        | s2 |
        | s2 |

        | s2 |
        | s2 |
        | s2 |
        | s2 |
        | s2 |

        | s2 |
        | s2 |
        | s2 |
        | s2 |

        | s2 |
        | s2 |
        \alternative {
            { | s2 | }
            { | s2 | }
        }}

        | \section \repeat volta 2 { s2\f |
        | s2 |
        | s2 |
        | s2 |

        | s2 |
        | s2 |
        | s2 |
        | s2 |

        | s2 |
        | s2 |
        | s2 |
        | s2 |

        | s2 |
        | s2 |
        | s2 |
        \alternative {
            { | s2 | }
            { | s2 | }
        }}

        | \section s2\f |
        | s2 |
        | s2 |
        | s2 |

        | s2 |
        | s2 |
        | s2 |
        | s2 |

        | s2 |
        | s2 |
        | s2 |
        | s2 |

        | s2 |
        | s2 |
        | s2 |
        | s2 |

        | \section \repeat volta 2 { s2\mf |
        | s2 |
        | s2 |
        | s2 |
        | s2 |

        | s2 |
        | s2 |
        | s2 |
        | s2 |
        | s2 |

        | s2 |
        | s2 |
        | s2 |
        | s2 |
        | s2 |

        \alternative {
            { | s2 | }
            { | s4 s4\< | }
        }}
        | \section \repeat volta 2 { s2\!\f |
        | s2 |
        | s2 |

        | s2 |
        | s2 |
        | s2 |
        | s2 |

        | s2 |
        | s2 |
        | s2 |
        | s2 |
        | s2 |

        | s2 |
        | s2 |
        | s2 |
        \alternative {
            { | s2 | }
            { | s2 | }
        }}

        \fine
    }

    \new Staff = "LH" {
        \key g \major
        \clef bass

        | \stemDown d'16[ cs'16 d'16 e'16] fs'8[ g'8] |
        | d'8[ d'8^~] d'16[ e'16 c'16 a16] |
        | \stemDown g16[ fs16 g16 a16] b8[ c'8] |
        | d8[ d8^~] d16 r16 r8 |

        | \section \repeat volta 2 { g,8[ <d g b>8] d,8[ <d g b>8] |
        | g,8[ <d g b>8] b,8[ <d g b>8] |
        | << { \stemUp c4 c4 } \\ { \stemDown c8[ <e g c'>8] c8[ <ef g c'>8] } >> |
        | g,8[ <d g b>8] <d g b>8 r8 |

        | g,8[ <d g b>8] e,8[ <e g b>8] |
        | a,8[ <fs a d'>8] fs,8[ <fs a d'>8] |
        | e,8[ <g a cs'>8] a,8[ <g a cs'>8] |
        | <d a d'>8[ <a, a>8 <d, d>8] r8 |
        | g,8[ <d g b>8] d,8[ <d g b>8] |

        | \stemDown g,8[ <d g b>8] b,8[ <d g b>8] |
        | << { \stemUp c4 c4 } \\ { \stemDown c8[ <e g c'>8] c8[ <ef g c'>8] } >> |
        | g,8[ <d g b>8 <d g b>8] r8 |
        | fs8[ <a b>8] b,8[ <a b>8] |

        | e8[ <g b>8] cs8[ <e g as>8] |
        | d8[ <g b>8] d8[ <fs a c'>8] |
        \alternative {
            { | << { \stemUp b4^~ b16 r16 r8 } \\ { \stemDown g8[ d8] e8[ d8] } >> | }
            { | <g b>8 r8 <b, b>8[ <gs, gs>8] | }
        }}

        | \section \repeat volta 2 { <a, a>8[ <d fs c'>8] <fs, fs>8[ <d fs c'>8] |
        | <d, d>8[ <d fs c'>8] <fs, fs>8[ <d fs c'>8] |
        | <g, g>8[ <d g b>8] \stemUp <d, d>8[ <d g b>8] |
        | <g, g>8[ <f, f>8] <e, e>8[ <d, d>8] |

        | \stemDown <c, c>8[ <g c' e'>8] \stemUp <e, e>8[ <ef, ef>8] |
        | \stemDown <d, d>8[ <g b d'>8] \stemUp <g, g>8[ <b, b,,>8] |
        | \stemDown <c, c>8[ <g c' e'>8] \stemUp <e, e>8[ <ef, ef>8] |
        | \stemDown <d, d>8[ <g b d'>8] \stemUp <g, g>8[ <gs, gs>8] |

        | \stemDown <a, a>8[ <d fs c'>8] <fs, fs>8[ <d fs c'>8] |
        | \stemUp <d, d>8[ <d fs c'>8] \stemDown <fs, fs>8[ <d fs c'>8] |
        | <g, g>8[ <d g b>8] \stemUp <d, d>8[ <d g b>8] |
        | <g, g>8[ <f, f>8] <e, e>8[ <d, d>8] |

        | \stemDown <c, c>8[ <g c' e'>8] \stemUp <e, e>8[ <ef, ef>8] |
        | <d, d>8[ <g, g>8] \stemDown <b, e g b>4 |
        | \stemUp <a, a>8[ <e, e>8] <d, d>4 |
        \alternative {
            { | \stemDown <g, g>8 r8 <b, b>8[ <gs, gs>8] | }
            { | <g, g>8[ \once \override Script.extra-offset = #'(0 . 1) d8^^] \stemDown \once \override Script.extra-offset = #'(0 . 1) e8^^[ \once \override Script.extra-offset = #'(0 . 1) d8^^] | }
        }}

        | \section g,8[ <d g b>8] d,8[ <d g b>8] |
        | g,8[ <d g b>8] b,8[ <d g b>8] |
        | << { \stemUp c4 c4 } \\ { \stemDown c8[ <e g c'>8] c8[ <ef g c'>8] } >> |
        | g,8[ <d g b>8 <d g b>8] r8 |

        | g,8[ <d g b>8] e,8[ <e g b>8] |
        | a,8[ <fs a d'>8] fs,8[ <fs a d'>8] |
        | e,8[ <g a cs'>8] a,8[ <g a cs'>8] |
        | <d a d'>8[ <a, a>8 <d, d>8] r8 |

        | g,8[ <d g b>8] d,8[ <d g b>8] |
        | g,8[ <d g b>8] b,8[ <d g b>8] |
        | << { \stemUp c4 c4 } \\ { \stemDown c8[ <e g c'>8] c8[ <ef g c'>8] } >> |
        | g,8[ <d g b>8 <d g b>8] r8 |

        | fs8[ <a b>8] b,8[ <a b>8] |
        | c8[ <g b>8] cs8[ <e g as>8] |
        | d8[ <g b>8] d8[ <fs a c'>8] |
        | <g b>8 r8 \stemUp <g, g>8 r8 |

        | \section \key c \major \repeat volta 2 { \stemDown c8[ <e g c'>8] g,8[ <e g c'>8] |
        | b,8[ <e gs d'>8] e,8[ <e gs d'>8] |
        | a,8[ <e a c'>8] \stemUp <g, g>8[ <c, c>8] |
        | \stemDown <f, f>8[ <a c'>8] c8[ <a c'>8] |
        | <f, f>8[ <a c' f'>8] \stemUp <f, f>8[ <fs, fs>8] |

        | \stemDown <g, g>8[ <g c' e'>8] <a, a>8[ <a c' e'>8] |
        | b,8[ <g b e'>8] b,8[ <a b ds'>8] |
        | <e g b e'>8 r8 << { \stemUp <f g b>4 } \\ { \stemDown d8[ g,8] } >> |
        | c8[ <e g c'>8] g,8[ <e g c'>8] |
        | b,8[ <e gs d'>8] e,8[ <e gs d'>8] |

        | a,8[ <e a c'>8] \stemUp <g, g>8[ <c, c>8] |
        | \stemDown <f, f>8[ <a c'>8] c8[ <a c'>8] |
        | <f, f>8[ <a c' f'>8] \stemUp <f, f>8[ <fs, fs>8] |
        | \stemDown <g, g>8[ <g c' e'>8] <a, a>8[ <a c' e'>8] |
        | <d d'>8[ <a, a>8] \stemUp <g, g>4 |

        \alternative {
            { | \stemDown <c c'>8[ \once \override Script.extra-offset = #'(0 . 3) g,8^^] \stemUp a,8^^[ b,8^^] | }
            { | \stemDown <c c'>8 r8 r4 | }
        }}
        | \section \repeat volta 2 { <g g'>8[ <f f'>8 <d d'> <b, b>8] |
        | \stemUp <g, g>8[ <gs, gs>8] \stemDown <a, a>8[ <b, b>8] |
        | <c c'>8[ <g c' e'>8] e8[ <g c' e'>8] |

        | <fs a c' ds'>4 <g c' e'>8 r8 |
        | <d d'>8[ <g b f'>8] <g, g>8[ <g b f'>8] |
        | <b, b>16[^( <bf, bf>16 <a, a>16 <af, af>16] <g, g>8)[ <g b f'>8] |
        | <c c'>8[ <g c' e'>8] <g, g>8[ <g c' e'>8] |

        | <c c'>16[^( <b, b>16 <a, a>16 <af, af>16] \stemUp <g, g>8) r8 |
        | \stemDown <g g'>8[ <f f'>8 <d d'> <b, b>8] |
        | \stemUp <g, g>8[ <gs, gs>8] \stemDown <a, a>8[ <b, b>8] |
        | <c b>8[ <g c' e'>8] e8[ <bf c' e'>8] |
        | f8[ <a c' f'>8] c8[ <a c' f'>8] |

        | <f, f>8[ <a c' f'>8] \stemUp <f, f>8[ <fs, fs>8] |
        | \stemDown <g, g>8[ <g c' e'>8] <a, a>8[ <a c' e'>8] |
        | <d d'>8[ <a, a>8] \stemUp <g, g>4 |
        \alternative {
            { | \stemDown <c c'>8 r8 r4 | }
            { | \stemDown <c c'>8[ <g, g>8] \stemUp <c, c>8^^ r8 | }
        }}

        \fine
    }
>>
