\version "2.26.0"
\language "english"

% Draw a box around section labels and render the label in UPPERCASE and bold.
\layout {
    \context {
        \Score

        \override SectionLabel.stencil =
            #(make-stencil-boxer 0.15 0.5
                (lambda (grob)
                    (let* ((text (ly:grob-property grob 'text)) (upper-text (string-upcase text)))
                        (grob-interpret-markup grob
                            (markup #:bold upper-text)
                        )
                    )
                )
            )
    }
}
