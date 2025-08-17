#let black100 = black
#let black90 = white.darken(90%)
#let black80 = white.darken(80%)
#let black70 = white.darken(70%)
#let accent_darken = rgb("#662549")
#let accent_lighten = rgb("#AE445A")
#let accent_underline = rgb("#ffebaf")

#set document(title: "Seungjae Park", author: "Seungjae Park")
#set page(numbering: "1", number-align: center)
#set text(font: "Times New Roman", fallback: false, size: 11pt, fill: black100)
#set par(justify: true)

#show heading.where(level: 1): it => align(center)[
  #text(weight: "bold", size: 30pt)[#it.body]
]
#show heading.where(level: 2): it => block(
  above: 1.5em,
  below: 1em,
  text(weight: "regular", size: 16pt)[#smallcaps(it.body)],
)

#let label(body) = text(weight: "bold", size: 0.8em, fill: accent_lighten)[[#body]]
#let note(body) = text(size: 0.7em)[(#body)]
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
  #v(-1.2em)
  #text(size: 11pt, fill: black90)[
    astro.psj\@gmail.com \
    #link("https://github.com/Astro36")[github.com/Astro36] \
    #link("https://www.linkedin.com/in/seungjae-park/")[linkedin.com/in/seungjae-park] \
  ]
  #v(1.2em)
]

== Research Interests
Machine Learning, Time Series Analysis, Natural Language Processing, Reinforcement Learning, and Quantitative Finance

== Experiences

#tile(
  link("https://www.swmaestro.org/")[*11#super[th] Trainee, Software Maestro*],
  "May 2020 - Dec 2020",
  [
    Government-Supported Program for Cultivating Creative and Innovative Software Talent, organized by the MSIT#note[Ministry of Science and ICT] and the IITP#note[Institute for Information and Communications Technology Planning and Evaluation]
    - Developed a #accent[spam detection] solution integrating Korean spelling correction with a performance enhancement pipeline
  ],
)
#tile(
  [*Full-stack Freelance, INSIGHT* #pill[#link("https://www.google.com/search?q=10000000+krw")[₩10 million] project]],
  "Sep 2019 - Jan 2020",
  [
    INSIGHT: AI-based Mental Healthcare Solution Startup
    - Developed an #accent[Android app in Kotlin] and an #accent[API server in Python] to power an AI model
  ],
)

== Education
#tile(
  [*M.S. in #accent[#link("https://ai.yonsei.ac.kr/")[Artificial Intelligence]], #link("https://www.yonsei.ac.kr/")[Yonsei University]*],
  "Sep 2024 - Present",
  [
    - Graduate Research Assistant in MLCF#note[Multimodal Learning and Computational Finance] Lab \ (Advisor: Prof. Ha Young Kim)
    - Cumulative GPA 4.22/4.3
  ],
)
#tile(
  [*B.S. in #accent[#link("https://ice.inha.ac.kr/")[Information and Communication Engineering]], #link("https://www.inha.ac.kr/")[Inha University]*],
  "Mar 2019 - Aug 2024",
  [
    - Cumulative GPA 4.41/4.5, Graduated #accent[2nd in class of 189]
    - Minor in #accent[#link("https://gfiba.inha.ac.kr/")[Global Finance and Banking]]
    - Participated in the departmental student council as a member #note[Mar 2019 - Jun 2023]
  ],
)

== Publications

3. *Seungjae Park*, Sung-bae Cho and Ha Young Kim, "KRAFT³-QA: Korean financial text-table benchmark for evaluating tool-augmented agents on QA tasks," _Journal of The Korea Society of Computer and Information#h(1pt)#note[KCI]_, vol. 30, no. 8, Aug. 2025.
  #pill[Large Language Model] #pill[Tool-augmented Agent] #pill[Financial QA Benchmark]
2. *Seungjae Park*, Hyukjae Kwon, Kisu Lee, Won-Yong Shin and Ha Young Kim, #link("https://www.dbpia.co.kr/journal/articleDetail?nodeId=NODE12132098")["Multivariate Time Series Forecasting Reflecting Dynamic Variate Similarity and Temporal Information,"] in _Proceedings of the Symposium of the Korean Institute of Communications and Information Sciences_, vol. 86, Gangwon, South Korea, Feb. 2025, pp. 516-517.
  #pill[Time Series Forecasting]
1. *Seungjae Park* and Daeyoung Park, #link("https://eee.inha.ac.kr/bbs/eee/3919/122977/download.do")["A Novel Stock Screening Approach using Large Language Models and Correlation-Aware Retrieval,"] presented at the _Capstone Design in ICT#h(1pt)#note[Capstone Project]_, Inha Univ., Incheon, South Korea, Jun. 2024.
  #pill[Large Language Model] #pill[Information Retrieval] #pill[Portfolio Optimization]

== Awards & Honors
#tile(
  [#link("https://kbig.kr/portal/kbig/keybiz/creatorcamp/info.page")[*2023 Data Creator Camp*], Excellence Award],
  "Sep 2023 - Dec 2023",
  [
    Big Data Training Hackathon, hosted by the #link("https://kbig.kr/")[K-ICT Big Data Center] \
    - Solved Korean #accent[food image classification] problems with ResNet models
    - Received #link("https://www.nia.or.kr/")[NIA#note[National Information Society Agency]] president's award
  ],
)
// #tile(
//   [*KAIST Creative Team Coding Challenge*, Excellence Award],
//   "Mar 2018",
//   [Middle and High School Student Software Project Contest, hosted by the #link("https://www.kaist.ac.kr/")[KAIST] and #link("https://kr.ncsoft.com/")[NCSOFT], and organized by the #link("https://gifted.kaist.ac.kr/")[KAIST GIFTED#note[Global Institute for Talented Education]]],
// )

== Certifications
#tile(
  [#link("https://license.kofia.or.kr/examInfo/examInfo.do")[*Certified Investment Manager*], #link("https://www.kofia.or.kr/")[KOFIA#note[Korea Financial Investment Association]]],
  "Jun 2024",
  "",
)
#tile(
  [#link("https://www.q-net.or.kr/crf005.do?id=crf00505&jmCd=1320")[*Engineer Information Processing*], #link("https://www.hrdkorea.or.kr/")[HRDK#note[Human Resources Development Service of Korea]]],
  "Jun 2024",
  "",
)
#tile(
  [#link("https://www.pqi.or.kr/inf/qul/infQulBasDetail.do?qulId=433")[*Linux Master, Grade 2*], #link("https://www.ihd.or.kr/")[KAIT#note[Korea Association for ICT Promotion]]],
  "Dec 2023",
  "",
)

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
    - #accent[Group Leader] #note[Jul 2023 - Mar 2024]
    - Authored blog posts about programming for #accent[over 4 years], #label[Total blog views: 240K, Monthly: 9K]
  ],
)
#tile(
  link("https://inhabluechip.com/")[*Blue Chip Mutual Fund*],
  "Mar 2023 - Jun 2024",
  [
    Financial Market Research & Stock Investment Institute in Inha Univ.
    - #accent[Research Team Leader] & Fund Manager #note[Jan 2024 - Jun 2024], #label[#link("https://fund.inhabluechip.com/")[Maximum managed assets]: #link("https://www.google.com/search?q=40000000+krw")[40M KRW]]
    - Delivered three presentations at in-house #link("https://www.youtube.com/@bluechipmutualfund7790")[company analysis seminars #note[YouTube]]
    - Published a #link("https://inhabluechip.com/forum/view/259643")[company analysis report] and two #link("https://www.incheonilbo.com/news/articleList.html?sc_sub_section_code=S2N28")[news articles #note[Incheon Ilbo]]
  ],
)
#tile(
  link("https://www.inhabas.com/")[*IBAS*],
  "Sep 2022 - Jun 2023",
  [Inha Univ. Big Data Analysts Society: Machine Learning Paper Review],
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
  [#link("https://github.com/Astro36/stock-ara")[*Stock ARA*] #pill[Python]],
  "Mar 2024 - Jul 2024",
  [An innovative stock screening and portfolio optimization system that leverages a Large Language Model and Retrieval-Augmented Generation, _Inha Univ. Capstone Design in ICT_]
)
#tile(
  [#link("https://github.com/inhabluechip/bcmf-nav")[*BCMF NAV*] #pill[JavaScript] #pill[Tailwind CSS]],
  "Jan 2024 - Jul 2024",
  [Responsive design web service that calculates and displays daily the net asset value(NAV) and total assets under management(AUM) of Blue Chip Mutual Fund - https://fund.inhabluechip.com/]
)
#tile(
  [#link("https://play.google.com/store/apps/details?id=me.astro36.mystock")[*Stock Earnings Calendar*] #pill[Flutter]],
  "Jun 2023 - Jul 2023",
  [A calendar app showing stock prices and earnings release dates for companies of interest, uploaded to Google Play]
)
#tile(
  [#link("https://github.com/Astro36/ICE3015-project")[*Self-Balancing Robot*], Capstone Design #pill[C++] #pill[Embedded]],
  "May 2023 - Jun 2023",
  [2­-Wheel self­-balancing robot using PID controller, implemented with ATmega4809 and MPU6050 sensors without external libraries, referring to datasheets, _Inha Univ. Embedded System Capstone Design: Final Project_]
)
#tile(
  [#link("https://github.com/Astro36/ICE3016-miniproject")[*3D Product Catalog*], Capstone Design #pill[C++] #pill[OpenGL]],
  "Dec 2022",
  [Interactive 3D product catalog with OpenGL and Blender(Modeling), _Inha Univ. Computer Graphics Capstone Design: Mini Project_]
)
#tile(
  [#link("https://github.com/ICE-LIFE/ICE-LIFE-Backend")[*ICE Market*] #pill[React] #pill[Spring]],
  "Jul 2022 - Aug 2022",
  [
    Online flea market service for Department of Information and Communication Engineering \
    #accent[Team Project] - Role: Docker and NGINX setup, 1:1 chat API implementation using Spring web sockets
  ]
)
#tile(
  [#link("https://github.com/Astro36/qp")[*Quick Pool*], Open Source #pill[Rust]],
  "Nov 2021 - Dec 2021",
  [High performance async generic pool for Rust, implemented by lock-­free waiter queue, #label[Downloads: 3.8K]]
)
#tile(
  [*Spree*, Startup #pill[Django] #pill[TensorFlow] #pill[C++]],
  "Jul 2020 - Dec 2020",
  [
    Robust illegal spam detection solution via CNN, _IITP-2020-SW Maestro training course_, \
    #accent[Team Project] - Role: Designed a CNN-based spam message classification model and ported the trained TensorFlow model to C++ code for deployment
  ]
)
#tile(
  [#link("https://github.com/Astro36/kotka")[*└ Kotka*], Open Source #pill[Python]],
  "Jul 2020 - Aug 2020",
  [#h(1em) Korean obfuscation toolkit for text data augmentation, _IITP-2020-SW Maestro training course_]
)
#tile(
  [*Shim*, Startup #pill[Android] #pill[Express.js]],
  "Sep 2019 - Feb 2020",
  [
    Psychological counselor natching platform, _Prography 5#super[th]_ \
    #accent[Team Project] - Role: Developed an Android app and an API server, including PG payment API integration
  ]
)
#tile(
  [*Care U*, Hackathon #pill[Flutter]],
  "Jan 2020",
  [
    Shared scooter accident prevention solution app using computer vision, _2020 Super Challenge Hackathon_ \
    #accent[Team Project] - Role: Developed a Flutter app that runs a TensorFlow Lite model
  ]
)
#tile(
  [*Hyeyum*, Capstone Design #pill[Express.js] #pill[Python] #pill[Embedded]],
  "Nov 2019 - Dec 2019",
  [Language habit correction robot with Google Speech Recognition API, _Inha Univ. Creative Design for Information and Communication Engineering: Final Project_]
)
#tile(
  [#link("https://github.com/int-i/brainha-demo-server")[*BraInha*], Hackathon #pill[Android] #pill[Express.js]],
  "Nov 2019",
  [
    On-campus academic Q&A platform app, _2019 Inha SW Hackathon_ \
    #accent[Team Project] - Role: Docker and NGINX setup, developed an API server
  ]
)
#tile(
  [#link("https://github.com/watchdocs")[*WATCH_DOCS*], Hackathon #pill[Vue.js] #pill[Express.js]],
  "Aug 2019",
  [
    Business document management service by WaykiChain Smart Contract, _Huobi Korea X WaykiChain Hackathon_ \
    #accent[Team Project] - Role: Developed service web pages with Vue.js
  ]
)
#tile(
  [#link("https://github.com/Astro36/kodict")[*Kodict*], Open Source #pill[Rust]],
  "Nov 2018 - Feb 2019",
  [Provides Korean dictionary implements and crawler for Rust, #label[Downloads: 4.0K]]
)
#tile(
  [#link("https://github.com/Astro36/kokoa")[*KokoaNLP*], Contest #pill[Node.js]],
  "Apr 2018 - Jul 2018",
  [Unsupervised learning Korean kernel object analyzer, _2018 Korea Olympiad in Informatics: Contest Track_]
)
#tile(
  [#link("https://github.com/Astro36/touch-music")[*Touch Music*], Contest #pill[Electron] #pill[Python]],
  "Mar 2018",
  [
    Easy music finder via word2vec on song lyrics, _2018 KAIST Creative Team Coding Challenge_ \
    #accent[Team Project] - Role: Built a song lyrics database by scraping Melon, analyzed song styles using Word2Vec, and developed a desktop app with Electron
  ]
)

#align(right)[
  #set text(size: 0.8em, fill: black70)
  (Last updated: #datetime.today().display("[month repr:short] [year]"))
]
