\version "2.26.0"
\language "english"

palm-leaf-rag-output-name = "Palm Leaf Rag"

palm-leaf-rag-title = "Palm Leaf Rag"
palm-leaf-rag-subtitle = "A Slow Drag"

palm-leaf-rag-composer = "Scott Joplin"

palm-leaf-rag-publication-publisher = "Victor Kremer Co."
palm-leaf-rag-publication-place = "Chicago, IL."
palm-leaf-rag-publication-year = "1903"

palm-leaf-rag-header = \header {
    title = \palm-leaf-rag-title
    subtitle = \palm-leaf-rag-subtitle

    composer = \palm-leaf-rag-composer

    tagline = \markup \concat {
        "First published by "
        \palm-leaf-rag-publication-publisher
        ", "
        \palm-leaf-rag-publication-place
        ", in "
        \palm-leaf-rag-publication-year
        "."
    }
}
