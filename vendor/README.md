# Vendored Dependencies

This directory contains third-party dependencies vendored into this project. Each dependency is pinned to a specific upstream commit to ensure builds are reproducible.

Dependencies are intentionally vendored directly into this repository rather than referenced through Git submodules. This preserves the required source files within the project and avoids relying on the continued availability of upstream repositories or revisions.

Avoid modifying vendored files directly wherever possible. Document any necessary patches so they can be reviewed and reapplied when the dependency is updated.

## Fonts

| Font | License | Version | Pinned Commit | Upstream Repository |
| :--- | :--- | :--- | :--- | :--- |
| [**Edwin**](fonts/edwin) | [`OFL-1.1`](fonts/edwin/LICENSE.txt) | [0.54](https://github.com/MuseScoreFonts/Edwin/releases/tag/v0.54) | [`14d82ac`](https://github.com/MuseScoreFonts/Edwin/commit/14d82aca352c18d7cd31a40e7fa0d2e40b3f2805) | [MuseScoreFonts/Edwin](https://github.com/MuseScoreFonts/Edwin) |
| [**Leland**](fonts/leland) | [`OFL-1.1`](fonts/leland/LICENSE.txt) | [0.80](https://github.com/MuseScoreFonts/Leland/releases/tag/v0.80) | [`d91cf5d`](https://github.com/MuseScoreFonts/Leland/commit/d91cf5d21045e2c294541676ad386b7ffb4ac881) | [MuseScoreFonts/Leland](https://github.com/MuseScoreFonts/Leland) |

## LilyPond

| Package | License | Version | Pinned Commit | Upstream Repository |
| :--- | :--- | :--- | :--- | :--- |
| [**Ekmelily**](lilypond/ekmelily) | [`GPL-3.0`](lilypond/ekmelily/LICENSE.txt) | [2.0](https://github.com/tr-igem/ekmelily/releases/tag/v2.0) | [`fc9538e`](https://github.com/tr-igem/ekmelily/commit/fc9538efbdc0177b570f405966a0f80d3411c199) | [tr-igem/ekmelily](https://github.com/tr-igem/ekmelily) |
| [**Esmuflily**](lilypond/esmuflily) | [`MIT`](lilypond/esmuflily/LICENSE.txt) | [2.7](https://github.com/tr-igem/esmuflily/releases/tag/v2.7) | [`9544a32`](https://github.com/tr-igem/esmuflily/commit/9544a323de5d7d6eb3bdca518a68be55a88c8c81) | [tr-igem/esmuflily](https://github.com/tr-igem/esmuflily) |
