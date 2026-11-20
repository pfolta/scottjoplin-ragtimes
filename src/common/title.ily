\version "2.26.0"
\language "english"

% Test whether a property is present.
#(define (has-field? field)
    (lambda (layout props)
        (and (chain-assoc-get field props #f) #t)))

\paper {
    % Keep the space below the title fixed, so all rags start the same way.
    markup-system-spacing.stretchability = 0

    bookTitleMarkup = \markup \abs-fontsize #10 {
        \column {
            \if #(has-field? 'header:dedication) {
                \column-lines {
                    \fill-line \with-dimension #Y #'(0 . 0) \general-align #Y #CENTER \abs-fontsize #12 \italic {
                        \null
                        \fromproperty #'header:dedication
                        \null
                    }
                    \fill-line { \null }
                }
            }
            \if #(has-field? 'header:title) {
                \column-lines {
                    \fill-line \with-dimension #Y #'(0 . 0) \general-align #Y #CENTER \abs-fontsize #20 \uppercase \bold {
                        \null
                        \fromproperty #'header:title
                        \null
                    }
                }
            }
            \if #(has-field? 'header:subtitle) {
                \column-lines {
                    \fill-line { \null }
                    \fill-line \with-dimension #Y #'(0 . 0) \general-align #Y #CENTER \abs-fontsize #14 \uppercase {
                        \null
                        \fromproperty #'header:subtitle
                        \null
                    }
                }
            }
            \if #(has-field? 'header:title) {
                \fill-line { \null }
                \fill-line { \null }
            }
            \if #(has-field? 'header:composer) {
                \column-lines {
                    \fill-line {
                        \null
                        \fromproperty #'header:composer
                    }
                }
            }
        }
    }
}
