\version "2.26.0"
\language "english"

\paper {
    % The book is double-sided, with a binding offset on the inside.
    two-sided = ##t
    inner-margin = 15\mm
    outer-margin = 15\mm
    binding-offset = 10\mm

    oddHeaderMarkup = \markup \abs-fontsize #10 {
        \column {
            \column-lines {
                \fill-line {
                    \null
                    \unless \on-first-page-of-part {
                        \uppercase \fromproperty #'header:title
                    }
                }
                \fill-line { \null }
            }
        }
    }

    evenHeaderMarkup = \markup \abs-fontsize #10 {
        \column {
            \column-lines {
                \fill-line {
                    \unless \on-first-page-of-part {
                        \uppercase \fromproperty #'header:title
                    }
                    \null
                }
                \fill-line { \null }
            }
        }
    }

    oddFooterMarkup = \markup \abs-fontsize #10 {
        \column {
            \column-lines {
                \fill-line { \null }
                \fill-line {
                    \null
                    \if \on-last-page-of-part {
                        \fromproperty #'header:tagline
                    }
                    \if \should-print-page-number {
                        \fromproperty #'page:page-number-string
                    }
                }
            }
        }
    }

    evenFooterMarkup = \markup \abs-fontsize #10 {
        \column {
            \column-lines {
                \fill-line { \null }
                \fill-line {
                    \if \should-print-page-number {
                        \fromproperty #'page:page-number-string
                    }
                    \if \on-last-page-of-part {
                        \fromproperty #'header:tagline
                    }
                    \null
                }
            }
        }
    }
}
