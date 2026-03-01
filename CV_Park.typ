#let black100 = black
#let black90 = white.darken(90%)
#let black80 = white.darken(80%)
#let black70 = white.darken(70%)

#set document(title: "Seungjae Park", author: "Seungjae Park")
#set page(numbering: "1", number-align: center)
#set text(font: "Times New Roman", size: 11pt, fill: black100)
#set par(justify: true)

#show heading.where(level: 2): it => block(
  above: 24pt,
  below: 16pt,
  text(weight: "bold", size: 20pt)[#it.body],
)
#show heading.where(level: 3): it => block(
  above: 18pt,
  below: 14pt,
  text(weight: "bold", size: 16pt)[#it.body],
)

#let note(body) = text(size: 0.7em)[(#body)]
#let accent(body) = underline(stroke: 5pt + rgb("#ffebaf"), offset: -2.5pt, evade: false, background: true)[#body]
#let tile(title, date, body) = block(spacing: 1.5em)[
  #title #h(1fr) #text(size: 0.8em, fill: black80)[#date] \
  #text(fill: black90)[#body]
]


#align(center)[
  #block(
    below: 20pt,
    text(weight: "bold", size: 24pt)[= Seungjae Park],
  )
  #text(fill: black90)[
    astro.psj\@gmail.com \
    #link("https://github.com/Astro36")[github.com/Astro36] · #link("https://www.linkedin.com/in/seungjae-park/")[linkedin.com/in/seungjae-park]
  ]
]

== Research Interests

#text(fill: black90)[
  M.S. student in Artificial Intelligence at Yonsei University, affiliated with the Multimodal Learning and Computational Finance Lab.
  My research focuses on #accent[Financial AI] at the intersection of large language models and time series forecasting models.
  I aim to build models that are deployable for real-world financial decision-making.

  - #accent[Financial reasoning] and structured quantitative analysis using large language models
  - #accent[Tool-augmented agents] and benchmark design for financial document understanding
  - Multivariate #accent[time series forecasting], with an emphasis on cross-variate interaction modeling
  - Continual learning and robustness of #accent[time series foundation models] under evolving financial markets
]

== Education

#tile(
  [*#accent[M.S. in #link("https://ai.yonsei.ac.kr/")[Artificial Intelligence]], #link("https://www.yonsei.ac.kr/")[Yonsei University]*],
  "Sep 2024 - Present",
  [
    - Advisor: Prof. Ha Young Kim (MLCF#note[Multimodal Learning and Computational Finance] Lab)
    - Cumulative GPA 4.24/4.3
  ],
)
#tile(
  [*#accent[B.S. in #link("https://ice.inha.ac.kr/")[Information and Communication Engineering]], #link("https://www.inha.ac.kr/")[Inha University]*],
  "Mar 2019 - Aug 2024",
  [
    - Cumulative GPA 4.41/4.5, Graduated #accent[1st in the departement]
    - Minor in #accent[#link("https://gfiba.inha.ac.kr/")[Global Finance and Banking]]
  ],
)

== Publications

#block(spacing: 1.5em, text(fill: black90)[
  3. *Seungjae Park*, Sung-Bae Cho and Ha Young Kim, #link("https://doi.org/10.9708/jksci.2025.30.08.029")["KRAFT³-QA: Korean financial text-table benchmark for evaluating tool-augmented agents on QA tasks,"] _Journal of The Korea Society of Computer and Information_, vol. 30, no. 8, pp. 29-39, Aug. 2025.
  #block(above: 0.8em, inset: (left: 1.2em), text(size: 0.85em, fill: black80)[
    *Keywords*: Large Language Model · Tool-augmented Agent · Financial QA Benchmark
  ])
])
#block(spacing: 1.5em, text(fill: black90)[
  2. *Seungjae Park*, Hyukjae Kwon, Kisu Lee, Won-Yong Shin and Ha Young Kim, #link("https://www.dbpia.co.kr/journal/articleDetail?nodeId=NODE12132098")["Multivariate Time Series Forecasting Reflecting Dynamic Variate Similarity and Temporal Information,"] in _Proceedings of the Symposium of the Korean Institute of Communications and Information Sciences_, vol. 86, Gangwon, South Korea, Feb. 2025, pp. 516-517.
  #block(above: 0.8em, inset: (left: 1.2em), text(size: 0.85em, fill: black80)[
    *Keywords:* Time Series Forecasting
  ])
])
#block(spacing: 1.5em, text(fill: black90)[
  1. *Seungjae Park* and Daeyoung Park, #link("https://eee.inha.ac.kr/bbs/eee/3919/122977/download.do")["A Novel Stock Screening Approach using Large Language Models and Correlation-Aware Retrieval,"] presented at the _Capstone Design in ICT#h(1pt)#note[Capstone Project]_, Inha Univ., Incheon, South Korea, Jun. 2024.
  #block(above: 0.8em, inset: (left: 1.2em), text(size: 0.85em, fill: black80)[
    *Keywords*: Large Language Model · Retrieval-Augmented Generation · Portfolio Optimization
  ])
])

=== Working Papers

#block(spacing: 1.5em, text(fill: black90)[
  3. *Seungjae Park*, Sung-Bae Cho and Ha Young Kim, "An Empirical Analysis of Catastrophic Forgetting in a Time Series Foundation Model for Stock Price Forecasting." #h(1fr) #text(size: 0.8em, fill: black80)[Target: SCIE-indexed journal]
  #block(above: 0.8em, below: 0.8em, inset: (left: 1.2em), text(size: 0.85em, fill: black90)[
    *Keywords*: Time Series Foundation Model · Stock Price Forecasting · Continual Learning · Catastrophic Forgetting
  ])
  #block(above: 0.8em, below: 0.8em, inset: (left: 1.2em), text(fill: black90)[
    - First empirical study on catastrophic forgetting in TSFMs for stock price forecasting
    - Designed two realistic continual learning scenarios: asset universe expansion and cross-country adaptation
    - Proposed MAPE-based forgetting and transfer evaluation metrics
    - Demonstrated that TSFMs exhibit significantly less forgetting than conventional forecasting models
  ])
])
#block(spacing: 1.5em, text(fill: black90)[
  2. Sungsoo Kim, *Seungjae Park*, Taeseong Bang and Ha Young Kim, "Evaluating the Reliability of LLM-Generated Technical Indicator Analysis." #h(1fr) #text(size: 0.8em, fill: black80)[Target: SSCI-indexed journal]
  #block(above: 0.8em, below: 0.8em, inset: (left: 1.2em), text(size: 0.85em, fill: black90)[
    *Keywords*: Large Language Model · Financial Analysis · Stock Price Forecasting
  ])
  #block(above: 0.8em, below: 0.8em, inset: (left: 1.2em), text(fill: black90)[
    - Proposed an LLM-generated technical indicator analysis reliability framework.
    - Introduced Arithmetic-Aware Input Structuring and Iterative Output Refinement to reduce hallucinations in LLM outputs.
    - Demonstrated portfolio-level economic improvements through the proposed framework.
  ])
])
#block(spacing: 1.5em, text(fill: black90)[
  1. Junwoo Ha, Sungsoo Kim, Kisu Lee, *Seungjae Park*, Hyukjae Kwon and Ha Young Kim, #link("https://arxiv.org/abs/2410.01531")["TiVaT: A Transformer with a Single Unified Mechanism for Capturing Asynchronous Dependencies in Multivariate Time Series Forecasting,"] _arXiv preprint arXiv:2410.01531_. #h(1fr) #text(size: 0.8em, fill: black80)[Under Review, SCIE-indexed journal]
  #block(above: 0.8em, below: 0.8em, inset: (left: 1.2em), text(size: 0.85em, fill: black90)[
    *Keywords*: Time Series Forecasting
  ])
  #block(above: 0.8em, below: 0.8em, inset: (left: 1.2em), text(fill: black90)[
    - Proposed Joint-Axis Attention for unified modeling of asynchronous time-variate dependencies
    - Introduced DTV Sampling based on 2D embeddings to reduce noise while retaining meaningful interaction patterns
    - Demonstrated strong performance across 8 benchmark datasets, particularly on high-dimensional datasets.
  ])
])

== Professional Experience

#tile(
  link("https://sites.google.com/view/mlcf")[*#accent[Graduate Research Assistant, MLCF Lab], Yonsei University*],
  "Jul 2024 - Present",
  [
    Multimodal Learning and Computational Finance Lab (Advisor: Prof. Ha Young Kim) \
    Research focus: Financial AI at the intersection of large language models and time series models.
    #block(above: 0.8em, below: 0.8em, inset: (left: 0.8em))[
      #block(above: 0.8em, below: 0.8em)[*Large Language Models in Finance*:]
      - Designed a Korean financial text-table question answering benchmark based on corporate disclosure data and published the work in a KCI-indexed journal
      - Proposed a reliability evaluation framework for LLM-generated technical indicator analysis
      #block(above: 0.8em, below: 0.8em)[*Time Series Forecasting*:]
      - Published a domestic conference paper modeling dynamic cross-variate interactions in multivariate time series forecasting
      - Conducted research on time series forecasting models, which is currently under review at an SCIE-indexed journal
      - Preparing submission of a paper on catastrophic forgetting in time series foundation models
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
    - Implemented a C++ filtering engine, a CNN-LSTM multi-label classification model, and an automated spam phrase extraction and retraining pipeline
    - Constructed and curated a proprietary spam dataset and achieved 0.99 accuracy and at 0.97 micro F1
    - Reached agreement with Coursedesign Co., Ltd. to apply the system to a forthcoming service
  ],
)
#tile(
  [*#accent[Full-stack Freelance Developer], INSIGHT*#note[AI-based Mental Healthcare Startup]],
  "Sep 2019 - Jan 2020",
  [
    INSIGHT: AI-based Mental Healthcare Solution Startup
    - Served as the sole freelance developer for a KRW 10 million contract project for INSIGHT, leading requirement definition, system design, and direct technical coordination with the client
    - Architected a lifelog processing pipeline that ingested GPS traces, light sensor data, and smartphone usage statistics
    - Implemented a model serving layer that loaded a trained Scikit-learn model and inferred mental health indicators, such as depression and stress levels, from processed activity features
    - Developed an Android app in Kotlin and an REST API server in Python to power an AI model
  ],
)

== Awards & Honors

#tile(
  [#link("https://kbig.kr/portal/kbig/keybiz/creatorcamp/info.page")[*2023 Data Creator Camp*], Excellence Award],
  "Sep 2023 - Dec 2023",
  [
    Big Data Training Hackathon hosted by K-ICT Big Data Center
    - Addressed Korean food image classification using ResNet with domain-aware augmentation
    - Received the #link("https://www.nia.or.kr/")[NIA#note[National Information Society Agency]] President's Award
  ],
)

== Certifications

#block(spacing: 1em)[
  #link(
    "https://license.kofia.or.kr/examInfo/examInfo.do",
  )[#accent[*Certified Investment Manager*], #link("https://www.kofia.or.kr/")[KOFIA#note[Korea Financial Investment Association]]] #h(
    1fr,
  ) #text(size: 0.8em, fill: black80)[Jun 2024]
]
#block(spacing: 1em)[
  #link("https://www.q-net.or.kr/crf005.do?id=crf00503&jmCd=1320")[*Engineer Information Processing*], #link("https://www.hrdkorea.or.kr/")[HRDK#note[Human Resources Development Service of Korea]] #h(1fr) #text(size: 0.8em, fill: black80)[Jun 2024]
]
#block(spacing: 1em)[
  #link("https://www.pqi.or.kr/inf/qul/infQulBasDetail.do?qulId=433")[*Linux Master, Grade 2*], #link("https://www.ihd.or.kr/")[KAIT#note[Korea Association for ICT Promotion]] #h(1fr) #text(size: 0.8em, fill: black80)[Dec 2023]
]

#v(8pt)
#align(right)[
  #set text(size: 0.8em, fill: black70)
  (Last updated: #datetime.today().display("[month repr:short] [year]"))
]
