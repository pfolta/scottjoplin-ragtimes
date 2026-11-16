\version "2.26.0"
\language "english"

weeping-willow-output-name = "Weeping Willow"

weeping-willow-dedication = \markuplist { Respectfully Dedicated to the “Pawnee Club”, "St. Louis," Mo. }
weeping-willow-title = "Weeping Willow"
weeping-willow-subtitle = \markuplist { A Ragtime Two-Step }

weeping-willow-composer = "Scott Joplin"

weeping-willow-publication-publisher = "Val. A. Reis Music Co."
weeping-willow-publication-place = "St. Louis, Mo."
weeping-willow-publication-year = "1903"

weeping-willow-tagline = \markuplist { First published by \italic { Val. A. Reis Music Co. } "(St. Louis," Mo.) in 1903. }

weeping-willow-header = \header {
    dedication = \markup \weeping-willow-dedication
    title = \weeping-willow-title
    subtitle = \markup \weeping-willow-subtitle

    composer = \weeping-willow-composer

    tagline = \markup { \weeping-willow-tagline }
}
