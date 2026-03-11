#let black100 = black
#let black90 = white.darken(90%)
#let black70 = white.darken(70%)
#let black20 = white.darken(20%)
#let black5 = white.darken(5%)

#set document(title: "Seungjae Park", author: "Seungjae Park")
#set page(numbering: "1", number-align: center)
#set text(font: "Pretendard", size: 11pt, fill: black100)
#set par(justify: true)

#show heading.where(level: 2): it => block(
  above: 32pt,
  below: 16pt,
  text(weight: "bold", size: 20pt)[#it.body],
)
#show heading.where(level: 3): it => block(
  above: 24pt,
  below: 12pt,
  text(weight: "bold", size: 16pt)[#it.body],
)

#let accent(body) = underline(stroke: 8pt + rgb("#ffe65b"), offset: -3pt, evade: false, background: true)[#body]
#let pill(body) = box(
  baseline: -0.1pt,
  stroke: 0.5pt + black,
  radius: 1pt,
  inset: (x: 2pt),
  outset: (y: 2pt),
)[#text(size: 9pt, body)]


#align(center)[
  #block(
    below: 0pt,
    text(weight: "bold", size: 36pt)[= Portfolio],
  )
  #block(
    above: 18pt,
    text(weight: "bold", size: 24pt)[2019 - 2026],
  )
]

== About Me

*박승재 (Seungjae Park)* / Financial AI Engineer / 만 25세 \

*Email*: astro.psj\@gmail.com \
*GitHub*: #link("https://github.com/Astro36")[github.com/Astro36] \
*LinkedIn*: #link("https://www.linkedin.com/in/seungjae-park/")[linkedin.com/in/seungjae-park] \

=== Certifications

#block(spacing: 1em)[
  *투자자산운용사*, 한국금융투자협회 #h(1fr) #text(size: 0.9em, fill: black90)[2024.06]
]
#block(spacing: 1em)[
  *정보처리기사*, 한국산업인력공단 #h(1fr) #text(size: 0.9em, fill: black90)[2024.06]
]
#block(spacing: 1em)[
  *리눅스마스터 2급*, 한국정보통신진흥협회 #h(1fr) #text(size: 0.9em, fill: black90)[2023.12]
]

== Experiences

#block(spacing: 1.5em)[
  #block(below: 10pt, fill: black5, inset: 6pt, radius: 3pt)[
    *(석사과정) 대학원생 연구원*, 연세대학교 MLCF 연구실 - #text(size: 0.9em, fill: black90)[https://sites.google.com/view/mlcf] #h(1fr) \
    #align(right)[#block(above: 8pt)[#text(size: 0.9em, fill: black90)[2024.07 - 현재 (1년 9개월)]]]
  ]
  #grid(
    columns: (auto, 1fr),
    column-gutter: 8pt,
    row-gutter: 12pt,
    align: (left, left),
    [*배경)*],
    [
      연세대학교 인공지능학과 석사과정으로 MLCF 연구실에서 #accent[금융 도메인 관련 인공지능 연구]를 수행함
    ],

    [*기여)*],
    [
      연구는 다음의 두 축을 중심으로 수행함 \
      1. #accent[Large Language Model] \
        - *KRAFT³-QA* #pill[Publications\#3] : 금융 텍스트-표 혼합 질의응답을 체계적으로 평가할 벤치마크가 부재한 문제를 해결하기 위해, 공시 데이터 기반 QA 데이터셋과 Tool-augmented 에이전트 평가 프로토콜을 설계·구현하고 대규모 LLM 실험을 수행함
        - *Evaluating LLM-Generated Technical Analysis* #pill[Projects\#11] : LLM 기반 기술적 지표 해석이 수치·규칙·가격–지표 관계 측면에서 오류를 내포하는 문제를 분석하고, 신뢰성 평가 프레임워크를 제안하며 실증 실험을 수행함
      2. #accent[Time Series Forecasting]
        - *ElxaTST* #pill[Publications\#2] : 기존 다변량 시계열 모델이 계산복잡도로 인해 변수 간 동적인 상호작용을 효율적으로 반영하지 못하는 문제를 해결하기 위해, Top K 기반 상호작용 선택 구조를 구현하고 5개의 벤치마크 데이터셋으로 성능 평가를 수행함
        - *TiVaT* #pill[Publications\#4] : 시점과 변수 간 비동기적 상호작용을 단일 연산으로 직접 모델링하지 못하는 기존 Transformer 구조의 한계를 개선하기 위해, Joint-Axis Attention과 DTV Sampling을 제안, 본 연구에서 벤치마크 데이터셋에서의 성능 분석과 아이디어 검증을 수행함
        - *TSFM Catastrophic Forgetting* #pill[Projects\#12] : 자산 유니버스가 점진적으로 확장되는 금융 환경에서 시계열 모델의 망각 현상이 체계적으로 분석되지 않은 문제를 해결하기 위해, 시계열 파운데이션 모델의 순차 학습 프로토콜과 평가 프레임워크를 설계하고 실증 분석을 수행함
      연세대학교 정보대학원 계약학과 AI핀테크 과정의 "재무와 딥러닝" 과목의 강의조교로 활동, 전체 수업의 약 1/3에 해당하는 실습 강의을 담당
    ],

    [*성과)*],
    [SCIE Q1 저널 1편 게재(예정), 국내 저널(KCI) 1편 게재, 국내 학회 1편 발표, SCIE/SSCI 저널 각각 1편 추가 제출 준비 중],

    [*기술)*], [Python, PyTorch, Financial AI, Large Language Model, Time Series Forecasting],
  )
]
#block(spacing: 1.5em)[
  #block(below: 10pt, fill: black5, inset: 6pt, radius: 3pt)[
    *(창업 프로젝트) AI/풀스택 엔지니어*, SW마에스트로 11기 #text(size: 0.9em, fill: black90)[(창의·도전형 SW인재육성 정부지원 사업)] #h(1fr) \
    #align(right)[#block(above: 8pt)[#text(size: 0.9em, fill: black90)[2020.05 - 2020.12 (8개월)]]]
  ]
  #grid(
    columns: (auto, 1fr),
    column-gutter: 8pt,
    row-gutter: 12pt,
    align: (left, left),
    [*배경)*],
    [
      온라인 커뮤니티와 SNS에서 성매매·도박 등 불법 홍보 게시글이 급증하였으나, 기존 필터링 시스템은 자모 분리, 초성체, 특수문자 삽입 등 변형된 한글 표현에 취약함 \
      규칙 기반 필터는 우회가 가능했고, 단순 딥러닝 모델은 금칙어가 추가될 때마다 재학습이 필요해 확장성과 유지보수 측면에서 한계가 있었음 \
      이에 따라 변형 텍스트 정규화, 하이브리드 분류 구조, 자체 모델 업데이트 기능을 갖춘 #accent[자기 개선형 스팸 탐지 시스템]을 설계·구현함 (3인 창업 프로젝트)
    ],

    [*기여)*],
    [
      C++ 17 기반 스팸 필터 엔진을 설계·구현하고 Python 코드와 연결하여 분석 속도와 안정성을 개선 \
      CNN+LSTM 기반 멀티라벨 스팸 분류 모델을 설계하고 실험을 수행, TensorFlow 모델을 C++ 환경으로 포팅하여 배포가능한 라이브러리 형태로 구성 \
      LCS 기반 자동 스팸 어구 추출 알고리즘을 설계하고 스팸 패턴 사전을 업데이트하는 재학습 파이프라인을 구축
    ],

    [*성과)*],
    [
      스팸 5,000건과 비스팸 3,000건을 직접 구축하여 학습 데이터를 확보하고, #accent[Accuracy 0.99과 Micro F1 0.97 이상]의 성능을 달성 \
      (주)코스디자인에서 추후 런칭 예정 서비스에 본 시스템을 적용하기로 협의하며 기술의 실서비스 활용 가능성을 확보
    ],

    [*기술)*], [C++, Python, Tensorflow, Django, Redis, Elasticsearch, MariaDB, Docker, AWS],
  )
]
#block(spacing: 1.5em)[
  #block(below: 10pt, fill: black5, inset: 6pt, radius: 3pt)[
    *(프리랜서) 풀스택 엔지니어*, INSIGHT #text(size: 0.9em, fill: black90)[(스타트업)] #h(1fr) #text(size: 0.9em, fill: black90)[2019.09 - 2020.01 (4개월)]
  ]
  #grid(
    columns: (auto, 1fr),
    column-gutter: 8pt,
    row-gutter: 12pt,
    align: (left, left),
    [*배경)*],
    [
      스마트폰 센서 기반 라이프로그 데이터를 활용한 #accent[AI 기반 멘탈 헬스케어 솔루션] 스타트업의 #accent[1천만원 규모 외주 프로젝트를 단독]으로 개발, 요구사항 정의 및 기술 협의는 INSIGHT와 직접 수행하고 프리랜서 계약과 정산은 중간 법인인 (주)프로그라피를 통해 진행 \
      GPS, 조도 센서, 휴대폰 사용 패턴 등 다양한 센서 데이터를 최소 10분 간격으로 지속적으로 수집하고, 이를 기계학습 모델에 적용하여 우울, 스트레스 등 정신건강 지표를 예측하는 시스템을 개발 \
      모바일 앱-서버-ML 모델을 통합한 파이프라인을 실제 동작 가능한 형태로 구현
    ],

    [*기여)*],
    [
      Kotlin 기반 안드로이드 앱을 구현하여 라이프로그 수집, 파일 추출, 서버 전송 기능을 개발 \
      MPAndroidChart를 활용해 예측된 정신건강 상태를 시간 흐름에 따른 그래프로 시각화하고, 앱 내의 심리상태 설문조사 UI 구현 \
      Docker 환경의 Python Flask 서버를 구축하여 Scikit-Learn 모델을 로딩하고, 앱으로부터 전달받은 데이터를 기반으로 예측 결과를 반환하는 REST API를 구현
    ],

    [*성과)*],
    [
      라이프로그 수집-저장-예측-시각화까지 연결되는 End-to-End AI 서비스를 완성 \
      단독 개발자로서 모바일-서버-ML 추론 시스템을 통합 구현하며 실제 서비스 수준의 AI 배포를 경험
    ],

    [*기술)*], [Kotlin, Android App, Python, Flask, Docker, MariaDB, Nginx],
  )
]
#pagebreak()
#block(spacing: 1.5em)[
  #block(below: 10pt, fill: black5, inset: 6pt, radius: 3pt)[
    *(창업 프로젝트) 풀스택 엔지니어*, 프로그라피 4-5기 #h(1fr) #text(size: 0.9em, fill: black90)[2019.03 - 2020.02 (1년)]
  ]
  #grid(
    columns: (auto, 1fr),
    column-gutter: 8pt,
    row-gutter: 12pt,
    align: (left, left),
    [*배경)*],
    [
      학부 1학년 때, 연합 IT 프로젝트 동아리(프로그라피)에서 실제 서비스 출시를 목표로 프로젝트를 수행 \
      #accent[심리상담사 매칭 플랫폼과 힐링 애플리케이션 "쉼"]을 기획하며, 프로덕트 완성을 넘어 서비스 사업화 가능성을 검토하는 창업 시도를 진행
      아이디어 기획, 기능 정의, 개발, 결제 연동까지 포함한 초기 스타트업 형태의 제품 개발 과정을 경험 (5인 구성 스타트업)
    ],

    [*기여)*],
    [
      Android 애플리케이션을 개발하여 콘텐츠 탐색, 오디오 재생(ASMR 등), 사용자 인터페이스를 구현 \
      Node.js 기반 API 서버를 설계·구현하여 사용자 인증, 매칭 로직, 데이터 처리 기능을 구축하고 클라이언트-서버 아키텍처를 설계 \
      PG 결제 API를 연동하여 유료 서비스 전환을 고려한 결제 처리를 구현하고 배포 환경 구성까지 담당
    ],

    [*성과)*],
    [
      모바일 앱과 백엔드를 포함한 MVP를 완성하고, 서비스 출시를 목표로 기술 중심 창업을 추진 \
      Google Play에 앱 업로드 후 초기 사용자 피드백을 통해 제품 개선 방향을 모색하는 등 #accent[스타트업의 초기 단계 과정을 경험] (코로나19로 인해 사업 중단)
    ],

    [*기술)*], [Java, Android App, Node.js, Express.js, Docker, MySQL, Nginx],
  )
]

== Publications

#block(spacing: 1.5em)[
  #block(below: 10pt, fill: black5, inset: 6pt, radius: 3pt)[
    4. Junwoo Ha, Sungsoo Kim, Kisu Lee, *Seungjae Park*, Hyukjae Kwon and Ha Young Kim, #link("https://arxiv.org/abs/2410.01531")["TiVaT: A Transformer with a Single Unified Mechanism for Capturing Asynchronous Dependencies in Multivariate Time Series Forecasting,"] _*Applied Soft Computing*_, _accepted_, doi: 10.48550/arXiv.2410.01531.
  ]
  #grid(
    columns: (auto, 1fr),
    column-gutter: 8pt,
    row-gutter: 12pt,
    align: (left, left),
    [*배경)*],
    [
      #accent[다변량 시계열 예측]에서는 기존 Channel Dependence 모델들은 서로 다른 시점과 변수 간에 발생하는 비동기적 상호작용을 단일 연산 내에서 직접 모델링하지 못하는 구조적 한계가 있음 \
      또한, 이를 동시에 처리할 경우 모든 토큰 간 상호작용이 계산되면서 불필요한 노이즈가 유입되어 예측 성능이 저하되는 문제가 발생 \
      따라서 노이즈를 억제하면서 비동기적 상호작용을 통합적으로 모델링할 수 있는 새로운 구조가 요구됨
    ],

    [*기여)*],
    [
      시간 축과 변수 축을 하나의 Unified Operation으로 동시에 처리하는 Joint-Axis Attention 모듈을 제안하여 비동기적 상호작용을 직접 모델링 \
      또한, 2D Embedding 기반 Distance-aware Time-Variate Sampling을 도입하여 #accent[노이즈를 제거하고 의미 있는 패턴을 선택]함으로써 표현력과 해석 가능성을 동시에 확보 \
      해당 연구에서 #accent[모델 구현 및 실험을 담당]하여 다양한 데이터셋에서의 성능 분석과 아이디어 검증을 수행하고 논문 수정 및 보완 과정에 참여
    ],

    [*성과)*],
    [
      8개의 장기 시계열 예측 벤치마크에서 실험한 결과, 우수한 시계열 예측 성능을 보임 \
      특히, 변수간 관계를 모델링하는 것이 중요한 고차원 데이터셋에서 경쟁 모델 대비 특출난 성능을 보임
    ],

    [*기술)*], [Python, PyTorch, Multivariate Time Series Forecasting],
  )
]
#block(spacing: 1.5em)[
  #block(below: 10pt, fill: black5, inset: 6pt, radius: 3pt)[
    3. *Seungjae Park*, Sung-Bae Cho and Ha Young Kim, #link("https://doi.org/10.9708/jksci.2025.30.08.029")["KRAFT³-QA: Korean financial text-table benchmark for evaluating tool-augmented agents on QA tasks,"] _Journal of The Korea Society of Computer and Information_, vol. 30, no. 8, pp. 29-39, Aug. 2025, doi: 10.9708/jksci.2025.30.08.029.
  ]
  #grid(
    columns: (auto, 1fr),
    column-gutter: 8pt,
    row-gutter: 12pt,
    align: (left, left),
    [*배경)*],
    [
      #accent[금융 도메인에서 텍스트와 표가 혼합된 질의응답 문제]는 실제 업무 의사결정에 중요한 역할을 수행하나, 기존 LLM 벤치마크는 일반 언어 이해에 초점을 두고 있으며, 한국어 금융 공시 데이터 기반의 정밀 QA 평가 데이터셋은 미비 \
      특히, Tool-augmented 에이전트의 성능을 체계적으로 평가할 수 있는 금융 특화 벤치마크가 부재
    ],

    [*기여)*],
    [
      ① 한국 상장기업 공시 데이터를 기반으로 한 금융 텍스트-표 QA 벤치마크 설계
      (OpenDART API 기반 전자공시 수집 파이프라인 구축, 구조화 데이터 전처리 및 LLM 기반 질의 생성 및 데이터 품질 필터 설계) /
      ② Tool-augmented 질의응답 에이전트 구현 /
      ③ SGLang, vLLM을 활용한 대규모 LLM 추론 및 모델 비교 평가 실험 수행
    ],

    [*성과)*],
    [금융 특화 QA 벤치마크 공개 및 코드 배포, 모델별 정확도 및 유효 응답률 등 #accent[금융 도메인에서의 에이전트 LLM 성능 평가 기준 정립]에 기여],

    [*기술)*], [Python, Large Language Model, #accent[Tool-augmented Agent], Financial QA Benchmark],
  )
]
#block(spacing: 1.5em)[
  #block(below: 10pt, fill: black5, inset: 6pt, radius: 3pt)[
    2. *Seungjae Park*, Hyukjae Kwon, Kisu Lee, Won-Yong Shin and Ha Young Kim, #link("https://www.dbpia.co.kr/journal/articleDetail?nodeId=NODE12132098")["Multivariate Time Series Forecasting Reflecting Dynamic Variate Similarity and Temporal Information,"] in _Proceedings of the Symposium of the Korean Institute of Communications and Information Sciences_, vol. 86, Gangwon, South Korea, Feb. 2025, pp. 516-517.
  ]
  #grid(
    columns: (auto, 1fr),
    column-gutter: 8pt,
    row-gutter: 12pt,
    align: (left, left),
    [*배경)*],
    [
      기존 #accent[다변량 시계열 예측] 모델은 Channel Independence 접근으로 계산 효율성을 확보하거나, Channel Dependence 접근으로 변수 간 상관관계를 모델링했으나, Lead-Lag 관계와 동적인 상호작용을 동시에 반영하는 데 한계가 있었음 \
      특히, 변수가 증가할수록 계산 복잡도가 기하급수적으로 증가하여, 변수 간 상호작용을 효율적으로 모델링하는 데 제약이 발생
    ],

    [*기여)*],
    [
      변수 간 유사도를 기반으로 Top K 개의 변수를 선택하고, 해당 변수의 Temporal Embedding에서 가장 중요한 패치에 대해서만 Cross Attention을 적용해 Lead-Lag 관계를 효율적으로 모델링하는 ElxaTST 제안 \
      이를 통해 #accent[시간복잡도를 O(N²)에서 O(k)로 줄이면서] 변수 간 동적인 상호작용을 효과적으로 모델링
    ],

    [*성과)*],
    [5개의 장기 시계열 예측 벤치마크에서 MSE 및 MAE 기준으로 기존 모델(iTransformer, PatchTST)을 전반적으로 상회하는 성능을 보임],

    [*기술)*], [Python, PyTorch, Multivariate Time Series Forecasting],
  )
]
#block(spacing: 1.5em)[
  #block(below: 10pt, fill: black5, inset: 6pt, radius: 3pt)[
    1. *Seungjae Park* and Daeyoung Park, #link("https://eee.inha.ac.kr/bbs/eee/3919/122977/download.do")["A Novel Stock Screening Approach using Large Language Models and Correlation-Aware Retrieval,"] presented at the _Capstone Design in ICT#h(1pt) (Capstone Project)_, Inha Univ., Incheon, South Korea, Jun. 2024.
  ]
  #grid(
    columns: (auto, 1fr),
    column-gutter: 8pt,
    row-gutter: 12pt,
    align: (left, left),
    [*배경)*],
    [
      기존 #accent[종목 스크리닝]은 키워드 기반, 산업 분류 코드, 재무비율 중심 방식으로 이루어졌으나 검색 정확도와 관련성이 낮고, 핵심 사업 내용을 정교하게 반영하기 어려웠음 \
      또한, 방대한 공시 정보 속에서 투자 대상 기업을 효과적으로 선별하는 데에도 구조적 제약이 존재함
    ],

    [*기여)*],
    [
      사업보고서를 LLM으로 분석하여 핵심 사업 정보를 추출하고, 텍스트 임베딩 유사도와 주간 수익률 상관계수를 결합한 Correlation-Aware Retrieval 기반 스크리닝 파이프라인을 제안 \
      선별된 종목에 대해 블랙-리터만 기반 기대수익률 추정과 평균-분산 최적화를 적용하여 정성·정량 분석을 통합
    ],

    [*성과)*],
    [
      반도체 장비, 아파트 인테리어 등 다양한 사용자 쿼리 실험에서 사업 내용과 시장 움직임을 동시에 반영한 관련 종목을 효과적으로 도출 \
      또한, GPT-3.5와 GPT-4 API를 조합한 #accent[LLM 호출 비용 최적화 전략] 제안과 시장 상태를 반영한 #accent[최적 포트폴리오 가중치 계산] 결과를 통해 실질적 투자 의사결정 도구로의 가능성을 제시
    ],

    [*기술)*],
    [Python, Large Language Model, #accent[Retrieval-Augmented Generation (RAG)], Portfolio Optimization, Black-Litterman Model, Docker, PostgreSQL, Redis],
  )
]

== Projects

#block(spacing: 1.5em)[
  #block(below: 10pt, fill: black5, inset: 6pt, radius: 3pt)[
    12. *(To be submitted to an SCIE-indexed journal)* *Seungjae Park*, Sung-Bae Cho and Ha Young Kim, "An Empirical Analysis of Catastrophic Forgetting in a Time Series Foundation Model for Stock Price Forecasting". #h(1fr) #text(size: 0.9em, fill: black90)[2025.10 - 진행 중]
  ]
  #grid(
    columns: (auto, 1fr),
    column-gutter: 8pt,
    row-gutter: 12pt,
    align: (left, left),
    [*배경)*],
    [
      기존 #accent[시계열 파운데이션 모델]의 주가 예측 성능은 고정된 자산 집합을 전제로 평가되어 왔으나, 실제 금융 시장은 IPO 등으로 자산 집합이 지속적으로 변화하고 이는 #accent[Catastrophic Forgetting]의 주요 원인으로 작용 \
      본 연구는 금융 시계열 환경에서 시계열 파운데이션 모델이 연속 학습(Continual Learning) 과정에서 얼마나 망각에 취약한지 실증적으로 검증
    ],

    [*기여)*],
    [
      본 연구는 금융 시계열에 시계열 파운데이션 모델을 순차적으로 파인튜닝하는 환경에서 Catastrophic Forgetting을 체계적으로 분석한 최초의 실증 연구 \
      종목 유니버스 확장과 국가 간 순차 적응이라는 두 가지 현실적 시나리오를 설계하고, MAPE 기반 망각 및 전이 지표를 결합한 #accent[평가 프레임워크를 제안] \
      태스크 특성과 예측 기간이 망각에 미치는 영향을 정량적으로 분석하여, 배포 환경에서의 안정성 중심 의사결정 기준을 제시
    ],

    [*성과)*],
    [순차 학습 프로토콜 하에서 #accent[시계열 파운데이션 모델은 기존 예측 모델 대비 망각에 덜 취약]하며, 장기 예측 환경에서도 상대적으로 안정적인 성능을 유지함을 확인, *논문 제출 예정*],

    [*기술)*],
    [Python, PyTorch, Time Series Foundation Model, Stock Price Forecasting, #accent[Continual Learning], Catastrophic Forgetting],
  )
]
#block(spacing: 1.5em)[
  #block(below: 10pt, fill: black5, inset: 6pt, radius: 3pt)[
    11. *(To be submitted to an SSCI-indexed journal)* Sungsoo Kim, *Seungjae Park*, Taeseong Bang and Ha Young Kim, "Evaluating the Reliability of LLM-Generated Technical Indicator Analysis". #h(1fr) #text(size: 0.9em, fill: black90)[2024.10 - 진행 중]
  ]
  #grid(
    columns: (auto, 1fr),
    column-gutter: 8pt,
    row-gutter: 12pt,
    align: (left, left),
    [*배경)*],
    [
      최근 LLM의 발전과 함께, 기술적 지표를 포함한 금융 신호 해석 영역에서도 LLM의 활용이 확대됨 \
      하지만 LLM은 확률적 생성 모델이기 때문에, 수치 계산과 가격–지표 관계 해석에서 오류 가능성을 내포하며 금융 의사결정 환경에서 이러한 불확실성은 직접적 위험으로 이어질 수 있음 \
      기존 연구는 예측 성과에 초점을 두었으나, #accent[LLM 기반의 기술적 지표 해석]이 수치·관계 구조에 충실한지에 대한 검증은 충분히 이루어지지 않음
    ],

    [*기여)*],
    [
      본 연구는 LLM 기반 기술적 분석의 신뢰성을 규칙 준수성, 수치적 정합성, 가격–지표 관계 일관성의 세 차원으로 구조화한 신뢰성 평가 프레임워크를 제안함 \
      또한, Iterative Self-Refinement를 통해 출력의 규칙·수치·관계 정합성을 개선하는 방법론을 제시함 \
      실증 분석 결과, 제안된 구조는 해석 신뢰성을 유의하게 향상시키며, 이러한 개선이 포트폴리오 수준의 성과 개선으로 이어짐을 확인함 \
      해당 연구에서 #accent[데이터셋 수집·정제 및 실험을 수행]하고, 신뢰성 평가 프레임워크를 포함한 #accent[핵심 방법론을 제안]하였으며, 논문 작성 전 과정에 참여
    ],

    [*성과)*],
    [
      실증 분석 결과, LLM 기반의 기술적 지표 해석에 #accent[규칙 위반과 수치 오류가 유의하게 존재]함을 확인함 \
      제안한 개선 방법론을 적용할 경우, 분석의 #accent[신뢰성이 전반적으로 개선]됨을 정량적으로 입증함 \
      이러한 신뢰성 향상은 포트폴리오 수준에서 경제적 유의성을 가짐을 확인함, *논문 제출 예정*
    ],

    [*기술)*], [Python, Large Language Model, #accent[Financial Analysis], Stock Price Forecasting],
  )
]
#pagebreak()
#block(spacing: 1.5em)[
  #block(below: 10pt, fill: black5, inset: 6pt, radius: 3pt)[
    10. *MLCF GPUstat* - #text(size: 0.9em, fill: black90)[https://github.com/Astro36/mlcf-gpustat] #h(1fr) #text(size: 0.9em, fill: black90)[2025.02]
  ]
  #grid(
    columns: (auto, 1fr),
    column-gutter: 8pt,
    row-gutter: 12pt,
    align: (left, left),

    [*배경)*],
    [
      연구실에서는 여러 GPU 서버를 운영하며, 실험을 시작한 이후 모델이 GPU에 정상적으로 올라갔는지와 실험이 종료되었는지를 확인하기 위해 #accent[GPU 사용률을 지속적으로 확인]할 필요가 있었음 \
      이를 위해, 각 서버에 SSH로 접속해 watch nvidia-smi 명령으로 GPU 상태를 모니터링하고 있었음 \
      또한, 새로운 실험을 시작하기 위해 남는 GPU를 찾으려면 여러 서버에 순차적으로 접속해 동일한 확인 작업을 반복해야 하는 불편이 존재했음 \
      이러한 이유로 #accent[여러 서버의 GPU 상태를 통합 모니터링할 수 있는 웹 대시보드]를 개발함
    ],

    [*기여)*],
    [
      Node.js 백엔드에서 SSH를 사용해 원격 서버에 접속하고, 각 서버에서 nvidia-smi 명령을 실행한 뒤 결과를 파싱하여 GPU 사용률, 메모리 사용량, 프로세스 정보를 수집하는 로직을 구현 \
      각 서버에 NVML(NVIDIA Management Library)등의 런타임 의존성을 설치하지 않도록 수집 방식을 #accent[SSH와 기본 제공 명령 중심으로 설계]해 운영 환경의 유지보수 부담 최소화 \
      수집한 GPU 상태를 WebSocket으로 브라우저에 주기적으로 전달하고, 웹 페이지 서빙 리소스 절감을 위해 #accent[정적 웹 페이지]에서 서버별 GPU 현황을 한눈에 볼 수 있도록 구성
    ],

    [*성과)*],
    [
      개별 서버에 직접 접속하지 않고도 GPU 상태를 통합 조회할 수 있는 환경을 구축하여 연구실 계산자원 모니터링을 단순화함 \
      그 결과, 여러 사용자가 watch nvidia-smi 명령을 실행하던 방식에 비해, 서버 측에 발생하던 #accent[CPU 부하를 감소]시킬 수 있었으며 GPU 상태 확인 작업도 단일 웹 페이지에서 빠르게 수행할 수 있게 됨 \
      실험 전 사용 가능한 GPU를 찾기 위해 여러 서버에 순차적으로 접속하던 과정을 통합 조회 방식으로 개선하여 실험 환경을 효율화함
    ],

    [*기술)*], [JavaScript, Node.js, WebSocket, Docker, Kubernetes, VictoriaMetrics],
  )
]
#block(spacing: 1.5em)[
  #block(below: 10pt, fill: black5, inset: 6pt, radius: 3pt)[
    9. *BCMF NAV* - #text(size: 0.9em, fill: black90)[https://fund.inhabluechip.com/] #h(1fr) #text(size: 0.9em, fill: black90)[2024.01 - 2024.07]
  ]
  #grid(
    columns: (auto, 1fr),
    column-gutter: 8pt,
    row-gutter: 12pt,
    align: (left, left),
    [*배경)*],
    [
      블루칩뮤추얼펀드에서 운용 중인 #accent[펀드의 일별 NAV(Net Asset Value)와 AUM(Assets Under Management)을 수기로 계산·공유하던 과정을 자동화]하기 위해 웹 서비스를 개발 \
      기존에는 엑셀 기반 관리와 수동 게시 방식으로 인해 업데이트 지연과 계산 오류 가능성이 존재하였으며, 이를 개선하여 일관된 기준으로 펀드 성과를 공개할 수 있는 시스템을 구축
    ],

    [*기여)*],
    [
      JavaScript으로 일별 자산 평가액을 반영한 NAV, AUM 계산 로직을 구현 \
      Tailwind CSS를 활용해 반응형 UI를 구성하여 모바일과 데스크톱 환경에서 모두 확인 가능하도록 개발 후, GitHub Actions를 통해 매일 변경사항이 자동으로 웹페이지 형태로 배포되도록 설정
    ],

    [*성과)*],
    [
      블루칩뮤추얼펀드의 성과 공개 페이지로 활용되어, 펀드 구성원뿐 아니라 외부 사용자도 웹을 통해 펀드 수익률과 자산 규모를 확인할 수 있도록 함 \
      또한, 인수인계 프로세스를 정립해 졸업 이후에도 서비스를 지속적으로 운영할 수 있는 기틀 마련
    ],

    [*기술)*], [JavaScript, Node.js, Tailwind CSS, Vite, GitHub Actions],
  )
]
#block(spacing: 1.5em)[
  #block(below: 10pt, fill: black5, inset: 6pt, radius: 3pt)[
    8. *Stock Earnings Calendar* - #text(size: 0.9em, fill: black90)[https://github.com/Astro36/mystock] #h(1fr) #text(size: 0.9em, fill: black90)[2023.06 - 2023.07]
  ]
  #grid(
    columns: (auto, 1fr),
    column-gutter: 8pt,
    row-gutter: 12pt,
    align: (left, left),
    [*배경)*],
    [
      관심 종목의 실적 발표 일정과 주가 변동을 지속적으로 확인해야 하는 투자자의 반복적인 정보 탐색 과정을 줄이기 위해 개발한 안드로이드 앱으로, 기존에는 여러 금융 사이트를 개별적으로 방문하여 데이터를 확인해야 하는 불편이 있었으며, 이를 개인 관심 종목 중심으로 통합 관리할 수 있는 도구의 필요성을 인식함 \
      #accent[실적 발표일과 가격 흐름을 함께 추적]할 수 있는 투자 보조 도구를 구현하는 것을 목표로 함
    ],

    [*기여)*],
    [
      프로젝트 전체를 Flutter로 설계·구현하였으며, Hive 데이터베이스 사용해 메인 페이지에서는 탭 기반 관심 목록 UI와 검색/추가/삭제 기능을 구현하며, 종목별 주가 및 변동률을 비동기적으로 갱신 \
      실적 날짜 달력 화면에서는 TableCalendar 라이브러리를 활용해 실적 예정일 이벤트를 로딩 및 시각화하며 상호작용 동작을 구현
    ],

    [*성과)*],
    [
      블루칩뮤추얼펀드 활동에서 관심 및 펀드 보유 종목의 실적 발표일정 관리 보조도구로 실제 활용 \
      운용 과정에서 발생한 사용성 피드백을 반영하여 UI 흐름과 종목 관리 기능을 점진적으로 개선하였으며, 최종적으로 Google Play 스토어에 앱을 업로드하여 모바일 배포 전 과정을 경험함
    ],

    [*기술)*], [Dart, Flutter, Android App],
  )
]
#block(spacing: 1.5em)[
  #block(below: 10pt, fill: black5, inset: 6pt, radius: 3pt)[
    7. *Self-Balancing Robot* - #text(size: 0.9em, fill: black90)[https://github.com/Astro36/ICE3015-project] #h(1fr) #text(size: 0.9em, fill: black90)[2023.03 - 2023.06]
  ]
  #grid(
    columns: (auto, 1fr),
    column-gutter: 8pt,
    row-gutter: 12pt,
    align: (left, left),
    [*배경)*],
    [
      임베디드 시스템 캡스톤 디자인(학부) 최종 프로젝트로써, 자가 균형을 유지하는 2륜 로봇을 설계·제작 \
      #accent[불안정한 동적 시스템을 실시간 제어 알고리즘으로 안정화]하는 것을 목표로, 센서 기반 자세 추정과 모터 제어를 통합 구현하는 데 중점을 둠 (#accent[학점: A+])
    ],

    [*기여)*],
    [
      프로젝트 전 단계에서 센서 및 구동부 하드웨어를 선정·결합하고 회로 설계를 수행 (ATmega4809, MX1508 DC 드라이버, MPU6050 자이로/가속도 센서, HC-SR04 초음파 센서 사용) \
      센서 입력을 읽어 자세를 추정하고 PID 제어 기반 균형 알고리즘을 직접 구현함으로써 외부 라이브러리에 의존하지 않는 하드웨어 제어 루프를 완성, I2C 통신 및 타이머 기반 실시간 처리 구조를 설계
    ],

    [*성과)*],
    [
      회로 설계 및 브레드보드 조립, 센서 통합, PWM 출력 과제 해결 등을 포함한 전체 빌드 과정의 연구 일지를 남기고 코드 구현 \
      MCU 환경에서 자가 균형을 유지하는 제어 루프가 동작하는 프로토타입 로봇을 완성하였으며, MPU6050 센서 기반 자세 추정과 모터 제어를 통합 구현하는 #accent[하드웨어·소프트웨어] 설계 경험을 축적
    ],

    [*기술)*], [Embedded C++],
  )
]
#block(spacing: 1.5em)[
  #block(below: 10pt, fill: black5, inset: 6pt, radius: 3pt)[
    6. *3D Product Catalog* - #text(size: 0.9em, fill: black90)[https://github.com/Astro36/ICE3016-miniproject] #h(1fr) #text(size: 0.9em, fill: black90)[2022.12]
  ]
  #grid(
    columns: (auto, 1fr),
    column-gutter: 8pt,
    row-gutter: 12pt,
    align: (left, left),
    [*배경)*],
    [
      컴퓨터 그래픽스 캡스톤 디자인(학부) 미니 프로젝트로써, OpenGL 기반 3D 제품 카탈로그를 구현하여 사용자가 제품을 다양한 각도에서 탐색할 수 있는 시각적 도구를 개발 \
      #accent[Blender로 제작한 3D 모델 데이터를 OpenGL 렌더링] 파이프라인과 연계하여 그래픽스 학습 내용을 실제 애플리케이션 형태로 적용하는 것을 목표로 함 (#accent[학점: A+])
    ],

    [*기여)*],
    [
      Blender로 제작한 볼펜 모델(.obj)을 직접 로드하여 OpenGL에서 렌더링하고, 사용자가 제품을 다양한 각도에서 관찰할 수 있도록 카메라 이동 및 회전 기능을 구현 \
      단순 정적 모델 렌더링을 넘어, 마우스 입력을 활용한 색상 변경 기능과 분해 애니메이션을 추가하여 제품 구조를 단계적으로 확인할 수 있도록 구성하고, 별도의 그리기 모드를 구현해 사용자가 화면에 직접 선을 그릴 수 있도록 구현
    ],

    [*성과)*],
    [
      단순 3D 모델 렌더링 수준을 넘어, 모델 로딩, 텍스처 처리, 애니메이션을 하나의 OpenGL 프로그램 안에 통합하여 동작하도록 완성 \
      고수준 엔진 없이 Immediate Mode(OpenGL glBegin/glEnd) 기반으로 렌더링과 상태 관리를 직접 구현함으로써 그래픽스 파이프라인과 입력 처리 구조를 실질적으로 이해하고 적용
    ],

    [*기술)*], [C++, OpenGL, Blender],
  )
]
#block(spacing: 1.5em)[
  #block(below: 10pt, fill: black5, inset: 6pt, radius: 3pt)[
    5. *(팀 프로젝트) ICE Market* - #text(size: 0.9em, fill: black90)[https://github.com/ICE-LIFE/ICE-LIFE-Backend] #h(1fr) #text(size: 0.9em, fill: black90)[2022.07 - 2022.08]
  ]
  #grid(
    columns: (auto, 1fr),
    column-gutter: 8pt,
    row-gutter: 12pt,
    align: (left, left),
    [*배경)*],
    [
      정보통신공학과 학생회 주도로 #accent[학과 구성원 간 중고 물품 거래]를 보다 체계적으로 지원하기 위해 온라인 플리마켓 플랫폼을 기획·개발 \
      기존의 개별 연락이나 단순 공지 방식의 한계를 보완하고, 게시글 등록·조회와 실시간 대화를 하나의 웹 서비스 안에서 처리할 수 있는 구조를 구축하는 것을 목표로 함
    ],

    [*기여)*],
    [
      Spring Boot 기반 백엔드에서 WebSocket을 활용한 1:1 채팅 기능을 구현하였으며, REST API와 채팅 기능이 함께 동작하도록 서버 구조를 구성 \
      MySQL 데이터베이스 스키마를 설계, Docker 환경 설정을 통해 애플리케이션 실행 환경을 구성
    ],

    [*성과)*],
    [
      프론트엔드와 백엔드가 실시간으로 연동되는 구조를 완성하여 학생회 프로젝트로 시연 가능한 수준의 웹 서비스 프로토타입을 구축
    ],

    [*기술)*], [Java, #accent[Spring Boot], JavaScript, React, Docker, MySQL],
  )
]
#block(spacing: 1.5em)[
  #block(below: 10pt, fill: black5, inset: 6pt, radius: 3pt)[
    4. *Quick Pool* - #text(size: 0.9em, fill: black90)[https://crates.io/crates/qp] #h(1fr) #text(size: 0.9em, fill: black90)[2021.11 - 2021.12]
  ]
  #grid(
    columns: (auto, 1fr),
    column-gutter: 8pt,
    row-gutter: 12pt,
    align: (left, left),
    [*배경)*],
    [
      Rust 환경에서 리소스 관리를 효율적으로 처리하기 위한 #accent[Async Generic Pool]을 구현 \
      기존 리소스 Pool 구현에서 발생할 수 있는 대기열 병목을 완화하기 위해 Lock-free Waiter Queue 구조를 적용한 Pool 라이브러리를 설계
    ],

    [*기여)*],
    [
      permit 감소를 CAS(Compare-and-swap) 루프로 구현하고, 리소스 반환 시 원자적으로 permit을 복원하는 #accent[비동기 세마포어를 저수준에서 직접 구현] \
      Future 트레이트를 구현하여 poll 단계에서 try_acquire 실패 시 Waker를 Lock-free SegQueue에 등록하고, permit 반환 시 대기자를 깨우는 논블로킹 획득 구조를 설계 \
      이를 ArrayQueue 기반 리소스 큐와 결합하여 async 환경에서 동작하는 generic resource pool의 acquire/release 흐름을 구성
    ],

    [*성과)*],
    [
      해당 라이브러리는 crates.io에 공개 배포되어 총 10,478회 다운로드를 기록함 \
      Benchmark(pool=8, workers=64) 조건에서 #accent[평균 리소스 획득 시간 122µs를 기록하여 bb8 (132µs)보다 낮은 지연 시간]을 보였으며, deadpool(290µs), mobc(1,698µs), r2d2(2,292µs) 대비 유의하게 빠른 성능을 확인함
    ],

    [*기술)*], [#accent[Rust], Async Programming, Lock-free Data Structures],
  )
]
#block(spacing: 1.5em)[
  #block(below: 10pt, fill: black5, inset: 6pt, radius: 3pt)[
    3. *(팀 프로젝트) CareU* - #text(size: 0.9em, fill: black90)[https://github.com/Astro36/careu] #h(1fr) #text(size: 0.9em, fill: black90)[2020.01]
  ]
  #grid(
    columns: (auto, 1fr),
    column-gutter: 8pt,
    row-gutter: 12pt,
    align: (left, left),
    [*배경)*],
    [
      최근 4년간 전동 킥보드 사고가 17배 증가하는 등 안전 문제가 급격히 대두되는 상황에서 인도 및 보행자 구역 주행을 실시간으로 감지하고 경고하는 #accent[킥보드 안전 솔루션]을 2020 슈퍼 챌린지 해커톤 팀 프로젝트로 기획 \
      컴퓨터비전·카메라·GPS를 결합해 주행 환경을 즉시 인식하고 위험 상황을 사용자에게 직접 경고할 수 있는 기술 기반 안전 솔루션 구현을 목표로 함
    ],

    [*기여)*],
    [
      TensorFlow Lite 기반 딥러닝 모델을 Flutter 앱에 탑재하여 카메라 입력을 통해 인도 주행 여부를 실시간 추론하는 구조를 구현 \
      추론 결과와 주행 조건을 연동하여 경고 로직이 동작하도록 앱 레벨 파이프라인을 구성하고, 모델 실행과 UI 반영 파트도 담당
    ],

    [*성과)*],
    [
      해커톤 환경에서 실제 공유 킥보드를 대여하여 제품을 장착하고 현장 주행 테스트 및 시연을 수행함으로써 실사용 가능성을 확인 \
      킥보드 관련 기업 대상 B2B 납품 및 공공 안전 표준 적용을 위한 B2G 확장 가능성까지 고려한 형태의 제품 구조를 제시하여 발표함
    ],

    [*기술)*], [Flutter, Android App, Javascript, Parcel, TensorFlow Lite, #accent[On-device Inference]],
  )
]
#block(spacing: 1.5em)[
  #block(below: 10pt, fill: black5, inset: 6pt, radius: 3pt)[
    2. *(팀 프로젝트) BraInha* - #text(size: 0.9em, fill: black90)[https://github.com/int-i/brainha-demo-server] #h(1fr) #text(size: 0.9em, fill: black90)[2019.11]
  ]
  #grid(
    columns: (auto, 1fr),
    column-gutter: 8pt,
    row-gutter: 12pt,
    align: (left, left),
    [*배경)*],
    [
      2019 인하SW해커톤에서 교내 학술 정보 교류를 활성화하기 위한 Q&A 플랫폼을 기획 \
      기존 커뮤니티가 일상 중심 정보 공유에 치우쳐 있는 한계를 보완하고, 학교 이메일 기반 #accent[교내 구성원 전용 학술 커뮤니티]를 구축하여 전공 지식·강의 자료·질의응답을 체계적으로 공유할 수 있는 환경을 만드는 것을 목표로 함
    ],

    [*기여)*],
    [
      Node.js 기반 서버와 MariaDB를 활용한 백엔드 아키텍처를 설계하고, Android 클라이언트와 연동되는 REST API를 구현 \
      사용자·게시글·댓글·랭크·로그 등 다수의 테이블을 포함한 DB 스키마를 설계하고 Docker 및 Nginx 환경 설정
    ],

    [*성과)*],
    [
      학과·동아리·개인 랭크 제도를 통해 참여를 유도하는 메커니즘을 포함한 교내 구성원 전용 학술 Q&A 플랫폼을 통해 학술 정보 교류 활성화 구조를 제시 \
      학교 단위 플랫폼 확장 모델과 강의 게시판 구독, 제휴 및 광고 수익을 포함한 서비스 확장 가능성을 제시하여, 학술 중심 커뮤니티의 지속 가능성도 검토
    ],

    [*기술)*], [JavaScript, Node.js, Express.js, Java, Android App, Docker, MariaDB, Nginx],
  )
]
#block(spacing: 1.5em)[
  #block(below: 10pt, fill: black5, inset: 6pt, radius: 3pt)[
    1. *(팀 프로젝트) WATHC_DOCS* - #text(size: 0.9em, fill: black90)[https://github.com/watchdocs/watchdocs-frontend] #h(1fr) #text(size: 0.9em, fill: black90)[2019.08]
  ]
  #grid(
    columns: (auto, 1fr),
    column-gutter: 8pt,
    row-gutter: 12pt,
    align: (left, left),
    [*배경)*],
    [
      후오비 코리아 X 웨이키체인 해커톤 in D'APP Live에서 #accent[블록체인 기반 문서 위변조 방지 및 관리 서비스]를 팀 프로젝트로 기획 \
      중앙 서버 의존 없이 문서 해시를 블록체인에 기록하여 무결성을 검증할 수 있는 웹 기반 DApp 프로토타입 구현을 목표로 함
    ],

    [*기여)*],
    [
      Vue.js 웹 프론트엔드를 개발하고 서버에서 페이지 로딩을 처리하는 서버 사이드 렌더링(SSR) 적용 \
      스마트컨트랙트와 연동되는 인터페이스를 통해 문서 업로드(해시 등록) 및 조회 요청이 블록체인 네트워크와 연결되도록 구성
    ],

    [*성과)*],
    [
      문서 업로드 시 생성된 해시값을 블록체인에 기록하고, 이후 동일 문서의 해시를 비교하여 무결성을 검증할 수 있는 프로토타입 DApp을 완성 \
      웹 클라이언트–백엔드–블록체인 네트워크 연동 구조를 구현하여 해커톤 시연이 가능한 서비스를 구축
    ],

    [*기술)*], [JavaScript, Node.js, Vue.js, Nuxt.js, Express.js, MongoDB, Smart Contract],
  )
]

== Awards

#block(spacing: 1.5em)[
  #block(below: 10pt, fill: black5, inset: 6pt, radius: 3pt)[
    *2023 Data Creator Camp 우수상*, 한국지능정보사회진흥원 원장상 #h(1fr) #text(size: 0.9em, fill: black90)[2023.09 - 2023.12]
  ]
  #grid(
    columns: (auto, 1fr),
    column-gutter: 8pt,
    row-gutter: 12pt,
    align: (left, left),
    [*배경)*],
    [
      교육·멘토링 중심 해커톤으로, 사전 온라인 교육 이수 후 실전 모델 구현과 성능 평가 방식으로 진행 \
      ResNet 모델을 사용해 소갈비와 돼지갈비처럼 육안으로도 구별이 어려운 #accent[음식 이미지를 분류]하는 과제 수행
    ],

    [*기여)*],
    [
      음식 이미지의 색상 민감도와 상하반전 불가라는 도메인 제약을 반영해 Augmentation 전략을 설계하고, ResNet 학습 파이프라인을 개선 \
      Class Activation Map을 활용해 오분류 패턴을 분석하고 학습 환경을 조정
    ],

    [*성과)*], [도메인 제약을 반영한 Augmentation 전략으로 모델 일반화 성능 개선, 우수상 수상],
    [*기술)*], [Python, PyTorch, ResNet, Transfer Learning, Image Classification],
  )
]
#pagebreak()

== Organizations & Leadership

#block(spacing: 1.5em)[
  #block(below: 10pt, fill: black5, inset: 6pt, radius: 3pt)[
    *블루칩뮤추얼펀드*, 교내 주식투자 동아리 - #text(size: 0.9em, fill: black90)[https://inhabluechip.com/] #h(1fr) #text(size: 0.9em, fill: black90)[2023.03 - 2024.08 (1년 6개월)]
  ]
  - 인하대학교 #accent[금융시장 연구 및 주식투자 동아리]에서 #accent[리서치 애널리스트]로 활동하며 거시경제 및 산업 동향 분석을 기반으로 투자 아이디어를 발굴하였으며, 기업 재무제표를 체계적으로 분석하고 밸류에이션 모델링을 수행 \
  - DCF(Discounted Cash Flow) 분석과 상대가치평가 등 정량적 평가 기법을 활용하여 기업의 내재가치를 산정하고 투자 타당성을 검토 후 사내 기업 분석 세미나에서 정기적으로 발표를 진행 \
  - 해당 발표 영상은 공식 YouTube 채널을 통해 공개되며 #accent[인천일보에 종목분석 기사를 기고]하여 외부 독자 대상 인사이트를 제공 \
  #block(above: 10pt, stroke: black20, inset: (x: 8pt, y: 6pt), radius: 4pt)[
    1. *Seungjae Park*, "[특징주] ESR켄달스퀘어리츠(365550), 국내 최대 물류 전문 리츠…18개 센터 기초자산," Incheon Ilbo, Jan. 2024. #text(size: 0.8em, fill: black90)[https://www.incheonilbo.com/news/articleView.html?idxno=1230557]
    2. *Seungjae Park*, "[특징주] 한국항공우주(047810), 위성 넘어 우주로…하늘길 기술 역량 확장," Incheon Ilbo, Oct. 2023. #text(size: 0.8em, fill: black90)[https://www.incheonilbo.com/news/articleView.html?idxno=1216780]
    3. *Seungjae Park*, "2023년 1학기 세미나 8주차 - 시노펙스(박승재)," Youtube, May. 2024. #text(size: 0.8em, fill: black90)[https://youtu.be/R8GoPOt_Cmk]
    4. *Seungjae Park*, "2023년 2학기 세미나 한국항공우주(박승재)," Youtube, Oct. 2023. #text(size: 0.8em, fill: black90)[https://youtu.be/OLXZROdEfRc]
    5. *Seungjae Park*, "2024년 1학기 세미나 넥슨게임즈(박승재)," Youtube, Mar. 2024. #text(size: 0.8em, fill: black90)[https://youtu.be/nksrG1g1esE]
  ]
  - 활동 후반기에는 리서치 역량과 조직 기여도를 기반으로 리서치 팀장 및 펀드매니저로 선임되어 운용 및 조직 운영에 기여함
  #block(above: 10pt, stroke: black20, inset: (x: 8pt, y: 6pt), radius: 4pt)[
    #block(below: 10pt)[#accent[*리서치 팀장 및 펀드매니저 #text(size: 0.9em, fill: black90)[(2024.01 - 2024.06)]*]]
    - 펀드매니저 회의를 통해 운용 펀드(#accent[최대 AUM 4천만원])의 투자 전략 수립 및 매매 의사결정에 기여
    - NAV 계산 체계 및 운용 현황 관리 프로세스를 개선하여 운용의 투명성과 체계성을 강화
    - 팀 활동의 일환으로 정기적인 매매일지 발표 세션을 운영하여, 각 팀원이 자신의 투자 포인트와 매매 전략을 공유하도록 하여 개별 종목에 대한 인사이트를 조직 차원에서 축적시킴
    - 아울러 2024 DB GAPS 대회에 참여하여 총 1006개 팀 중 56위를 기록하며 상위 5.6% 순위 달성
  ]
]
#block(spacing: 1.5em)[
  #block(below: 10pt, fill: black5, inset: 6pt, radius: 3pt)[
    *인트아이*, 학과 프로그래밍 소모임 - #text(size: 0.9em, fill: black90)[https://int-i.github.io/] #h(1fr) #text(size: 0.9em, fill: black90)[2019.03 - 2024.08 (5년 6개월)]
  ]
  - 인하대학교 #accent[정보통신공학과 소속 프로그래밍 학술 소모임] 인트아이에서 활동하며, 학과 전공 과목과 연계한 과목 스터디를 운영(멘토 역할)하여 수업 내용을 심화 학습하고 토론을 통해 전공 이해도를 높임
  - 소모임 내에서 토이 프로젝트를 기획·개발하고, 교내·외 해커톤에 팀 단위로 참여하여 실제 문제 해결 과정을 경험하며, 설계부터 구현, 발표까지 이어지는 전 과정을 수행하며 협업 기반 개발 역량을 강화
  - #accent[4년 이상 소모임 자체 기술 블로그]를 운영하며 누적 조회수 약 24만회, 월 최대 9천회의 조회수를 기록하였고, 이를 통해 학내 기술 커뮤니티의 외연을 확장함
  #block(above: 10pt, stroke: black20, inset: (x: 8pt, y: 6pt), radius: 4pt)[
    #block(below: 10pt)[#accent[*소모임 회장 #text(size: 0.9em, fill: black90)[(2023.07 - 2024.03)]*]]
    - 조직 운영 측면에서는 MT 등 친목 활동을 기획하여 구성원 간 유대감을 강화하고 팀 결속력을 높임
    - 졸업한 선배들과의 연락망을 구축하여 취업 및 진로 정보를 공유하는 선후배 네트워크를 형성, 이를 통해 구성원들이 실질적인 커리어 정보를 획득할 수 있는 구조를 마련함
    - 소모임 내 자격증 스터디를 신설하여 구성원들의 실무 역량 및 자격 취득 준비를 지원
  ]
]
#block(spacing: 1.5em)[
  #block(below: 10pt, fill: black5, inset: 6pt, radius: 3pt)[
    *학과 학생회* #h(1fr) #text(size: 0.9em, fill: black90)[2019.03 - 2020.12, 2022.09 - 2023.06 (2년 6개월, 군 휴학 기간 제외)]
  ]
  - 인하대학교 #accent[정보통신공학과 학생회 소속]으로 활동하며 학과 행사 기획 및 운영
  - 신입생 오리엔테이션 및 주요 학과 행사에서 운영 스태프로 참여하여 행사 진행을 지원하고, 학과 커뮤니케이션 채널을 관리하며 학생 의견을 회장단에 전달하는 역할을 수행
]

#v(8pt)
#align(right)[
  #text(size: 9pt, fill: black70)[
    (최종 수정: #datetime.today().display("[year].[month]"))
  ]
]
