\version "2.26.0"
\language "english"

\bookpart {
    \label #'appendix.editorial-notes
    \pdf-bookmark "appendix.editorial-notes" "Editorial Notes" #0

    \header {
        title = "Editorial Notes"
    }

    \markuplist {
        \column-lines {
            \line { \with-link #'ragtimes.original-rags { \uppercase \bold { \original-rags-title } } }
        }
        \original-rags-edits

        \column-lines {
            \line { \null }
            \line { \with-link #'ragtimes.maple-leaf-rag { \uppercase \bold { \maple-leaf-rag-title } } }
        }
        \maple-leaf-rag-edits

        \column-lines {
            \line { \null }
            \line { \with-link #'ragtimes.weeping-willow { \uppercase \bold { \weeping-willow-title } } }
        }
        \weeping-willow-edits

        \column-lines {
            \line { \null }
            \line { \with-link #'ragtimes.palm-leaf-rag { \uppercase \bold { \palm-leaf-rag-title } } }
        }
        \palm-leaf-rag-edits

        \column-lines {
            \line { \null }
            \line { \with-link #'ragtimes.bethena { \uppercase \bold { \bethena-title } } }
        }
        \bethena-edits
    }
}
