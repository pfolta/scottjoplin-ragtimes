\version "2.26.0"
\language "english"

\include "src/common.ily"

\include "src/music/weeping-willow/metadata.ily"
\include "src/music/weeping-willow/score.ily"

\book {
    \bookOutputName \weeping-willow-output-name

    \bookpart {
        \pdf-two-page-left
        \weeping-willow-header

        \score {
            \keepWithTag #'layout {
                \weeping-willow-score
            }

            \layout {}
        }

        \score {
            \keepWithTag #'midi {
                \unfoldRepeats \weeping-willow-score
            }

            \midi {}
        }
    }
}
