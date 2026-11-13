\version "2.26.0"
\language "english"

original-rags-output-name = "Original Rags"

original-rags-title = "Original Rags"

original-rags-composer = "Scott Joplin"

original-rags-publication-publisher = "Carl Hoffman"
original-rags-publication-place = "Kansas City, MO"
original-rags-publication-year = "1899"

original-rags-header = \header {
    title = \original-rags-title

    composer = \original-rags-composer

    tagline = \markup \concat {
        "First published by "
        \italic \original-rags-publication-publisher
        " ("
        \original-rags-publication-place
        ") in "
        \original-rags-publication-year
        "."
    }
}
