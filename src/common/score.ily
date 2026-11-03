\version "2.26.0"
\language "english"

% Make ledger lines the same thickness as regular staff lines.
\layout {
    \context {
        \Staff
        \override StaffSymbol.ledger-line-thickness = #'(1.0 . 0.0)
    }
}

% Disable automatic beaming.
\layout {
    \context {
        \Staff
        autoBeaming = ##f
    }
}

% Place volta brackets above tempo markings.
\layout {
    \context {
        \Score
        \override VoltaBracketSpanner.outside-staff-priority = #1400
        \override MetronomeMark.outside-staff-priority = #1300
    }
}

% Span arpeggios across notes in different voices.
\layout {
    \context {
        \Staff

        \consists "Span_arpeggio_engraver"
        connectArpeggios = ##t
    }
}

% Center-align pedal markings with their associated notes.
\layout {
    \context {
        \Dynamics

        \override SustainPedal.self-alignment-X = #CENTER
        \override SustainPedal.parent-alignment-X = #CENTER

        \override SostenutoPedal.self-alignment-X = #CENTER
        \override SostenutoPedal.parent-alignment-X = #CENTER

        \override UnaCordaPedal.self-alignment-X = #CENTER
        \override UnaCordaPedal.parent-alignment-X = #CENTER
    }
}

% Show the measure number at the current position.
show-measure-number = \once \override Score.BarNumber.break-visibility = ##(#t #t #t)

% Add a fermata above the next bar line (using the SMuFL fermata glyph).
fermata-over-bar-line = {
    \once \set Score.caesuraType = #'((scripts . (fermata)))
    \once \set Score.caesuraTypeTransform = ##f

    \once \override Score.CaesuraScript.stencil =
        #(lambda (grob)
            (grob-interpret-markup
                grob
                #{ \markup \ekm-fermata #'default #}))

    \caesura
}
