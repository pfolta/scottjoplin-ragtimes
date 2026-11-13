\version "2.26.0"
\language "english"

\bookpart {
    \label #'index
    \pdf-bookmark "index" "Index" #0

    \header {
        title = "Index"
    }

    \markup {
        \column {
            \column-lines {
                \fill-line {
                    \with-link #'ragtimes.bethena { \bethena-title }
                    \with-link #'ragtimes.bethena { \page-ref #'ragtimes.bethena "000" "?" }
                }

                \fill-line {
                    \with-link #'ragtimes.maple-leaf-rag { \maple-leaf-rag-title }
                    \with-link #'ragtimes.maple-leaf-rag { \page-ref #'ragtimes.maple-leaf-rag "000" "?" }
                }

                \fill-line {
                    \with-link #'ragtimes.original-rags { \original-rags-title }
                    \with-link #'ragtimes.original-rags { \page-ref #'ragtimes.original-rags "000" "?" }
                }

                \fill-line {
                    \with-link #'ragtimes.palm-leaf-rag { \palm-leaf-rag-title }
                    \with-link #'ragtimes.palm-leaf-rag { \page-ref #'ragtimes.palm-leaf-rag "000" "?" }
                }

                \fill-line {
                    \with-link #'ragtimes.weeping-willow { \weeping-willow-title }
                    \with-link #'ragtimes.weeping-willow { \page-ref #'ragtimes.weeping-willow "000" "?" }
                }
            }
        }
    }
}
