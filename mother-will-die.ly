\version "2.20.0"

\header {
  title = "Mother Will Die"
  composer = "Yann Tiersen"
  tagline = "Transcribed for piano"
}

global = {
  \key a \minor
  \time 4/4
  \tempo 4 = 76
}

upper = \relative c'' {
  \global
  \clef treble
  
  % Main theme - first section
  \repeat volta 2 {
    a2 c4 b4 | }
}

lower = \relative c {
  \global
  \clef bass
  
  % First section
  \repeat volta 2 {
    \new Voice = "first"
      \relative {\voiceOne r4 <c e>2.}
    \new Voice = "second"
      \relative {\voiceTwo a4}
  }
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff << 
      \relative c {
        \global
        \clef bass
  
        % First section
        \repeat volta 2 {
        \new Voice = "first"
        \relative {\voiceOne r4 <c e>2.}
        \new Voice = "second"
        \relative {\voiceTwo a4}
  }
}
  >>
  \layout { }
  \midi { }
}
