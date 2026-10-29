\version "2.26.0"
\language "english"

\include "src/common.ily"

\include "src/music/maple-leaf-rag/edits.ily"
\include "src/music/maple-leaf-rag/metadata.ily"
\include "src/music/maple-leaf-rag/score.ily"

\book {
    \bookOutputName \maple-leaf-rag-output-name

    \maple-leaf-rag-header

    \bookpart {
        \markup \pdf-two-page-left

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

        \markup \abs-fontsize #10 \maple-leaf-rag-edits
    }
}
