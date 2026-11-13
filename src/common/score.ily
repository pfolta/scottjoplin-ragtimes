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

% Include ordinal suffixes in ottava bracket labels (e.g. 8va and 15ma).
\layout {
    \context {
        \Staff
        ottavationMarkups = #ottavation-ordinals
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

% Use the piano accidental style.
\layout {
    \context {
        \Score
        \accidentalStyle piano
    }
}

% Override the next accidental to display the SMuFL natural-sharp glyph (U+E268).
natural-sharp-accidental = {
    \once \override Accidental.stencil = #ly:text-interface::print
    \once \override Accidental.text = \markup { \ekm-char ##xE268 }
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

% Use SMuFL notehead parentheses for parenthesized notes.
\layout {
    \context {
        \Score

        \override Parentheses.stencils =
            #(lambda (grob)
                (let ((parens (ekm-parens 'notehead #f 'parens)))
                    (list
                        (ekm-ctext grob CX (car parens))
                        (ekm-ctext grob CX (cdr parens)))))
    }
}

% Reduce the next notehead to cue size.
cue-note = {
    \once \override NoteHead.font-size = #-4
}
