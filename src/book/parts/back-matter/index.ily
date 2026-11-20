\version "2.26.0"
\language "english"

\bookpart {
    \label #'index
    \pdf-bookmark "index" "Index" #0

    \paper {
        % Ensure content is top-aligned on all pages and never compressed.
        ragged-bottom = ##t
        ragged-last-bottom = ##t
    }

    \header {
        title = "Index"
    }

    \markup \abs-fontsize #10 {
        \two-columns \default-column-gap
        \column-lines {
            \line \bold { B }

            \fill-with-pattern #1 #RIGHT "."
                \with-link #'ragtimes.bethena \bethena-title
                \with-link #'ragtimes.bethena \page-ref #'ragtimes.bethena "000" "?"

            \line { \null }
            \line { \null }
            \line \bold { M }

            \fill-with-pattern #1 #RIGHT "."
                \with-link #'ragtimes.maple-leaf-rag \maple-leaf-rag-title
                \with-link #'ragtimes.maple-leaf-rag \page-ref #'ragtimes.maple-leaf-rag "000" "?"

            \line { \null }
            \line { \null }
            \line \bold { O }

            \fill-with-pattern #1 #RIGHT "."
                \with-link #'ragtimes.original-rags \original-rags-title
                \with-link #'ragtimes.original-rags \page-ref #'ragtimes.original-rags "000" "?"

            \line { \null }
            \line { \null }
            \line \bold { P }

            \fill-with-pattern #1 #RIGHT "."
                \with-link #'ragtimes.palm-leaf-rag \palm-leaf-rag-title
                \with-link #'ragtimes.palm-leaf-rag \page-ref #'ragtimes.palm-leaf-rag "000" "?"

            \fill-with-pattern #1 #RIGHT "."
                \with-link #'ragtimes.peacherine-rag \peacherine-rag-title
                \with-link #'ragtimes.peacherine-rag \page-ref #'ragtimes.peacherine-rag "000" "?"

            \line { \null }
            \line { \null }
            \line \bold { W }

            \fill-with-pattern #1 #RIGHT "."
                \with-link #'ragtimes.weeping-willow \weeping-willow-title
                \with-link #'ragtimes.weeping-willow \page-ref #'ragtimes.weeping-willow "000" "?"
        }
        \column-lines {
        }
    }
}
