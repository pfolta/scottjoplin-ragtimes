\version "2.26.0"
\language "english"

% Use a staff size of 18pt instead of the default 20pt.
% This has to be set before any other configuration as it resets any custom
% font configuration.
#(set-global-staff-size 18)

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

% Make pedal markings smaller.
#(define default-pedal-font-size -2)

\layout {
    \context {
        \Dynamics

        \override SustainPedal.font-size = #default-pedal-font-size
        \override SostenutoPedal.font-size = #default-pedal-font-size
        \override UnaCordaPedal.font-size = #default-pedal-font-size
    }
}

% Use Leland as the SMuFL notation font.
ekmFont = "Leland"

% Cosmufl = Esmuflily + Ekmelily
\include "vendor/lilypond/esmuflily/ly/cosmufl.ily"
