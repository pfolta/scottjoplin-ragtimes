\version "2.26.0"
\language "english"

\include "src/common.ily"

\include "src/music/original-rags/metadata.ily"
\include "src/music/original-rags/score.ily"

\book {
    \bookOutputName \original-rags-output-name
    \original-rags-header

    \bookpart {
        \pdf-two-page-left

        \score {
            \keepWithTag #'layout {
                \original-rags-score
            }

            \layout {}
        }

        \score {
            \keepWithTag #'midi {
                \unfoldRepeats \original-rags-score
            }

            \midi {}
        }
    }
}
