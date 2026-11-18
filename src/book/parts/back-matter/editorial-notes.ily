\version "2.26.0"
\language "english"

\bookpart {
    \label #'appendix.editorial-notes
    \pdf-bookmark "appendix.editorial-notes" "Editorial Notes" #0

    \paper {
        % Ensure content is top-aligned on all pages and never compressed.
        ragged-bottom = ##t
        ragged-last-bottom = ##t
    }

    \header {
        title = "Editorial Notes"
    }

    \markup \abs-fontsize #10 {
        \two-columns \default-column-gap
        \column-lines {
            \fill-line {
                \with-link #'ragtimes.original-rags { \uppercase \bold { \original-rags-title } }
                \with-link #'ragtimes.original-rags { \page-ref #'ragtimes.original-rags "000" "?" }
            }
            \justified-lines {
                \original-rags-tagline
                \bold Source: \concat { \with-url \original-rags-source-url \line { \original-rags-source-label } "." }
            }
            \line { \null }
            \original-rags-edits

            \line { \null }
            \line { \null }
            \fill-line {
                \with-link #'ragtimes.maple-leaf-rag { \uppercase \bold { \maple-leaf-rag-title } }
                \with-link #'ragtimes.maple-leaf-rag { \page-ref #'ragtimes.maple-leaf-rag "000" "?" }
            }
            \justified-lines {
                \maple-leaf-rag-tagline
                \bold Source: \concat { \with-url \maple-leaf-rag-source-url \line { \maple-leaf-rag-source-label } "." }
            }
            \line { \null }
            \maple-leaf-rag-edits
        }
        \column-lines {
            \fill-line {
                \with-link #'ragtimes.peacherine-rag { \uppercase \bold { \peacherine-rag-title } }
                \with-link #'ragtimes.peacherine-rag { \page-ref #'ragtimes.peacherine-rag "000" "?" }
            }
            \justified-lines {
                \peacherine-rag-tagline
                \bold Source: \concat { \with-url \peacherine-rag-source-url \line { \peacherine-rag-source-label } "." }
            }
            \line { \null }
            \peacherine-rag-edits

            \line { \null }
            \line { \null }
            \fill-line {
                \with-link #'ragtimes.weeping-willow { \uppercase \bold { \weeping-willow-title } }
                \with-link #'ragtimes.weeping-willow { \page-ref #'ragtimes.weeping-willow "000" "?" }
            }
            \justified-lines {
                \weeping-willow-tagline
                \bold Source: \concat { \with-url \weeping-willow-source-url \line { \weeping-willow-source-label } "." }
            }
            \line { \null }
            \weeping-willow-edits

            \line { \null }
            \line { \null }
            \fill-line {
                \with-link #'ragtimes.palm-leaf-rag { \uppercase \bold { \palm-leaf-rag-title } }
                \with-link #'ragtimes.palm-leaf-rag { \page-ref #'ragtimes.palm-leaf-rag "000" "?" }
            }
            \justified-lines {
                \palm-leaf-rag-tagline
                \bold Source: \concat { \with-url \palm-leaf-rag-source-url \line { \palm-leaf-rag-source-label } "." }
            }
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
