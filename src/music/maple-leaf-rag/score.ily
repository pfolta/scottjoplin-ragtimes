\version "2.26.0"
\language "english"

maple-leaf-rag-score = \new PianoStaff <<
    \new Staff {
        \key af \major
        \time 2/4
        \partial 8
        \clef treble

        \tag #'layout { \tempo "Tempo di marcia" }
        \tag #'midi { \tempo 4 = 100 }

          r8 |
        | \repeat volta 2 { r16 \stemDown af'16[ <ef' ef''>16 af'16] c''16[ <ef' ef''>8 g'16] |
        | <ef' ef''>16[ g'16 bf'16 <ef' ef''>16~] <ef' ef''>4 |
        | r16 af'16[ <ef' ef''>16 af'16] c''16[ <ef' ef''>8 g'16] |
        | <ef' ef''>16[ g'16 bf'16 <ef' ef''>16~] <ef' ef''>8[ r16 <ef' ef''>16] | \break

        | r16 af'16[ cf''16 <ff' ff''>16] r16 <ef' ef''>16 r16 <ef' ef''>16 |
        | r16 af'16[ cf''16 <ff' ff''>16] r16 <ef' ef''>16 r8 |
        | s2 |
        | r16 af'16[( cf''16 af''16)] r16 af''16[( cf'''16 af'''16)] | \break

        | <af'' af'''>8[ <af'' af'''>8] <af'' af'''>8[ <af'' af'''>16 <af'' af'''>16~] |
        | <af'' af'''>16[ ef'''16 f'''16 c'''16] ef'''16[ <af'' f'''>8 <ff'' af''>16~] |
        | <ff''! af''>16[ bf''16 <ff'' cf'''>16 af''16] bf''16[ <ef'' c'''>8 af''16] |
        | <ef'' c'''>16[ af''16 <ef'' bf''>8] <ef'' af''>8[ r16 <af' af''>16~] | \break

        | <af' af''>8[ <af' af''>8] <af' af''>8[ <af' af''>16 <af' af''>16~] |
        | <af' af''>16[ ef''16 <af' f''>16 c''16] ef''16[ <af' f''>8 <ff' af'>16~] |
        | \stemUp <ff'! af'>16[ bf'16 <ff' cf''>16 af'16] bf'16[ <ef' c''>8 af'16] |
        \alternative {
            { | <ef' c''>16[ af'16 <ef' bf'>8] <ef' af'>8 r8 | }
            { | <ef' c''>16[ af'16 <ef' bf'>8] <ef' af'>8 r8 | }
        }} \break

        \pageBreak

        | \section \repeat volta 2 { r16 \stemDown g''16[ <ef'' ef'''>16 g''16] bf''16[ <d'' d'''>8 g''16] |
        | <df''! df'''!>16[ g''16 bf''16 <c'' c'''>16~] <c'' c'''>16[ ef''16 <bf' bf''>16 ef''16] |
        | r16 c''16[ <af' af''>16 c''16] ef''16[ <f' f''>8 c''16] |
        | <af' af''>16[ c''16 ef''16 <f' f''>16~] <f' f''>16[ c''16 <f' f''>8] | \break

        | r16 ef''16[ <g' g''>16 bf'16] df''16[ <f' f''>8 ef''16] |
        | <g' g''>16[ bf'16 df''16 <f' f''>16~] <f' f''>16[ df''16 <f' f''>8] |
        | r16 c''16[ <af' af''>16 c''16] ef''16[ <f' f''>8 c''16] |
        | <af' af''>16[ c''16 ef''16 <f' f''>16~] <f' f''>16[ c''16 <f' f''>8] | \break

        | r16 g''16[ <ef'' ef'''>16 g''16] bf''16[ <d'' d'''>8 g''16] |
        | <df''! df'''!>16[ g''16 bf''16 <c'' c'''>16~] <c'' c'''>16[ ef''16 <bf' bf''>16 ef''16] |
        | r16 c''16[ <af' af''>16 c''16] ef''16[ <f' f''>8 c''16] |
        | <af' af''>8[ <af' af''>8] <g' g''>8[ <gf' gf''>8] |
        | r16 \stemUp f'16[ a'16 c''16] f''16[ c''16 a'16 f'16] | \break

        | r16 f'16[ bf'16 df''16] <f' f''>8[ <f' bf' df''>8] |
        | <d' f' af' c''>8[ r16 <d' f' af' c''>16] r16 <df' bf'>8[ ef'16] |
        \alternative {
            { | <c' af'>8[ <ef' ef''>8] <ef' ef''>8[ <ef' ef''>8] | }
            { | r16 \stemDown af'16[ c''16 ef''16] <af' af''>8 r8 | }
        }}
        | \section r16 af'16[ <ef' ef''>16 af'16] c''16[ <ef' ef''>8 g'16] | \break

        | <ef' ef''>16[ g'16 bf'16 <ef' ef''>16~] <ef' ef''>4 |
        | r16 af'16[ <ef' ef''>16 af'16] c''16[ <ef' ef''>8 g'16] |
        | <ef' ef''>16[ g'16 bf'16 <ef' ef''>16~] <ef' ef''>8[ r16 <ef' ef''>16] |
        | r16 af'16[ cf''16 <ff' ff''>16] r16 <ef' ef''>16 r16 <ef' ef''>16 |
        | r16 af'16[ cf''16 <ff' ff''>16] r16 <ef' ef''>16 r8 | \break

        \pageBreak

        | s2 |
        | r16 af'16[( cf''16 af''16)] r16 af''16[( cf'''16 af'''16)] |
        | <af'' af'''>8[ <af'' af'''>8] <af'' af'''>8[ <af'' af'''>16 <af'' af'''>16~] |
        | <af'' af'''>16[ ef'''16 f'''16 c'''16] ef'''16[ <af'' f'''>8 <ff'' af''>16~] |
        | <ff''! af''>16[ bf''16 <ff'' cf'''>16 af''16] bf''16[ <ef'' c'''>8 af''16] | \break

        | <ef'' c'''>16[ af''16 <ef'' bf''>8] <ef'' af''>8[ r16 <af' af''>16~] |
        | <af' af''>8[ <af' af''>8] <af' af''>8[ <af' af''>16 <af' af''>16~] |
        | <af' af''>16[ ef''16 <af' f''>16 c''16] ef''16[ <af' f''>8 <ff' af'>16~] |
        | \stemUp <ff'! af'>16[ bf'16 <ff' cf''>16 af'16] bf'16[ <ef' c''>8 af'16] |
        | <ef' c''>16[ af'16 <ef' bf'>8] \stemDown <ef' af'>8[ <af' af''>8] | \break

        | \section \sectionLabel "Trio" \key df \major \repeat volta 2 { <af' c'' ef'' af''>8.[ <bf' c'' ef'' af''>16~] <bf' c'' ef'' af''>16[ <c'' ef''>16 bf'8] |
        | <af' c'' ef'' af''>8.[ <bf' c'' ef'' af''>16~] <bf' c'' ef'' af''>16[ <c'' ef''>16 bf'16 <c'' ef''>16] |
        | af'16[ df''16 bf'16 df''16] f''16[ af'16 df''16 f''16] |
        | bf'16[ df''16 f''16 af'16~] af'16[ f''16 bf'16 f''16] | \break

        | <af' c'' ef'' af''>8.[ <bf' c'' ef'' af''>16~] <bf' c'' ef'' af''>16[ <c'' ef''>16 bf'8] |
        | <af' c'' ef'' af''>8.[ <bf' c'' ef'' af''>16~] <bf' c'' ef'' af''>16[ <c'' ef''>16 bf'16 <c'' ef''>16] |
        | af'16[ df''16 bf'16 df''16] f''16[ af'16 df''16 f''16] |
        | bf'16[ df''16 f''16 af'16~] af'16[ f''16 a'16 <ef'' f''>16] | \break

        | <bf' d'' f'' bf''>8.[ <c'' d'' f'' bf''>16~] <c'' d'' f'' bf''>16[ <d'' f''>16 c''8] |
        | <bf' d'' f'' bf''>8.[ <c'' d'' f'' bf''>16~] <c'' d'' f'' bf''>16[ <d'' f''>16 c''16 <d'' f''>16] |
        | r16 ef''16[ <bf' bf''>16 ef''16] gf''16[ <c'' c'''>8 ef''16] |
        | <bf' bf''>16[ ef''16 gf''16 <c'' c'''>16~] <c'' c'''>16[ ef''16 <bf' bf''>8] | \break

        \pageBreak

        | <df'' ff'' df'''>8[ <df'' ff'' df'''>8] <c'' ff'' c'''>8[ <bf' ff'' bf''>8] |
        | <af' f''!>16[ df''16 ef''16 <bf' gf''>16~] <bf' gf''>16[ bf'16 <af' f''>8] |
        | <g' f''>16[ df''16 ef''16 <gf' f''>16~] <gf' f''>16[ c''16 <gf' ef''>16 <f' df''>16~] |
        \alternative {
            { | <f' df''>16[ <af' af''>8 f''16] <af' af''>16[ f''16 <af' af''>16 f''16] | \break }

            { | <f' df''>16\repeatTie[ df''16 f''16 af''16] <df'' df'''>8 r8 | }
        }}
        | \section \key af \major \repeat volta 2 { <af' af''>8[ <af' f''>8] <af' af''>8[ <af' f''>8] |
        | <f'' af''>8[ <f'' bf''>16 <f'' c'''>16~] <f'' c'''>16[ bf''16 af''16 f''16] |
        | ef''16[ f''8 <af' c''>16~] <af' c''>4 | \break

        | r16 ef''16[ <af' f''>16 c''16] ef''16[ <af' f''>8 c''16] |
        | <g' ef''>8[ f''16 <g' bf'>16~] \stemUp <g' bf'>4 |
        | r16 \stemDown df''16[ <g' f''>16 bf'16] df''16[ <g' f''>8 <af' c''>16~] |
        | <af' c''>16[ ef''16 <af' f''>16 c''16] ef''16[ <af' f''>8 <af' c''>16~] | \break

        | <af' c''>16[ ef''16 <af' f''>16 c''16] ef''16[ <af' f''>8 ef''16] |
        | <af' af''>8[ <af' f''>8] <af' af''>8[ <af' f''>8] |
        | <f'' af''>8[ <f'' bf''>16 <f'' c'''>16~] <f'' c'''>16[ bf''16 af''16 f''16] |
        | af''8[ f''8] ef''16[ af''8 <af' c''>16~] |
        | <af' c''>16[ ef''16 <af' f''>16 c''16] ef''16[ <af' f''>8 <f' af'>16~] | \break

        | \stemUp <f' af'>16[ bf'16 <f' af'>8] <ff' af'>8[ <ff' bf'>16 <ef' af'>16~] |
        | <ef' af'>16[ bf'16 <ef' c''>16 af'16] bf'16[ <ef' c''>8 <d' af'>16~] |
        | <d'! af'>16[ bf'16 <d' c''>16 af'16] r16 <df' bf'>8[ ef'16] |
        \alternative {
            { | \stemDown <c' af'>8[ <ef' ef''>8] <ef' ef''>8[ <ef' ef''>8] | }
            { | <c' af'>8[ <g' df'' ef''>8] <af' c'' ef'' af''>8 }
        }}

        \fine
    }

    \new Dynamics {
          s8 |
        | \repeat volta 2 { s2\f |
        | s2 |
        | s2 |
        | s2 |

        | s2 |
        | s2 |
        | s2\p |
        | s2 |

        | \once \override Hairpin.to-barline = ##f s2\mf\< |
        | s16\! s4.. |
        | s2 |
        | s2 |

        | s2 |
        | s2 |
        | s2 |
        \alternative {
            { | s2 | }
            { | s2 | }
        }}

        | \section \repeat volta 2 { \tag #'midi { s2\f } \tag #'layout { s2-\f-stacc } |
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
        | s2\f |

        | s2 |
        | s2 |
        | s2 |
        | s2 |
        | s2 |

        | s2\p |
        | s2 |
        | s2\mf\< |
        | s16 s16 s16\! s16 s4 |
        | s2 |

        | s2 |
        | s2 |
        | s2 |
        | s2 |
        | s2 |

        | \section \repeat volta 2 { \tag #'midi { s2\f } \tag #'layout { s2-\f-paren } |
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
        | \section \repeat volta 2 { \tag #'midi { s2\f } \tag #'layout { s2-\f-paren } |
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

        \fine
    }

    \new Staff {
        \key af \major
        \clef bass

          \stemUp <ef, ef>8 |
        | \repeat volta 2 { \stemDown <af, af>8[ <ef af c'>8] <ef af c'>8[ <a, a>8] |
        | <bf, bf>8[ <ef g df'>8] <ef g df'>8[ <ef, ef>8] |
        | <af, af>8[ <ef af c'>8] <ef af c'>8[ <a, a>8] |
        | <bf, bf>8[ <ef g df'>8] <ef g df'>8[ <ef, ef>8] |

        | \stemUp <ff, ff>4 <ef, ef>8[ <ef, ef>8] |
        | <ff, ff>4 <ef, ef>8 r8 |
        | << { \voiceOne \stemUp r16 af,16[(^\rh cf16 af16)] r16 af16[(^\rh cf'16 af'16)] } \\ { \voiceTwo \stemDown af,,8_\lh r8 af,8_\lh r8 } >> |
        | \stemDown af8 r8 af'8 r8 |

        | \clef treble \stemUp <d' f' af' b'>8[ <d' f' af' b'>8] <d' f' af' b'>8[ <d' f' af' b'>8] |
        | <ef' af' c''>8[ <ef' af' c''>8] <ef' af' c''>8[ <ef' af' c''>8] |
        | <ff' af' cf''>8[ <ff' af' cf''>8] <ef' af' c''>8[ <ef' af' c''>8] |
        | <ef' af' c''>8[ <ef' g' df''>8] \stemDown <af' c''>8 r8 |

        | \clef bass <d f af b>8[ <d f af b>8] <d f af b>8[ <d f af b>8] |
        | <ef af c'>8[ <ef af c'>8] <ef af c'>8[ <ef af c'>8] |
        | <ff af cf'>8[ <ff af cf'>8] <ef af c'>8[ <ef af c'>8] |
        \alternative {
            { | <ef af c'>8[ <ef g df'>8] <af c'>8[ <ef, ef>8] | }
            { | <ef af c'>8[ <ef g df'>8] <af c'>8[ <a, a>8] | }
        }}

        | \section \repeat volta 2 { <bf, bf>8[ <ef g df'>8] <ef, ef>8[ <ef g df'>8] |
        | <bf, bf>8[ <ef g df'>8] \stemUp <ef, ef>8[ <g, g>8] |
        | \stemDown <af, af>8[ <ef af c'>8] <ef, ef>8[ <ef af c'>8] |
        | <af, af>8[ <ef af c'>8] <af, af>8[ <a, a>8] |

        | <bf, bf>8[ <ef g df'>8] <ef, ef>8[ <ef g df'>8] |
        | <bf, bf>8[ <ef g df'>8] <bf, bf>8[ <b, b>8] |
        | <c c'>8[ <ef af c'>8] <ef, ef>8[ <ef af c'>8] |
        | <af, af>8[ <ef af c'>8] <af, af>8[ <a, a>8] |

        | <bf, bf>8[ <ef g df'>8] <ef, ef>8[ <ef g df'>8] |
        | <bf, bf>8[ <ef g df'>8] \stemUp <ef, ef>8[ <g, g>8] |
        | \stemDown <af, af>8[ <ef af c'>8] <ef, ef>8[ <ef af c'>8] |
        | <af, af>8[ <af, af>8] <g, g>8[ <gf, gf>8] |
        | \stemUp <f, f>8[ <f, f>8] \stemDown <a, a>8[ <a, a>8] |

        | <bf, bf>8[ <f bf df'>8] <f bf df'>8[ <f bf df'>8] |
        | <bf, f bf>8[ <bf, f bf>8] \stemUp <ef, ef>8[ <g, g>8] |
        \alternative {
            { | \stemDown <af, af>8[ <ef af c'>8] <af, af>8[ <a, a>8] | }
            { | <af, af>8[ <af c' ef'>8] <af c' ef'>8[ <ef, ef>8] | }
        }}
        | \section <af, af>8[ <ef af c'>8] <ef af c'>8[ <a, a>8] |

        | <bf, bf>8[ <ef g df'>8] <ef g df'>8[ <ef, ef>8] |
        | <af, af>8[ <ef af c'>8] <ef af c'>8[ <a, a>8] |
        | <bf, bf>8[ <ef g df'>8] <ef g df'>8[ <ef, ef>8] |
        | \stemUp <ff, ff>4 <ef, ef>8[ <ef, ef>8] |
        | <ff, ff>4 <ef, ef>8 r8 |

        | << { \voiceOne \stemUp r16 af,16[(^\rh cf16 af16)] r16 af16[(^\rh cf'16 af'16)] } \\ { \voiceTwo \stemDown af,,8_\lh r8 af,8_\lh r8 } >> |
        | \stemDown af8 r8 af'8 r8 |
        | \clef treble \stemUp <d' f' af' b'>8[ <d' f' af' b'>8] <d' f' af' b'>8[ <d' f' af' b'>8] |
        | <ef' af' c''>8[ <ef' af' c''>8] <ef' af' c''>8[ <ef' af' c''>8] |
        | <ff' af' cf''>8[ <ff' af' cf''>8] <ef' af' c''>8[ <ef' af' c''>8] |

        | <ef' af' c''>8[ <ef' g' df''>8] \stemDown <af' c''>8 r8 |
        | \clef bass <d f af b>8[ <d f af b>8] <d f af b>8[ <d f af b>8] |
        | <ef af c'>8[ <ef af c'>8] <ef af c'>8[ <ef af c'>8] |
        | <ff af cf'>8[ <ff af cf'>8] <ef af c'>8[ <ef af c'>8] |
        | <ef af c'>8[ <ef g df'>8] <af c'>8 r8 |

        | \section \key df \major \repeat volta 2 { <ef, ef>8[ <af c' gf'>8] <gf, gf>8[ <af c' gf'>8] |
        | <f, f>8[ <af c' gf'>8] \stemUp <ef, ef>8[ <c, c>8] |
        | \stemDown <df, df>8[ <af df' f'>8] <af, af>8[ <af df' f'>8] |
        | <f, f>8[ <af df' f'>8] \stemUp <df, df>8[ <d, d>8] |

        | \stemDown <ef, ef>8[ <af c' gf'>8] <gf, gf>[ <af c' gf'>8] |
        | <f, f>8[ <af c' gf'>8] \stemUp <ef, ef>8[ <c, c>8] |
        | \stemDown <df, df>8[ <af df' f'>8] <af, af>8[ <af df' f'>8] |
        | <f, f>8[ <af df' f'>8] \stemUp <df, df>8[ <c, c>8] |

        | \stemDown <bf,, bf,>8[ <bf d' gf'>8] <d, d>8[ <bf d' gf'>8] |
        | <f, f>8[ <bf d' gf'>8] <bf, bf>8[ <bf d' gf'>8] |
        | <ef, ef>8[ <bf ef' gf'>8] <gf, gf>8[ <bf ef' gf'>8] |
        | <ef, ef>8[ <bf ef' gf'>8] <gf, gf>8[ <bf ef' gf'>8] |

        | g16[ bf8 df'16] ff'16[ df'16 bf16 g!16] |
        | <af, af>8[ <af df' f'!>8] bf,8[ <af bf d'>8] |
        | <ef bf df'!>8[ <ef bf df'>8] <af c'>8[ <af c'>8] |
        \alternative {
            { | <df df'>8[ <af df' f'>8] <af df' f'>8[ <d, d>8] | }

            { | <df df'>8[ <af, af>8] <df, df>8[ <c c'>8] | }
        }}
        | \section \key af \major \repeat volta 2 { <df df'>8[ <af df' f'>8] <af df' f'>8[ <c c'>8] |
        | <df df'>8[ <af df' f'>8] <bf, bf>8[ <b, b>8] |
        | <c c'>8[ <af c' ef'>8] <af c' ef'>8[ <ef, ef>8] |

        | <af, af>8[ <ef af c'>8] <ef, ef>8[ <a, a>8] |
        | <bf, bf>8[ <ef g df'>8] <ef, ef>8[ <a, a>8] |
        | <bf, bf>8[ <ef g df'>8] <ef, ef>8[ <g, g>8] |
        | <af, af>8[ <ef af c'>8] <ef, ef>8[ <ef af c'>8] |

        | <af, af>8[ <ef af c'>8] <bf, bf>8[ <c c'>8] |
        | <df df'>8[ <af df' f'>8] <af df' f'>8[ <c c'>8] |
        | <df df'>8[ <af df' f'>8] <bf, bf>8[ <b, b>8] |
        | <c c'>8[ <af c' ef'>8] <af c' ef'>8[ <ef, ef>8] |
        | <af, af>8[ <ef af c'>8] <ef, ef>8[ <ef af c'>8] |

        | \stemUp <df, df>8[ <df, df>8] <bf,, bf,>8[ <d, d>8] |
        | \stemDown <ef, ef>8[ <ef af c'>8] \stemUp <ef, ef>8[ <e, e>8] |
        | <f, f>8[ <f, f>8] <g, g>8[ <g, g>8] |
        \alternative {
            { | \stemDown <af, af>8[ <ef af c'>8] <bf, bf>8[ <c c'>8] | }
            { | <af, af>8[ <ef, ef>8] \stemUp <af,, af,>8 }
        }}

        \fine
    }
>>
