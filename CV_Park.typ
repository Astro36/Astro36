#let black100 = black
#let black90 = white.darken(90%)
#let black80 = white.darken(80%)
#let black70 = white.darken(70%)
#let accent_darken = rgb("#662549")
#let accent_lighten = rgb("#AE445A")
#let accent_underline = rgb("#FFF8E3")

#set document(title: "Seungjae Park", author: "Seungjae Park")
#set page(numbering: "1", number-align: center)
#set text(font: "Times New Roman", fallback: false, size: 11pt, fill: black100)
#set par(justify: true)

#show heading.where(level: 1): it => align(center)[
  #text(weight: "regular", size: 30pt)[#it.body]
]
#show heading.where(level: 2): it => block(
  above: 1.5em,
  below: 1em,
  text(weight: "regular", size: 16pt, fill: accent_darken)[#smallcaps(it.body)],
)

#let label(body) = text(weight: "bold", size: 0.8em, fill: accent_lighten)[[#body]]
#let note(body) = text(size: 0.8em)[(#body)]
#let accent(body) = underline(stroke: 5pt + accent_underline, offset: -2.5pt, evade: false, background: true)[#body]
#let pill(body) = box(
  baseline: -1pt,
  stroke: 0.5pt + black,
  radius: 1pt,
  inset: (x: 2pt),
  outset: (y: 2pt),
)[#text(size: 8pt, body)]
#let tile(title, date, body) = block(spacing: 1em)[
  #title #h(1fr) #text(size: 0.8em, fill: black80)[#date] \
  #text(fill: black90)[#body]
]

#align(center)[
  = Seungjae Park
  #text(size: 10pt, fill: black80)[
    astro.psj\@gmail.com \
    https://github.com/Astro36
  ]
]

== Research Interests
Machine Learning, Natural Language Processing, Time Series, Quantitative Finance, Asset Pricing, Portfolio Optimization

== Education
#tile(
  [#link("https://www.inha.ac.kr/")[*Inha University*], Incheon, South Korea #pill[GPA 4.38/4.5]],
  "Mar 2019 - Aug 2024",
  [
    B.S. in #accent[#link("https://ice.inha.ac.kr/")[Information and Communication Engineering]] | Minor in #accent[#link("https://gfiba.inha.ac.kr/")[Global Finance and Banking]]
    - Undergraduate Coursework: Electronic Circuits, Data Structure, Computer Architecture, Operating System, Numerical Analysis, Investments, Financial Derivatives
    - #accent[Honor student] for 7 semesters, #label[Average Rank: 1/150]
  ],
)

== Relevant Experiences
#tile(
  link("https://inhabluechip.com/")[*Blue Chip Mutual Fund*],
  "Mar 2023 - Aug 2024",
  [
    Financial Market Research & Stock Investment Institute in Inha Univ.
    - #accent[Research Team Leader] & Fund Manager#note[Jan 2024 - Jun 2024], #label[#link("https://fund.inhabluechip.com/")[Maximum managed assets]: #link("https://www.google.com/search?q=40000000+krw")[40M KRW]]
    - Delivered three presentations at in-house #link("https://www.youtube.com/@bluechipmutualfund7790")[#accent[company analysis seminars]#note[YouTube]]
    - Published a #link("https://inhabluechip.com/forum/view/259643")[company analysis report] and two #link("https://www.incheonilbo.com/news/articleList.html?sc_sub_section_code=S2N28")[news articles#note[Incheon Ilbo]]
  ],
)
#tile(
  link("https://www.swmaestro.org/")[*Software Maestro 11#super[th]*],
  "May 2020 - Dec 2020",
  [
    Government-supported Program to Cultivate Creative and Innovative SW Talents, organized by the #link("https://www.msit.go.kr/")[MSIT#note[Ministry of Science and ICT]] and the #link("https://www.iitp.kr/")[IITP#note[Institute for Information and Communications Technology Planning and Evaluation]]
    - Developed a #accent[solution for detecting illegal spam] that corrects Korean spelling errors and improves its performance over time
    - Received mentoring on entrepreneurship, programming, and AI
    - #accent[Ranked 4#super[th] in a stock price prediction contest] held as part of an AI application training program
  ],
)
#tile(
  [*Full-stack Freelance*],
  "Sep 2019 - Jan 2020",
  [
    #link("https://insightsolution.github.io/")[INSIGHT]: AI-based Mental Healthcare Solution Startup, #label[#link("https://www.google.com/search?q=10000000+krw")[10M KRW] project]
    - Developed an Android app in Kotlin and an API server in Python to power an AI model
  ],
)

== Awards & Honors
#tile(
  [#link("https://kbig.kr/portal/kbig/keybiz/creatorcamp/info.page")[*2023 Data Creator Camp*], Excellence Award],
  "Sep 2023 - Dec 2023",
  [Big Data Training Hackathon: #accent[Food Image Classification] Challenge, hosted by the #link("https://kbig.kr/")[K-ICT Big Data Center], and organized by the #link("https://www.msit.go.kr/")[MSIT#note[Ministry of Science and ICT]] and the #link("https://www.nia.or.kr/")[NIA#note[National Information Society Agency]]],
)
#tile(
  [*KAIST Creative Team Coding Challenge*, Excellence Award],
  "Mar 2018",
  [Middle and High School Student Software Project Contest, hosted by the #link("https://www.kaist.ac.kr/")[KAIST] and #link("https://kr.ncsoft.com/")[NCSOFT], and organized by the #link("https://gifted.kaist.ac.kr/")[KAIST GIFTED#note[Global Institute for Talented Education]]],
)

== Certifications
#tile(
  [#link("https://www.pqi.or.kr/inf/qul/infQulBasDetail.do?qulId=433")[*Linux Master, Grade 2*], #link("https://www.ihd.or.kr/")[KAIT#note[Korea Association for ICT Promotion]]],
  "Dec 2023",
  "",
)
#linebreak()
#block(spacing: 1em)[
  #link("https://www.pqi.or.kr/inf/qul/infQulBasDetail.do?qulId=430")[*Digital Information Ability Test(DIAT)*], #link("https://www.ihd.or.kr/")[KAIT#note[Korea Association for ICT Promotion]] \
  #text(fill: black90)[
    - Spread Sheet, Advanced Level #h(1fr) #text(size: 0.8em, fill: black80)[Dec 2012]
    - Word Processor, Intermediate Level #h(1fr) #text(size: 0.8em, fill: black80)[Apr 2012]
    - Presentation, Advanced Level #h(1fr) #text(size: 0.8em, fill: black80)[Sep 2011]
  ]
]

== Skills
#block(spacing: 1em)[
  *Programming Languages* \
  #text(fill: black90)[
    C++, Java, Kotlin, JavaScript, TypeScript, Python, Rust, Dart
  ]
]
#block(spacing: 1em)[
  *Platforms & Frameworks* \
  #text(fill: black90)[
    - General: Arduino, Android, Spring, Node.js, Flutter
    - AI: TensorFlow, PyTorch
    - DevOps: Docker
  ]
]
#block(spacing: 1em)[
  *Databases* \
  #text(fill: black90)[
    MySQL, PostgreSQL
  ]
]

== Extracurricular Activities
#tile(
  link("https://int-i.github.io/")[*int i*],
  "Mar 2019 - Aug 2024",
  [
    Programming Study Group in Department of Information and Communication Engineering, Inha Univ.
    - #accent[Group Leader]#note[Jul 2023 - Mar 2024]
    - Authored blog posts about programming for #accent[over 4 years], #label[Total blog views: 240K, Monthly: 9K]
  ],
)
#tile(
  link("https://www.inhabas.com/")[*IBAS*],
  "Sep 2022 - Jun 2023",
  [Inha Univ. Big Data Analysts Society: Machine Learning Paper Review],
)
#tile(
  link("https://ice.inha.ac.kr/ice/2246/subview.do")[*ICESA*],
  "Mar 2019 - Jun 2023",
  [Student Association for Department of Information and Communication Engineering, Inha Univ.],
)
#tile(
  link("https://prography.org/")[*Prography 4#super[th] - 5#super[th]*],
  "Mar 2019 - Feb 2020",
  [
    Collaborative IT Project Club: #accent[Front-end & Back-end Developer] Track
    - Android app and API server developer(Full-stack)
    - Developed a psychological counselor matching platform & meditation music player app
    - Experienced in app server and PG payment API integration
  ],
)

== Projects
#tile(
  [#link("https://play.google.com/store/apps/details?id=me.astro36.mystock")[*Stock Earnings Calendar*], Toy Project #pill[Flutter]],
  "Jun 2023 - Jul 2023",
  [Stock Prices and Earnings Release Dates Viewer, uploaded to Google Play]
)
#tile(
  [#link("https://github.com/Astro36/ICE3015-project")[*Self-Balancing Robot*], School Project #pill[C++]],
  "May 2023 - Jun 2023",
  [2-Wheel Self-Balancing Robot with PID Controller, using ATmega4809 & MPU6050, no library dependencies, _Embedded System Capstone Design: Final Project_]
)
#tile(
  [#link("https://github.com/Astro36/ICE3016-miniproject")[*3D Product Catalog*], School Project #pill[C++]],
  "Dec 2022",
  [Interactive 3D Product Catalog with OpenGL & Blender, _Computer Graphics Capstone Design: Mini Project_]
)
#tile(
  [#link("https://github.com/ICE-LIFE/ICE-LIFE-Backend")[*ICE Market*], Toy Project #pill[React] #pill[Spring]],
  "Jul 2022 - Aug 2022",
  [
    Online Flea Market Service for Department of Information and Communication Engineering, \
    #accent[Team Project] - Role: Set up infrastructure and implemented 1:1 chat API using web sockets
  ]
)
#tile(
  [#link("https://github.com/Astro36/qp")[*Quick Pool*], Open Source #pill[Rust]],
  "Nov 2021 - Dec 2021",
  [High Performance Async Generic Pool for Rust, implemented by Lock-free Waiter Queue, \ #label[Downloads: 2.1K]]
)
#tile(
  [*Spree*, Startup #pill[Django] #pill[TensorFlow] #pill[C++]],
  "Jul 2020 - Dec 2020",
  [
    Robust Illegal Spam Detection Solution via CNN, _IITP-2020-SW Maestro training course_, \
    #accent[Team Project] - Role: Designed a CNN-based spam message classification model and ported the trained TensorFlow model to C++ code for deployment
  ]
)
#tile(
  [#link("https://github.com/Astro36/kotka")[*└ Kotka*], Open Source #pill[Python]],
  "Jul 2020 - Aug 2020",
  [#h(1em) Korean Obfuscation ToolKit for Data Augmentation, _IITP-2020-SW Maestro training course_]
)
#tile(
  [*Shim*, Startup #pill[Android] #pill[Express.js]],
  "Sep 2019 - Feb 2020",
  [
    Psychological Counselor Matching Platform, _Prography 5#super[th]_ \
    #accent[Team Project] - Role: Developed an Android app and an API server, including PG payment API integration
  ]
)
#tile(
  [*Care U*, Hackathon #pill[Flutter]],
  "Jan 2020",
  [
    Shared Scooter Accident Prevention Solution App using Computer Vision, _2020 Super Challenge Hackathon_ \
    #accent[Team Project] - Role: Developed a Flutter app that runs a TensorFlow Lite model
  ]
)
#tile(
  [*Hyeyum*, School Project #pill[Express.js] #pill[Python]],
  "Nov 2019 - Dec 2019",
  [Language Habit Correction Robot with Google Speech Recognition API, _Creative Design for Information and Communication Engineering: Final Project_]
)
#tile(
  [#link("https://github.com/int-i/brainha-demo-server")[*BraInha*], Hackathon #pill[Android] #pill[Express.js]],
  "Nov 2019",
  [
    On-campus Academic Q&A Platform App, _2019 Inha SW Hackathon_ \
    #accent[Team Project] - Role: Set up infrastructure and developed an API server
  ]
)
#tile(
  [#link("https://github.com/watchdocs")[*WATCH_DOCS*], Hackathon #pill[Vue.js] #pill[Express.js]],
  "Aug 2019",
  [
    Business Document Management Service by WaykiChain Smart Contract, _Huobi Korea X WaykiChain Hackathon_ \
    #accent[Team Project] - Role: Developed service web pages with Vue.js
  ]
)
#tile(
  [#link("https://github.com/Astro36/kodict")[*Kodict*], Open Source #pill[Rust]],
  "Nov 2018 - Feb 2019",
  [Provides Korean Dictionary Implements and Crawler for Rust, #label[Downloads: 2.6K]]
)
#tile(
  [#link("https://github.com/Astro36/kokoa")[*KokoaNLP*], Contest #pill[Node.js]],
  "Apr 2018 - Jul 2018",
  [Unsupervised Learning Korean Kernel Object Analyzer, _2018 Korea Olympiad in Informatics: Contest Track_]
)
#tile(
  [#link("https://github.com/Astro36/touch-music")[*Touch Music*], Contest #pill[Electron] #pill[Python]],
  "Mar 2018",
  [
    Easy Music Finder via Word2vec on Song Lyrics, _2018 KAIST Creative Team Coding Challenge_ \
    #accent[Team Project] - Role: Built a song lyrics database by scraping Melon, analyzed song styles using Word2Vec, and developed a desktop app with Electron
  ]
)

#align(right)[
  #set text(size: 0.8em, fill: black70)
  (Last updated: #datetime.today().display("[month repr:short] [year]"))
]
