\version "2.26.0"
\language "english"

palm-leaf-rag-edits = \markup {
    \column {
        \column-lines {
            \line \bold { "Title:" }
            \line { \concat { \italic "A Slow Drag" " appears on the cover only." } }
            \line { \concat { \italic "Composer of “Maple Leaf Rag”" " omitted." } }
            \line { \null }

            \line \bold { \concat { "Measure 34, upper staff, first note (E" \super \smufl-flat "4):" } }
            \line { "Double-dotted note changed to single-dotted note." }
            \line { \null }

            \line \bold { "Measure 56, lower staff:" }
            \line { "Slur moved below the notes." }
            \line { \null }

            \line \bold { "Measure 67, lower staff, third note:" }
            \line { "Marcato moved above the note (cf. measure 12)." }
            \line { \null }
        }
    }
}
