\version "2.26.0"
\language "english"

\bookpart {
    \paper {
        % Do not render a page header.
        evenHeaderMarkup = ##f
        oddHeaderMarkup = ##f

        % Put the copyright notice in the page footer to ensure it is always
        % bottom-aligned on the page.
        evenFooterMarkup = \markup \abs-fontsize #8 {
            \column {
                \column-lines {
                    \fill-line { "First Edition (Draft)" }
                    \fill-line { \null }
                    \fill-line { "This work is free of known copyright restrictions." }
                    \fill-line { \null }
                    \fill-line { \concat { "Generated on " #(strftime "%-d %B %Y" (localtime (current-time))) } }
                    \fill-line { \concat { "with " \with-url "https://lilypond.org" "GNU LilyPond" " v" #(lilypond-version) } }
                    \fill-line { \null }
                    \fill-line { "This book has been typeset in" }
                    \fill-line { \concat { \with-url "https://github.com/MuseScoreFonts/Leland" "Leland" " and " \with-url "https://github.com/MuseScoreFonts/Edwin" "Edwin" } }
                }
            }
        }

        % The copyright notice should be on page 2, but just in case the layout
        % shifts, ensure that the notice is also rendered on an odd page.
        oddFooterMarkup = \evenFooterMarkup
    }

    % Empty `\markup` block to ensure the page is rendered.
    \markup \null
}
