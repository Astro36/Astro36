#set document(title: "CV_Park", author: "Seungjae Park")
#set page(numbering: "1", number-align: center)
#set text(font: "Times New Roman", fallback: false, size: 11pt)
#set par(justify: true)

#show heading.where(level: 1): it => align(center)[
  #text(size: 24pt, weight: "regular", (it.body))
]
#show heading.where(level: 2): it => [
  #block(
    above: 1.5em,
    below: 1em,
    text(size: 16pt, weight: "regular", smallcaps(it.body)),
  )
]

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
  #text(size: 10pt)[astro.psj\@gmail.com \ https://github.com/Astro36]
]

== Research Interests
Machine Learning, Natural Language Processing, Time Series, Quantitative Finance

== Education
#tile(
  [*Inha University*, Incheon, South Korea #pill[GPA 4.36/4.5]],
  "2019.03 ~ Present",
  [
    B.S. in Information and Communication Engineering \
    Minor in Global Finance and Banking
  ],
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
    Machine Learning Paper Review#smaller[(ACTIVETHIEF, Black-Box Ripper, DeepLab)]
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
  [INSIGHT: AI-based Mental Healthcare Solution Startup#smaller[(KRW 10million Project)]],
)

== Extracurricular Activities
#tile(
  [*BlueChip Mutual Fund*],
  "2023.03 ~ Present",
  [
    Financial Market Research & Stock Investment Institute in Inha Univ.\
    - UIC 12th Investment Concert: Company Analysis Report#smaller[(Corteva, Inc.)] \
    - Company Analysis Article at Incheon Ilbo#smaller[(Korea Aerospace Industries, Ltd.)] \
    - Company Analysis Presentation#smaller[(Synopex, Inc., Korea Aerospace Industries, Ltd.)]
  ],
)
#tile(
  [*int i*],
  "2019.03 ~ Present",
  [
    Programming Study Group in ICE\@Inha Univ.
    - Group Leader#smaller[(2023.07 \~ Present)]
    - Group Tutoring & Study Blog Writing
  ],
)
#tile(
  [*ICESA*],
  "2019.03 ~ 2023.06",
  [Student Association for ICE\@Inha Univ.],
)
#tile(
  [*Prography 4th, 5th*],
  "2019.03 ~ 2020.02",
  [
    Collaborative IT Project Club: Full-stack Developer Track\
    Developed a Psychological Counselor Matching Platform & Music Player App
  ],
)
#tile(
  [*WEBS*],
  "2019.03 ~ 2019.12",
  [Inha University Startup Support Foundation - Startup Club],
)
#pagebreak()

== Technical Projects
#tile(
  [*Self-Balancing Robot*, School Project #pill[C++]],
  "2023.05 ~ 2023.06",
  [2-Wheel Self-Balancing Robot made with ATmega4809 & MPU6050, with no dependencies, _Embedded System Capstone Design: Final Project_]
)
#tile(
  [*3D Product Catalog*, School Project #pill[C++]],
  "2022.12",
  [Interactive 3D Product Catalog with OpenGL & Blender, _Computer Graphics Capstone Design: Mini Project_]
)
#tile(
  [*Quick Pool*, Open Source #pill[Rust]],
  "2021.11 ~ 2021.12",
  [High Performance Async Generic Pool for Rust, implemented by Lock-free Waiter Queue, #smaller[*[Downloads: 1.6K]*]]
)
#tile(
  [*Spree*, Startup #pill[Python] #pill[C++]],
  "2020.07 ~ 2020.12",
  [Robust Illegal Spam Detection Solution via CNN, _IITP-2020-SW Maestro training course_]
)
#tile(
  [*└ Kotka*, Open Source #pill[Python]],
  "2020.07 ~ 2020.08",
  [#h(1em) Korean Obfuscation ToolKit for Data Augmentation, _IITP-2020-SW Maestro training course_]
)
#tile(
  [*Hyeyum*, School Project #pill[Python] #pill[Javascript]],
  "2019.11 ~ 2019.12",
  [Language Habit Correction Robot with Google Speech Recognition API, _Creative Design for Information and Communication Engineering: Final Project_]
)
#tile(
  [*Shim*, Startup #pill[Kotlin] #pill[Javascript]],
  "2019.09 ~ 2020.02",
  [Psychological Counselor Matching Platform, _Prography 5th_]
)
#tile(
  [*Kodict*, Open Source #pill[Rust]],
  "2018.11 ~ 2019.02",
  [Provides Korean Dictionary Implements and Crawler for Rust, #smaller[*[Downloads: 2.1K]*]]
)
#tile(
  [*KokoaNLP*, Contest #pill[Javascript]],
  "2018.04 ~ 2018.07",
  [Unsupervised Learning Korean Kernel Object Analyzer, _2018 Korea Olympiad in Informatics: Contest Track_]
)
#tile(
  [*Touch Music*, Contest #pill[Javascript] #pill[Python] #pill[Excellence Award]],
  "2018.03",
  [Easy Music Finder via Word2vec on Song Lyrics, _2018 KAIST Creative Team Coding Challenge_]
)

== Skills

#block(spacing: 1em)[
  *Programming Languages* \
  C++, Java, Kotlin, JavaScript, TypeScript, Python, Rust, Dart
]

#block(spacing: 1em)[
  *Platforms & Frameworks* \
  - General: Arduino, Spring, Android, Node.js, Flutter
  - AI: TensorFlow, PyTorch
  - DevOps: Docker
]

#block(spacing: 1em)[
  *Databases* \
  MySQL, PostgreSQL
]

#align(right)[
  #set text(size: 9pt)
  _(Last updated: #datetime.today().display("[month repr:short] [year]"))_
]
