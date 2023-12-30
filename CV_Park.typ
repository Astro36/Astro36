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
Machine Learning, Natural Language Processing, Time Series, Quantitative Finance, Asset Pricing, Portfolio Optimization

== Education
#tile(
  [#link("https://www.inha.ac.kr/")[*Inha University*], Incheon, South Korea #pill[GPA 4.38/4.5]],
  "2019.03 ~ Present",
  [
    B.S. in #link("https://ice.inha.ac.kr/")[Information and Communication Engineering] \
    Minor in #link("https://gfiba.inha.ac.kr/")[Global Finance and Banking]
  ],
)

== Relevant Experiences
#tile(
  [#link("https://kbig.kr/portal/kbig/keybiz/creatorcamp/info.page")[*2023 Data Creator Camp*] #pill[Excellence Award]],
  "2023.09 ~ 2023.12",
  [Food Image Classification Performance Improvement Competition],
)
#tile(
  link("https://www.inhabas.com/")[*IBAS*],
  "2022.09 ~ 2023.06",
  [
    Inha Univ. Big Data Analysts Society: Machine Learning Paper Review #h(1pt)
    #footnote[ActiveThief: Model Extraction Using Active Learning and Unannotated Public Data & Black-Box Ripper: Copying black-box models using generative evolutionary algorithms] #h(1pt)
    #footnote[Semantic Image Segmentation with Deep Convolutional Nets and Fully Connected CRFs] #h(1pt)
    #footnote[A Few Useful Things to Know about Machine Learning]
  ],
)
#tile(
  link("https://www.swmaestro.org/")[*Software Maestro 11th*],
  "2020.05 ~ 2020.12",
  [Creative Challenge Project Planning and Development Course, organized by the Ministry of Science and ICT: Developed a Robust Illegal Spam Detection Solution via CNN],
)
#tile(
  [*Full-stack Freelance*],
  "2019.09 ~ 2019.12",
  [#link("https://insightsolution.github.io/")[INSIGHT]: AI-based Mental Healthcare Solution Startup, #smaller[*[#link("https://www.google.com/finance/quote/USD-KRW")[KRW] 10million Project]*]],
)

== Certifications
#block(spacing: 1em)[
  #link("https://www.pqi.or.kr/inf/qul/infQulBasDetail.do?qulId=433")[*Linux Master, Grade 2*], _Korea Association for ICT Promotion_ #h(1fr) #text(size: 10pt)[2023.12] 
]
#block(spacing: 1em)[
  #link("https://www.pqi.or.kr/inf/qul/infQulBasDetail.do?qulId=430")[*Digital Information Ability Test(DIAT)*], _Korea Association for ICT Promotion_
  - Spread Sheet, Advanced Level #h(1fr) #text(size: 10pt)[2012.12]
  - Word Processor, Intermediate Level #h(1fr) #text(size: 10pt)[2012.04]
  - Presentation, Advanced Level #h(1fr) #text(size: 10pt)[2011.09]
]

== Technical Projects
#tile(
  [#link("https://github.com/Astro36/ICE3015-project")[*Self-Balancing Robot*], School Project #pill[C++]],
  "2023.05 ~ 2023.06",
  [2-Wheel Self-Balancing Robot made with ATmega4809 & MPU6050, with no dependencies, _Embedded System Capstone Design: Final Project_]
)
#tile(
  [#link("https://github.com/Astro36/ICE3016-miniproject")[*3D Product Catalog*], School Project #pill[C++]],
  "2022.12",
  [Interactive 3D Product Catalog with OpenGL & Blender, _Computer Graphics Capstone Design: Mini Project_]
)
#tile(
  [#link("https://github.com/Astro36/qp")[*Quick Pool*], Open Source #pill[Rust]],
  "2021.11 ~ 2021.12",
  [High Performance Async Generic Pool for Rust, implemented by Lock-free Waiter Queue, #smaller[*[Downloads: 1.6K]*]]
)
#tile(
  [*Spree*, Startup #pill[Python] #pill[C++]],
  "2020.07 ~ 2020.12",
  [Robust Illegal Spam Detection Solution via CNN, _IITP-2020-SW Maestro training course_]
)
#tile(
  [#link("https://github.com/Astro36/kotka")[*└ Kotka*], Open Source #pill[Python]],
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
  [#link("https://github.com/Astro36/kodict")[*Kodict*], Open Source #pill[Rust]],
  "2018.11 ~ 2019.02",
  [Provides Korean Dictionary Implements and Crawler for Rust, #smaller[*[Downloads: 2.1K]*]]
)
#tile(
  [#link("https://github.com/Astro36/kokoa")[*KokoaNLP*], Contest #pill[Javascript]],
  "2018.04 ~ 2018.07",
  [Unsupervised Learning Korean Kernel Object Analyzer, _2018 Korea Olympiad in Informatics: Contest Track_]
)
#tile(
  [#link("https://github.com/Astro36/touch-music")[*Touch Music*], Contest #pill[Javascript] #pill[Python] #pill[Excellence Award]],
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

== Extracurricular Activities
#tile(
  link("https://inhabluechip.com/")[*BlueChip Mutual Fund*],
  "2023.03 ~ Present",
  [
    Financial Market Research & Stock Investment Institute in Inha Univ.\
    - UIC 12th Investment Concert: Company Analysis Report #h(1pt) #footnote[Corteva, Inc.] \
    - Company Analysis Presentation#smaller[(YouTube)] #h(1pt) #footnote[Synopex, Inc.] #h(1pt) #footnote[Korea Aerospace Industries, Ltd.]<047810> & News Article#smaller[(Incheon Ilbo)] #h(1pt) @047810
  ],
)
#tile(
  link("https://int-i.github.io/")[*int i*],
  "2019.03 ~ Present",
  [
    Programming Study Group in ICE\@Inha Univ.
    - Group Leader#smaller[(2023.07 \~ Present)]
    - Group Tutoring & Study Blog Writing, #smaller[*[Total 182K Views, Monthly 9K Views]*]
  ],
)
#tile(
  link("https://ice.inha.ac.kr/ice/2246/subview.do")[*ICESA*],
  "2019.03 ~ 2023.06",
  [Student Association for ICE\@Inha Univ.],
)
#tile(
  link("https://prography.org/")[*Prography 4th, 5th*],
  "2019.03 ~ 2020.02",
  [
    Collaborative IT Project Club: Full-stack Developer Track\
    Developed a Psychological Counselor Matching Platform & Music Player App
  ],
)
#tile(
  link("https://cafe.naver.com/websinha")[*WEBS*],
  "2019.03 ~ 2019.12",
  [#link("http://startup.inha.ac.kr/index.htm")[Inha University Startup Support Foundation] - Startup Club],
)

#align(right)[
  #set text(size: 9pt)
  _(Last updated: #datetime.today().display("[month repr:short] [year]"))_
]
