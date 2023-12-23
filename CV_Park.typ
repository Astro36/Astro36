#set document(title: "CV_Park", author: "Seungjae Park")
#set page(numbering: "1", number-align: center)
#set text(font: "New Computer Modern", fallback: false, size: 11pt)
#set par(justify: true)

#show heading.where(level: 1): it => align(center)[
  #text(size: 15pt, smallcaps(it.body))
]
#show heading.where(level: 2): it => [
  #block(
    above: 1.5em,
    below: 1em,
    text(size: 12pt, smallcaps(it.body)),
  )
]

#let korean(body) = text(font: "조선신명조", lang: "ko")[#body]

#align(center)[
  = Seungjae Park
  #text(size: 10pt)[astro.psj\@gmail.com]
]

== Research Interests
Machine Learning, Natural Language Processing, Time Series, Quantitative Finance

== Education
#[
  #show par: set block(spacing: 0.75em)

  *Inha University*, Incheon, South Korea #h(1fr) #text(size: 10pt)[2019.03 \~ Present]

  B.S. in Information and Communication Engineering, Minor in Global Finance and Banking

  Cumulative GPA 4.36/4.5
]
