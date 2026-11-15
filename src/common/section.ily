\version "2.26.0"
\language "english"

% Use bold font for section labels.
\layout {
    \context {
        \Score
        \override SectionLabel.font-series = #'bold
    }
}

% Configure spacing below section labels.
\layout {
    \context {
        \Score
        \override SectionLabel.padding = #4
    }
}

% Center section labels horizontally on the bar line.
\layout {
    \context {
        \Score
        \override SectionLabel.self-alignment-X = #CENTER
        \override SectionLabel.break-align-symbols = #'(staff-bar)
    }
}

% Draw a bold section letter inside a rounded box.
#(define-markup-command (section-marker layout props letter) (string?)
    (interpret-markup layout props
        (markup
            #:override '(thickness . 2)
            #:override '(box-padding . 0.5)
            #:override '(corner-radius . 1)
            #:rounded-box
            #:bold
            letter
        )
    )
)

section-a = \markup { \section-marker "A" }
section-a-finale = \markup { \with-dimension-from #X \section-a { \concat { \section-a " Finale" } } }

section-b = \markup { \section-marker "B" }

section-c = \markup { \section-marker "C" }
section-c-trio = \markup { \with-dimension-from #X \section-c { \concat { \section-c " Trio" } } }

section-d = \markup { \section-marker "D" }

section-e = \markup { \section-marker "E" }
