\version "2.26.0"
\language "english"

\include "src/common.ily"

\include "src/music/palm-leaf-rag/edits.ily"
\include "src/music/palm-leaf-rag/metadata.ily"
\include "src/music/palm-leaf-rag/score.ily"

\book {
    \bookOutputName \palm-leaf-rag-output-name

    \palm-leaf-rag-header

    \bookpart {
        \markup \pdf-two-page-left

        \score {
            \keepWithTag #'layout {
                \palm-leaf-rag-score
            }

            \layout {}
        }

        \score {
            \keepWithTag #'midi {
                \unfoldRepeats \palm-leaf-rag-score
            }

            \midi {}
        }

        \markup \abs-fontsize #10 \palm-leaf-rag-edits
    }
}
