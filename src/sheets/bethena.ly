\version "2.26.0"
\language "english"

\include "src/common.ily"

\include "src/music/bethena/edits.ily"
\include "src/music/bethena/metadata.ily"
\include "src/music/bethena/score.ily"

\book {
    \bookOutputName \bethena-output-name

    \bethena-header

    \bookpart {
        \markup \pdf-two-page-left

        \score {
            \keepWithTag #'layout {
                \bethena-score
            }

            \layout {}
        }

        \score {
            \keepWithTag #'midi {
                \unfoldRepeats \bethena-score
            }

            \midi {}
        }

        \markup \abs-fontsize #10 \bethena-edits
    }
}
