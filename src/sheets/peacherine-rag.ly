\version "2.26.0"
\language "english"

\include "src/common.ily"

\include "src/music/peacherine-rag/metadata.ily"
\include "src/music/peacherine-rag/score.ily"

\book {
    \bookOutputName \peacherine-rag-output-name
    \peacherine-rag-header

    \bookpart {
        \pdf-two-page-left

        \score {
            \keepWithTag #'layout {
                \peacherine-rag-score
            }

            \layout {}
        }

        \score {
            \keepWithTag #'midi {
                \unfoldRepeats \peacherine-rag-score
            }

            \midi {}
        }
    }
}
