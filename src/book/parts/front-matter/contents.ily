\version "2.26.0"
\language "english"

\bookpart {
    \pdf-bookmark "toc" "Contents" #0

    \header {
        title = "Contents"
    }

    \markup {
        \column {
            \column-lines {
                \fill-line \bold {
                    \with-link #'ragtimes { "Ragtimes" }
                    \with-link #'ragtimes { \page-ref #'ragtimes "000" "?" }
                }

                \fill-line {
                    \concat { \hspace #(to-staff-space 10 'mm) \with-link #'ragtimes.original-rags { \original-rags-title } }
                    \with-link #'ragtimes.original-rags { \page-ref #'ragtimes.original-rags "000" "?" }
                }

                \fill-line {
                    \concat { \hspace #(to-staff-space 10 'mm) \with-link #'ragtimes.maple-leaf-rag { \maple-leaf-rag-title } }
                    \with-link #'ragtimes.maple-leaf-rag { \page-ref #'ragtimes.maple-leaf-rag "000" "?" }
                }

                \fill-line {
                    \concat { \hspace #(to-staff-space 10 'mm) \with-link #'ragtimes.weeping-willow { \weeping-willow-title } }
                    \with-link #'ragtimes.weeping-willow { \page-ref #'ragtimes.weeping-willow "000" "?" }
                }

                \fill-line {
                    \concat { \hspace #(to-staff-space 10 'mm) \with-link #'ragtimes.palm-leaf-rag { \palm-leaf-rag-title } }
                    \with-link #'ragtimes.palm-leaf-rag { \page-ref #'ragtimes.palm-leaf-rag "000" "?" }
                }

                \fill-line {
                    \concat { \hspace #(to-staff-space 10 'mm) \with-link #'ragtimes.bethena { \bethena-title } }
                    \with-link #'ragtimes.bethena { \page-ref #'ragtimes.bethena "000" "?" }
                }

                \fill-line { \null }

                \fill-line \bold {
                    \with-link #'index { "Index" }
                    \with-link #'index { \page-ref #'index "000" "?" }
                }
            }
        }
    }
}
