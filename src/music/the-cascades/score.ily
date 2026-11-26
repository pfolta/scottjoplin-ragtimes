\version "2.26.0"
\language "english"

the-cascades-score = \new PianoStaff <<
    \new Staff = "RH" {
        \key c \major
        \time 2/4
        \clef treble

        \tag #'layout { \tempo "Tempo di marcia" }
        \tag #'midi { \tempo 4 = 90 }

        % Measure 1
        | \stemUp g'8 g'4 a'8 |
        | \stemDown b'8 b'4 f''8 |
        | e''4 d''4 |
        | <g' b' g''>8^^ \stemUp fs'16[^( g'16] \stemDown a'16[ b'16 c''16 d''16)] | \break

        % Measure 5
        | \section \sectionLabel \section-a \repeat volta 2 { e''16[^(  ds''16 e''16 f''16] g''16[ a''16 c'''16 a''16)] |
        | b''16[^( c'''16 d'''16 f''16] a''16[ g''16 d''16 ds''16)] |
        | e''16[^(  ds''16 e''16 f''16] g''16[ a''16 c'''16 a''16)] |
        | b''16[^( c'''16 d'''16 f''16] a''16[ g''16 d''16 e''16)] | \break

        % Measure 9
        | f''16[^( d''16 b'16 gs'16] \stemUp a'8) r8 |
        | \stemDown f''16[^( d''16 b'16 gs'16] \stemUp a'8) r8 |
        \tag #'layout {
            | \change Staff = "LH" \shape #'((0 . -3) (6 . 3) (-6 . 2) (0 . -0.5)) Slur a,16[^(^\rh c16 ds16 fs16] a16[ c'16 ds'16 fs'16] |
            | \change Staff = "RH" a'16[ c''16 ds''16 fs''16] a''16[ c'''16 ds'''16 fs'''16)] |
        }
        \tag #'midi {
            | a,16[^( c16 ds16 fs16] a16[ c'16 ds'16 fs'16] |
            | a'16[ c''16 ds''16 fs''16] a''16[ c'''16 ds'''16 fs'''16)] |
        }
        \break

        % Measure 13
        | \stemDown <c''' ef''' af'''>8[ <c''' ef''' fs'''>16 <c'''_~ ef'''^~ fs'''^~>16] <c''' ef''' fs'''>16[ <c''' ef''' fs'''>16 <c''' ef''' fs'''>8] |
        | <c''' e''' g'''>4 g'''16[^( e'''16 c'''16 g''16)] |
        | <c'' fs'' a''>4 <f'' d'''>16[ <f'' d'''>8 <f'' g''>16] |
        | <e'' c'''>8 c''16[^( d''16] e''16[ f''16 fs''16 g''16)] | \break

        \pageBreak

        % Measure 17
        | <c'' ef'' af''>8[ <c'' ef'' fs''>16 <c''_~ ef''^~ fs''^~>16] <c'' ef'' fs''>16[ <c'' ef'' fs''>16 <c'' ef'' fs''>8] |
        | <c'' e'' g''>4 g''16[^( e''16 c''16 g'16)] |
        | \stemUp <c' fs' a'>4 <f' d''>16[ <f' d''>8 <f' g'>16] |
        \alternative {
            { | <e' c''>8 fs'16[^( g'16] \stemDown a'16[ b'16 c''16 d''16)] | }
            { | \stemUp <e' c''>8 \stemDown g''16[ g''16] g''8[ g''8] | }
        }} \break

        % Measure 22
        | \section \sectionLabel \section-b \repeat volta 2 {
          \tag #'layout { \once \override Staff.Arpeggio.positions = #'(2 . 7) <g'' b'' g'''>16\arpeggio[^( f'''16 d'''16 b''16] g''16[ f''16 d''16 b'16)] }
          \tag #'midi { << { g''16 } \\ { s64 b''32. } \\ { s32 g'''32( } >> f'''16 d'''16 b''16 g''16 f''16 d''16 b'16) }
        | <c'' e''>8[ <a' c'' e''>16 <g'_~ c''^~ e''^~>16] <g' c'' e''>16[ <a' c'' e''>16 <g' c'' e''>8] |
        | <b' f''>8[ <a' b' f''>16 <g'_~ b'^~ f''^~>16] <g' b' f''>16[ <a' f''>16 <g' f''>8] |
        | <c'' e''>8[ <a' c'' e''>16 <g'_~ c''^~ e''^~>16] <g' c'' e''>16[ g''16 c'''16 e'''16] | \break

        % Measure 26
        |
          \tag #'layout { \once \override Staff.Arpeggio.positions = #'(2 . 7) <g'' b'' g'''>16\arpeggio[^( f'''16 d'''16 b''16] g''16[ f''16 d''16 b'16)] }
          \tag #'midi { << { g''16 } \\ { s64 b''32. } \\ { s32 g'''32( } >> f'''16 d'''16 b''16 g''16 f''16 d''16 b'16) }
        |
        | <c'' e''>8[ <a' c'' e''>16 <g'_~ c''^~ e''^~>16] <g' c'' e''>16[ g'16 <g' as' e''>8] |
        | <g' b' e''>8[ <g' b' d''>16 <g'_~ b'^~>16] \stemUp <g' b'>16[ <b g'>16 <c' a'>8] |
        | << { \stemUp <b g'>16[ g'16 b'16 d''16] \stemDown g''16[ g''16 b''16 d'''16] } \\ { \stemDown b8 b8\rest b4\rest } >> \stemDown | \break

        % Measure 30
        |
          \tag #'layout { \once \override Staff.Arpeggio.positions = #'(2 . 7) <g'' b'' g'''>16\arpeggio[^( f'''16 d'''16 b''16] g''16[ f''16 d''16 b'16)] }
          \tag #'midi { << { g''16 } \\ { s64 b''32. } \\ { s32 g'''32( } >> f'''16 d'''16 b''16 g''16 f''16 d''16 b'16) }
        |
        | <c'' e''>8[ <a' c'' e''>16 <g'_~ c''^~ e''^~>16] <g' c'' e''>16[ <a' c'' e''>16 <g' c'' e''>8] |
        | <b' f''>8[ <a' b' f''>16 <g'_~ b'^~ f''^~>16] <g' b' f''>16[ <a' f''>16 <g' f''>8] |
        | <c'' e''>8[ <a' c'' e''>16 <g'_~ c''^~ e''^~>16] <g' c'' e''>8[ <b' d'' g''>8^^] | \break

        % Measure 34
        | c''16[ e''16 g''16 c'''16] c''16[ e''16 g''16 c'''16] |
        | c''16[ f''16 c'''16 f''16] c''16[ c'''8 fs''16] |
        | g''16[ g'16 e''16 d''16] \stemUp <fs' c''>8[ <f' b' d''>8] |
        \alternative {
            { | <e' c''>8 \stemDown g''16[ g''16] g''8[ g''8] | }
            { | \stemUp <e' c''>4 \stemDown <c'' e'' c'''>8 r8 | }
        }} \break

        \pageBreak

        % Measure 39
        | \stemUp <b' d'' f''>8^\rh <b' d'' f''>4 <b' d'' f''>8 |
        | <bf' d'' f''>8 <bf' d'' f''>4 <bf' d'' f''>8 |
        | <bf' ef''>4 <bf' c'' e''>4 |
        | <a' c'' f''>8 r8 \stemDown <f' a' ef'' f''>4^^ |
        | \section \sectionLabel \section-c \key bf \major \repeat volta 2 { <f'_~ bf'_~ d''^~ f''^~>4 \stemUp <f' bf' d'' f''>16[ <d' d''>16 <ef' ef''>16 <e' e''>16] | \break

        % Measure 44
        | <f' f''>16[ <bf' d''>16 <ef' a' ef''>16 <d'_~ bf'^~ d''^~>16] \stemDown <d' bf' d''>16[ d''16 f''16 af''16] |
        | r16 <ef'' g''>16[ <bf' bf''>16 <ef'' g''>16] <c'' c'''>16[ <bf' bf''>8 <f'_~ bf'_~ d''^~ f''^~>16] |
        | <f'_~ bf' d'' f''^~>4 <f' f''>16[ a'16 c''16 f''16] |
        | <f'_~ bf'_~ d''^~ f''^~>4 \stemUp <f' bf' d'' f''>16[ <bf bf'>16 <c' c''>16 <cs' cs''>16] | \break

        % Measure 48
        | <d' d''>16[ bf'16 <c' ef' c''>16 <bf_~ d'_~ bf'^~>16] <bf d' bf'>16[ g'16 <f' bf'>8] |
        | <f' a'>16[ f''16 <f' a' c''>16 <e'_~ bf'^~ d''^~>16] <e' bf' d''>16[ bf'16 <e' g'>8] |
        | \stemDown f'8[ c''16 f''16^~] f''16[ a'16 c''16 f''16] |
        | <f'_~ bf'_~ d''^~ f''^~>4 \stemUp <f' bf' d'' f''>16[ <d' d''>16 <ef' ef''>16 <e' e''>16] | \break

        % Measure 52
        | <f' f''>16[ <bf' d''>16 <ef' a' ef''>16 <d'_~ bf'^~ d''^~>16] \stemDown <d' bf' d''>16[ d''16 f''16 af''16] |
        | r16 <ef'' g''>16[ <bf' bf''>16 <ef'' g''>16] <c'' c'''>16[ <bf' bf''>8 <f'_~ bf'_~ d''^~ f''^~>16] |
        | <f' bf' d'' f''>16[ d''16 f''16 f'16] bf'16[ d''16 f''16 af''16] |
        | r16 <ef'' g''>16[ <bf' bf''>16 <ef'' g''>16] <c'' c'''>16[ <bf' bf''>8 <f'_~ bf'_~ d''^~ f''^~>16] | \break

        % Measure 56
        | <f' bf' d'' f''>16[ <bf' d''>16 <f' bf' d'' f''>16 <g'_~ b'_~ d''^~ g''^~>16] <g' b' d'' g''>16[ d''16 b'16 g'16] |
        | << { \stemUp c''16[ g'16 bf'8] a'16[ f''16 ef''16 c''16] } \\ { \stemDown e'8 b8\rest b4\rest } >> |
        \alternative {
            { | bf'4 r4 | }
            { | bf'4 <bf' d'' bf''>8 r8 | }
        }} \break

        \pageBreak

        % Measure 60
        | \section \sectionLabel \section-d \key ef \major \repeat volta 2 { << { \stemUp <g' bf'>16[ <g' bf'>8 <f' af'>16^(] g'16[ fs'16 g'16 bf'16] } \\ { \stemDown s4 ef'8[ ef'16 g'16] } >> |
        | << { \stemDown <g' ef''>8)[ <ef'' g'' bf''>16 <ef''_~ g''^~>16] <ef'' g''>16[ <ef'' g'' c'''>16 <ef'' g'' bf''>8] } \\ { s2 } >> |
        | << { \stemUp <g' bf'>16[ <g' bf'>8 <f' af'>16^(] g'16[ fs'16 g'16 bf'16] } \\ { \stemDown s4 ef'8[ ef'16 g'16] } >> | \break

        % Measure 63
        | << { \stemDown <g' ef''>8)[ <ef'' g'' bf''>16 <ef''_~ g''^~>16] <ef'' g''>16[ <ef'' g'' c'''>16 <cs'' g'' bf''>8] } \\ { s2 } >> |
        | << { \stemDown <d'' af''>16[ <d'' af''>8 <d'' g''>16]^( \stemUp f''16[ e''16 f''16 fs''16] } \\ { \stemDown s4 d''4 } >> |
        | << { \stemDown <g' ef'' g''>16)[ <af' af''>16 <bf' bf''>16 <c''_~ c'''^~>16] <c'' c'''>16[ <d'' d'''>16 <ef'' ef'''>8] } \\ { s2 } >> | \break

        % Measure 66
        | <d'' d'''>16[ <ef'' ef'''>16 <e'' e'''>16 <f''_~ f'''^~>16] <f'' f'''>16[ f''16 <ef'' c'''>8] |
        | <d''_~ bf''^~>4 <d'' bf''>8 \stemUp <af' bf'>8 |
        | << { \stemUp <g' bf'>16[ <g' bf'>8 <f' af'>16^(] g'16[ fs'16 g'16 bf'16] } \\ { \stemDown s4 ef'8[ ef'16 g'16] } >> |
        | << { \stemDown <g' ef''>8)[ <ef'' g'' bf''>16 <ef''_~ g''^~>16] <ef'' g''>16[ <ef'' g'' c'''>16 <ef'' g'' bf''>8] } \\ { s2 } >> | \break

        % Measure 70
        | << { \stemDown <b' g''>16[ <b' g''>8 <b' g''>16]^( \stemUp af''16[ g''16 d''16 f''16] } \\ { \stemDown s4 b'4 } >> |
        | << { \stemDown <c'' ef''>16)[ f''16 g''16 c'''16^~] c'''16[ g''16 c'''8] } \\ { s2  }>> |
        | \stemDown r16 af''16[ g''16 f''16] af''16[ ef'''8 af''16] | \break

        % Measure 73
        | g''16[ ef''16 g''8] <c'' ef'' fs''>4 |
        | <bf' ef'' g''>16[ bf'16 g''16 f''16] <a' ef''>8[ <af' d'' f''>8] |
        \alternative {
            { | <g' ef''>8 bf'16[ bf'16] bf'8[ bf'8] | }
            { | <g' ef''>4 <ef'' g'' ef'''>8^^ r8 | }
        }}

        \fine
    }

    \new Dynamics {
        % Measure 1
        | s2\mf |
        | s2 |
        | s2 |
        | s2 |

        % Measure 5
        | \section \repeat volta 2 { s2\mf |
        | s2 |
        | s2 |
        | s2 |

        % Measure 9
        | s2 |
        | s2 |
        | s2 |
        | s2 |

        % Measure 13
        | s2 |
        | s2 |
        | s2 |
        | s2 |

        % Measure 17
        | s2 |
        | s2 |
        | s2 |
        \alternative {
            { | s2 | }
            { | s2 | }
        }}

        % Measure 22
        | \section \repeat volta 2 { s2\mf |
        | s2 |
        | s2 |
        | s2 |

        % Measure 26
        | s2 |
        | s2 |
        | s2 |
        | s2 |

        % Measure 30
        | s2 |
        | s2 |
        | s2 |
        | s2 |

        % Measure 34
        | s2 |
        | s2 |
        | s2 |
        \alternative {
            { | s2 | }
            { | s2 | }
        }}

        % Measure 39
        | s2 |
        | s2 |
        | s2 |
        | s2 |
        | \section \repeat volta 2 { s2\mf |

        % Measure 44
        | s2 |
        | s2 |
        | s2 |
        | s2 |

        % Measure 48
        | s2 |
        | s2 |
        | s2 |
        | s2 |

        % Measure 52
        | s2 |
        | s2 |
        | s2 |
        | s2 |

        % Measure 56
        | s2 |
        | s2 |
        \alternative {
            { | s2 | }
            { | s2 | }
        }}

        % Measure 60
        \tag #'layout {
            | \section \repeat volta 2 { s2\p-then-f |
            | s2 |
            | s2 |

            % Measure 63
            | s2 |
            | s2 |
            | s16\< s8 s16\! s16\< s16 s8\! |

            % Measure 66
            | s4.\< s8\! |
            | s4 s8\> s8\! |
            | s2\p-f |
            | s2 |

            % Measure 70
            | s2 |
            | s2 |
            | s2 |

            % Measure 73
            | s2 |
            | s2 |
            \alternative {
                { | s2 | }
                { | s2 | }
            }}
        }
        \tag #'midi {
            | \section s2\p |
            | s2 |
            | s2 |

            % Measure 63
            | s2 |
            | s2 |
            | s16\< s8 s16\! s16\< s16 s8\! |

            % Measure 66
            | s4.\< s8\! |
            | s4 s8\> s8\! |
            | s2\p |
            | s2 |

            % Measure 70
            | s2 |
            | s2 |
            | s2 |

            % Measure 73
            | s2 |
            | s2 |
            | s2 |

            | \section s2\f |
            | s2 |
            | s2 |

            % Measure 63
            | s2 |
            | s2 |
            | s16\< s8 s16\! s16\< s16 s8\! |

            % Measure 66
            | s4.\< s8\! |
            | s4 s8\> s8\! |
            | s2\f |
            | s2 |

            % Measure 70
            | s2 |
            | s2 |
            | s2 |

            % Measure 73
            | s2 |
            | s2 |
            | s2 |
        }

        \fine
    }

    \new Staff = "LH" {
        \key c \major
        \clef bass

        % Measure 1
        | \stemDown <g, g>8 <g, g>4 <a, a>8 |
        | <b, b>8 <b, b>4 <f f'>8 |
        | <e e'>4 <d d'>4 |
        | <g, g>8^^ r8 r4 |

        % Measure 5
        | \section \repeat volta 2 { <c c'>8[ <g c' e'>8] <e e'>8[ <ef ef'>8] |
        | <d d'>8[ <g b f'>8] <g, g>8[ < g b f'>8] |
        | <c c'>8[ <g c' e'>8] <e e'>8[ <ef ef'>8] |
        | <d d'>8[ <g b f'>8] <g, g>8[ < g b f'>8] |

        % Measure 9
        | gs16[^( b16 d'16 f'16] <c' e'>8) r8 |
        | gs16[^( b16 d'16 f'16] <c' e'>8) r8 |
        \tag #'layout {
            | \shape #'((0 . 1) (6 . -3) (-3 . -2) (0 . 2)) Slur c,16[_(_\markup { \raise #-8 \lh } ds,16 fs,16 a,16] c16[ ds!16 fs!16 a16] |
            | \change Staff = "RH" c'16[ ds'16 fs'16 a'16] c''16[ ds''!16 fs''!16 a''16)] \change Staff = "LH" |
        }
        \tag #'midi {
            | c,16[_( ds,16 fs,16 a,16] c16[ ds!16 fs!16 a16] |
            | c'16[ ds'16 fs'16 a'16] c''16[ ds''!16 fs''!16 a''16)] |
        }

        % Measure 13
        | \clef treble af''8[ ef''8 c''8 af'8] |
        | << { \stemUp g'4 e'4 } \\ { \stemDown g'8[ <c'' e''>8] e'8[ <g' c'' e''>8] } >> |
        | \stemUp d'8[_( a'8)] <g' b'>4 |
        | <c' g' c''>8 r8 r4 |

        % Measure 17
        | af'8[ ef'8 c'8 af8] |
        | \clef bass << { \stemUp g4 e4 } \\ { \stemDown g8[ <c' e'>8] e8[ <g c' e'>8] } >> |
        | \stemDown d8[^( a8)] <g b>4 |
        \alternative {
            { | <c g c'>8 r8 r4 | }
            { | <c g c'>8 r8 r8 <cs cs'>8 | }
        }}

        % Measure 22
        | \section \repeat volta 2 { <d d'>8[ <g b f'>8] <g, g>8[ <g b f'>8] |
        | <c c'>8[ <g c' e'>8] <g, g>8[ <g c' e'>8] |
        | <d d'>8[ <g b f'>8] <g, g>8[ <g b f'>8] |
        | <c c'>8[ <g c' e'>8] <g, g>8[ <g c' e'>8] |

        % Measure 26
        | <d d'>8[ <g b f'>8] <g, g>8[ <g b f'>8] |
        | <c c'>8[ <g c' e'>8] \stemUp <e, e>8[ <cs, cs>8] |
        | \stemDown <d, d>8[ <d g>8] <d, d>8[ <d fs>8] |
        | <g, d g>8 r8 <g b d'>8 r8 |

        % Measure 30
        | <d d'>8[ <g b f'>8] <g, g>8[ <g b f'>8] |
        | <c c'>8[ <g c' e'>8] <g, g>8[ <g c' e'>8] |
        | <d d'>8[ <g b f'>8] <g, g>8[ <g b f'>8] |
        | <c c'>8[ <g c' e'>8] <g c' e'>8[ <g, g>8^^]

        % Measure 34
        | << { \stemUp <c c'>4 <bf, bf>4 } \\ { \stemDown c8[ <g c' e'>8] bf,8[ <g c' e'>8] } >> |
        | << { \stemUp <a, a>4 <af, af>4 } \\ { \stemDown a,8[ <a c' f'>8] af,8[ <af c' ds'>8] } >> |
        | <g, g>8[ <g c' e'>8] <a, a>8[ <g, g>8] |
        \alternative {
            { | <c c'>8 r8 r8 <cs cs'>8 | }
            { | <c c'>8[ <g, g>8] \stemUp <c, c>8 r8 | }
        }}

        % Measure 39
        | \stemDown \tag #'layout { \change Staff = "RH" } g'8_\lh g'4 g'8 |
        | af'8 af'4 af'8 |
        | g'4 gf'4 |
        | f'8 s8 \tag #'layout { \change Staff = "LH" } \stemUp <f, f>4^^ |
        | \section \key bf \major \repeat volta 2 { \stemDown <d d'>16[ <bf, bf>16 <a, a>16 <g, g>16] <f, f>16[ <bf, bf>16 <c c'>16 <cs cs'>16] |

        % Measure 44
        | <d d'>8[ <c c'>8] <bf, bf>8[ <f bf d'>8] |
        | <ef, ef>8[ <g bf ef'>8] \stemUp <ef, ef>8[ <cs, cs>8] |
        | <d, d>8[ <f, f>16 <bf, bf>16] \stemDown <c c'!>8[ <ef ef'>8] |
        | <d d'>16[ <bf, bf>16 <a, a>16 <g, g>16] \stemUp <f, f>16[ <d, d>16 <ef, ef>16 <e, e>16] |

        % Measure 48
        | <f, f>8[ <fs, fs>16 <g,_~ g^~>16] \stemDown <g, g>16[ <bf, bf>16 <d d'>16 <df df'>16] |
        | <c c'>8[ <a c'>8] c8[ <bf c'>8] |
        | <f a c'>8[ <a, a>8] <c c'>8[ <ef ef'>8] |
        | <d d'>16[ <bf, bf>16 <a, a>16 <g, g>16] <f, f>16[ <bf, bf>16 <c c'>16 <cs cs'>16] |

        % Measure 52
        | <d d'>8[ <c c'>8] <bf, bf>8[ <f bf d'>8] |
        | <ef, ef>8[ <g bf ef'>8] \stemUp <ef, ef>8[ <g, g>8] |
        | \stemDown <bf, bf>8[ <af, af>8] \stemUp <g, g>8[ <f, f>8] |
        | \stemDown <ef, ef>8[ <g bf ef'>8] \stemUp <ef, ef>8[ <cs, cs>8] |

        % Measure 56
        | <d, d>8[ <af,, af,>8] <g,, g,>8[ <g b d' f'>8] |
        | \stemDown <c g bf>8[ <g c' e'>8] <f c' ef'>8[ <f a ef'>8] |
        \alternative {
            { | << { \stemUp d'4 } \\ { \stemDown bf8[ <f, f>16 <g, g>16] } >> <a, a>16[ <bf, bf>16 <c c'>16 <cs cs'>16] | }
            { | << { \stemUp d'4 } \\ { \stemDown bf8[ <f, f>8] } >> \stemUp <bf,, bf,>8 r8 | }
        }}

        % Measure 60
        | \section \key ef \major \repeat volta 2 { \stemDown ef8[ <g bf ef'>8] bf,8[ <g bf>8] |
        | ef8[ <g bf ef'>8] bf,8[ <g bf ef'>8] |
        | ef8[ <g bf ef'>8] bf,8[ <g bf>8] |

        % Measure 63
        | ef8[ <g bf ef'>8] \stemUp <ef, ef>8[ <e, e>8] |
        | \stemDown <f, f>8[ <af bf d'>8] \stemUp <bf,, bf,>8[ <af bf d'>8] |
        | \stemDown <ef, ef>8[ <g bf ef'>8] <g, g>8[ <gf, gf>8] |

        % Measure 66
        | <f, f>8[ <f bf d'>8] <f, f>8[ <f a>8] |
        | <bf, bf>8[ f8 d8 bf,8] |
        | ef8[ <g bf ef'>8] bf,8[ <g bf>8] |
        | ef8[ <g bf ef'>8] bf,8[ <g bf ef'>8] |

        % Measure 70
        | d8[ <g b f'>8] g,8[ <g b f'>8] |
        | c8[ <g c' ef'>8] c8[ <g c' ef'>8] |
        | <f, f>8[ <af c' f'>8] <c c'>8[ <cf cf'>8] |

        % Measure 73
        | <bf, bf>8[ <g bf ef'>8] <a, a>4 |
        | <bf, bf>8[ <g bf ef'>8] <c c'>8[ <bf, bf>8] |
        \alternative {
            { | <ef ef'>8 r8 << { \stemUp <af bf d'>4 } \\ { \stemDown f8[_( bf,8)] } >> | }
            { | <ef ef'>8[ <bf, bf>8] \stemUp <ef, ef>8^^ r8 | }
        }}

        \fine
    }

    \new Dynamics {
        % Measure 1
        | s2 |
        | s2 |
        | s2 |
        | s2 |

        % Measure 5
        | \section \repeat volta 2 { s2 |
        | s2 |
        | s2 |
        | s2 |

        % Measure 9
        | s2 |
        | s2 |
        | s2 |
        | s2 |

        % Measure 13
        | s2 |
        | s2 |
        | s2 |
        | s2 |

        % Measure 17
        | s2 |
        | s2 |
        | s2 |
        \alternative {
            { | s2 | }
            { | s2 | }
        }}

        % Measure 22
        | \section \repeat volta 2 { s4.\sustainOn s8\sustainOff |
        | s4.\sustainOn s8\sustainOff |
        | s4.\sustainOn s8\sustainOff |
        | s4.\sustainOn s8\sustainOff |

        % Measure 26
        | s4.\sustainOn s8\sustainOff |
        | s4\sustainOn s4\sustainOff |
        | s4\sustainOn s4\sustainOff |
        | s2 |

        % Measure 30
        | s4.\sustainOn s8\sustainOff |
        | s4.\sustainOn s8\sustainOff |
        | s4.\sustainOn s8\sustainOff |
        | s4\sustainOn s4\sustainOff |

        % Measure 34
        | s4.\sustainOn s8\sustainOff |
        | s8\sustainOn s8\sustainOff s8\sustainOn s8\sustainOff |
        | s8\sustainOn s8\sustainOff s4 |
        \alternative {
            { | s2 | }
            { | s2 | }
        }}

        % Measure 39
        | s2 |
        | s2 |
        | s2 |
        | s2 |
        | \section \repeat volta 2 { s4\sustainOn s8. s16\sustainOff |

        % Measure 44
        | s8\sustainOn s8\sustainOff s8\sustainOn s8\sustainOff |
        | s4.\sustainOn s8\sustainOff |
        | s4\sustainOn s4\sustainOff |
        | s4\sustainOn s8. s16\sustainOff |

        % Measure 48
        | s2 |
        | s8\sustainOn s8\sustainOff s8\sustainOn s8\sustainOff |
        | s4.\sustainOn s8\sustainOff |
        | s4\sustainOn s8. s16\sustainOff |

        % Measure 52
        | s8\sustainOn s8\sustainOff s8\sustainOn s8\sustainOff |
        | s4.\sustainOn s8\sustainOff |
        | s4.\sustainOn s8\sustainOff |
        | s4.\sustainOn s8\sustainOff |

        % Measure 56
        | s8\sustainOn s8\sustainOff s8\sustainOn s8\sustainOff |
        | s2 |
        \alternative {
            { | s2 | }
            { | s2 | }
        }}

        % Measure 60
        | \section \repeat volta 2 { s4.\sustainOn s8\sustainOff |
        | s4.\sustainOn s8\sustainOff |
        | s4.\sustainOn s8\sustainOff |

        % Measure 63
        | s4.\sustainOn s8\sustainOff |
        | s4.\sustainOn s8\sustainOff |
        | s4.\sustainOn s8\sustainOff |

        % Measure 66
        | s4.\sustainOn s8\sustainOff |
        | s4.\sustainOn s8\sustainOff |
        | s4.\sustainOn s8\sustainOff |
        | s4.\sustainOn s8\sustainOff |

        % Measure 70
        | s4.\sustainOn s8\sustainOff |
        | s4.\sustainOn s8\sustainOff |
        | s4.\sustainOn s8\sustainOff |

        % Measure 73
        | s2 |
        | s2 |
        \alternative {
            { | s2 | }
            { | s2 | }
        }}

        \fine
    }
>>
