\version "2.26.0"
\language "english"

% Load Edwin font files.
#(ly:font-config-add-font (ly:find-file "vendor/fonts/edwin/Edwin-BdIta.otf" #t))
#(ly:font-config-add-font (ly:find-file "vendor/fonts/edwin/Edwin-Bold.otf" #t))
#(ly:font-config-add-font (ly:find-file "vendor/fonts/edwin/Edwin-Italic.otf" #t))
#(ly:font-config-add-font (ly:find-file "vendor/fonts/edwin/Edwin-Roman.otf" #t))

% Load Leland font files.
#(ly:font-config-add-font (ly:find-file "vendor/fonts/leland/Leland.otf" #t))
#(ly:font-config-add-font (ly:find-file "vendor/fonts/leland/LelandText.otf" #t))

% Set the global text font to Edwin.
\paper {
    property-defaults.fonts.serif = "Edwin"
}

% Use Edwin Bold as the font for volta bracket numbers.
\layout {
    \context {
        \Score

        \override VoltaBracket.font-name = #"Edwin Bold"
        \override VoltaBracket.font-size = #1.5
    }
}

% Use Leland as the SMuFL notation font.
ekmFont = "Leland"

% Cosmufl = Esmuflily + Ekmelily
\include "vendor/lilypond/esmuflily/ly/cosmufl.ily"
