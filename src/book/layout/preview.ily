\version "2.26.0"
\language "english"

% Spacing to use above and below preview scores.
preview-score-gap = \markup { \vspace #(to-staff-space 0.5 'mm) }

% Spacing between table columns (Form/Keys).
#(define preview-table-padding '(padding . 2))

% Scale song preview scores to 75%.
#(define preview-scale 0.75)

preview-layout = \layout {
    \context {
        \Dynamics

        % Scale dynamic markings (pp, p, mf, f, etc.).
        \override DynamicText.font-size = #(magnification->font-size preview-scale)

        % Scale pedal markings (text styles).
        \override SustainPedal.font-size = #(+ default-pedal-font-size (magnification->font-size preview-scale))
        \override SostenutoPedal.font-size = #(+ default-pedal-font-size (magnification->font-size preview-scale))
        \override UnaCordaPedal.font-size = #(+ default-pedal-font-size (magnification->font-size preview-scale))
    }

    \context {
        \Score

        % Scale measure numbers.
        \override BarNumber.font-size = #(magnification->font-size preview-scale)

        % Scale tempo markings.
        \override MetronomeMark.font-size = #(magnification->font-size preview-scale)

        % Scale staff-to-staff vertical spacing.
        \override StaffGrouper.staff-staff-spacing.basic-distance = #(* 9 preview-scale)
        \override StaffGrouper.staff-staff-spacing.minimum-distance = #(* 7 preview-scale)
        \override StaffGrouper.staff-staff-spacing.padding = #(* 1 preview-scale)
    }

    \context {
        \Staff

        % Scale general notation font size (note heads, clefs, time signatures, etc.).
        fontSize = #(magnification->font-size preview-scale)

        % Scale spacing between staff lines.
        \override StaffSymbol.staff-space = #preview-scale

        % Scale thin barlines.
        \override BarLine.hair-thickness = #(* 1.9 preview-scale)

        % Scale thick barlines (including repeat barlines).
        \override BarLine.thick-thickness = #(* 6.0 preview-scale)

        % Scale spacing between components of compound barlines.
        \override BarLine.kern = #(* 3.0 preview-scale)
    }
}
