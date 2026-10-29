\version "2.26.0"
\language "english"

% Define custom dynamic markups.
f-paren = \markup { \concat { "(" \ekm-dynamic "f" ")" } }
f-stacc = \markup { \concat { \ekm-dynamic "f" " stacc." } }

% Define markups for using left and right hand.
lh = \markup { \italic "l.h." }
rh = \markup { \italic "r.h." }

% Define SMuFL glyphs to use within markup.
%
% Code points can be found in the SMuFL glyph tables:
% https://smufl.formats.music/latest/tables/index.html
smufl-eighth-note = \markup { \ekm-note {8} #UP }
smufl-flat = \markup { \ekm-char ##xE260 }
smufl-sharp = \markup { \ekm-char ##xE262 }
