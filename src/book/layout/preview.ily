\version "2.26.0"
\language "english"

% Scale song preview scores to 75%.
#(define preview-scale 0.75)

preview-layout = \layout {
    \context {
        \Dynamics

        % Scale dynamic markings (pp, p, mf, f, etc.).
        \override DynamicText.font-size = #(magnification->font-size preview-scale)
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
