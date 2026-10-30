\version "2.26.0"
\language "english"

palm-leaf-rag-score = \new PianoStaff <<
    \new Staff {
        \key bf \major
        \time 2/4
        \clef treble

        \tag #'layout { \tempo "Play a little slow" }
        \tag #'midi { \tempo 4 = 80 }

        | \stemUp bf'16[ a'16 g'16 bf'16_~] bf'16[ a'16 g'8] |
        | f'16[ g'16 a'16 f'16_~] f'4 |
        | c'8[ d'16 ef'16] f'16[ g'8 a'16] |
        | \stemDown bf'8 r8 r4 | \break

        | \section \repeat volta 2 { \stemUp f'8[ g'16 a'16_~] a'16[ g'16 f'8] |
        | \stemDown <f'_~ a'^~ f''^~>4 <f' a' f''>16[ ef''16 c''16 cs''16] |
        | d''16[ d'''16 bf''16 f''16] g''16[ f''16 bf'16 d''16^~] |
        | d''16[ bf''16 a''16 g''16] g''16[ f''8 d''16] | \break

        | << { \voiceOne \stemUp ef''8[ f''16 ef''16^~] ef''16[ d''16 c''8] } \\ { \voiceTwo \stemDown a'8.[ a'16_~] a'8[ a'8] } >> |
        | bf'4^~ bf'16[ d''16 g''16 bf''16] |
        | a''16[ f''16 d''16 a'16^~] a'16[ g''16 f''16 e''16] |
        | d''4^~ d''8 r8 |
        | \stemUp f'8[ g'16 a'16_~] a'16[ g'16 f'8] | \break

        | \stemDown <f'_~ a'^~ f''^~>4 <f' a' f''>16[ ef''16 c''16 cs''16] |
        | d''16[ d'''16 bf''16 f''16] << { \voiceOne \stemUp af''16[ g''16 f''16 ef''16^~] } \\ { \voiceTwo \stemDown b'8.[ c''16_~] } >> |
        | << { \voiceOne \stemDown ef''16[ fs''16 g''16 a''!16] } \\ { \voiceTwo \once \override Stem.length = #2 \once \override Flag.stencil = ##f c''16 s8. } >> c'''16[ bf''16 g''16 ef''16] |
        | g''16[ bf'16 c''16 ef''16^~] ef''16[ f''16 <bf' g''>8] | \break

        \pageBreak

        | <bf'_~ f''^~ bf''^~>4 <bf' f'' bf''>16[ bf''16 a''16 g''16] |
        | f''16[ d''8 c''16] \stemUp <e' bf'>8[ <ef' a' c''>8] |
        \alternative {
            { | <d' bf'>8 \stemDown d''16[^( cs''16] d''16[ bf'16 g'16 gf'16)] | }
            { | \stemUp <d' bf'>8 \stemDown d''8[^( f''8 <f'' d'''>8)] | }
        }} \break

        | \section \repeat volta 2 { <fs'' c'''>16[ <g'' bf''>8 <g'_~ ef''^~ g''^~>16] <g' ef'' g''>16[ <a' f'' a''>16 <bf' g'' bf''>8] |
        | \stemUp <ef'_~ ef''^~>4 \stemDown <ef' ef''>8[ <bf' g'' bf''>8] |
        | \stemUp <cs'' g''>16[ <d'' f''>8 <d'_~ bf'^~ d''^~>16] <d' bf' d''>16[ <ef' c'' ef''>16 <f' d'' f''>8] |
        | <bf_~ bf'^~>4 <bf bf'>8[ d''8] | \break

        | \stemDown ef''16[ f''16 a'16 c''16] ef''16[ f''8 a''16] |
        | <ef'' g''>8[ a''16 <ef''_~ g''^~>16] <ef'' g''>16[ a''16 c'''16 ef''16] |
        | d''16[ f''16 bf'16 c''16] d''16[ f''8 bf''16] |
        | <d'' g''>8[ bf''16 <d''_~ g''^~>16] <d'' g''>16[ bf''16 <f'' d'''>8] | \break

        | <fs'' c'''>16[ <g'' bf''>8 <g'_~ ef''^~ g''^~>16] <g' ef'' g''>16[ <a' f'' a''>16 <bf' g'' bf''>8] |
        | \stemUp <ef'_~ ef''^~>4 \stemDown <ef' ef''>8[ <bf' g'' bf''>8] |
        | \stemUp <cs'' g''>16[ <d'' f''>8 <d'_~ bf'^~ d''^~>16] <d' bf' d''>16[ <ef' c'' ef''>16 <f' d'' f''>8] |
        | <bf_~ bf'^~>4 <bf bf'>8[ <d' af'>8] | \break

        | <ef' g'>8.[ <g' bf'>16] \stemDown <bf' ef''>16[ g'16 bf'16 c''16] |
        | \stemUp <bf' d''>8[ f'8] e'16[_( g'16 bf'16 cs''16)] |
        | \stemDown d''8[ f''16 f'16^~] f'16[ d''16 c''!8] |
        \alternative {
            { | bf'8 d''8[^( f''8 <f'' d'''>8)] | }
            { | bf'4^~ bf'8 }
        }} \break

        \pageBreak

          \section \key ef \major \stemUp g'16[_( af'!16)] |
        | \show-measure-number \repeat volta 2 { | \stemDown bf'16[^( g''16 f''16 ef''16] bf'16[ b'16 c''16 cs''16)] |
        | d''16[ <af'' c'''>8 d''16] <af'' c'''>8.[ bf'!16^~] |
        | bf'16[ g''16^( f''16 ef''16] bf'16[ b'16 c''16 cs''16)] | \break

        | d''16[ <af'' c'''>8 d''16] <af'' c'''>8.[ bf''16^~] |
        | bf''16[ f''16 g''16 af''16^~] af''16[ g''16 f''16 fs''16] |
        | g''16[ fs''16 g''16 <g''_~ ef'''^~>16] <g'' ef'''>16[ d'''16 <g'' ef'''>16 c'''16]  | \break

        | <f''! d'''>16[ bf''16 f''16 <e''_~ g''^~>16] <e'' g''>16[ <e'' g''>16 <ef'' a''>8] |
        | << { \voiceOne \stemUp bf''16[ c'''16 bf''16 af''!16] f''16[ d''16 c''16 cf''16] } \\ { \voiceTwo \stemDown d''4 r4 } >> |
        | bf'16[^( g''16 f''16 ef''16] bf'16[ b'16 c''16 cs''16)] | \break

        | d''16[ <af'' c'''>8 d''16] <af'' c'''>8.[ bf'!16^~] |
        | bf'16[ g''16^( f''16 ef''16] bf'16[ b'16 c''16 cs''16)] |
        | d''16[ <af'' c'''>8 d''16] <af'' c'''>8.[ g''16^~] |
        | g''16[ ef'''16 bf''16 g''16] ef''16[ g''16 f''16 ef''16] | \break

        | c''16[ b'16 c''16 ef''16^~] ef''16[ c''16 a'16 fs'16] |
        | \stemUp g'16[ af'!16 bf'!8] g'16[ f'!8 bf'16] |
        \alternative {
            { | ef'8[ \acciaccatura c''8 bf'8] \acciaccatura c''8 bf'8[ g'16_( af'16)] | }
            { | ef'4 <ef' g' bf' ef''>8 r8 | }
        }} \break

        \pageBreak

        | \section ef'16[_( bf'16 g'16 gf'16)] << { \voiceOne \stemUp f'8[_( <bf' d''>8)] } \\ { \voiceTwo \stemDown f'4 } >> |
        | ef'16[_( bf'16 g'!16 gf'16] f'4) |
        | \stemDown a'16[ c''16 ef''16 g''!16^~] g''16[ f''16 ef''16 a'16] |
        | bf'8 r8 r4 | \break

        | \section \key bf \major \repeat volta 2 { \stemUp f'8[ g'16 a'16_~] a'16[ g'16 f'8] |
        | \stemDown <f'_~ a'^~ f''^~>4 <f' a' f''>16[ ef''16 c''16 cs''16] |
        | d''16[ d'''16 bf''16 f''16] g''16[ f''16 bf'16 d''16^~] |
        | d''16[ bf''16 a''16 g''16] g''16[ f''8 d''16] | \break

        | << { \voiceOne \stemUp ef''8[ f''16 ef''16^~] ef''16[ d''16 c''8] } \\ { \voiceTwo \stemDown a'8.[ a'16_~] a'8[ a'8] } >> |
        | bf'4^~ bf'16[ d''16 g''16 bf''16] |
        | a''16[ f''16 d''16 a'16^~] a'16[ g''16 f''16 e''16] |
        | d''4^~ d''8 r8 |
        | \stemUp f'8[ g'16 a'16_~] a'16[ g'16 f'8] | \break

        | \stemDown <f'_~ a'^~ f''^~>4 <f' a' f''>16[ ef''16 c''16 cs''16] |
        | d''16[ d'''16 bf''16 f''16] << { \voiceOne \stemUp af''16[ g''16 f''16 ef''16^~] } \\ { \voiceTwo \stemDown b'8.[ c''16_~] } >> |
        | << { \voiceOne \stemDown ef''16[ fs''16 g''16 a''!16] } \\ { \voiceTwo \once \override Stem.length = #2 \once \override Flag.stencil = ##f c''16 s8. } >> c'''16[ bf''16 g''16 ef''16] |
        | g''16[ bf'16 c''16 ef''16^~] ef''16[ f''16 <bf' g''>8] | \break

        | <bf'_~ f''^~ bf''^~>4 <bf' f'' bf''>16[ bf''16 a''16 g''16] |
        | f''16[ d''8 c''16] \stemUp <e' bf'>8[ <ef' a' c''>8] |
        \alternative {
            { | <d' bf'>8 \stemDown d''16[^( cs''16] d''16[ bf'16 g'16 gf'16)] | }
            { | \stemUp <d' bf'>4 \stemDown <bf' d'' f'' bf''>8 r8 | }
        }}

        \fine
    }

    \new Dynamics {
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
            { | s2 | }
        }}

        | | \section \repeat volta 2 { s2\f |
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
            { | s4. }
        }}

          \section s8 |
        | \repeat volta 2 { | s2 |
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

        | \section s2 |
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
            { | s2 | }
        }}

        \fine
    }

    \new Staff {
        \key bf \major
        \clef bass

        | \stemDown bf16[ a16 g16 bf16^~] bf16[ a16 g8] |
        | f16[ g16 a16 f16^~] f4 |
        | c8[ f16 g16] f16[ ef8 c16] |
        | bf,8[ <f bf d'>8] f,8[ <f bf d'>8] |

        | \section \repeat volta 2 { <c c'>8[ <f a ef'>8] f,8[ <f a ef'>8] |
        | c8[ <f a ef'>8] f,8[ <f a ef'>8] |
        | bf,8[ <f bf d'>8] f,8[ <f bf d'>8] |
        | bf,8[ <f bf d'>8] <d d'>8[ <b, b>8] |

        | <c c'>8[ <f a ef'>8] \stemUp <f, f>8[ <fs, fs>8] |
        | \stemDown <g, g>8[ <g bf d'>8] g,8[ <bf d'>8] |
        | a,8[ <a d' f'>8] a,8[ <a cs' g'>8] |
        | <d' f'>8[ \acciaccatura gs,8 \once \override Script.extra-offset = #'(0 . 3) a,8^^] \stemUp \once \override Script.extra-offset = #'(0 . 2) d,8^^ r8 |
        | \stemDown c8[ <f a ef'>8] f,8[ <f a ef'>8] |

        | c8[ <f a ef'>8] f,8[ <f a ef'>8] |
        | bf,8[ <f bf d'>8] g,8[ <g b d'>8] |
        | c8[ <g c' ef'>8] <ef, ef>8[ <g c' ef'>8] |
        | <ef, ef>8[ <g bf ef'>8] \stemUp <g, g>8[ <ef, ef>8] |

        | \stemDown <d, d>8[ <f bf d'>8] <e, e>8[ <g bf cs'>8] |
        | <f, f>8[ <f bf d'>8] \stemUp <g, g>8[ <f, f>8] |
        \alternative {
            { | \stemDown <bf, bf>8 r8 r8 <b, b>8 | }
            { | <bf, bf>8 f'8[^( d'8 bf8)] | }
        }}

        | \section \repeat volta 2 { ef8[ <g bf ef'>8] bf,8[ <g bf ef'>8] |
        | g16[^( fs16 g16 a16] bf16[) g16 ef8] |
        | bf,8[ <f bf d'>8] f,8[ <f bf d'>8] |
        | d16[^( cs16 d16 ef16] f16[) d16 f8] |

        | c8[ <f a ef'>8] f,8[ <f a ef'>8] |
        | a,8[ <f c' ef'>8] f,8[ <f a ef'>8] |
        | bf,8[ <f bf d'>8] f,8[ <f bf d'>8] |
        | bf,8[ <f bf d'>8] <d d'>8[ <bf, bf>8] |

        | ef8[ <g bf ef'>8] bf,8[ <g bf ef'>8] |
        | g16[^( fs16 g16 a16] bf16[) g16 ef8] |
        | bf,8[ <f bf d'>8] f,8[ <f bf d'>8] |
        | d16[^( cs16 d16 ef16] f16[) d16 bf,8] |

        | <ef, ef>8[ <g bf ef'>8] \stemUp <g, g>8[ <gf, gf>8] |
        | \stemDown <f, f>8[ <bf d'>8] cs'16[^( bf16 g16 e16)] |
        | f8[ <bf d'>8] f8[ <a ef'>8] |
        \alternative {
            { | <bf d'>8 f'8[^( d'8 bf8)] | }
            { | << { \voiceOne \stemUp d'4^~ d'8 } \\ { \voiceTwo \stemDown bf8[ f8 bf,8] } >> }
        }}

          \section \key ef \major r8 |
        | \repeat volta 2 { | <ef, ef>8[ <bf ef' g'>8] \stemUp <g, g>8[ <gf, gf>8] |
        | \stemDown <f, f>8[ <bf d' af'>8] bf,8[ <bf d' af'>8] |
        | <ef, ef>8[ <bf ef' g'>8] \stemUp <g, g>8[ <gf, gf>8] |

        | \stemDown <f, f>8[ <bf d' af'>8] bf,8[ <bf d' af'>8] |
        | <d, d>8[ <bf d' af'>8] bf,8[ <bf d' af'>8] |
        | <ef, ef>8[ <bf ef' g'>8] c8[ <c' ef'>8] |

        | f8[ <bf d'>8] c8[ f8] |
        | << { \voiceOne r4 \stemUp <bf d' af'>4 } \\ { bf,2 } >> |
        | <ef, ef>8[ <bf ef' g'>8] \stemUp <g, g>8[ <gf, gf>8] |

        | \stemDown <f, f>8[ <bf d' af'>8] bf,8[ <bf d' af'>8] |
        | <ef, ef>8[ <bf ef' g'>8] \stemUp <g, g>8[ <gf, gf>8] |
        | \stemDown <f, f>8[ <bf d' af'>8] bf,8[ <bf d' af'>8] |
        | <ef, ef>8[ <bf ef' g'>8] g,8[ <bf df' ef'>8] |

        | af,8[ <af c' ef'>8] a,8[ <fs c' ef'>8] |
        | bf,8[ <g bf ef'>8] bf,8[ <af bf d'>8] |
        \alternative {
            { | <ef g bf>8 r8 r4 | }
            { | <ef g bf>8[ <bf, bf>8] \stemUp <ef, ef>8 r8 | }
        }}

        | \section << { \voiceOne \stemUp s4 f4 } \\ { \voiceTwo \stemDown ef8[_( e8] f8[ bf,8)] } >> |
        | \stemDown ef8[^( e8)] f4 |
        | c8[ <f a ef'>8] f,8[ <f a ef'>8] |
        | bf,8[ <f bf d'>8] f,8[ <f bf d'>8] |

        | \section \key bf \major \repeat volta 2 { <c c'>8[ <f a ef'>8] f,8[ <f a ef'>8] |
        | c8[ <f a ef'>8] f,8[ <f a ef'>8] |
        | bf,8[ <f bf d'>8] f,8[ <f bf d'>8] |
        | bf,8[ <f bf d'>8] <d d'>8[ <b, b>8] |

        | <c c'>8[ <f a ef'>8] \stemUp <f, f>8[ <fs, fs>8] |
        | \stemDown <g, g>8[ <g bf d'>8] g,8[ <bf d'>8] |
        | a,8[ <a d' f'>8] a,8[ <a cs' g'>8] |
        | <d' f'>8[ \acciaccatura gs,8 \once \override Script.extra-offset = #'(0 . 3) a,8^^] \stemUp \once \override Script.extra-offset = #'(0 . 2) d,8^^ r8 |
        | \stemDown c8[ <f a ef'>8] f,8[ <f a ef'>8] |

        | c8[ <f a ef'>8] f,8[ <f a ef'>8] |
        | bf,8[ <f bf d'>8] g,8[ <g b d'>8] |
        | c8[ <g c' ef'>8] <ef, ef>8[ <g c' ef'>8] |
        | <ef, ef>8[ <g bf ef'>8] \stemUp <g, g>8[ <ef, ef>8] |

        | \stemDown <d, d>8[ <f bf d'>8] <e, e>8[ <g bf cs'>8] |
        | <f, f>8[ <f bf d'>8] \stemUp <g, g>8[ <f, f>8] |
        \alternative {
            { | \stemDown <bf, bf>8 r8 r8 <b, b>8 | }
            { | <bf, bf>8[ <f, f>8] \stemUp <bf,, bf,>8 r8 | }
        }}

        \fine
    }
>>
