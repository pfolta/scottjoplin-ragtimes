\version "2.26.0"
\language "english"

bethena-output-name = "Bethena"

bethena-dedication = "Respectfully Dedicated to Mr. & Mrs. Dan E. Davenport of St. Louis, MO."
bethena-title = "Bethena"
bethena-subtitle = "A Concert Waltz"

bethena-composer = "Scott Joplin"

bethena-publication-publisher = "T. Bahnsen Piano Mfg. Co."
bethena-publication-place = "St. Louis, MO."
bethena-publication-year = "1905"

bethena-header = \header {
    dedication = \bethena-dedication
    title = \bethena-title
    subtitle = \bethena-subtitle

    composer = \bethena-composer

    tagline = \markup \concat {
        "First published by "
        \bethena-publication-publisher
        ", "
        \bethena-publication-place
        ", in "
        \bethena-publication-year
        "."
    }
}
