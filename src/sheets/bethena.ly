\version "2.26.0"
\language "english"

\include "src/common.ily"

\include "src/music/bethena/metadata.ily"
\include "src/music/bethena/score.ily"

\book {
    \bookOutputName \bethena-output-name

    \bookpart {
        \markup \pdf-two-page-left
        \bethena-header

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
    }
}
