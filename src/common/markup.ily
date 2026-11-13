\version "2.26.0"
\language "english"

% Define custom dynamic markups.
p-then-f = \tweak DynamicText.self-alignment-X #LEFT
    #(make-dynamic-script
        (markup
            #:vcenter
            (#:column
                (
                    #:line
                    (#:concat
                        (#:normal-text #:italic "1"
                         #:normal-text #:italic (#:super "st")
                         #:normal-text #:italic " time "
                         #:ekm-dynamic "p"))
                    #:line
                    (#:concat
                        (#:normal-text #:italic "2"
                         #:normal-text #:italic (#:super "nd")
                         #:normal-text #:italic " time "
                         #:ekm-dynamic "f"))))))

f-paren = \markup { \concat { "(" \ekm-dynamic "f" ")" } }

f-stacc = \tweak DynamicText.self-alignment-X #LEFT
    #(make-dynamic-script
        (markup #:concat (#:ekm-dynamic "f" #:normal-text #:italic " stacc.")))

dim = \tweak DynamicText.self-alignment-X #LEFT
    #(make-dynamic-script
        (markup #:normal-text #:italic "dim."))

% Define markups for using left and right hand.
lh = \markup { \italic "l.h." }
rh = \markup { \italic "r.h." }

% Use an italic `ten.` text indication instead of the standard tenuto symbol.
tenuto = \markup { \italic "ten." }

% Define SMuFL glyphs to use within markup.
%
% Code points can be found in the SMuFL glyph tables:
% https://smufl.formats.music/latest/tables/index.html
smufl-flat = \markup { \ekm-char ##xE260 }
smufl-sharp = \markup { \ekm-char ##xE262 }
smufl-accent = \markup { \ekm-char ##xE4A0 }

% \uppercase
% Convert text in the supplied markup to UPPERCASE.
#(define-markup-command (uppercase layout props arg) (markup?)
    (interpret-markup layout props
        (make-with-string-transformer-markup
            (lambda (layout props str) (string-upcase str))
            arg)))
