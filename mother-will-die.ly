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
   { a2 c4 b4 | a1 }
}

low = \relative c' {
  \global
  \clef bass
    << { r4 <c e>2. | r4 <d f>2. }
       \\
       {a1 | b1 } >>
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \low
>>

  \layout { }
  \midi { }
}
