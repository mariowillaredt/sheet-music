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
   { a2 c4 b4 | a1 | a2 c4 b4 | a1 | a1 | g1}
}

low = \relative c' {
  \global
  \clef bass
    << { r4 <c e>2. | r4 <d f>2. | r4 <c e>2. | r4 <d f>2. | r4 <a f'>2. | r4 <b d>2. }
       \\
       {a1 | b1 | a1 | b1 | f | g1} >>
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \low
>>

  \layout { }
  \midi { }
}
