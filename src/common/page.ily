\version "2.26.0"
\language "english"

% Disable automatic page breaking throughout the score.
\layout {
    \context {
        \Score
        \override NonMusicalPaperColumn.page-break-permission = ##f
    }
}
