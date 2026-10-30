\version "2.26.0"
\language "english"

% Make ledger lines the same thickness as staff lines.
\layout {
    \context {
        \Staff
        \override StaffSymbol.ledger-line-thickness = #'(1.0 . 0.0)
    }
}

% Disable automatic beaming.
\layout {
    \context {
        \Staff
        autoBeaming = ##f
    }
}

% Show the measure number at the current position.
show-measure-number = \once \override Score.BarNumber.break-visibility = ##(#t #t #t)
