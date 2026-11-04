\version "2.26.0"
\language "english"

maple-leaf-rag-output-name = "Maple Leaf Rag"

maple-leaf-rag-dedication = "To the Maple Leaf Club"
maple-leaf-rag-title = "Maple Leaf Rag"

maple-leaf-rag-composer = "Scott Joplin"

maple-leaf-rag-publication-publisher = "John Stark & Son"
maple-leaf-rag-publication-place = "Sedalia, MO."
maple-leaf-rag-publication-year = "1899"

maple-leaf-rag-header = \header {
    dedication = \maple-leaf-rag-dedication
    title = \maple-leaf-rag-title

    composer = \maple-leaf-rag-composer

    tagline = \markup \concat {
        "First published by "
        \maple-leaf-rag-publication-publisher
        ", "
        \maple-leaf-rag-publication-place
        ", in "
        \maple-leaf-rag-publication-year
        "."
    }
}
