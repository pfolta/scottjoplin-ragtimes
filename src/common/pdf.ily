\version "2.26.0"
\language "english"

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
