\version "2.26.0"
\language "english"

bethena-score = \new PianoStaff <<
    \new Staff = "RH" {
        \key g \major
        \time 3/4
        \clef treble

        \tag #'layout { \tempo "Valse tempo" }
        \tag #'midi { \tempo 4 = 112 }

        | \section \sectionLabel "Tema" \stemDown a''8 g''4 b''8 a''4 |
        | \stemUp a'8 g'4 \stemDown b'8 \stemUp a'4 |
        | R2. |
        | R2. |
        | \tempo "rit. poco a poco" <g c' e'>2. | \break

        | <g c' ef'>2. |
        | <fs c' d'>2. |
        | <c' fs' a'>2. |
        | \section \tempo "a tempo" << { \stemUp a'8^\markup { \italic "Valse cantabile" } g'4 b'8 a'4 } \\ { \stemDown <b d'>2. } >> |
        | << { \stemUp a'8 g'4 b'8 a'4 } \\ { \stemDown <cs' g'>2. } >> |
        | << { \stemUp a'8 c''4 b'8 a'4 } \\ { \stemDown <c' fs'>2 <c' fs'>4 } >> |
        | << { \stemUp g'2. } \\ { \stemDown <b e'>2. } >> | \break

        | << { \stemUp e''8 a''4 e''8 g''4 } \\ { \stemDown c''2 c''4 } >> |
        | << { \stemUp b'8 e''4 b'8 d''4 } \\ { \stemDown g'2 <g' b'>4 } >> |
        | << { \stemUp g'8 b'4 g'8 b'4 } \\ { \stemDown cs'2 <cs' g'>4 } >> |
        | << { \stemUp a'2. } \\ { \stemDown <c' fs'>2. } >> |
        | << { \stemUp a'8 g'4 b'8 a'4 } \\ { \stemDown <b d'>2. } >> |
        | << { \stemUp a'8 g'4 b'8 a'4 } \\ { \stemDown <cs' g'>2. } >> | \break

        | << { \stemUp a'8 c''4 b'8 a'4 } \\ { \stemDown <c' fs'>2 <c' fs'>4 } >> |
        | << { \stemUp g'2. } \\ { \stemDown <b e'>2. } >> |
        | << { \stemUp e''8 a''4 e''8 g''4 } \\ { \stemDown c''2 c''4 } >> |
        | << { \stemUp b'8 e''4 b'8 d''8[^( d'8)] } \\ { \stemDown g'2 r4 } >> |
        | << { \stemUp \once \mergeDifferentlyDottedOn cs'8^( <g' b'>4) c'8^( <fs' a'>4) } \\ { \stemDown cs'4. c'8 c'4 } >> |
        | << { \stemUp g'2^( b'4) } \\ { \stemDown <b d'>2. } >> | \break

        \pageBreak

        | \section << { \stemUp b'4^( a'2)^\tenuto } \\ { \stemDown <b ds'>2. } >> |
        | << { \stemUp <cs' g'>2.^\tenuto } \\ { \stemDown bf2_( a4) } >> |
        | << { \stemUp fs'4^( f'2)^\tenuto } \\ { \shiftOn \once \override NoteColumn.force-hshift = #0.5 \stemDown a2. } \\ { \shiftOff \stemDown \shape #'((1.25 . 1) (2 . 0.5) (0 . 0.5) (0 . 0)) Slur d'2_( ef'4) } >> |
        |
          \tag #'layout { \once \override Staff.Arpeggio.positions = #'(-3 . 4) << { \stemUp <c'' f''>2.\arpeggio^\tenuto } \\ { \stemDown <ef' a'>2.\arpeggio } >> }
          \tag #'midi { << { ef'2. } \\ { s16 a'2~ a'8. } \\ { s8 c''2~ c''8 } \\ { s8. f''2~ f''16 } >> }
        |
        | \key bf \major \repeat volta 2 { <d' bf' d''>8 \stemDown <g' g''>4 <f' f''>8 <g' g''>8[ <a' a''>8] |
        | << { \stemUp <bf' bf''>2. } \\ { \stemDown r4 <d'' f''>4 <d'' f''>4 } >> | \break

        | <d'' d'''>8 <c'' c'''>4 <f'' f'''>8 <e'' e'''>8[ <ef'' ef'''>8] |
        | << { \stemUp <d'' d'''>2. } \\ { \stemDown r4 <f'' bf''>4 <f'' bf''>4 } >> |
        | <bf' bf''>8 <ef'' g''>4 <bf' bf''>8 <bf' cs'' g''>4 |
        | <bf' d'' g''>8 <bf' d'' f''>4 <bf' d'' g''>8 \stemUp <f' b' d''>4 |
        | << { \stemUp d''8 bf'4 d''8 c''4 } \\ { \stemDown <e' bf'>2 <ef' bf'>4 } >> | \break

        | << { \stemUp c''2. } \\ { \stemDown <ef' a'>2. } >> |
        | <d' bf' d''>8 \stemDown <g' g''>4 <f' f''>8 <g' g''>8[ <a' a''>8] |
        | << { \stemUp <bf' bf''>2. } \\ { \stemDown r4 <d'' f''>4 <d'' f''>4 } >> |
        | <d'' d'''>8 <c'' c'''>4 <f'' f'''>8 <e'' e'''>8[ <ef'' ef'''>8] |
        | << { \stemUp <d'' d'''>2. } \\ { \stemDown r4 <f'' bf''>4 <f'' bf''>4 } >> | \break

        | <bf' bf''>8 <ef'' g''>4 <bf' bf''>8 <bf' cs'' g''>4 |
        | <bf' d'' g''>8 <bf' d'' f''>4 <bf' d'' g''>8 \stemUp <f' b' d''>4 |
        | << { \stemUp d''8 bf'4 d''8 c''4 } \\ { \stemDown <e' bf'>2 <ef' a'>4 } >> |
        \alternative {
            { | <d' f' bf'>4 f'8[ bf'8 c''8 cs''8] | }
            { | <d' f' bf'>4 a'8[ af'8] g'4 | }
        }} \break

        | gf'8 f'4 e'8 ef'4 |
        | d'4 << { \stemUp d''4 d''4 } \\ { \stemDown <g' bf'>4 <fs' a'>4 } >> |
        | << { \stemUp d''4 cs''4 c''4 } \\ { \stemDown <f' af'>4 <e' g'>4 <ef' gf'>4 } >> |
        | <d' f' gs' b'>4 <d' f' gs' b'>4 <d' f' gs' b'>4 |
        | <cs' g' bf'>2 <c' g' a'>4 |
        | <c'_~ fs'_~ a'^~>2. |
        | <c' fs' a'>2.^\tenuto | \break

        | \section \key g \major << { \stemUp a'8^\markup { \italic "cantabile" } g'4 b'8 a'4 } \\ { \stemDown <b d'>2. } >> |
        | << { \stemUp a'8 g'4 b'8 a'4 } \\ { \stemDown <cs' g'>2. } >> |
        | << { \stemUp a'8 c''4 b'8 a'4 } \\ { \stemDown <c' fs'>2 <c' fs'>4 } >> |
        | << { \stemUp g'2. } \\ { \stemDown <b e'>2. } >> |
        | << { \stemUp e''8 a''4 e''8 g''4 } \\ { \stemDown c''2 c''4 } >> | \break

        \pageBreak

        | << { \stemUp b'8 e''4 b'8 d''4 } \\ { \stemDown g'2 <g' b'>4 } >> |
        | << { \stemUp g'8 b'4 g'8 b'4 } \\ { \stemDown cs'2 <cs' g'>4 } >> |
        | << { \stemUp a'2. } \\ { \stemDown <c' fs'>2. } >> |
        | << { \stemUp a'8 g'4 b'8 a'4 } \\ { \stemDown <b d'>2. } >> |
        | << { \stemUp a'8 g'4 b'8 a'4 } \\ { \stemDown <cs' g'>2. } >> | \break

        | << { \stemUp a'8 c''4 b'8 a'4 } \\ { \stemDown <c' fs'>2 <c' fs'>4 } >> |
        | << { \stemUp g'2. } \\ { \stemDown <b e'>2. } >> |
        | << { \stemUp e''8 a''4 e''8 g''4 } \\ { \stemDown c''2 c''4 } >> |
        | << { \stemUp b'8 e''4 b'8 d''8[^( d'8)] } \\ { \stemDown g'2 r4 } >> |
        | << { \stemUp \once \mergeDifferentlyDottedOn cs'8^( <g' b'>4) c'8^( <fs' a'>4) } \\ { \stemDown cs'4. c'8 c'4 } >> |
        | <b d' g'>2. | \break

        | \section << { \stemUp r4 g''8[^( d'''8 c'''8 b''8)] } \\ { \stemDown g'2. } >> |
        | << { \stemUp r4 e''8[^( b''8 a''8 gs''8)] } \\ { \stemDown gs'2. } >> |
        | << { \stemUp r4 ds''8[^( gs''8 as''8 b''8)] } \\ { \stemDown gs'2. } >> |
        | << { \stemUp r4 e''8[^( b''8 a''8 gs''8)] } \\ { \stemDown gs'2. } >> | \break

        | << { \stemUp r4 cs''8[^( gs''8 fs''8 es''8)] } \\ { \stemDown <es' gs'>2. } >> |
        | << { \stemUp r4 c''8[^( f''8 g''8 af''8)] } \\ { \stemDown <f' af'>2. } >> |
        | \tempo "rit." <df' f' af'>4 <d' f' af'>4 <d' f' a'>4 |
        | << { \stemUp bf'2.^\tenuto } \\ { \stemDown <d' f'>4_( <c' e'>2) } >> | \break

        | \section \key f \major \repeat volta 2 { \tempo "a tempo" <c' f' a'>4_(^\markup { \italic "cantabile" } <c' e' bf'> <d' f' b'>4) |
        | \stemDown c''8^( <f'' a''>4) c''8^( <f'' a''>4) |
        | bf'8^( <e'' g''>4) bf'8^( <bf' e'' g''>4) |
        | <a' d'' f''>2 <a' a''>4 |
        | <a' c'' ds'' a''>8 <a' c'' ds'' a''>4 <a' c'' ds'' f''>8 <a' c'' ds'' f''>4 | \break

        | <a' c'' e'' a''>8 <a' c'' e'' a''>4 <a' c'' e''>8 <a' c'' e''>4 |
        | \tempo "rall." <gs' e''>8 <gs' e''>4 <gs' e''>8 <gs' e''>4 |
        | \stemUp a'4^( \stemDown c''4 bf'4) |
        | \tempo "a tempo" \stemUp <c' f' a'>4_( <c' e' bf'> <d' f' b'>4) |
        | \stemDown c''8^( <f'' a''>4) c''8^( <f'' a''>4) | \break

        \pageBreak

        | bf'8^( <e'' g''>4) bf'8^( <bf' e'' g''>4) |
        \alternative {
            {
                | <a' d'' f''>2 a''8[^( b''8)] |
                | << { \stemUp c'''8 a''4 c'''8 a''4 } \\ { \stemDown ds''2._( } >> |
                | << { \stemUp c'''8 g''4 c'''8 g''4 } \\ { \stemDown e''2.) } >> |
                | \tempo "rit." << { \stemUp g''8 g''4 g''8 g''4 } \\ { \stemDown <b' f''>2 <b' f''>4 } >> |
                | \stemDown <c'' e'' c'''>8[^( bf''8 g''8 e''8 c''8 bf'8)] | \break
            }

            {
                | <a' d'' f''>2 d''8[^( e''8)] |
                | <f' f''>8 <bf' d''>4 <f' f''>8 \tempo "rit. poco a poco" \stemUp <f' gs' d''>4 |
                | <f' a' d''>8 <f' a' c''>4 <f' a' d''>8 <c' fs' a'>4 |
                | << { \stemUp a'8 f'4 a'8 g'4 } \\ { \stemDown <b f'>2 <bf e'>4 } >> |
                | << { \stemUp f'4 f'8[^( f''8] f''4) } \\ { \shape #'((2.0 . 3.5) (2.0 . 4.0) (-1.0 . 8.0) (0 . 4.5)) Slur \stemDown <a c'>4( \change Staff = "LH" \stemUp <bf df'>4 <a c'>4) } >> | \break
            }
        }}

        | \section \tempo "a tempo" \stemDown f''8[^( e''8 f''8 e''8 ef''8 d''8)] |
        | e''8[^( ds''8 e''8 ds''8 d''8 df''8)] |
        | ef''8[^( d''8 ef''8 d''8 df''8 c''8)] |
        | cs''2 r4^\fermata | \break

        | \section \key b \minor \repeat volta 2 { d''8^\markup { \italic "cantabile" } b'4 fs''8 d''4 |
        | b''8[^( fs''8 d''8) b'8^~] b'4 |
        | \stemUp as'8 \stemDown fs''4 g''8 fs''4 |
        | b'8 fs''4 g''8 fs''4 |
        | d''8 b'4 fs''8 d''4 | \break

        | b''8[^( fs''8 d''8) b'8^~] b'8[ d''8] |
        | <b' d''>8 \tempo "rit." <b' d''>4 <b' d''>8 <b' cs'' e''>8[ <b' cs'' es''>8] |
        | <as' cs'' fs''>4 \stemUp \once \override Script.extra-offset = #'(0 . 1) cs'^^ s4 |
        | \tempo "a tempo" \stemDown d''8 b'4 fs''8 d''4 |
        | b''8[^( fs''8 d''8) b'8^~] b'4 | \break

        \pageBreak

        | \stemUp as'8 \stemDown fs''4 g''8 fs''4 |
        | b'8 fs''4 g''8 fs''8[ b''8] |
        | b''8 g''4 a''8 g''8[ fs''8] |
        | fs''8 d''4 e''8 d''8[ cs''8] |
        | cs''8 \stemUp as'4 \stemDown g''8 fs''4 |
        \alternative {
            { | b'4 \stemUp g'4^^ \once \override Script.extra-offset = #'(0 . 0.2) fs'4^^ | \break }

            { | \stemDown b'4 \stemUp <d' es' gs' d''>4 <d' fs' a' c''>4 | }
        }}
        | \once \omit Staff.KeySignature \key d \major \repeat volta 2 { << { \stemUp b'8 d''4 b'8 d''4 } \\ { \stemDown <d' g' b'>2 <d' gs'>4 } >> |
        | << { \stemUp a'4. a'8[^( d''8 fs''8)] } \\ { \stemDown d'4. r8 r4 } >> |
        | << { \stemUp a''8 g''4 g''8 fs''8[ e''8] } \\ { \stemDown <a' cs''>2. } >> | \break

        | \stemDown <a' d'' fs''>8[ d''8] \stemUp a'4 <d' fs' c''>4 |
        | << { \stemUp b'8 d''4 b'8 d''4 } \\ { \stemDown <d' g' b'>2 <d' gs'>4 } >> |
        | << { \stemUp a'2 d''4 } \\ { \stemDown d'2. } >> |
        | \stemDown cs''8[^( bs'8 cs''8 bs'8 cs''8 fs''8)] |
        | b'4 \stemUp <d' es' gs' d''>4 <d' fs' a' c''>4 | \break

        | << { \stemUp b'8 d''4 b'8 d''4 } \\ { \stemDown <d' g' b'>2 <d' gs'>4 } >> |
        | << { \stemUp a'4. a'8[^( d''8 fs''8)] } \\ { \stemDown d'4. r8 r4 } >> |
        | << { \stemUp a''8 g''4 g''8 fs''8[ e''8] } \\ { \stemDown <a' cs''>2. } >> |
        | << { \stemUp fs''4. d''8[^( fs''8 a''8)] } \\ { \stemDown <a' d''>2 d''4 }>> | \break

        | << { \stemUp b''8 d'''4 d'''8 e'''4 } \\ { \stemDown <b' g''>2 g''4 } >> |
        | << { \stemUp d'''8[^( a''8)] fs''4. fs''8 } \\ { \stemDown fs''2 r4 } >> |
        \alternative {
            {
                | << { \stemUp a''8 g''4 g''8 fs''8[ e''8] } \\ { \stemDown <a' cs''>2 <a' cs''>8[ <g' cs''>8] }>> |
                | <fs' a' d''>2 <d' fs' c''>4 |
            }
            {
                \once \override Score.VoltaBracket.text = \markup \concat { \volta-number "2." \hspace #1 \raise #-0.2 \fontsize #-1 "rit." }
                | << { \stemUp a''8 g''4 e''8 cs''4 } \\ { \stemDown <a' cs''>2 <e' g'>4 }>> | \break

                \pageBreak

                | \tempo "a tempo" <ds' fs' c''>2.^\tenuto |
            }
        }}
        | <d' f' b'>2.^\tenuto |
        | <cs' e' bf'>2.^\tenuto |
        | <cs' e' bf'>4 <c' g' a'>2^\tenuto |
        | <c' fs' a'>2.^\tenuto | \break

        | \section \sectionLabel "Finale" \key g \major << { \stemUp a'8 g'4 b'8 a'4 } \\ { \stemDown <b d'>2. } >> |
        | << { \stemUp a'8 g'4 b'8 a'4 } \\ { \stemDown <cs' g'>2. } >> |
        | << { \stemUp a'8 c''4 b'8 a'4 } \\ { \stemDown <c' fs'>2 <c' fs'>4 } >> |
        | << { \stemUp g'2. } \\ { \stemDown <b e'>2. } >> |
        | << { \stemUp e''8 a''4 e''8 g''4 } \\ { \stemDown c''2 c''4 } >> | \break

        | << { \stemUp b'8 e''4 b'8 d''4 } \\ { \stemDown g'2 <g' b'>4 } >> |
        | << { \stemUp g'8 b'4 g'8 b'4 } \\ { \stemDown cs'2 <cs' g'>4 } >> |
        | << { \stemUp a'2. } \\ { \stemDown <c' fs'>2. } >> |
        | << { \stemUp a'8 g'4 b'8 a'4 } \\ { \stemDown <b d'>2. } >> |
        | << { \stemUp a'8 g'4 b'8 a'4 } \\ { \stemDown <cs' g'>2. } >> |
        | << { \stemUp a'8 c''4 b'8 a'4 } \\ { \stemDown <c' fs'>2 <c' fs'>4 } >> | \break

        | << { \stemUp g'2. } \\ { \stemDown <b e'>2. } >> |
        | << { \stemUp e''8 a''4 e''8 g''4 } \\ { \stemDown c''2 c''4 } >> |
        | \tempo "rit. poco a poco" << { \stemUp b'8 e''4 b'8 d''8[^( d'8)] } \\ { \stemDown g'2 r4 } >> |
        | << { \stemUp \once \mergeDifferentlyDottedOn cs'8^( <g' b'>4) c'8^( <fs' a'>4)^\fermata } \\ { \stemDown cs'4. c'8 c'4_\fermata } >> |
        | \tempo "Andante" << { \stemUp a'8^( g'4 b'8 a'4) } \\ { \stemDown b4_( c'2 } >> |
        | << { \stemUp g'4 g''4^( a''4) } \\ { \stemDown b4) r4 r4 } >> | \break

        | << { \stemUp a''8^( g''4 b''8 a''4) } \\ { \stemDown b'4_( c''2 } >> |
        | << { \stemUp g''4 g'''4 g'''4 } \\ { \stemDown b'4) r4 r4 } >> |
        | \tempo "Tempo primo" << { \stemUp a''8 g''4 b''8 a''4 } \\ { \stemDown <g' b' d''>2. } >> |
        | a'8 g'4 \stemDown b'8 \stemUp a'4 |
        | a8 g4 b8 a4 |
        | g4 <g bf ef' g'>2^\fermata |
        | <g b d' g'>2. |

        \fermata-over-bar-line
        \fine
    }

    \new Dynamics {
        | \section s2.\mp |
        | s2. |
        | s2. |
        | s2. |
        | s2. |

        | s2. |
        | s2. |
        | s2. |
        | \section s2.\mp |
        | s2. |
        | s2. |
        | s2. |

        | s2. |
        | s2. |
        | s2. |
        | s2. |
        | s2. |
        | s2. |

        | s2. |
        | s2. |
        | s2. |
        | s2. |
        | s2. |
        | s2. |

        | \section s2.\f |
        | s2. |
        | s2. |
        | s2. |
        | \repeat volta 2 { s2.\f |
        | s2. |

        | s2. |
        | s2. |
        | s2. |
        | s2. |
        | s2. |

        | s2. |
        | s2. |
        | s2. |
        | s2. |
        | s2. |

        | s2. |
        | s2. |
        | s2. |
        \alternative {
            { | s2. | }
            { | s2. | }
        }}

        | s2. |
        | s2. |
        | s2. |
        | s4\< s4 s4\! |
        | s2.\f |
        | s2. |
        | s2.\> |

        | \section s2.\!\mp |
        | s2. |
        | s2. |
        | s2. |
        | s2. |

        | s2. |
        | s2. |
        | s2. |
        | s2. |
        | s2. |

        | s2. |
        | s2. |
        | s2. |
        | s2. |
        | s2. |
        | s2. |

        | \section s2.\f |
        | s2. |
        | s2. |
        | s2. |

        | s2. |
        | s2. |
        | s2. |
        | s2. |

        | \section \repeat volta 2 { s2.\f |
        | s2. |
        | s2. |
        | s2. |
        | s2. |

        | s2. |
        | s2.^\markup { "dim." } |
        | s2. |
        | s2.\f |
        | s2. |

        | s2. |
        \alternative {
            {
                | s2. |
                | s2. |
                | s2. |
                | s2. |
                | s2. |
            }

            {
                | s2. |
                | s2. |
                | s2. |
                | s2. |
                | s2. |
            }
        }}

        | \section s2. |
        | s2. |
        | s2. |
        | s2. |

        | \section \repeat volta 2 { s2.\p |
        | s2. |
        | s2. |
        | s2. |
        | s2. |

        | s2. |
        | s2.\< |
        | s4\!\f s2\> |
        | s2.\!\p |
        | s2. |

        | s2. |
        | s2. |
        | s2. |
        | s2. |
        | s2. |
        \alternative {
            { | s2. | }

            { | s2. | }
        }}
        | \repeat volta 2 { s2.\mf |
        | s4 s2\< |
        | s2.\!\f |

        | s4 s2\> |
        | s2.\!\mf |
        | s4 s2\< |
        | s2.\!\f |
        | s4 s2\> |

        | s2.\!\mf |
        | s4 s2\< |
        | s2.\!\f |
        | s2. |

        | s2. |
        | s2. |
        \alternative {
            {
                | s2. |
                | s2. |
            }
            {
                | s2.\f |

                | s2.\f |
            }
        }}
        | s2.\f |
        | s2.\f\< |
        | s4\!\ff s2\ff |
        | s2.\ff |

        | \section s2.\mf |
        | s2. |
        | s2. |
        | s2. |
        | s2. |

        | s2. |
        | s2. |
        | s2. |
        | s2. |
        | s2. |
        | s2. |

        | s2. |
        | s2. |
        | s2. |
        | s2. |
        | s2.\p |
        | s2. |

        | s2. |
        | s2. |
        | s2.\f |
        | s2.\f |
        | s2.\f |
        | s2.\f |
        | s2.\f |

        \fine
    }

    \new Staff = "LH" {
        \key g \major
        \clef bass

        | R2. |
        | R2. |
        | \stemDown a8 g4 b8 a4 |
        | \stemUp a,8 g,4 b,8 a,4 |
        | a,8 g,4 b,8 a,4 |

        | a,8 c4 b,8 a,4 |
        | \stemDown d2. |
        | \stemUp <d, d>2. |
        | \section g,4 \stemDown <d g>4 <d g>4 |
        | \stemUp <e, e>4 \stemDown <e g a>4 <e g a>4 |
        | << { \stemUp r4 <fs a>4 r4 } \\ { \stemDown <d, d>2 <ds, ds>4 } >> |
        | \stemUp <e, e>4 \stemDown <e g>4 <e g>4 |

        | \stemUp <c, c>4 \stemDown <e g c'>4 <e g c'>4 |
        | \stemUp <d, d>4 \stemDown <d g b>4 <d g b>4 |
        | \stemUp <a,, a,>4 \stemDown <e g a>4 \stemUp <a,, a,>4 |
        | << { \stemUp r4 <d fs a>4 <d fs a>4 } \\ { \stemDown <d, d>2. } >> |
        | g,4 \stemDown <d g>4 <d g>4 |
        | \stemUp <e, e>4 \stemDown <e g a>4 <e g a>4 |

        | << { \stemUp r4 <fs a>4 r4 } \\ { \stemDown <d, d>2 <ds, ds>4 } >> |
        | \stemUp <e, e>4 \stemDown <e g>4 <e g>4 |
        | \stemUp <c, c>4 \stemDown <e g c'>4 <e g c'>4 |
        | \stemUp <d, d>4 \stemDown <d g b>4 <d g b>4 |
        | \stemUp <e, e>4 <a,, a,>4 <d, d>4 |
        | <g, g>2. |

        | \section <fs, fs>2_( <f, f>4) |
        | <e, e>2_( <ef, ef>4) |
        | <d, d>2_( <c, c>4) |
        | <f,, f,>2.^\tenuto |
        | \key bf \major \repeat volta 2 { <bf,, bf,>4 \stemDown <f bf d'>8[ <f, f>8] \stemUp <e, e>8[ <ef, ef>8] |
        | <d, d>4 \stemDown <f bf d'>4 <f bf d'>4 |

        | \stemUp <f, f>4 \stemDown <f a ef'>8[ <f, f>8] <g, g>8[ <a, a>8] |
        | <bf, bf>4 <f bf d'>4 <f bf d'>4 |
        | \stemUp <ef, ef>4 \stemDown <g bf ef'>4 \stemUp <e, e>4 |
        | <f, f>4 \stemDown <f bf d'>4 <g, g>4 |
        | \stemUp <c, c>4 \stemDown <g, g>4 <gf, gf>4 |

        | \stemUp <f, f>4 \stemDown <a c'>4 <a c'>4 |
        | \stemUp <bf,, bf,>4 \stemDown <f bf d'>8[ <f, f>8] \stemUp <e, e>8[ <ef, ef>8] |
        | <d, d>4 \stemDown <f bf d'>4 <f bf d'>4 |
        | \stemUp <f, f>4 \stemDown <f a ef'>8[ <f, f>8] <g, g>8[ <a, a>8] |
        | <bf, bf>4 <f bf d'>4 <f bf d'>4 |

        | \stemUp <ef, ef>4 \stemDown <g bf ef'>4 \stemUp <e, e>4 |
        | <f, f>4 \stemDown <f bf d'>4 <g, g>4 |
        | \stemUp <c, c>4 \stemDown <g bf c'>4 \stemUp <f, f>4 |
        \alternative {
            { | \stemDown <bf, bf>4 r4 r4 | }
            { | \stemDown <bf, bf>4 a8[ af8] g4 | }
        }}

        | gf8 f4 e8 ef4 |
        | d4 s2 |
        | s2. |
        | \stemUp <d, d>4 <d, d>4 <d, d>4 |
        | <e, e>2 <ef, ef>4 |
        | <d, d>2 a,4 |
        | d,2.^\tenuto |

        | \section \key g \major g,4 \stemDown <d g>4 <d g>4 |
        | \stemUp <e, e>4 \stemDown <e g a>4 <e g a>4 |
        | << { \stemUp r4 <fs a>4 r4 } \\ { \stemDown <d, d>2 <ds, ds>4 } >> |
        | \stemUp <e, e>4 \stemDown <e g>4 <e g>4 |
        | \stemUp <c, c>4 \stemDown <e g c'>4 <e g c'>4 |

        | \stemUp <d, d>4 \stemDown <d g b>4 <d g b>4 |
        | \stemUp <a,, a,>4 \stemDown <e g a>4 \stemUp <a,, a,>4 |
        | << { \stemUp r4 <d fs a>4 <d fs a>4 } \\ { \stemDown <d, d>2. } >> |
        | g,4 \stemDown <d g>4 <d g>4 |
        | \stemUp <e, e>4 \stemDown <e g a>4 <e g a>4 |

        | << { \stemUp r4 <fs a>4 r4 } \\ { \stemDown <d, d>2 <ds, ds>4 } >> |
        | \stemUp <e, e>4 \stemDown <e g>4 <e g>4 |
        | \stemUp <c, c>4 \stemDown <e g c'>4 <e g c'>4 |
        | \stemUp <d, d>4 \stemDown <d g b>4 <d g b>4 |
        | \stemUp <e, e>4 <a,, a,>4 <d, d>4 |
        | \stemDown <g, g>4 d4 \stemUp g,4 |

        | \section \stemDown <f b d'>2.^\tenuto |
        | <e b d'>2.^\tenuto |
        | << { \stemDown s2. | <d b>2.^\tenuto } \\ { \stemDown \showStaffSwitch <ds b ds'>2.^\tenuto | \change Staff = "RH" e'2. } >> |

        | <cs b>2.^\tenuto |
        | <c c'>2.^\tenuto |
        | \stemUp cf4 bf,4 a,8[ d8] |
        | g,4_( c2) |

        | \section \key f \major \repeat volta 2 { \stemDown <f, f>4 <g, g>4 <gs, gs>4 |
        | <a, a>4 <a c' f'>4 <a c' f'>4 |
        | << { \stemUp r4 <bf c' e'>4 r4 } \\ { \stemDown <c, c>2 <cs, cs>4 } >> |
        | << { \stemUp r4 <a d' f'>4 <a d' f'>4 } \\ { \stemDown <d, d>2. } >> |
        | \stemUp <f, f>4 \stemDown <a c' ds'>4 <a c' ds'>4 |

        | \stemUp <e, e>4 \stemDown <a c' e'>4 <a c' e'>4 |
        | \stemUp <e, e>4 \stemDown <gs d' e'>4 <gs d' e'>4 |
        | <a c' e'>2 <g c' e'>4 |
        | \stemUp <f, f>4 \stemDown <g, g>4 <gs, gs>4 |
        | <a, a>4 <a c' f'>4 <a c' f'>4 |

        | << { \stemUp r4 <bf c' e'>4 r4 } \\ { \stemDown <c, c>2 <cs, cs>4 } >> |
        \alternative {
            {
                | << { \stemUp r4 <a d' f'>4 r4 } \\ { \stemDown <d, d>2. } >> |
                | << { \stemUp r4 <a c' ds'>4 <a c' ds'>4 } \\ { \stemDown <fs, fs>2. } >> |
                | << { \stemUp r4 <g c' e'>4 <g c' e'>4 } \\ { \stemDown <g, g>2. } >> |
                | <g, g>4 <g b f'>4 <g b f'>4 |
                | \stemUp <c, c>4 \stemDown <g bf c' e'>2 |
            }

            {
                | << { \stemUp r4 <a d' f'>4 r4 } \\ { \stemDown <d, d>2. } >> |
                | << { \stemUp r4 <f bf d'>4 r4 } \\ { \stemDown <bf,, bf,>2 <b,, b,>4 } >> |
                | << { \stemUp r4 <f a c'>4 r4 } \\ { \stemDown <c, c>2 <d, d>4 } >> |
                | << { \stemUp r4 <d f g>4 r4 } \\ { \stemDown <g,, g,>2 <c, c>4 } >> |
                | { \voiceTwo \stemDown <f, f>2. } |
            }
        }}

        | \section <gs b d'>2.^\tenuto |
        | <g bf df'>2.^\tenuto |
        | <fs a c'>2.^\tenuto |
        | << { \stemUp as2 } \\ { \stemDown fs4 fs,4 } >> { \oneVoice r4^\fermata } |

        | \section \key b \minor \repeat volta 2 { \stemUp <b,, b,>4 \stemDown <fs b d'>4 <fs b d'>4 |
        | \stemUp <b,, b,>4 \stemDown <fs b d'>4 <fs b d'>4 |
        | \stemUp <fs,, fs,>4 \stemDown <fs as e'>4 <fs as e'>4 |
        | \stemUp <b,, b,>4 \stemDown <fs b d'>4 <fs b d'>4 |
        | \stemUp <b,, b,>4 \stemDown <fs b d'>4 <fs b d'>4 |

        | \stemUp <b,, b,>4 \stemDown <fs b d'>4 <fs b d'>4 |
        | \stemUp <g, g>4 <g, g>4 <g, g>4 |
        | <fs, fs>4 cs^^ << { \stemUp \acciaccatura es8 fs4^^ } \\ { \stemDown \acciaccatura gs,8 fs,4_^ } >> |
        | \stemUp <b,, b,>4 \stemDown <fs b d'>4 <fs b d'>4 |
        | \stemUp <b,, b,>4 \stemDown <fs b d'>4 <fs b d'>4 |

        | \stemUp <fs,, fs,>4 \stemDown <fs as e'>4 <fs as e'>4 |
        | \stemUp <b,, b,>4 \stemDown <fs b d'>4 <fs b d'>4 |
        | \stemUp <e, e>4 \stemDown <g b e'>4 <g b e'>4 |
        | \stemUp <b,, b,>4 \stemDown <fs b d'>4 <fs b d'>4 |
        | \stemUp <fs,, fs,>4 \stemDown <fs as e'>4 <fs as e'>4 |
        \alternative {
            { | <b d'>4 \once \override Script.extra-offset = #'(0 . 1.75) <g, g>4^^ \stemUp <fs, fs>4^^ | }

            { | \stemDown <b d'>4 <b, b>4 <a, a>4 | }
        }}
        | \once \omit Staff.KeySignature \key d \major \repeat volta 2 { <g, g>4 \stemUp <e, e>4 <es, es>4 |
        | <fs, fs>4 \stemDown <fs a>4 <fs a>4 |
        | \stemUp <a,, a,>4 \stemDown <g a cs'>4 <g a cs'>4 |

        | \stemUp <d, d>4 \stemDown <fs a d'>4 <a, a>4 |
        | <g, g>4 \stemUp <e, e>4 <es, es>4 |
        | << { \stemUp r4 <fs a>4 <fs a>4 } \\ { \stemDown <fs, fs>2. } >> |
        | \stemDown <g as e'>2 <fs as e'>4 |
        | <b d'>4 <b, b>4 <a, a>4 |

        | <g, g>4 \stemUp <e, e>4 <es, es>4 |
        | <fs, fs>4 \stemDown <fs a>4 <fs a>4 |
        | \stemUp <a,, a,>4 \stemDown <g a cs'>4 <g a cs'>4 |
        | \stemUp <d, d>4 \stemDown <fs a d'>4 <a, a>4 |

        | <g, g>4 <b, b>4 <bf, bf>4 |
        | <a, a>4 <fs a d'>4 <fs a d'>4 |
        \alternative {
            {
                | \stemUp <a,, a,>4 \stemDown <g a cs'>4 <g a cs'>4 |
                | \stemUp <d, d>4 \stemDown <fs a d'>4 <a, a>4 |
            }
            {
                | \stemUp a,4^( \stemDown a4) bf4 |

                | a8[^( gs8 a8 gs8 g8 fs8)] |
            }
        }}
        | gs8[^( fss8 gs8 fss8 \natural-sharp-accidental fs8 f8)] |
        | g8[^( fs8 g8 fs8 f8 e8)] |
        | \stemUp <e, e>4 <ef, ef>2^\tenuto |
        | <d, d>2.^\tenuto |

        | \section \key g \major g,4 \stemDown <d g>4 <d g>4 |
        | \stemUp <e, e>4 \stemDown <e g a>4 <e g a>4 |
        | << { \stemUp r4 <fs a>4 r4 } \\ { \stemDown <d, d>2 <ds, ds>4 } >> |
        | \stemUp <e, e>4 \stemDown <e g>4 <e g>4 |
        | \stemUp <c, c>4 \stemDown <e g c'>4 <e g c'>4 |

        | \stemUp <d, d>4 \stemDown <d g b>4 <d g b>4 |
        | \stemUp <a,, a,>4 \stemDown <e g a>4 \stemUp <a,, a,>4 |
        | << { \stemUp r4 <d fs a>4 <d fs a>4 } \\ { \stemDown <d, d>2. } >> |
        | g,4 \stemDown <d g>4 <d g>4 |
        | \stemUp <e, e>4 \stemDown <e g a>4 <e g a>4 |
        | << { \stemUp r4 <fs a>4 r4 } \\ { \stemDown <d, d>2 <ds, ds>4 } >> |

        | \stemUp <e, e>4 \stemDown <e g>4 <e g>4 |
        | \stemUp <c, c>4 \stemDown <e g c'>4 <e g c'>4 |
        | \stemUp <d, d>4 \stemDown <d g b>4 <d g b>4 |
        | \stemUp <e, e>4 <a,, a,>4 <d, d>4^\fermata |
        | << { \stemUp d4^( e4 ef4 } \\ { \stemDown g,2. } >> |
        | << { \stemUp d4) } \\ { \stemDown g,4 } >> r4 r4 |

        | << { \stemUp d'4^( e'4 ef'4 } \\ { \stemDown g2. } >> |
        | << { \stemUp d'4) } \\ { \stemDown g4 } >> r4 r4 |
        | s2. |
        | \stemDown <g b d'>2. |
        | \stemUp <g, b, d>2. |
        | <g, b, d>4 <ef,, ef,>2^\fermata |
        | <g,, g,>2. |

        \fine
    }

    \new Dynamics {
        | \section s2. |
        | s2. |
        | s2. |
        | s2. |
        | s2. |

        | s2. |
        | s2. |
        | s2. |
        | s2\sustainOn s4\sustainOff |
        | s2\sustainOn s4\sustainOff |
        | s4\sustainOn s2\sustainOff |
        | s2\sustainOn s4\sustainOff |

        | s2\sustainOn s4\sustainOff |
        | s2\sustainOn s4\sustainOff |
        | s2\sustainOn s4\sustainOff |
        | s2\sustainOn s4\sustainOff |
        | s2\sustainOn s4\sustainOff |
        | s2\sustainOn s4\sustainOff |

        | s4\sustainOn s2\sustainOff |
        | s2\sustainOn s4\sustainOff |
        | s2\sustainOn s4\sustainOff |
        | s2\sustainOn s4\sustainOff |
        | s4\sustainOn s2\sustainOff |
        | s2. |

        | \section s2. |
        | s2. |
        | s2. |
        | s2. |
        | \repeat volta 2 { s2. |
        | s2\sustainOn s4\sustainOff |

        | s2. |
        | s2\sustainOn s4\sustainOff |
        | s4\sustainOn s2\sustainOff |
        | s4\sustainOn s2\sustainOff |
        | s4\sustainOn s2\sustainOff |

        | s2\sustainOn s4\sustainOff |
        | s2. |
        | s2\sustainOn s4\sustainOff |
        | s2. |
        | s2\sustainOn s4\sustainOff |

        | s4\sustainOn s2\sustainOff |
        | s4\sustainOn s2\sustainOff |
        | s4\sustainOn s2\sustainOff |
        \alternative {
            { | s2. | }
            { | s2. | }
        }}

        | s2. |
        | s2. |
        | s2. |
        | s2. |
        | s2. |
        | s2. |
        | s2. |

        | \section s2\sustainOn s4\sustainOff |
        | s2\sustainOn s4\sustainOff |
        | s4\sustainOn s2\sustainOff |
        | s2\sustainOn s4\sustainOff |
        | s2\sustainOn s4\sustainOff |

        | s2\sustainOn s4\sustainOff |
        | s2\sustainOn s4\sustainOff |
        | s2\sustainOn s4\sustainOff |
        | s2\sustainOn s4\sustainOff |
        | s2\sustainOn s4\sustainOff |

        | s4\sustainOn s2\sustainOff |
        | s2\sustainOn s4\sustainOff |
        | s2\sustainOn s4\sustainOff |
        | s2\sustainOn s4\sustainOff |
        | s4\sustainOn s2\sustainOff |
        | s2. |

        | \section s2\sustainOn s8 s8\sustainOff |
        | s2\sustainOn s8 s8\sustainOff |
        | s2\sustainOn s8 s8\sustainOff |
        | s2\sustainOn s8 s8\sustainOff |

        | s2\sustainOn s8 s8\sustainOff |
        | s2\sustainOn s8 s8\sustainOff |
        | s2. |
        | s2. |

        | \section \repeat volta 2 { s2. |
        | s2\sustainOn s4\sustainOff |
        | s4\sustainOn s2\sustainOff |
        | s2\sustainOn s4\sustainOff |
        | s2\sustainOn s4\sustainOff |

        | s2\sustainOn s4\sustainOff |
        | s2\sustainOn s4\sustainOff |
        | s2. |
        | s2. |
        | s2\sustainOn s4\sustainOff |

        | s4\sustainOn s2\sustainOff |
        \alternative {
            {
                | s4\sustainOn s2\sustainOff |
                | s2\sustainOn s4\sustainOff |
                | s2\sustainOn s4\sustainOff |
                | s2\sustainOn s4\sustainOff |
                | s2. |
            }

            {
                | s4\sustainOn s2\sustainOff |
                | s4\sustainOn s2\sustainOff |
                | s4\sustainOn s2\sustainOff |
                | s4\sustainOn s2\sustainOff |
                | s2. |
            }
        }}

        | \section s2. |
        | s2. |
        | s2. |
        | s2. |

        | \section \repeat volta 2 { s2\sustainOn s4\sustainOff |
        | s2\sustainOn s4\sustainOff |
        | s2\sustainOn s4\sustainOff |
        | s2\sustainOn s4\sustainOff |
        | s2\sustainOn s4\sustainOff |

        | s2\sustainOn s4\sustainOff |
        | s2. |
        | s2. |
        | s2\sustainOn s4\sustainOff |
        | s2\sustainOn s4\sustainOff |

        | s2\sustainOn s4\sustainOff |
        | s2\sustainOn s4\sustainOff |
        | s2\sustainOn s4\sustainOff |
        | s2\sustainOn s4\sustainOff |
        | s2\sustainOn s4\sustainOff |
        \alternative {
            { | s2. | }

            { | s2. | }
        }}
        | \repeat volta 2 { s4\sustainOn s2\sustainOff |
        | s2. |
        | s2\sustainOn s4\sustainOff |

        | s4\sustainOn s2\sustainOff |
        | s4\sustainOn s2\sustainOff |
        | s2\sustainOn s4\sustainOff |
        | s2. |
        | s2. |

        | s2. |
        | s2. |
        | s2\sustainOn s4\sustainOff |
        | s2\sustainOn s4\sustainOff |

        | s2. |
        | s2\sustainOn s4\sustainOff |
        \alternative {
            {
                | s2\sustainOn s4\sustainOff |
                | s2. |
            }
            {
                | s2. |

                | s2. |
            }
        }}
        | s2. |
        | s2. |
        | s2. |
        | s2. |

        | \section s2\sustainOn s4\sustainOff |
        | s2\sustainOn s4\sustainOff |
        | s4\sustainOn s2\sustainOff |
        | s2\sustainOn s4\sustainOff |
        | s2\sustainOn s4\sustainOff |

        | s2\sustainOn s4\sustainOff |
        | s2\sustainOn s4\sustainOff |
        | s2\sustainOn s4\sustainOff |
        | s2\sustainOn s4\sustainOff |
        | s2\sustainOn s4\sustainOff |
        | s4\sustainOn s2\sustainOff |

        | s2\sustainOn s4\sustainOff |
        | s2\sustainOn s4\sustainOff |
        | s2\sustainOn s4\sustainOff |
        | s4\sustainOn s2\sustainOff |
        | s2. |
        | s2. |

        | s2. |
        | s2. |
        | s2. |
        | s2. |
        | s2. |
        | s2. |
        | s2. |

        \fine
    }
>>
