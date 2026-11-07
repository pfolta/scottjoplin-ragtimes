\version "2.26.0"
\language "english"

\include "src/common.ily"

\include "src/music/maple-leaf-rag/metadata.ily"
\include "src/music/maple-leaf-rag/score.ily"

\book {
    \bookOutputName \maple-leaf-rag-output-name

    \bookpart {
        \markup \pdf-two-page-left
        \maple-leaf-rag-header

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
