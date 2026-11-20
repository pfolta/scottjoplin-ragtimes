\version "2.26.0"
\language "english"

peacherine-rag-score = \new PianoStaff <<
    \new Staff = "RH" {
        \key ef \major
        \time 2/4
        \clef treble

        \tag #'layout { \tempo "Not too fast" }
        \tag #'midi { \tempo 4 = 90 }

        % Measure 1
        | \stemDown ef''16[ f''16 g''16 f''16^~] f''8[ bf'8] |
        | f''16[ g''16 af''16 g''16^~] g''8[ bf'8] |
        | c''16[ c''8 b'16] c''16[ d''16 ef''8] |
        | bf'8 bf'8^~ \stemUp bf'16[ g'16 af'16 a'16] | \break

        % Measure 5
        | \section \sectionLabel \section-a \repeat volta 2 { \stemDown bf'8[ <g' ef''>8] <g' d''>8[ <g' c''>8] |
        | <g' bf'>16[ <g' ef''>8 <g'_~ d''^~>16] <g' d''>16[ c''16 bf'16 g'16] |
        | <g' bf'>8[ <g' ef''>8] <g' d''>8[ <g' c''>8] |
        | \stemUp <af' bf'>16[ <af' d''>8 <af'_~ c''^~>16] <af' c''>16[ bf'16 f'16 g'16] | \break

        % Measure 9
        | \stemDown af'8[ <af' d''>8] <af' c''>8[ <af' bf'>8] |
        | af'16[ <af' d''>8 <af'_~ c''^~>16] <af' c''>16[ bf'16 d''16 f''16] |
        | <af' d'' af''>8 <af' d'' af''>4 <a' ef'' a''>8 |
        | << { \stemUp r8 ef''16[ f''16] g''16 r16 r8 } \\ { \stemDown <bf'_~ ef''_~ bf''\shape #'((0 . 0.5) (0 . 2) (0 . 2) (0 . 0.5))^~>4 \once \override TieColumn.positioning-done = ##t <bf' ef'' bf''>16[ g'16 af'16 a'16] } >> | \break

        % Measure 13
        | bf'8[ <g' ef''>8] <g' d''>8[ <g' c''>8] |
        | <g' bf'>16[ <g' ef''>8 <g'_~ d''^~>16] <g' d''>16[ c''16 bf'16 g'16] |
        | <g' g''>8 <g' b' g''>4 <g' b' f''>8 |
        | << { \stemUp c'''8\rest c'''16[ d'''16] ef'''8 c'''8\rest } \\ { \stemDown <g' c'' ef''>4. c''8 } >> | \break

        % Measure 17
        | <c'' ef'' f''>8[ <c'' ef'' f''>8] <c'' ef'' fs''>8[ <c'' ef'' fs''>8] |
        | <bf' ef'' g''>16[ <bf' ef'' g''>8 <bf' bf''>16] <bf' c'' e'' af''>8[ <bf' c'' e'' g''>8] |
        | <a' g''>16[ <a' g''>8 <a' ef''>16] << { \stemUp f''16^[( ef''16) <af' f''>8] } \\ { \stemDown af'4 } >> |
        \alternative {
            { | <g'_~ ef''^~>4 <g' ef''>16[ g'16 af'16 a'16] | }
            { | <g'_~ ef''^~>4 <g' ef''>8 r8 | }
        }} \break

        \pageBreak

        % Measure 22
        | \section \sectionLabel \section-b \key bf \major \repeat volta 2 { r8 <a' ef'' f''>8[ <a' ef'' g''>8 <a' ef'' f''>] |
        | r8 <ef'' a'' c'''>8[ <ef'' a'' d'''>8 <ef'' a'' c'''>8] |
        | r8 <d'' bf''>8[ <d'' a''>8 <d'' g''>8] |
        | <d'' g''>16[ f''16 e''16 f''16^~] f''16[ g''16 f''8] |
        | r8 <ef'' a'' ef'''>8[ <ef'' a'' ef'''>8 <ef'' a'' d'''>8] |
        | << { \stemUp d'''16[ c'''16 b''16 c'''16^~] c'''16[ f'''16^( f''8)] } \\ { \stemDown <ef'' a''>4. r8 } >> | \break

        % Measure 28
        | r8 <d'' bf'' d'''>8[ <d'' f'' d'''>8 <d'' f'' c'''>8] |
        | << { \stemUp c'''16[ bf''16 a''16 bf''16^~] bf''16[ f'''16^( f''8)] } \\ { \stemDown <d'' f''>4. r8 } >> |
        | r8 <a' ef'' f''>8[ <a' ef'' g''>8 <a' ef'' f''>] |
        | r8 <ef'' a'' c'''>8[ <ef'' a'' d'''>8 <ef'' a'' c'''>8] |
        | r8 <d'' bf''>8[ <d'' a''>8 <d'' g''>8] |
        | <d'' g''>16[ f''16 e''16 f''16^~] f''16[ d''16 ef''16 f''16] | \break

        % Measure 34
        | <g' g''>16[ <bf' ef''>16 <g' g''>16 <a'_~ a''^~>16] <a' a''>16[ <g' g''>8 <bf' ef''>16] |
        | <f' f''>16[ <bf' d''>16 <f' f''>16 <g'_~ g''^~>16] <g' g''>16[ <f' f''>8 bf'16] |
        | \stemUp <e' bf' d''>16[ <e' bf' d''>8 <e' bf' d''>16] << { \stemUp c''16[^( bf'16) <ef' a' c''>8] } \\ { \stemDown <ef' a'>4 } >> |
        \alternative {
            { | <d'_~ bf'^~>4 <d' bf'>8 r8 | }
            { | <d' bf'>4 <d' af' bf'>4 | }
        }} \break

        % Measure 39
        | \section \sectionLabel \section-a \key ef \major \stemDown bf'8[ <g' ef''>8] <g' d''>8[ <g' c''>8] |
        | <g' bf'>16[ <g' ef''>8 <g'_~ d''^~>16] <g' d''>16[ c''16 bf'16 g'16] |
        | <g' bf'>8[ <g' ef''>8] <g' d''>8[ <g' c''>8] |
        | \stemUp <af' bf'>16[ <af' d''>8 <af'_~ c''^~>16] <af' c''>16[ bf'16 f'16 g'16] | \break

        % Measure 43
        | \stemDown af'8[ <af' d''>8] <af' c''>8[ <af' bf'>8] |
        | af'16[ <af' d''>8 <af'_~ c''^~>16] <af' c''>16[ bf'16 d''16 f''16] |
        | <af' d'' af''>8 <af' d'' af''>4 <a' ef'' a''>8 |
        | << { \stemUp r8 ef''16[ f''16] g''16 r16 r8 } \\ { \stemDown <bf'_~ ef''_~ bf''\shape #'((0 . 0.5) (0 . 2) (0 . 2) (0 . 0.5))^~>4 \once \override TieColumn.positioning-done = ##t <bf' ef'' bf''>16[ g'16 af'16 a'16] } >> | \break

        \pageBreak

        % Measure 47
        | bf'8[ <g' ef''>8] <g' d''>8[ <g' c''>8] |
        | <g' bf'>16[ <g' ef''>8 <g'_~ d''^~>16] <g' d''>16[ c''16 bf'16 g'16] |
        | <g' g''>8 <g' b' g''>4 <g' b' f''>8 |
        | << { \stemUp c'''8\rest c'''16[ d'''16] ef'''8 c'''8\rest } \\ { \stemDown <g' c'' ef''>4. c''8 } >> | \break

        % Measure 51
        | <c'' ef'' f''>8[ <c'' ef'' f''>8] <c'' ef'' fs''>8[ <c'' ef'' fs''>8] |
        | <bf' ef'' g''>16[ <bf' ef'' g''>8 <bf' bf''>16] <bf' e'' af''>8[ <bf' e'' g''>8] |
        | <a' g''>16[ <a' g''>8 <a' ef''>16] << { \stemUp f''16^[( ef''16) <af' f''>8] } \\ { \stemDown af'4 } >> |
        | <g' ef''>4 <g' df'' ef''>8 r8 | \break

        % Measure 55
        | \section \sectionLabel \section-c \key af \major \repeat volta 2 { <ef' ef''>16[ c''16 <ef' ef''>16 af'16] c''16[ <ef' ef''>8 af'16] |
        | \stemUp <ef' c''>16[ a'16 <ef' c''>16 <ef'_~ a'_~ df''^~>16] <ef' a' df''>16[ <ef' a' c''>8 a'16] |
        | <d' f' af' c''>8[ <d' f' af' bf'>16 <d'_~ f'_~ af'^~ c''^~>16] <d' f' af' c''>16[ bf'16 af'16 f'16] |
        | <d' af' c''>8[ <d' af' bf'>16 <d'_~ af'_~ c''^~>16] <d' af' c''>16[ bf'16 af'16 f'16] | \break

        % Measure 59
        | << { \stemUp df''4 r4 } \\ { \stemDown ef'8.[ f'32^( g'32)] bf'16[ <f' df''>8 g'16] } >> |
        | << { \stemUp df''4 r4 } \\ { \stemDown ef'8.[ f'32^( g'32)] bf'16[ <f' df''>8 f'16] } >> |
        | \stemDown <ef' c''>8[ <e' c''>16 <f'_~ c''^~>16] <f' c''>16[ <af' c''>8 <f' c''>16] |
        | <ef' c''>8[ <e' c''>16 <f'_~ c''^~>16] <f' c''>8.[ af'32^( c''32)] |
        | <ef' ef''>16[ c''16 <ef' ef''>16 af'16] c''16[ <ef' ef''>8 af'16] | \break

        % Measure 64
        | <ef' c''>16[ a'16 <ef' c''>16 <ef'_~ a'^~ df''^~>16] <ef' a' df''>16[ <ef' a' c''>8 a'16] |
        | <d' f' af' c''>8[ <d' f' af' bf'>16 <d'_~ f'_~ af'^~ c''^~>16] <d' f' af' c''>16[ bf'16 af'16 f'16] |
        | <d' af' c''>8[ <d' af' bf'>16 <d'_~ af'_~ c''^~>16] <d' af' c''>16[ bf'16 af'16 f'16] |
        | << { \stemUp df''4 r4 } \\ { \stemDown ef'8.[ f'32^( g'32)] bf'16[ <f' df''>8 g'16] } >> | \break

        \pageBreak

        % Measure 68
        | ef'16[ g'16 f'16 g'16] df''16[ <df' g'>8 <c'_~ af'^~>16] |
        \alternative {
            {
                | <c'_~ af'^~>2 |
                | <c' af'>8 \acciaccatura f''8 \stemDown ef''8 \acciaccatura f'8 ef'8[ af'16 c''16] |
            }
            {
                | \stemUp <c'_~ af'^~>2\repeatTie |
                | <c' af'>8 r8 \stemDown <af' c'' af''>8[ ef'8] |
            }
        }} \break

        % Measure 73
        | \section \sectionLabel \section-d \repeat volta 2 { g'16[ bf'8 c''16] df''8[ g''16 f''16] |
        | <df'' ef''>8 <df'' ef''>4 \stemUp ef'8 |
        | \stemDown af'16[ c''8 df''16] ef''8[ af''16 f''16] |
        | <c'' ef''>8 <c'' ef''>4 <c'' ef''>8 | \break

        % Measure 77
        | <df'' f''>16[ <df'' f''>8 <df''_~ f''^~>16] <df'' f''>16[ af''16 bf''16 af''16] |
        | <c'' c'''>8[ <c''_~ c'''^~>8] <c'' c'''>16[ <ef'' ef'''>16 <d'' d'''>16 <c'' c'''>16] |
        | <bf' bf''>16[ g''16 c'''16 bf''16] af''16[ d''8 bf''16] |
        | ef''8 r8 <ef'' g'' ef'''>8[ ef'8] | \break

        % Measure 81
        | g'16[ bf'8 c''16] df''8[ g''16 f''16] |
        | <df'' ef''>8 <df'' ef''>4 \stemUp ef'8 |
        | \stemDown af'16[ c''8 df''16] ef''8[ af''16 f''16] |
        | <c'' ef''>8 <c'' ef''>4 <c'' ef''>8 | \break

        % Measure 85
        | << { \stemDown <df'' f''>16[ <df'' f''>8 f''16^~] \stemUp f''16[ af''16^( g''16 f''16)] } \\ { s8. \stemDown \once \override Stem.length = #2 \once \omit Flag b'16_~] b'4 } >> |
        | <c'' ef''>8[ <c''_~ ef''^~>8] <c'' ef''>16[ ef''16 c''16 bf'16] |
        | \stemUp <d' af'>8[ <d' af'>8] <df' g' bf'>16[ <df' g' bf'>8 ef'16] |
        \alternative {
            { | \stemDown <c' af'>8[ ef''16 ef''16] ef''8[ ef'8] | }
            { | \stemUp <c' af'>4 \stemDown <af' c'' af''>8 r8 | }
        }}

        \fermata-over-bar-line
        \fine
    }

    \new Staff = "LH" {
        \key ef \major
        \clef bass

        % Measure 1
        | \stemDown ef16[ f16 g16 f16^~] f8[ bf,8] |
        | f16[ g16 af16 g16^~] g8[ bf,8] |
        | \stemUp c16[ c8 b,16] \stemDown c16[ d16 ef8] |
        | \stemUp bf,8 bf,4 r8 |

        % Measure 5
        | \section \repeat volta 2 { \stemDown ef8[ <g bf ef'>8] bf,8[ <g bf ef'>8] |
        | ef8[ <g bf ef'>8] bf,8[ <g bf ef'>8] |
        | ef8[ <g bf ef'>8] bf,8[ <g bf ef'>8] |
        | f8[ <af bf d'>8] bf,8[ <af bf d'>8] |

        % Measure 9
        | f8[ <af bf d'>8] bf,8[ <af bf d'>8] |
        | f8[ <af bf d'>8] bf,8[ <af bf d'>8] |
        | f8[ < bf d'>8] fs8[ <fs c' ef'>8] |
        | g8[ <bf ef'>8] <bf ef'>8 r8 |

        % Measure 13
        | ef8[ <g bf ef'>8] bf,8[ <g bf ef'>8] |
        | ef8[ <g bf ef'>8] bf,8[ <g bf ef'>8] |
        | b,8[ <g d' f'>8] g,8[ <g d' f'>8] |
        | c8[ <g c' ef'>8] <g c' ef'>8 r8 |

        % Measure 17
        | <af, af>4 <a, a>4 |
        | <bf, bf>8[ <g bf ef'>8] c8[ <g bf c' e'>8] |
        | <f c' ef'>8[ <f c' ef'>8] <bf d'>8[ <bf d'>8] |
        \alternative {
            { | <ef ef'>8[ <g bf ef'>8] <g bf ef'>8 r8 | }
            { | <ef ef'>8[ <bf, bf>8] \stemUp <ef, ef>8[ f,8] | }
        }}

        % Measure 22
        | \section \key bf \major \repeat volta 2 { \stemDown c8[ <f c' ef'>8] f,8[ <f c' ef'>8] |
        | c8[ <f a ef'>8] f,8[ <f a ef'>8] |
        | bf,8[ <f bf d'>8] f,8[ <f bf d'>8] |
        | bf,8[ <f bf d'>8] f,8[ <f bf d'>8] |
        | c8[ <f c' ef'>8] f,8[ <f a ef'>8] |
        | c8[ <f a ef'>8] f,8[ <f a ef'>8] |

        % Measure 28
        | bf,8[ <f bf d'>8] f,8[ <f bf d'>8] |
        | bf,8[ <f bf d'>8] f,8[ <f bf d'>8] |
        | c8[ <f c' ef'>8] f,8[ <f c' ef'>8] |
        | c8[ <f a ef'>8] f,8[ <f a ef'>8] |
        | bf,8[ <f bf d'>8] f,8[ <f bf d'>8] |
        | bf,8[ <f bf d'>8] d8[ <f bf d'>8] |

        % Measure 34
        | \stemUp <ef, ef>8[ <ef, ef>8] <f, f>8[ <ef, ef>8] |
        | <d, d>8[ <d, d>8] <ef, ef>8[ <d, d>8] |
        | <c, c>8[ <c, c>8] <f, f>8[ <f, f>8] |
        \alternative {
            { | \stemDown <bf, bf>8[ <f bf>8] <f bf>8[ f,8] | }
            { | <bf, bf>8[ <f, f>8] \stemUp <bf,, bf,>4 | }
        }}

        % Measure 39
        | \section \key ef \major \stemDown ef8[ <g bf ef'>8] bf,8[ <g bf ef'>8] |
        | ef8[ <g bf ef'>8] bf,8[ <g bf ef'>8] |
        | ef8[ <g bf ef'>8] bf,8[ <g bf ef'>8] |
        | f8[ <af bf d'>8] bf,8[ <af bf d'>8] |

        % Measure 43
        | f8[ <af bf d'>8] bf,8[ <af bf d'>8] |
        | f8[ <af bf d'>8] bf,8[ <af bf d'>8] |
        | f8[ < bf d'>8] fs8[ <fs c' ef'>8] |
        | \stemDown g8[ <bf ef'>8] <bf ef'>8 r8 |

        % Measure 47
        | ef8[ <g bf ef'>8] bf,8[ <g bf ef'>8] |
        | ef8[ <g bf ef'>8] bf,8[ <g bf ef'>8] |
        | b,8[ <g d' f'>8] g,8[ <g d' f'>8] |
        | c8[ <g c' ef'>8] <g c' ef'>8 r8 |

        % Measure 51
        | <af, af>4 <a, a>4 |
        | <bf, bf>8[ <g bf ef'>8] c8[ <g c' e'>8] |
        | <f c' ef'>8[ <f c' ef'>8] <bf d'>8[ <bf d'>8] |
        | <ef ef'>8[ <bf, bf>8] \stemUp <ef, ef>8 r8 |

        % Measure 55
        | \section \key af \major \repeat volta 2 { \stemDown <af, af>8[ <ef af c'>8] <ef, ef>8[ <ef af c'>8] |
        | <a, a>8[ <a, a>8] \stemUp <f, f>8[ <f, f>8] |
        | <d, d>8[ <d, d>8] <bf,, bf,>8[ <bf,, bf,>8] |
        | <f, f>8[ <f, f>8] <bf,, bf,>8[ <bf,, bf,>8] |

        % Measure 59
        | \stemDown <ef, ef>8[ <ef g df'>8] <g, g>8[ <ef bf df'>8] |
        | <bf, bf>8[ <ef g df'>8] <ef, ef>8[ <ef g df'>8] |
        | <af, af>8[ <ef af c'>8] <ef, ef>8[ <ef af c'>8] |
        | <af, af>8[ <ef af c'>8] <ef, ef>8[ <ef af c'>8] |
        | <af, af>8[ <ef af c'>8] <ef, ef>8[ <ef af c'>8] |

        % Measure 64
        | <a, a>8[ <a, a>8] \stemUp <f, f>8[ <f, f>8] |
        | <d, d>8[ <d, d>8] <bf,, bf,>8[ <bf,, bf,>8] |
        | <f, f>8[ <f, f>8] <bf,, bf,>8[ <bf,, bf,>8] |
        | \stemDown <ef, ef>8[ <ef g df'>8] <g, g>8[ <ef bf df'>8] |

        % Measure 68
        | <bf, bf>8[ <ef g df'>8] <ef, ef>8[ <ef g bf>8] |
        \alternative {
            {
                | \stemUp <af, af>8[ <ef, ef>16 <f,_~ f^~>16] <f, f>16[ <ef, ef>16 <f, f>16 <g, g>16] |
                | \stemDown <af, af>8 r8 r4 |
            }
            {
                | \stemUp <af, af>8[ <ef, ef>8] <f, f>16[ <ef, ef>8 <c, c>16] |
                | <af,, af,>8 r8 <af,, af,>8 r8 |
            }
        }}

        % Measure 73
        | \section \repeat volta 2 { \stemDown <bf, bf>8[ <ef g df'>8] <ef, ef>8[ <ef bf df'>8] |
        | <g, g>8[ <ef bf df'>8] <ef, ef>8[ <ef g df'>8] |
        | <af, af>8[ <ef af c'>8] <ef, ef>8[ <ef af c'>8] |
        | af,8[ <ef af c'>8] c,8[ <ef af c'>8] |

        % Measure 77
        | df,8[ <f af df'>8] df,8[ <ff af df'>8] |
        | af,8[ <ef af c'>8] a,8[ <fs a c' ef'>8] |
        | bf,8[ <g bf ef'>8] bf,8[ <f af bf d'>8] |
        | <ef g bf ef'>8[ <g, g>16 <bf, bf>16] \stemUp <ef, ef>8 r8 |

        % Measure 81
        | \stemDown <bf, bf>8[ <ef g df'>8] <ef, ef>8[ <ef bf df'>8] |
        | <g, g>8[ <ef bf df'>8] <ef, ef>8[ <ef g df'>8] |
        | <af, af>8[ <ef af c'>8] <ef, ef>8[ <ef af c'>8] |
        | af,8[ <ef af c'>8] c,8[ <ef af c'>8] |

        % Measure 85
        | df,8[ <f af df'>8] d,8[ <f af b>8] |
        | ef,8[ <ef af c'>8] \stemUp <ef, ef>8[ <e, e>8] |
        | <f, f>8[ <f, f>8] <ef, ef>8[ <g, g>8] |
        \alternative {
            { | \stemDown <af, af>8 r8 r4 | }
            { | \stemUp <af, af>8[ <ef, ef>8] <af,, af,>8 r8 | }
        }}

        \fine
    }
>>
