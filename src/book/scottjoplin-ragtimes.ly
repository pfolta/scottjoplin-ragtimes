\version "2.26.0"
\language "english"

\include "src/common.ily"

\include "src/music/original-rags/metadata.ily"
\include "src/music/original-rags/score.ily"
\include "src/music/maple-leaf-rag/metadata.ily"
\include "src/music/maple-leaf-rag/score.ily"
\include "src/music/weeping-willow/metadata.ily"
\include "src/music/weeping-willow/score.ily"
\include "src/music/palm-leaf-rag/metadata.ily"
\include "src/music/palm-leaf-rag/score.ily"
\include "src/music/bethena/metadata.ily"
\include "src/music/bethena/score.ily"

\book {
    \bookOutputName "Scott Joplin - Ragtimes"

    \header {
        pdftitle = "Scott Joplin: Ragtimes"
        pdfauthor = "Peter Folta"
        pdfkeywords = "joplin, lilypond, piano, ragtime, ragtimes, scott-joplin, scottjoplin, sheet-music"
    }

    % Front Matter
    \include "src/book/parts/front-matter/title-page.ily"
    \include "src/book/parts/front-matter/copyright.ily"
    \include "src/book/parts/front-matter/contents.ily"

    % Ragtimes
    \include "src/book/parts/blank-page.ily"
    \include "src/book/parts/ragtimes/ragtimes.ily"
    \include "src/book/parts/ragtimes/original-rags.ily"
    \include "src/book/parts/ragtimes/maple-leaf-rag.ily"
    \include "src/book/parts/ragtimes/weeping-willow.ily"
    \include "src/book/parts/ragtimes/palm-leaf-rag.ily"
    \include "src/book/parts/ragtimes/bethena.ily"

    % Back Matter
    \include "src/book/parts/blank-page.ily"
    \include "src/book/parts/back-matter/index.ily"
}
