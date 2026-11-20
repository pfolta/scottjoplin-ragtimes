\version "2.26.0"
\language "english"

original-rags-score = \new PianoStaff <<
    \new Staff = "RH" {
        \key g \major
        \time 2/4
        \clef treble

        \tag #'midi { \tempo 4 = 90 }

        % Measure 1
        | \stemDown <as'' as'''>16[ <b'' b'''>8 <as'' as'''>16] <b'' b'''>8[ <as'' as'''>16 <b'' b'''>16] |
        | <fs'' fs'''>16[ <g'' g'''>8 <e''_~ e'''^~>16] <e'' e'''>4 |
        | <fs'' fs'''>16[ <g'' g'''>8 <fs'' fs'''>16] <g'' g'''>8[ <fs'' fs'''>16 <g'' g'''>16] |
        | <cs'' cs'''>16[ <d'' d'''>8 <b'_~ b''^~>16] <b' b''>4 |
        |
          \tag #'layout { << { \stemUp <c'' e'' c'''>16[ <c'' e'' c'''>8 <c'' fs'' c'''>16] <c'' ef'' c'''>8[ <c'' ef'' c'''>8] } \\ { \stemDown a'16[ a'8 a'16] g'8[ g'8] } >> }
          \tag #'midi { <c'' e'' c'''>16[ <c'' e'' c'''>8 <c'' fs'' c'''>16] <c'' ef'' c'''>8[ <c'' ef'' c'''>8] }
        |
        |
          \tag #'layout { << { \stemUp <c'' d'' c'''>8 \slurDown \acciaccatura gs'8 a'8 \slurNeutral d'4_> } \\ { \stemDown fs'8 \showStaffSwitch \change Staff = "LH" \acciaccatura { \stemUp gs8 } \stemDown a8 d4^> } >> }
          \tag #'midi { <c'' d'' c'''>8 \acciaccatura gs'8 a'8 d'4_> }
        | \break

        % Measure 7
        | \stemUp <c' e' c''>16[ <c' e' c''>8 <c' e' c''>16] <c' ef' c''>8[ <c' ef' c''>8] |
        | <c' d' c''>8 r8 r16 \stemDown d''16[ g''16 b''16] |
        | \section \sectionLabel \section-a \repeat volta 2 { <d'' d'''>16[ g''16 b''16 <d''_~ d'''^~>16] <d'' d'''>16[ b''16 <d'' d'''>16 b''16] |
        | <d'' d'''>16[ g''16 b''16 <d''_~ d'''^~>16] <d'' d'''>16[ b''16 <d'' d'''>16 b''16] |
        | <e'' e'''>16[ <e'' e'''>8 <e'' g''>16] <e'' a''>16[ <e'' g''>16 <ef'' a''>8] |
        | <d'' b''>4^> r16 d''16[ g''16 b''16] | \break

        % Measure 13
        | <d'' d'''>16[ g''16 b''16 <d''_~ d'''^~>16] <d'' d'''>16[ b''16 <d'' d'''>16 b''16] |
        | <d'' d'''>16[ g''16 b''16 <d''_~ d'''^~>16] <d'' d'''>16[ b''16 <d'' d'''>16 b''16] |
        | <cs'' b''>8[ <cs''_~ a''^~>8] <cs'' a''>8[ <cs'' gs''>16 <cs'' a''>16] |
        | <c'' b''>16[ <c'' a''>8 <c'' fs''>16] <c'' e''>8^>[ <c'' d''>8^>] |
        | <d'' d'''>16[ g''16 b''16 <d''_~ d'''^~>16] <d'' d'''>16[ b''16 <d'' d'''>16 b''16] | \break

        % Measure 18
        | <d'' d'''>16[ g''16 b''16 <d''_~ d'''^~>16] <d'' d'''>16[ b''16 <d'' d'''>16 b''16] |
        | <e'' e'''>16[ <e'' e'''>8 <e'' g''>16] <e'' a''>16[ <e'' g''>16 <e'' a''>8] |
        | <ds'' b''>4^> r8 <b' b''>8 |
        | <e'' e'''>16[ <d'' d'''>8 <b' b''>16] <c'' c'''>8[ <b' b''>8] |
        | <b' b''>16[ <a' a''>8 <e' e''>16] <b' b''>8[ <a' a''>8] |
        | <b' \single \cue-note d'' b''>16[ <a' \single \cue-note c'' a''>8 <b' \single \cue-note d'' b''>16] <c'' \single \cue-note e'' c'''>16[ <b' \single \cue-note d'' b''>16 <a' \single \cue-note c'' a''>8] | \break

        % Measure 24
        \alternative {
            { | <g' \single \cue-note b' g''>8 r8 r16 d''16[ g''16 b''16] | }
            { | <g' \single \cue-note b' g''>8 r8 \ottava 1 <g'' b'' d''' g'''>4^> | }
        }}
        | \section \sectionLabel \section-b \repeat volta 2 { \ottava 0 <fs'' as''>16[ <g'' b''>8 <fs'' as''>16] <g'' b''>8[ <fs'' as''>16 <g'' b''>16] |
        | <ds'' fs''>16[ <e'' g''>8 <c''_~ e''^~>16] <c'' e''>4 |
        | <ds'' fs''>16[ <e'' g''>8 <ds'' fs''>16] <e'' g''>8[ <ds'' fs''>16 <e'' g''>16] |
        | <as' cs''>16[ <b' d''>8 <g'_~ b'^~>16] \stemUp <g' b'>4 | \break

        \pageBreak

        % Measure 30
        | \stemDown <as' cs''>16[ <b' d''>8 <as' cs''>16] <b' d''>8[ <as' cs''>16 <b' d''>16] |
        | \stemUp <g' b'>8[ b'16 g'16_~] g'16[ b'16 g'8] |
        | \stemDown <as' cs''>16[ <b' d''>8 <as' cs''>16] <b' d''>8[ <as' cs''>16 <b' d''>16] |
        | \stemUp <g' b'>8[ b'16 g'16_~] g'16[ b'16 g'8] |
        | \stemDown <fs'' as''>16[ <g'' b''>8 <fs'' as''>16] <g'' b''>8[ <fs'' as''>16 <g'' b''>16] |
        | <ds'' fs''>16[ <e'' g''>8 <c''_~ e''^~>16] <c'' e''>4 | \break

        % Measure 36
        | <ds'' fs''>16[ <e'' g''>8 <ds'' fs''>16] <e'' g''>8[ <ds'' fs''>16 <e'' g''>16] |
        | <as' cs''>16[ <b' d''>8 <g'_~ b'^~>16] \stemUp <g' b'>4 |
        | <e' g' a'>16[ <e' g' a'>8 <e' g' a'>16] \stemDown <g' as' e''>8[ <g' as' e''>8] |
        | <g' b' d''>16[ g''8 e''16] d''16[ b'16 g'8] |
        | \stemUp <\single \cue-note c' a'>16[ <\single \cue-note d' b'>16 <\single \cue-note e' c''>16 <\single \cue-note d'_~ b'^~>16] <\single \cue-note d' b'>16[ <\single \cue-note c' a'>8 <\single \cue-note d' b'>16] |
        | <b g'>8 r8 \stemDown <g' b' d'' g''>4^> } | \break

        % Measure 42
        | \section \sectionLabel \section-c \key c \major \repeat volta 2 { g''16[ a''16 g''16 e''16] f''16[ d''8 e''16] |
        | f''16[ g''16 a''16 e''16] f''16[ d''8 e''16] |
        | c''16[ e''16 g''16 <c''_~ e''^~ a''^~>16] <c'' e'' a''>4 |
        | r16 c''16[^( e''16 g''16] a''16[ g''16 e''16 c''16)] |
        | b'16[ d''16 f''16 <b'_~ d''^~ a''^~>16] <b' d'' a''>4 | \break

        % Measure 47
        | r16 b'16[^( d''16 f''16] a''16[ f''16 d''16 b'16)] |
        | c''16[ e''16 g''16 <c'' c'''>16] <b' ds'' b''>8[ <a' ds'' a''>8] |
        | <g' e'' g''>8[ g'16^( a'16] b'16[ c''16 d''16 e''16)] |
        | g''16[ a''16 g''16 e''16] f''16[ d''8 e''16] |
        | f''16[ g''16 a''16 e''16] f''16[ d''8 e''16] | \break

        % Measure 52
        | c''16[ e''16 g''16 <c''_~ e''^~ a''^~>16] <c'' e'' a''>4 |
        | r8 <c'' c'''>8 <b' b''>8[ <bf' bf''>8] |
        | a'16[ cs''16 e''16 <a' a''>16] <bf' bf''>8^>[ <a' a''>8^>] |
        | d''16[ f''16 a''16 <d'' d'''>16] <e'' e'''>8[ <d'' d'''>8] |
        | <c'' c'''>16[ e''16 ds''16 e''16] <b' f'' a''>8[ <b' f'' g''>8] |
        | <e' g' c''>8[ <g' b' d'' g''>8] <c'' e'' g'' c'''>4^> } | \break

        \pageBreak

        % Measure 58
        | \section \key g \major
          \tag #'layout { << { \stemUp <c'' e'' c'''>16[ <c'' e'' c'''>8 <c'' fs'' c'''>16] <c'' ef'' c'''>8[ <c'' ef'' c'''>8] } \\ { \stemDown a'16[ a'8 a'16] g'8[ g'8] } >> }
          \tag #'midi { <c'' e'' c'''>16[ <c'' e'' c'''>8 <c'' fs'' c'''>16] <c'' ef'' c'''>8[ <c'' ef'' c'''>8] }
        |
        |
          \tag #'layout { << { \stemUp <c'' d'' c'''>8 \slurDown \acciaccatura gs'8 a'8 \slurNeutral d'4_> } \\ { \stemDown fs'8 \showStaffSwitch \change Staff = "LH" \acciaccatura { \stemUp gs8 } \stemDown a8 d4^> } >> }
          \tag #'midi { <c'' d'' c'''>8 \acciaccatura gs'8 a'8 d'4_> }
        |
        | | \stemUp <c' e' c''>16[ <c' e' c''>8 <c' e' c''>16] <c' ef' c''>8[ <c' ef' c''>8] |
        | <c' d' c''>8 r8 r16 \stemDown d''16[ g''16 b''16] |
        | \sectionLabel \section-a <d'' d'''>16[ g''16 b''16 <d''_~ d'''^~>16] <d'' d'''>16[ b''16 <d'' d'''>16 b''16] | \break

        % Measure 63
        | <d'' d'''>16[ g''16 b''16 <d''_~ d'''^~>16] <d'' d'''>16[ b''16 <d'' d'''>16 b''16] |
        | <e'' e'''>16[ <e'' e'''>8 <e'' g''>16] <e'' a''>16[ <e'' g''>16 <ef'' a''>8] |
        | <d'' b''>4^> r16 d''16[ g''16 b''16] |
        | <d'' d'''>16[ g''16 b''16 <d''_~ d'''^~>16] <d'' d'''>16[ b''16 <d'' d'''>16 b''16] |
        | <d'' d'''>16[ g''16 b''16 <d''_~ d'''^~>16] <d'' d'''>16[ b''16 <d'' d'''>16 b''16] | \break

        % Measure 68
        | <cs'' b''>8[ <cs''_~ a''^~>8] <cs'' a''>8[ <cs'' gs''>16 <cs'' a''>16] |
        | <c'' b''>16[ <c'' a''>8 <c'' fs''>16] <c'' e''>8^>[ <c'' d''>8^>] |
        | <d'' d'''>16[ g''16 b''16 <d''_~ d'''^~>16] <d'' d'''>16[ b''16 <d'' d'''>16 b''16] |
        | <d'' d'''>16[ g''16 b''16 <d''_~ d'''^~>16] <d'' d'''>16[ b''16 <d'' d'''>16 b''16] |
        | <e'' e'''>16[ <e'' e'''>8 <e'' g''>16] <e'' a''>16[ <e'' g''>16 <e'' a''>8] | \break

        % Measure 73
        | <ds'' b''>4^> r8 <b' b''>8 |
        | <e'' e'''>16[ <d'' d'''>8 <b' b''>16] <c'' c'''>8[ <b' b''>8] |
        | <b' b''>16[ <a' a''>8 <e' e''>16] <b' b''>8[ <a' a''>8] |
        | <b' \single \cue-note d'' b''>16[ <a' \single \cue-note c'' a''>8 <b' \single \cue-note d'' b''>16] <c'' \single \cue-note e'' c'''>16[ <b' \single \cue-note d'' b''>16 <a' \single \cue-note c'' a''>8] |
        | | <g' \single \cue-note b' g''>8 r8 <g'' b'' d''' g'''>4^> |
        | \section \sectionLabel \section-d \key d \major \repeat volta 2 { <a' cs'' a''>8.[^\markup { \italic "brilliant" } b'16] cs''16[ a''16 <a' cs'' g''>8^>] | \break

        % Measure 79
        | <a' cs'' a''>8.[ b'16] cs''16[ a''16 <a' cs'' g''>8^>] |
        | r8 <d'' a''>16[ a'16] r8 <d'' a''>16[ a'16] |
        | r16 <d'' a''>16[ r16 a'16] <d'' a''>8[ a'8] |
        | <b' ds'' b''>8.[ cs''16] ds''16[ b''16 <b' ds'' a''>8^>] |
        | <b' ds'' b''>8.[ cs''16] ds''16[ b''16 <b' ds'' a''>8^>] |
        | r8 <e'' b''>16[ b'16] r8 <e'' b''>16[ b'16] | \break

        \pageBreak

        % Measure 85
        | r16 <e'' b''>16[ r16 b'16] <e'' b''>8[ b'8] |
        | <cs'' g'' cs'''>16[ <bs' bs''>16 <cs'' cs'''>16 <e''_~ e'''^~>16] <e'' e'''>16[ <cs'' cs'''>8 <a' a''>16] |
        | r16 <b' g'' b''>8[ <as' as''>16] <b' g'' b''>4 |
        | <b' fs'' b''>16[ <as' as''>16 <b' b''>16 <d''_~ d'''^~>16] <d'' d'''>16[ <b' b''>8 <fs' fs''>16] |
        | r16 <a' fs'' a''>8[ <gs' gs''>16] <a' fs'' a''>8[ <a' fs''>8] | \break

        % Measure 90
        | <b' e''>8[ <b' fs''>8] <b' g''>16[ <b' b''>8 <b' g''>16] |
        | <a' fs''>8[ <gs' es''>16 <a' fs''>16] <b' g''>16[ <a' fs''>16 <g' e''>8] |
        | \stemUp <fs' d''>8[ a'8] b'16[ a'8 fs'16] |
        | d'8 r8 \acciaccatura { a'16[ b'16 cs''16] } \stemDown d''4 } |
        | \section \sectionLabel \section-e \key g \major \repeat volta 2 { \stemUp as'16[ <b' d''>8 fs'16] <a' c''>8[ as'16 <b'~ d''^~>16] | \break

        % Measure 95
        | <b' d''>16[ fs'16 <a' c''>16 as'16] \stemDown <b' d''>8[ <a' c''>8] |
        | \stemUp as'16[ <b' d''>8 d'16] <g' b'>8[ as'16 <b'_~ d''^~>16_(] |
        | <b' d''>16[ d'16 g'16 a'16)] b'16[_( a'16 g'16 d'16)] |
        | r8 \stemDown <fs'_~ fs''^~>8 <fs' fs''>16[ c''16 d''16 <fs' fs''>16] |
        | r16 fs'16[^( c''16 d''16] fs''16[ d''16 c''16 a'16)] | \break

        % Measure 100
        | r8 <g'_~ b'^~ e''^~>8 <g' b' e''>16[ b'16 d''16 e''16] |
        | r16 g'16[^( b'16 d''16] e''16[ d''16 b'16 g'16)] |
        | \stemUp as'16[ <b' d''>8 fs'16] <a' c''>8[ as'16 <b'~ d''^~>16] |
        | <b' d''>16[ fs'16 <a' c''>16 as'16] \stemDown <b' d''>8[ <a' c''>8] |
        | \stemUp as'16[ <b' d''>8 d'16] <g' b'>8[ as'16 <b'_~ d''^~>16_(] | \break

        % Measure 105
        | <b' d''>16[ d'16 g'16 a'16)] b'16[_( a'16 g'16 d'16)] |
        | \stemDown e''16[ ef''16 d''16 df''16] c''16[ b'16 bf'16 a'16] |
        | d''16[ df''16 c''16 b'16] \stemUp bf'16[ a'16 af'16 g'16] |
        | \stemUp e'16[ g'8 e'16] d'16[ g'16 b'16 d''16] |
        | <cs' b'>16[ e'16 <c' a'>16 d'16] <b d' g'>8 r8 } |

        \fermata-over-bar-line
        \fine
    }

    \new Dynamics {
        % Measure 1
        | s2\f |
        | s2 |
        | s2 |
        | s2\< |
        | s2\!\ff |
        | s2-\tweak shorten-pair #'(4 . 0) \> |

        % Measure 7
        | s2\p |
        | s2 |
        | \section \repeat volta 2 { s2\p |
        | s2 |
        | s2 |
        | s2 |

        % Measure 13
        | s2 |
        | s4. s8\< |
        | s4 s4\! |
        | s4\f s4\> |
        | s2\!\p |

        % Measure 18
        | s2 |
        | s2 |
        | s8 s4.\< |
        | s2\!\f |
        | s2 |
        | s2 |

        % Measure 24
        \alternative {
            { | s2 | }
            { | s2 | }
        }}
        | \section \repeat volta 2 { s2\ff |
        | s2 |
        | s2 |
        | s2 |

        % Measure 30
        | s2 |
        | s2 |
        | s2 |
        | s2 |
        | s2 |
        | s2 |

        % Measure 36
        | s2 |
        | s8. s16\< s4 |
        | s2\!\f |
        | s2 |
        | s2 |
        | s2 } |

        % Measure 42
        \tag #'layout {
            | \section \repeat volta 2 { s2\p-then-f |
            | s2 |
            | s2 |
            | s2 |
            | s2 |

            % Measure 47
            | s2 |
            | s2 |
            | s2 |
            | s2 |
            | s2 |

            % Measure 52
            | s2 |
            | s2 |
            | s2 |
            | s2 |
            | s2 |
            | s2 } |
        }
        \tag #'midi {
            | \section s2\p | \repeat unfold 15 { | s2 | }
            | \section s2\f | \repeat unfold 15 { | s2 | }
        }

        % Measure 58
        | \section s2\ff |
        | s2 |
        | s4\dim \once \override Hairpin.to-barline = ##f s4\> |
        | s8\! s4. |
        | s2\p |

        % Measure 63
        | s2 |
        | s2 |
        | s2 |
        | s2 |
        | s4 s4\< |

        % Measure 68
        | s2\!\f |
        | s4 s4\> |
        | s2\!\p |
        | s2 |
        | s2 |

        % Measure 73
        | s4 s4\< |
        | s2\!\f |
        | s2 |
        | s2 |
        | s2 |
        | \section \repeat volta 2 { s2\ff |

        % Measure 79
        | s4. s8\< |
        | s8 s4.\! |
        | s4 s4\> |
        | s2\! |
        | s4 s4\< |
        | s2\! |

        % Measure 85
        | s4 s4\> |
        | s2\! |
        | s2 |
        | s2 |
        | s2 |

        % Measure 90
        | s2 |
        | s2 |
        | s2 |
        | s2 } |
        | \section \repeat volta 2 { s2\ff |

        % Measure 95
        | s2 |
        | s2 |
        | s2 |
        | s2 |
        | s2 |

        % Measure 100
        | s2 |
        | s2 |
        | s2 |
        | s2 |
        | s2 |

        % Measure 105
        | s2 |
        | s2 |
        | s2 |
        | s2 |
        | s2 } |

        \fine
    }

    \new Staff = "LH" {
        \key g \major
        \clef bass

        % Measure 1
        | \stemDown <as as'>16[ <b b'>8 <as as'>16] <b b'>8[ <as as'>16 <b b'>16] |
        | <fs fs'>16[ <g g'>8 <e_~ e'^~>16] <e e'>4 |
        | <fs fs'>16[ <g g'>8 <fs fs'>16] <g g'>8[ <fs fs'>16 <g g'>16] |
        | <cs cs'>16[ <d d'>8 <b,_~ b^~>16] <b, b>4 |
        |
          \tag #'layout { s2 }
          \tag #'midi { a'16[ a'8 a'16] g'8[ g'8] }
        |
        |
          \tag #'layout { s2 }
          \tag #'midi { fs'8 \acciaccatura gs8 a8 d4^> }
        |

        % Measure 7
        | a16[ a8 a16] g8[ g8] |
        | fs8[ <a, a>8] \stemUp <d, d>4_> |
        | \section \repeat volta 2 { \stemDown g8[ <b d'>8] d8[ <b d'>8] |
        | g8[ <b d'>8] d8[ <b d'>8] |
        | c8[ <g c' e'>8] c8[ <g c' ef'>8] |
        | <g, g>8[ <g b d'>8] d8 r8 |

        % Measure 13
        | g8[ <b d'>8] d8[ <b d'>8] |
        | g8[ <b d'>8] d8[ <b d'>8] |
        | e8[ <g a cs'>8] a,8[ <g a cs'>8] |
        | d16[ fs8 a16] g8^>[ fs8^>] |
        | g8[ <b d'>8] d8[ <b d'>8] |

        % Measure 18
        | g8[ <b d'>8] d8[ <b d'>8] |
        | c8[ <g c' e'>8] c8[ <g c' e'>8] |
        | b,8[ <fs a b>8] <fs a b>4 |
        | gs,8[ <e b d'>8] e,8[ <e gs d'>8] |
        | a,8[ <a c' e'>8] a,8[ <a c' ef'>8] |
        | d8[ <g b d'>8] \stemUp <\single \cue-note d, d>16[ <\single \cue-note e, e>16 <\single \cue-note fs, fs>8] |

        % Measure 24
        \alternative {
            { | <\single \cue-note g, g>8 r8 <d, d>4 | }
            { | <\single \cue-note g, g>8 r8 <g,, g,>4_> | }
        }}
        | \section \repeat volta 2 { R2 |
        | \stemDown c8[ <g c' e'>8] c8[ <g c' e'>8] |
        | c8[ <g c' e'>8] c8[ <g c' e'>8] |
        | g8[ <b d'>8] d8[ <b d'>8] |

        % Measure 30
        | g8[ <b d'>8] d8[ <b d'>8] |
        | g8^>[ fs8^> e8^> d8^>] |
        | g8[ <b d'>8] d8[ <b d'>8] |
        | g8^>[ fs8^> e8^> d8^>] |
        | g8[ <b d'>8] d8[ <b d'>8] |
        | c8[ <g c' e'>8] c8[ <g c' e'>8] |

        % Measure 36
        | c8[ <g c' e'>8] c8[ <g c' e'>8] |
        | g8[ <b d'>8] d8[ <b d'>8] |
        | <c c'>4^> <cs cs'>4^> |
        | d8[ <g b d'>8] <g b d'>4^> |
        | <a, a>4^> \stemUp <d, d>4_> |
        | <g, g>8 r8 <g,, g,>4_> } |

        % Measure 42
        | \section \key c \major \repeat volta 2 { \stemDown c8[ <g c' e'>8] d8[ <g b f'>8] |
        | g,8[ <g b f'>8] d8[ <g b f'>8] |
        | c8[ <g c' e'>8] g,8[ <g c' e'>8] |
        | c8[ <g c' e'>8] e8[ <g c' e'>8] |
        | d8[ <g b f'>8] g,8[ <g b f'>8] |

        % Measure 47
        | d8[ <g b f'>8] g,8[ <g b f'>8] |
        | c8[ <g c' e'>8] <fs c' ds'>8[ <fs c' ds'>8] |
        | <g c' e'>8 r8 r4 |
        | c8[ <g c' e'>8] d8[ <g b f'>8] |
        | g,8[ <g b f'>8] d8[ <g b f'>8] |

        % Measure 52
        | c8[ <g c' e'>8] g,8[ <g c' e'>8] |
        | c8[ <g c' e'>8] <g c' e'>8[ <g c' e'>8] |
        | a,8[ <a cs' g'>8] a,8[ <a cs' g'>8] |
        | d8[ <a d' f'>8] f8[ <af c' d'>8] |
        | g8[ <c' e'>8] g,8[ <g b f'>8] |
        | \stemUp c8[ g,8] <c, c>4_> } |

        % Measure 58
        | \section \key g \major
          \tag #'layout { s2 }
          \tag #'midi { a'16[ a'8 a'16] g'8[ g'8] }
        |
        |
          \tag #'layout { s2 }
          \tag #'midi { fs'8 \acciaccatura gs8 a8 d4^> }
        |
        | \stemDown a16[ a8 a16] g8[ g8] |
        | fs8[ <a, a>8] \stemUp <d, d>4_> |
        | \stemDown g8[ <b d'>8] d8[ <b d'>8] |

        % Measure 63
        | g8[ <b d'>8] d8[ <b d'>8] |
        | c8[ <g c' e'>8] c8[ <g c' ef'>8] |
        | <g, g>8[ <g b d'>8] d8 r8 |
        | g8[ <b d'>8] d8[ <b d'>8] |
        | g8[ <b d'>8] d8[ <b d'>8] |

        % Measure 68
        | e8[ <g a cs'>8] a,8[ <g a cs'>8] |
        | d16[ fs8 a16] g8^>[ fs8^>] |
        | g8[ <b d'>8] d8[ <b d'>8] |
        | g8[ <b d'>8] d8[ <b d'>8] |
        | c8[ <g c' e'>8] c8[ <g c' e'>8] |

        % Measure 73
        | b,8[ <fs a b>8] <fs a b>4 |
        | gs,8[ <e b d'>8] e,8[ <e gs d'>8] |
        | a,8[ <a c' e'>8] a,8[ <a c' ef'>8] |
        | d8[ <g b d'>8] \stemUp <\single \cue-note d, d>16[ <\single \cue-note e, e>16 <\single \cue-note fs, fs>8] |
        | <\single \cue-note g, g>8 r8 <g, g>4_> |
        | \section \key d \major \repeat volta 2 { \stemDown e8[ <g a cs'>8] a,8[ <g a cs'>8] |

        % Measure 79
        | e8[ <g a cs'>8] a,8[ <g a cs'>8] |
        | <d d'>8^>[ <e e'>8^> <fs fs'>8^> <e e'>8^>] |
        | <d d'>8^>[ <cs cs'>8^> <b, b>8^> <a, a>8^>] |
        | b,8[ <a b ds'>8] ds8[ <a b ds'>8] |
        | b,8[ <a b ds'>8] ds8[ <a b ds'>8] |
        | <e e'>8^>[ <fs fs'>8^> <g g'>8^> <fs fs'>8^>] |

        % Measure 85
        | <e e'>8^>[ <d d'>8^> <cs cs'>8^> <b, b>8^>] |
        | e8[ <a cs' g'>8] a,8[ <a cs' g'>8] |
        | e8[ <a cs' g'>8] a,8[ <a cs' g'>8] |
        | d8[ <a d' fs'>8] a,8[ <a d' fs'>8] |
        | d8[ <a d' fs'>8] a,8[ <a d' fs'>8] |

        % Measure 90
        | <g g'>8[ <fs fs'>8 <e e'>8 <g b e'>8] |
        | a,8[ <a d' fs'>8] a,8[ <a cs' \parenthesize g'>8] |
        | <d d'>8[ <a, a>8] <b, b>16[ <a, a>8 <fs, fs>16] |
        | \stemUp <d, d>8 r8 \acciaccatura { a16[ b16 cs'16] } \stemDown d'4 } |
        | \section \key g \major \repeat volta 2 { a,8[ <d fs c'>8] d,8[ <d fs c'>8] |

        % Measure 95
        | a,8[ <d fs c'>8] d,8[ <d fs c'>8] |
        | g,8[ <d g b>8] d,8[ <d g b>8] |
        | g,8[ <d g b>8] d,8[ <d g b>8] |
        | a,8[ <d fs c'>8] d,8[ <d fs c'>8] |
        | a,8[ <d fs c'>8] d,8[ <d fs c'>8] |

        % Measure 100
        | g,8[ <d g b>8] d,8[ <d g b>8] |
        | g,8[ <d g b>8] d,8[ <d g b>8] |
        | a,8[ <d fs c'>8] d,8[ <d fs c'>8] |
        | a,8[ <d fs c'>8] d,8[ <d fs c'>8] |
        | g,8[ <d g b>8] d,8[ <d g b>8] |

        % Measure 105
        | g,8[ <d g b>8] d,8[ <d g b>8] |
        | gs,8[ <e b d'>8] a,8[ <e a c'>8] |
        | fs,8[ <d a c'>8] g,8[ <d g b>8] |
        | c8[ <e a c'>8] d8[ <g b d'>8] |
        | <a, a>8[ <d, d>8] \stemUp <g, g>8 r8 } |

        \fine
    }
>>
