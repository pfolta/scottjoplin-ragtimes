\version "2.26.0"
\language "english"

\bookpart {
    \label #'ragtimes
    \pdf-bookmark "ragtimes" "Ragtimes" #6

    \paper {
        % Use the full page height and stretch the space between song previews.
        ragged-bottom = ##f
        ragged-last-bottom = ##f
        markup-markup-spacing.stretchability = 10000

        % Use the full line width (column width) for the preview scores.
        indent = 0\mm
        ragged-right = ##f
    }

    \header {
        title = "Ragtimes"
    }

    \markup \null

    \pageBreak

    \markuplist \abs-fontsize #10 \override-lines #preview-table-padding {
        \two-columns \default-column-gap
        \column-lines {
            \fill-line {
                \with-link #'ragtimes.original-rags { \uppercase \bold { \original-rags-title } }
                \with-link #'ragtimes.original-rags { \page-ref #'ragtimes.original-rags "000" "?" }
            }
        }
        \column-lines {
            \fill-line {
                \with-link #'ragtimes.bethena { \uppercase \bold { \bethena-title } }
                \with-link #'ragtimes.bethena { \page-ref #'ragtimes.bethena "000" "?" }
            }
        }

        \preview-score-gap

        \two-columns \default-column-gap
        \column-lines {
            \score {
                \original-rags-preview
                \layout { \preview-layout }
            }
        }
        \column-lines {
            \score {
                \bethena-preview
                \layout { \preview-layout }
            }
        }

        \preview-score-gap

        \two-columns \default-column-gap
        \column-lines {
            \fill-line {
                \column {
                    \table #'(-1 -1 -1 -1 -1 -1 -1) {
                        \bold { "Form:" } AA BB CC A DD EE
                        \bold { "Keys:" } G G C G D G
                    }
                }
                \right-column {
                    \line { \original-rags-publication-year }
                }
            }
        }
        \column-lines {
            \fill-line {
                \column {
                    \table #'(-1 -1 -1 -1 -1 -1 -1 -1) {
                        \bold { "Form:" } A BB A CC DD EE A
                        \bold { "Keys:" } G B♭ G F Bm D G
                    }
                }
                \right-column {
                    \line { \bethena-publication-year }
                }
            }
        }
    }

    \markuplist \abs-fontsize #10 \override-lines #preview-table-padding {
        \two-columns \default-column-gap
        \column-lines {
            \fill-line {
                \with-link #'ragtimes.maple-leaf-rag { \uppercase \bold { \maple-leaf-rag-title } }
                \with-link #'ragtimes.maple-leaf-rag { \page-ref #'ragtimes.maple-leaf-rag "000" "?" }
            }
        }
        \column-lines {
        }

        \preview-score-gap

        \two-columns \default-column-gap
        \column-lines {
            \score {
                \maple-leaf-rag-preview
                \layout { \preview-layout }
            }
        }
        \column-lines {
        }

        \preview-score-gap

        \two-columns \default-column-gap
        \column-lines {
            \fill-line {
                \column {
                    \table #'(-1 -1 -1 -1 -1 -1) {
                        \bold { "Form:" } AA BB A CC DD
                        \bold { "Keys:" } A♭ A♭ A♭ D♭ A♭
                    }
                }
                \right-column {
                    \line { \maple-leaf-rag-publication-year }
                }
            }
        }
        \column-lines {
        }
    }

    \markuplist \abs-fontsize #10 \override-lines #preview-table-padding {
        \two-columns \default-column-gap
        \column-lines {
            \fill-line {
                \with-link #'ragtimes.peacherine-rag { \uppercase \bold { \peacherine-rag-title } }
                \with-link #'ragtimes.peacherine-rag { \page-ref #'ragtimes.peacherine-rag "000" "?" }
            }
        }
        \column-lines {
        }

        \preview-score-gap

        \two-columns \default-column-gap
        \column-lines {
            \score {
                \peacherine-rag-preview
                \layout { \preview-layout }
            }
        }
        \column-lines {
        }

        \preview-score-gap

        \two-columns \default-column-gap
        \column-lines {
            \fill-line {
                \column {
                    \table #'(-1 -1 -1 -1 -1 -1) {
                        \bold { "Form:" } AA BB A CC DD
                        \bold { "Keys:" } E♭ B♭ E♭ A♭ A♭
                    }
                }
                \right-column {
                    \line { \peacherine-rag-publication-year }
                }
            }
        }
        \column-lines {
        }
    }

    \markuplist \abs-fontsize #10 \override-lines #preview-table-padding {
        \two-columns \default-column-gap
        \column-lines {
            \fill-line {
                \with-link #'ragtimes.weeping-willow { \uppercase \bold { \weeping-willow-title } }
                \with-link #'ragtimes.weeping-willow { \page-ref #'ragtimes.weeping-willow "000" "?" }
            }
        }
        \column-lines {
        }

        \preview-score-gap

        \two-columns \default-column-gap
        \column-lines {
            \score {
                \weeping-willow-preview
                \layout { \preview-layout }
            }
        }
        \column-lines {
        }

        \preview-score-gap

        \two-columns \default-column-gap
        \column-lines {
            \fill-line {
                \column {
                    \table #'(-1 -1 -1 -1 -1 -1) {
                        \bold { "Form:" } AA BB A CC DD
                        \bold { "Keys:" } G G G C C
                    }
                }
                \right-column {
                    \line { \weeping-willow-publication-year }
                }
            }
        }
        \column-lines {
        }
    }

    \markuplist \abs-fontsize #10 \override-lines #preview-table-padding {
        \two-columns \default-column-gap
        \column-lines {
            \fill-line {
                \with-link #'ragtimes.palm-leaf-rag { \uppercase \bold { \palm-leaf-rag-title } }
                \with-link #'ragtimes.palm-leaf-rag { \page-ref #'ragtimes.palm-leaf-rag "000" "?" }
            }
        }
        \column-lines {
        }

        \preview-score-gap

        \two-columns \default-column-gap
        \column-lines {
            \score {
                \palm-leaf-rag-preview
                \layout { \preview-layout }
            }
        }
        \column-lines {
        }

        \preview-score-gap

        \two-columns \default-column-gap
        \column-lines {
            \fill-line {
                \column {
                    \table #'(-1 -1 -1 -1 -1) {
                        \bold { "Form:" } AA BB CC AA
                        \bold { "Keys:" } B♭ B♭ E♭ B♭
                    }
                }
                \right-column {
                    \line { \palm-leaf-rag-publication-year }
                }
            }
        }
        \column-lines {
        }
    }

    \pageBreak

    \markup \null
}
