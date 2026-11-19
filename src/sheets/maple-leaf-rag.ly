\version "2.26.0"
\language "english"

\include "src/common.ily"

\include "src/sheets/layout/paper.ily"

\include "src/music/maple-leaf-rag/metadata.ily"
\include "src/music/maple-leaf-rag/score.ily"

\book {
    \bookOutputName \maple-leaf-rag-output-name
    \maple-leaf-rag-header

    \bookpart {
        \pdf-two-page-left

        \score {
            \keepWithTag #'layout {
                \maple-leaf-rag-score
            }

            \layout {}
        }

        \score {
            \keepWithTag #'midi {
                \unfoldRepeats \maple-leaf-rag-score
            }

            \midi {}
        }
    }
}
