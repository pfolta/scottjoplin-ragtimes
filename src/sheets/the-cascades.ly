\version "2.26.0"
\language "english"

\include "src/common.ily"

\include "src/sheets/layout/paper.ily"

\include "src/music/the-cascades/metadata.ily"
\include "src/music/the-cascades/score.ily"

\book {
    \bookOutputName \the-cascades-output-name
    \the-cascades-header

    \bookpart {
        \pdf-two-page-left

        \score {
            \keepWithTag #'layout {
                \the-cascades-score
            }

            \layout {}
        }

        \score {
            \keepWithTag #'midi {
                \unfoldRepeats \the-cascades-score
            }

            \midi {}
        }
    }
}
