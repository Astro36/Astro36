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
#let pill(body) = box(
  baseline: -0.5pt,
  stroke: 0.5pt + black,
  radius: 1pt,
  inset: (x: 2pt),
  outset: (y: 2pt),
)[#text(size: 8pt, body)]
#let smaller(body) = text(size: 9pt)[#body]
#let tile(title, date, body) = block(spacing: 1em)[
  #title #h(1fr) #text(size: 10pt)[#date] \
  #body
]

#align(center)[
  = Seungjae Park
  #text(size: 10pt)[astro.psj\@gmail.com]
]

== Research Interests
Machine Learning, Natural Language Processing, Time Series, Quantitative Finance

== Education
#tile(
  [*Inha University*, Incheon, South Korea #pill[GPA 4.36/4.5]],
  "2019.03 ~ Present",
  [B.S. in Information and Communication Engineering, Minor in Global Finance and Banking],
)

== Relevant Experiences
#tile(
  [*2023 Data Creator Camp* #pill[Excellence Award]],
  "2023.09 ~ 2023.12",
  [Food Image Classification Performance Improvement Competition],
)
#tile(
  [*IBAS*],
  "2022.09 ~ 2023.06",
  [
    Big Data Analysts Society in Inha Univ. \
    Machine Learning Paper Review #smaller[(ACTIVETHIEF, Black-Box Ripper, DeepLab)]
  ],
)
#tile(
  [*Software Maestro 11th*],
  "2020.05 ~ 2020.12",
  [
    Creative Challenge Project Planning and Development Course, organized by the Ministry of Science and ICT \
    Developed a Robust Illegal Spam Detection Solution via CNN
  ],
)
#tile(
  [*Full-stack Freelance*],
  "2019.09 ~ 2019.12",
  [
    INSIGHT: AI-based Mental Healthcare Solution Startup #smaller[(KRW 10million Project)]
  ],
)

== Extracurricular Activities
#tile(
  [*BlueChip Mutual Fund*],
  "2023.03 ~ Present",
  [
    Financial Market Research & Stock Investment Institute in Inha Univ.\
    - UIC 12th Investment Concert: Company Analysis Report #smaller[(Corteva, Inc.)] \
    - Company Analysis Article at Incheon Ilbo #smaller[(Korea Aerospace Industries, Ltd.)] \
    - Company Analysis Presentation #smaller[(Synopex, Inc., Korea Aerospace Industries, Ltd.)]
  ],
)
#tile(
  [*int i*],
  "2019.03 ~ Present",
  [
    Programming Study Group in ICE\@Inha Univ.
    - Group Leader #smaller[(2023.07 \~ Present)]
    - Group Tutoring & Study Blog Writing
  ],
)
#tile(
  [*ICESA*],
  "2019.03 ~ 2023.06",
  [Student Association#smaller[#korean[(학생회)]] for ICE\@Inha Univ.],
)
#tile(
  [*Prography 4th, 5th*],
  "2019.03 ~ 2020.02",
  [
    Collaborative IT Project Club: Full-stack Developer Track\
    Developed a Psychological Counselor Matching Platform & Music Player App
  ],
)

== PROJECTS
#tile(
  [*Quick Pool*, Open Source Project],
  "2021.11 ~ 2021.12",
  [High Performance Async Generic Pool for Rust, implemented by Lock-free Waiter Queue]
)

#align(right)[
  #set text(size: 9pt)
  _(Last updated: #datetime.today().display("[month repr:short] [year]"))_
]
