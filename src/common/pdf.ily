\version "2.26.0"
\language "english"

% Create a PDF bookmark pointing to the named destination `label`.
% The bookmark title is given by `text`.
% The number of immediate child bookmarks is given by `child-count`:
%   0  = no children
%   N  = N visible children (expanded by default)
%  -N  = N hidden children (collapsed by default)
pdf-bookmark = #(define-scheme-function (label text child-count) (string? string? integer?)
    #{
        \markup
        \with-dimensions #'(0 . 0) #'(0 . 0)
        \postscript
            #(format #f
                "mark /Dest /~a /DEST pdfmark
                 mark /Title (~a)~a /Dest /~a /OUT pdfmark"
                label
                text
                (if (zero? child-count)
                    ""
                    (format #f " /Count ~a" child-count))
                label)
    #}
)

% Set the PDF viewer's initial page layout.
%
% The PDF PageLayout name is given by `page-layout`; the zero-sized markup
% emits only the necessary PostScript pdfmark commands and produces no visible
% content.
%
% This pdfmark only needs to be emitted once in the document, preferably at the
% start of the first page.
%
% Valid PDF PageLayout values are:
%   - SinglePage
%   - OneColumn
%   - TwoColumnLeft
%   - TwoColumnRight
%   - TwoPageLeft
%   - TwoPageRight
#(define (pdf-page-layout page-layout)
    #{
        \markup
        \with-dimensions #'(0 . 0) #'(0 . 0)
        \postscript
            #(format #f
                "mark /PageLayout /~a /DOCVIEW pdfmark"
                page-layout)
    #}
)

% Display one page at a time.
#(define pdf-single-page (pdf-page-layout "SinglePage"))

% Display pages continuously in a single column.
#(define pdf-one-column (pdf-page-layout "OneColumn"))

% Display pages continuously in two columns, with odd-numbered pages on the
% left.
#(define pdf-two-column-left (pdf-page-layout "TwoColumnLeft"))

% Display pages continuously in two columns, with odd-numbered pages on the
% right.
#(define pdf-two-column-right (pdf-page-layout "TwoColumnRight"))

% Display two pages at a time, with odd-numbered pages on the left.
#(define pdf-two-page-left (pdf-page-layout "TwoPageLeft"))

% Display two pages at a time, with odd-numbered pages on the right.
#(define pdf-two-page-right (pdf-page-layout "TwoPageRight"))
