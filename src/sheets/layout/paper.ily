\version "2.26.0"
\language "english"

\paper {
    % Sheets are single-sided, with the shared line width centered on the page.
    two-sided = ##f

    oddHeaderMarkup = \markup \abs-fontsize #10 {
        \column {
            \column-lines {
                \fill-line {
                    \null
                    \unless \on-first-page-of-part {
                        \uppercase \fromproperty #'header:title
                    }
                    \null
                }
                \fill-line { \null }
            }
        }
    }

    evenHeaderMarkup = \oddHeaderMarkup

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

    evenFooterMarkup = \oddFooterMarkup
}
