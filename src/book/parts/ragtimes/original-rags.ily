\version "2.26.0"
\language "english"

\bookpart {
    \label #'ragtimes.original-rags
    \pdf-bookmark "ragtimes.original-rags" \original-rags-title #0

    \original-rags-header

    \score {
        \keepWithTag #'layout {
            \original-rags-score
        }

        \layout {}
    }
}
