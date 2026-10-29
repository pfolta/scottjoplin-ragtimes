\version "2.26.0"
\language "english"

% Use output file extension `.mid` instead of the default `.midi`.
\midi {
    #(ly:set-option 'midi-extension "mid")
}

% Move the MIDI dynamic performer from Voice to PianoStaff so that dynamic
% markings (e.g. \f, \p, \mf) affect both piano staves.
\midi {
    \context {
        \Voice
        \remove "Dynamic_performer"
    }

    \context {
        \PianoStaff
        \consists "Dynamic_performer"
    }
}
