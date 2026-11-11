\version "2.26.0"
\language "english"

\bookpart {
    \paper {
        % Do not render a page header or footer.
        evenHeaderMarkup = ##f
        oddHeaderMarkup = ##f
        evenFooterMarkup = ##f
        oddFooterMarkup = ##f
    }

    \pdf-two-page-right

    \markup {
        \column {
            \column-lines {
                \fill-line \abs-fontsize #24 { "Scott Joplin" }
                \fill-line \abs-fontsize #48 \uppercase \bold { "Ragtimes" }

                \line { \null }
                \line { \null }
                \line { \null }

                \fill-line \abs-fontsize #18 \italic { "Selected, transcribed and edited by" }
                \fill-line \abs-fontsize #18 { "Peter Folta" }
            }
        }
    }
}
