\version "2.26.0"
\language "english"

% Create two equally sized columns that fill the available line width,
% separated by a configurable markup gap.
#(define-markup-command (two-columns layout props column-gap left right)
    (markup? markup-list? markup-list?)
    (let* (
        (total-width
            (chain-assoc-get 'line-width props
                (ly:output-def-lookup layout 'line-width)))
        (word-space
            (chain-assoc-get 'word-space props
                (ly:output-def-lookup layout 'word-space)))
        (gap-stencil
            (interpret-markup layout props column-gap))
        (gap-extent
            (ly:stencil-extent gap-stencil X))
        (gap-width
            (- (cdr gap-extent) (car gap-extent)))
        (column-width
            (/ (- total-width gap-width) 2))

        (left-column
            (markup
                #:override `(word-space . ,word-space)
                #:with-dimension X `(0 . ,column-width)
                #:override `(line-width . ,column-width)
                (make-column-markup left)))

        (right-column
            (markup
                #:override `(word-space . ,word-space)
                #:with-dimension X `(0 . ,column-width)
                #:override `(line-width . ,column-width)
                (make-column-markup right))))

        (interpret-markup layout props
            (markup
                #:override '(word-space . 0)
                (make-line-markup
                    (list left-column column-gap right-column))))))
