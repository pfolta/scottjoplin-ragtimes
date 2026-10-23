# Vendored Dependencies

This directory contains third-party dependencies vendored into this project. Each dependency is pinned to a specific upstream commit to ensure builds are reproducible.

Dependencies are intentionally vendored directly into this repository rather than referenced through Git submodules. This preserves the required source files within the project and avoids relying on the continued availability of upstream repositories or revisions.

Avoid modifying vendored files directly wherever possible. Document any necessary patches so they can be reviewed and reapplied when the dependency is updated.

## Fonts

<table width="100%">
    <tr>
        <th width="20%">Font</th>
        <th width="15%">License</th>
        <th width="15%">Version</th>
        <th width="20%">Pinned Commit</th>
        <th width="30%">Upstream Repository</th>
    </tr>
    <tr>
        <td><a href="fonts/edwin"><strong>Edwin</strong></a></td>
        <td><a href="fonts/edwin/LICENSE.txt"><code>OFL-1.1</code></a></td>
        <td>0.54</td>
        <td><a href="https://github.com/MuseScoreFonts/Edwin/commit/14d82aca352c18d7cd31a40e7fa0d2e40b3f2805"><code>14d82ac</code></a></td>
        <td><a href="https://github.com/MuseScoreFonts/Edwin">MuseScoreFonts/Edwin</a></td>
    </tr>
    <tr>
        <td><a href="fonts/leland"><strong>Leland</strong></a></td>
        <td><a href="fonts/leland/LICENSE.txt"><code>OFL-1.1</code></a></td>
        <td>0.80</td>
        <td><a href="https://github.com/MuseScoreFonts/Leland/commit/d91cf5d21045e2c294541676ad386b7ffb4ac881"><code>d91cf5d</code></a></td>
        <td><a href="https://github.com/MuseScoreFonts/Leland">MuseScoreFonts/Leland</a></td>
    </tr>
</table>

## LilyPond

<table width="100%">
    <tr>
        <th width="20%">Package</th>
        <th width="15%">License</th>
        <th width="15%">Version</th>
        <th width="20%">Pinned Commit</th>
        <th width="30%">Upstream Repository</th>
    </tr>
    <tr>
        <td><a href="lilypond/ekmelily"><strong>Ekmelily</strong></a></td>
        <td><a href="lilypond/ekmelily/LICENSE.txt"><code>GPL-3.0</code></a></td>
        <td>–</td>
        <td><a href="https://github.com/tr-igem/ekmelily/commit/fc9538efbdc0177b570f405966a0f80d3411c199"><code>fc9538e</code></a></td>
        <td><a href="https://github.com/tr-igem/ekmelily">tr-igem/ekmelily</a></td>
    </tr>
    <tr>
        <td><a href="lilypond/esmuflily"><strong>Esmuflily</strong></a></td>
        <td><a href="lilypond/esmuflily/LICENSE.txt"><code>MIT</code></a></td>
        <td>2.6</td>
        <td><a href="https://github.com/tr-igem/esmuflily/commit/8a13290d48006b65085823a3d5c1608e5e79604f"><code>8a13290</code></a></td>
        <td><a href="https://github.com/tr-igem/esmuflily">tr-igem/esmuflily</a></td>
    </tr>
</table>
