\version "2.26.0"
\language "english"

\bookpart {
    \label #'appendix.editorial-notes
    \pdf-bookmark "appendix.editorial-notes" "Editorial Notes" #0

    \header {
        title = "Editorial Notes"
    }

    \markup \abs-fontsize #10 {
        \two-columns \hspace #(to-staff-space 5 'mm)
        \column-lines {
            \fill-line {
                \with-link #'ragtimes.original-rags { \uppercase \bold { \original-rags-title } }
                \with-link #'ragtimes.original-rags { \page-ref #'ragtimes.original-rags "000" "?" }
            }
            \justified-lines { \original-rags-tagline }
            \line { \null }
            \original-rags-edits

            \line { \null }
            \line { \null }
            \fill-line {
                \with-link #'ragtimes.maple-leaf-rag { \uppercase \bold { \maple-leaf-rag-title } }
                \with-link #'ragtimes.maple-leaf-rag { \page-ref #'ragtimes.maple-leaf-rag "000" "?" }
            }
            \justified-lines { \maple-leaf-rag-tagline }
            \line { \null }
            \maple-leaf-rag-edits
        }
        \column-lines {
            \fill-line {
                \with-link #'ragtimes.weeping-willow { \uppercase \bold { \weeping-willow-title } }
                \with-link #'ragtimes.weeping-willow { \page-ref #'ragtimes.weeping-willow "000" "?" }
            }
            \justified-lines { \weeping-willow-tagline }
            \line { \null }
            \weeping-willow-edits

            \line { \null }
            \line { \null }
            \fill-line {
                \with-link #'ragtimes.palm-leaf-rag { \uppercase \bold { \palm-leaf-rag-title } }
                \with-link #'ragtimes.palm-leaf-rag { \page-ref #'ragtimes.palm-leaf-rag "000" "?" }
            }
            \justified-lines { \palm-leaf-rag-tagline }
            \line { \null }
            \palm-leaf-rag-edits

            \line { \null }
            \line { \null }
            \fill-line {
                \with-link #'ragtimes.bethena { \uppercase \bold { \bethena-title } }
                \with-link #'ragtimes.bethena { \page-ref #'ragtimes.bethena "000" "?" }
            }
            \justified-lines { \bethena-tagline }
            \line { \null }
            \bethena-edits
        }
    }
}
