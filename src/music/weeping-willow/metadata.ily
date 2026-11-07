\version "2.26.0"
\language "english"

weeping-willow-output-name = "Weeping Willow"

weeping-willow-dedication = "Respectfully Dedicated to the “Pawnee Club”, St. Louis, Mo."
weeping-willow-title = "Weeping Willow"
weeping-willow-subtitle = "A Ragtime Two-Step"

weeping-willow-composer = "Scott Joplin"

weeping-willow-publication-publisher = "Val. A. Reis Music Co."
weeping-willow-publication-place = "St. Louis, MO"
weeping-willow-publication-year = "1903"

weeping-willow-header = \header {
    dedication = \weeping-willow-dedication
    title = \weeping-willow-title
    subtitle = \weeping-willow-subtitle

    composer = \weeping-willow-composer

    tagline = \markup \concat {
        "First published by "
        \italic \weeping-willow-publication-publisher
        " ("
        \weeping-willow-publication-place
        ") in "
        \weeping-willow-publication-year
        "."
    }
}
