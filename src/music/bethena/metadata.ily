\version "2.26.0"
\language "english"

bethena-output-name = "Bethena"

bethena-index = "Bethena"

bethena-dedication = \markuplist { Respectfully Dedicated to Mr. & Mrs. Dan E. Davenport of "St. Louis," Mo. }
bethena-title = "Bethena"
bethena-subtitle = \markuplist { A Concert Waltz }

bethena-composer = "Scott Joplin"

bethena-publication-publisher = "T. Bahnsen Piano Manufacturing Co."
bethena-publication-place = "St. Louis, Mo."
bethena-publication-year = "1905"

bethena-tagline = \markuplist { First published by \italic { T. Bahnsen Piano Manufacturing Co. } "(St. Louis," Mo.) in 1905. }

bethena-header = \header {
    dedication = \markup \bethena-dedication
    title = \bethena-title
    subtitle = \markup \bethena-subtitle

    composer = \bethena-composer

    tagline = \markup \bethena-tagline
}
