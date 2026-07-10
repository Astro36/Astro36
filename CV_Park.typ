#let black1 = black
#let black2 = white.darken(90%)
#let black3 = white.darken(80%)
#let black4 = white.darken(70%)

#set document(title: "Seungjae Park", author: "Seungjae Park")
#set page(numbering: "1", number-align: center)
#set text(
  font: "Times New Roman",
  size: 11pt,
  fill: black2,
  top-edge: "cap-height",
  bottom-edge: "baseline",
)
#set par(justify: true, leading: 0.65em, spacing: 1.2em)

#show heading.where(level: 2): it => block(
  above: 24pt,
  below: 16pt,
  text(weight: "bold", size: 20pt, fill: black1, it.body),
)
#show heading.where(level: 3): it => block(
  above: 20pt,
  below: 14pt,
  text(weight: "bold", size: 16pt, fill: black1, it.body),
)

#let note(body) = text(size: 0.7em)[(#body)]
#let accent(body) = underline(stroke: 5pt + rgb("#ffebaf"), offset: -2.5pt, evade: false, background: true, body)
#let tile(title, date, body) = block(spacing: 1.5em)[
  #text(fill: black1, title) #h(1fr) #text(size: 0.8em, fill: black3)[#date] \
  #body
]
#let fixed(body) = block(breakable: false, width: 100%, body)


#fixed[
#align(center)[
  #block(
    below: 20pt,
    text(weight: "bold", size: 24pt, fill: black1)[= Seungjae Park],
  )
  astro.psj\@gmail.com \
  #link("https://github.com/Astro36")[github.com/Astro36] · #link("https://www.linkedin.com/in/seungjae-park/")[linkedin.com/in/seungjae-park]
]
#v(4pt)

== Research Interests

I am an M.S. student at Yonsei University working on #accent[Financial AI] spanning #accent[large language models] and #accent[time series forecasting], with the goal of building robust models for real-world financial decision-making.

- #accent[Financial reasoning] and structured quantitative analysis using large language models
- #accent[Tool-augmented agents] and benchmark design for financial document understanding
- #accent[Multivariate time series forecasting], with an emphasis on cross-variate interaction modeling
- Continual learning and robustness of #accent[time series foundation models] in evolving financial markets

== Education

#tile(
  [*#accent[M.S. in #link("https://ai.yonsei.ac.kr/")[Artificial Intelligence]], #link("https://www.yonsei.ac.kr/")[Yonsei University]*],
  "Sep 2024 - Aug 2026",
  [
    - Advisor: Prof. Ha Young Kim (Multimodal Learning and Computational Finance Lab)
    - Cumulative GPA 4.24/4.3
    - *Master's thesis*: "GuardTST: Gradient-uncoupled architecture for dual-path time series transformer"
    #block(above: 0.7em, inset: (left: 1.2em), text(size: 0.85em, fill: black2)[
      *Keywords*: Multivariate Time Series Forecasting
    ])
  ],
)
#tile(
  [*#accent[B.S. in #link("https://ice.inha.ac.kr/")[Information and Communication Engineering]], #link("https://www.inha.ac.kr/")[Inha University]*],
  "Mar 2019 - Aug 2024",
  [
    - Cumulative GPA 4.41/4.5, Graduated #accent[1st in the department]
    - Minor in #accent[#link("https://gfiba.inha.ac.kr/")[Global Finance and Banking]]
    - *Capstone project*: #link("https://eee.inha.ac.kr/bbs/eee/3919/122977/download.do")["A novel stock screening approach using large language models and correlation-aware retrieval"] (Advisor: Prof. Daeyoung Park)
    #block(above: 0.6em, inset: (left: 1.2em), text(size: 0.85em)[
      *Keywords*: Large Language Model · Retrieval-Augmented Generation · Portfolio Optimization
    ])
  ],
)

== Publications

#block(spacing: 1.5em, breakable: false)[
  #text(fill: black1)[
    3. Junwoo Ha, Sungsoo Kim, Kisu Lee, *Seungjae Park*, Hyukjae Kwon and Ha Young Kim, #link("https://doi.org/10.1016/j.asoc.2026.114979")["TiVaT: A transformer with a single unified mechanism for capturing asynchronous dependencies in multivariate time series forecasting,"] _*Applied Soft Computing*_, vol. 195, p. 114979, Jun. 2026, doi: 10.1016/j.asoc.2026.114979.
  ]
  #block(above: 0.8em, inset: (left: 1.2em), text(size: 0.85em, fill: black2)[
    *Keywords*: Multivariate Time Series Forecasting
  ])
]
#block(spacing: 1.5em, breakable: false)[
  #text(fill: black1)[
    2. *Seungjae Park*, Sung-Bae Cho and Ha Young Kim, #link("https://doi.org/10.9708/jksci.2025.30.08.029")["KRAFT³-QA: Korean financial text-table benchmark for evaluating tool-augmented agents on QA tasks,"] _Journal of The Korea Society of Computer and Information_, vol. 30, no. 8, pp. 29-39, Aug. 2025,  doi: 10.9708/jksci.2025.30.08.029.
  ]
  #block(above: 0.8em, inset: (left: 1.2em), text(size: 0.85em)[
    *Keywords*: Large Language Model · Tool-augmented Agent · Financial QA Benchmark
  ])
]
#block(spacing: 1.5em, breakable: false)[
  #text(fill: black1)[
    1. *Seungjae Park*, Hyukjae Kwon, Kisu Lee, Won-Yong Shin and Ha Young Kim, #link("https://www.dbpia.co.kr/journal/articleDetail?nodeId=NODE12132098")["Multivariate time series forecasting reflecting dynamic variate similarity and temporal information,"] in _Proceedings of the Symposium of the Korean Institute of Communications and Information Sciences_, vol. 86, Gangwon, South Korea, Feb. 2025, pp. 516-517.
  ]
  #block(above: 0.8em, inset: (left: 1.2em), text(size: 0.85em)[
    *Keywords*: Multivariate Time Series Forecasting
  ])
]
]

// === Working Papers

// #block(spacing: 1.5em)[
//   #text(fill: black1)[
//     2. *Seungjae Park*, Sung-Bae Cho and Ha Young Kim, "An empirical analysis of catastrophic forgetting in a time series foundation model for stock price forecasting." #h(1fr) #text(size: 0.8em, fill: black3)[Target: SCIE-indexed journal]
//   ]
//   #block(above: 0.8em, below: 0.8em, inset: (left: 1.2em), text(size: 0.85em)[
//     *Keywords*: Time Series Foundation Model · Stock Price Forecasting · Continual Learning · Catastrophic Forgetting
//   ])
//   #block(above: 0.8em, below: 0.8em, inset: (left: 1.2em))[
//     - First empirical study on catastrophic forgetting in TSFMs for stock price forecasting
//     - Designed two realistic continual learning scenarios: asset universe expansion and cross-country adaptation
//     - Proposed MAPE-based forgetting and transfer evaluation metrics
//     - Demonstrated that TSFMs exhibit significantly less forgetting than conventional forecasting models
//   ]
// ]
// #block(spacing: 1.5em)[
//   #text(fill: black1)[
//     1. Sungsoo Kim, *Seungjae Park*, Taeseong Bang and Ha Young Kim, "Evaluating the reliability of LLM-generated technical indicator analysis: Evidence from portfolio performance" \ #h(1fr) #text(size: 0.8em, fill: black3)[Target: SSCI-indexed journal]
//   ]
//   #block(above: 0.8em, below: 0.8em, inset: (left: 1.2em), text(size: 0.85em)[
//     *Keywords*: Large Language Model · Financial Analysis · Stock Price Forecasting · Portfolio Management
//   ])
//   #block(above: 0.8em, below: 0.8em, inset: (left: 1.2em))[
//     - Proposed an LLM-generated technical indicator analysis reliability framework.
//     - Introduced Arithmetic-Aware Input Structuring and Iterative Output Refinement to reduce hallucinations in LLM outputs.
//     - Demonstrated portfolio-level economic improvements through the proposed framework.
//   ]
// ]

#fixed[
== Professional Experience

#tile(
  link("https://sites.google.com/view/mlcf")[*#accent[Graduate Research Assistant, MLCF Lab], Yonsei University*],
  "Jul 2024 - Present",
  [
    Multimodal Learning and Computational Finance Lab (Advisor: Prof. Ha Young Kim)
    #block(above: 0.8em, below: 0.8em, inset: (left: 0.8em))[
      #block(above: 0.8em, below: 0.8em)[*Large Language Models in Finance*:]
      - Designed a Korean financial text-table QA benchmark based on corporate disclosure data \ (KCI-indexed journal paper)
      - Proposed a reliability evaluation framework for LLM-generated technical indicator analysis
      #block(above: 0.8em, below: 0.8em)[*Time Series Forecasting*:]
      - Conducted research on transformer-based multivariate time series forecasting with a focus on cross-variate interaction modeling (SCIE-indexed journal paper; domestic conference paper)
      - Studying catastrophic forgetting in time series foundation models
      #block(above: 0.8em, below: 0.8em)[*Teaching Assistant*:]
      - Served as a practical teaching assistant for Finance and Deep Learning in the AI FinTech program at the Graduate School of Information, Yonsei University
    ]
  ],
)
#tile(
  link("https://www.swmaestro.org/")[*11#super[th] Trainee, #accent[Software Maestro]*],
  "May 2020 - Dec 2020",
  [
    Government-Supported Program for Cultivating Creative and Innovative Software Talent, organized by the MSIT#note[Ministry of Science and ICT] and the IITP#note[Institute for Information and Communications Technology Planning and Evaluation]
    - Developed an AI-based spam detection system robust to obfuscated Korean text patterns such as character decomposition and consonant-only variants
    - Implemented a C++ filtering engine and an automated spam phrase extraction and retraining pipeline
    - Constructed and curated a proprietary spam dataset and achieved 0.99 accuracy and 0.97 micro F1
    - Reached agreement with _Coursedesign Co., Ltd._ to apply the system to a forthcoming service
  ],
)
#tile(
  [*#accent[Full-stack Freelance Developer], INSIGHT*],
  "Sep 2019 - Jan 2020",
  [
    INSIGHT: AI-based Mental Healthcare Solution Startup
    - Served as the sole freelance developer for a KRW 10 million contract project, leading requirement definition, system design, and direct technical coordination with the client
    - Architected a lifelog processing pipeline that ingested GPS traces, light sensor data, and smartphone usage statistics
    - Implemented a model serving layer that loaded a trained scikit-learn model and inferred mental health indicators, such as depression and stress levels, from processed activity features
    - Developed an Android app in Kotlin and a REST API server in Python
  ],
)

== Awards & Honors

#tile(
  [#link("https://kbig.kr/portal/kbig/keybiz/creatorcamp/info.page")[*2023 Data Creator Camp*], Excellence Award],
  "Sep 2023 - Dec 2023",
  [
    Big Data Training Hackathon hosted by K-ICT Big Data Center
    #block(above: 0.8em, below: 0.8em, text(size: 0.85em)[
      *Keywords*: Image Classification
    ])
  ],
)

== Certifications

#block(spacing: 1em)[
  #text(fill: black1)[
    #link("https://license.kofia.or.kr/examInfo/examInfo.do")[#accent[*Certified Investment Manager*]]
  ], #link("https://www.kofia.or.kr/")[KOFIA#note[Korea Financial Investment Association]] #h(1fr) #text(size: 0.8em, fill: black3)[Jun 2024]
]
#block(spacing: 1em)[
  #text(fill: black1)[
    #link("https://www.q-net.or.kr/crf005.do?id=crf00503&jmCd=1320")[*Engineer Information Processing*]
  ], #link("https://www.hrdkorea.or.kr/")[HRDK#note[Human Resources Development Service of Korea]] #h(1fr) #text(size: 0.8em, fill: black3)[Jun 2024]
]
#block(spacing: 1em)[
  #text(fill: black1)[
    #link("https://www.pqi.or.kr/inf/qul/infQulBasDetail.do?qulId=433")[*Linux Master, Grade 2*]
  ], #link("https://www.ihd.or.kr/")[KAIT#note[Korea Association for ICT Promotion]] #h(1fr) #text(size: 0.8em, fill: black3)[Dec 2023]
]

#v(8pt)
#align(right)[
  #set text(size: 0.8em, fill: black4)
  (Last updated: #datetime.today().display("[month repr:short] [year]"))
]
]
