\version "2.26.0"
\language "english"

\bookpart {
    \label #'appendix
    \pdf-bookmark "appendix" "Appendix" #1

    \paper {
        % Ensure content is top-aligned and never compressed.
        ragged-bottom = ##t
        ragged-last-bottom = ##t
    }

    \header {
        title = "Appendix"
    }

    \markup \null
}
