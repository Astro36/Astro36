#let black100 = black
#let black90 = white.darken(90%)
#let black80 = white.darken(80%)
#let black70 = white.darken(70%)
#let accent_darken = rgb("#662549")
#let accent_lighten = rgb("#AE445A")
#let accent_underline = rgb("#FFF8E3")

#set document(title: "박승재", author: "박승재")
#set page(numbering: "1", number-align: center)
#set text(font: "NanumSquare", fallback: false, size: 11pt, fill: black100)
#set par(leading: 0.8em, justify: true)

#show heading.where(level: 1): it => text(size: 24pt, it.body)
#show heading.where(level: 2): it => block(
  above: 1.8em,
  below: 1.2em,
  text(size: 16pt, fill: accent_darken, smallcaps(it.body)),
)

#let label(body) = text(weight: "bold", size: 0.8em, fill: accent_lighten)[[#body]]
#let note(body) = text(size: 0.8em)[(#body)]
#let accent(body) = underline(stroke: 6pt + accent_underline, offset: -2pt, evade: false, background: true)[#body]
#let pill(body) = box(
  baseline: -1pt,
  stroke: 0.5pt + black,
  radius: 1pt,
  inset: (x: 2pt),
  outset: (y: 2pt),
)[#text(size: 8pt, body)]
#let tile(title, date, body) = block(spacing: 1em)[
  #grid(
    columns: (105pt, 1fr),
    text(size: 0.9em, fill: black80)[#date],
    [#title \ #text(fill: black90)[#body]],
  )
]

= 박승재
#block(above: 1.5em)[
  #text(size: 12pt, fill: black90)[
    "컴퓨터는 마법으로 돌아가지 않는다. 원리에 집중하자."
  ]
]
#block[
  #text(size: 10pt, fill: black80)[
    만 23세, 군필, 대한민국 거주 \
    astro.psj\@gmail.com \
    https://github.com/Astro36 \
  ]
]

#place(
  top + right,
  image("profile.jpg", width: 3cm),
)

== 학력
#tile(
  [#link("https://www.inha.ac.kr/")[*인하대학교 학사*] (졸업예정)],
  "2019.03 ~ 재학 중",
  [
    #link("https://ice.inha.ac.kr/")[#accent[정보통신공학]] 전공, #link("https://gfiba.inha.ac.kr/")[#accent[글로벌금융학]] 부전공 \
    학점 4.38/4.5, 석차 1/150
  ],
)

== 수상 및 사회경험
#tile(
  [#link("https://kbig.kr/portal/kbig/keybiz/creatorcamp/info.page")[*2023 데이터 크리에이터 캠프*], #accent[우수상]],
  "2023.09 ~ 2023.12",
  [
    빅데이터 멘토링 해커톤: #accent[음식 이미지 분류] 챌린지 \
    #link("https://kbig.kr/")[K-ICT 빅데이터센터] 주최 / #link("https://www.msit.go.kr/")[과학기술정보통신부], #link("https://www.nia.or.kr/")[한국지능정보사회진흥원] 주관
  ],
)
#tile(
  [#link("https://www.swmaestro.org/")[*SW마에스트로 11기 연수생*], 창의도전형 SW인재 육성 정부지원 사업],
  "2020.05 ~ 2020.12",
  [
    자연어 빅데이터를 이용한 한글 교정 및 점진적 성능 향상이 가능한 #accent[불법 스팸·매크로 탐지 솔루션] 개발(Python, C++) \
    창업, 프로그래밍, AI 멘토링 교육 이수 \
    #link("https://www.msit.go.kr/")[과학기술정보통신부], #link("https://www.iitp.kr/")[정보통신기획평가원] 주관 / #link("https://www.fkii.org/")[한국정보산업연합회] 운영
  ],
)
#tile(
  [*풀스택 프리랜서 개발자*],
  "2019.09 ~ 2020.01",
  [
    #link("https://insightsolution.github.io/")[INSIGHT]: 인공지능 멘탈 헬스케어 솔루션 스타트업, #label[1천만 원 프로젝트] \
    #accent[안드로이드 앱] 및 인공지능 모델 #accent[API 서버] 개발 
  ],
)
#tile(
  [*KAIST Creative Team Coding Challenge*, #accent[우수상]],
  "2018.03",
  [
    중·고등학생 소프트웨어 프로젝트 공모전 \
    #link("https://www.kaist.ac.kr/")[KAIST], #link("https://kr.ncsoft.com/")[NCSOFT] 주최 / #link("https://gifted.kaist.ac.kr/")[KAIST 과학영재교육연구원] 주관],
)

== 자격증
#block(spacing: 1em)[
  #grid(
    columns: (105pt, 1fr),
    [#link("https://www.pqi.or.kr/inf/qul/infQulBasDetail.do?qulId=433")[리눅스마스터 2급]],
    text(fill: black90)[#link("https://www.ihd.or.kr/")[한국정보통신진흥협회], 2023.12],
  )
]
#block(spacing: 1em)[
  #grid(
    columns: (105pt, 1fr),
    [#link("https://www.pqi.or.kr/inf/qul/infQulBasDetail.do?qulId=430")[디지털정보활용능력]],
    text(fill: black90)[
      스프레드시트 고급, #link("https://www.ihd.or.kr/")[한국정보통신진흥협회], 2012.12 \
      워드프로세서 중급, #link("https://www.ihd.or.kr/")[한국정보통신진흥협회], 2012.04 \
      프리젠테이션 고급, #link("https://www.ihd.or.kr/")[한국정보통신진흥협회], 2011.09 \
    ],
  )
]

== 보유기술
#block(spacing: 1em)[
  #grid(
    columns: (105pt, 1fr),
    [프로그래밍 언어],
    text(fill: black90)[C++, Java, Kotlin, JavaScript, TypeScript, Python, Rust, Dart],
  )
]
#block(spacing: 1em)[
  #grid(
    columns: (105pt, 1fr),
    [플랫폼 & 프레임워크],
    text(fill: black90)[
      Arduino, Spring, Android, Node.js, Flutter \
      AI: TensorFlow, PyTorch \
      DevOps: Docker
    ],
  )
]
#block(spacing: 1em)[
  #grid(
    columns: (105pt, 1fr),
    [데이터베이스],
    text(fill: black90)[MySQL, PostgreSQL],
  )
]

== 동아리
#tile(
  [#link("https://inhabluechip.com/")[*블루칩 뮤추얼펀드*], 인하대학교 주식투자 동아리],
  "2023.03 ~ 활동 중",
  [
    #accent[리서치 팀장] 및 펀드 매니저#note[2024.01 \~ 현재], #label[펀드 운용규모: 3.7천만 원] \
    #link("https://www.youtube.com/@bluechipmutualfund7790")[기업분석 세미나#note[YouTube]] 발표, #link("https://inhabluechip.com/forum/view/259643")[기업분석 보고서] 작성 및 #link("https://www.incheonilbo.com/news/articleList.html?sc_sub_section_code=S2N28")[인천일보] 기고
  ],
)
#tile(
  [#link("https://int-i.github.io/")[*인트아이*], #link("https://ice.inha.ac.kr/ice/2247/subview.do")[인하대학교 정보통신공학과] 프로그래밍 소모임],
  "2019.03 ~ 활동 중",
  [#accent[소모임 회장]#note[2023.07 \~ 2024.03], 프로그래밍 스터디 모임 및 블로그 운영, \ #label[블로그 조회수: 총 20만 회, 월 9천 회]],
)
#tile(
  [#link("https://www.inhabas.com/")[*IBAS*], 인하대학교 빅데이터 학술동아리],
  "2022.09 ~ 2023.06",
  [빅데이터 및 인공지능 논문 리뷰 스터디],
)
#tile(
  [*#link("https://ice.inha.ac.kr/ice/2247/subview.do")[인하대학교 정보통신공학과] #link("https://ice.inha.ac.kr/ice/2246/subview.do")[학생회]*],
  "2019.03 ~ 2023.06",
  []
)
#tile(
  [#link("https://prography.org/")[*Prography 4기 \~ 5기*], 연합 IT프로젝트 동아리],
  "2019.03 ~ 2020.02",
  [
    #accent[프론트엔드・백엔드 개발자] 트랙, 심리상담사 매칭 플랫폼 및 힐링 음악 앱 개발 \
    안드로이드 앱 및 API서버 담당(풀스택) / 서버와 PG사 결제API 연동 업무 수행
  ],
)
#tile(
  [#link("https://cafe.naver.com/websinha")[*WEBS*], #link("http://startup.inha.ac.kr/")[인하대학교 창업지원단] 소속 창업동아리],
  "2019.03 ~ 2019.12",
  [],
)

== 프로젝트
#tile(
  [#link("https://github.com/Astro36/ICE3015-project")[*Self-Balancing Robot*], 교내 프로젝트 #pill[C++]],
  "2023.05 ~ 2023.06",
  [2-Wheel Self-Balancing Robot with PID Controller, using ATmega4809 & MPU6050, no library dependencies, _임베디드시스템설계: 최종 프로젝트_]
)
#tile(
  [#link("https://github.com/Astro36/ICE3016-miniproject")[*3D Product Catalog*], 교내 프로젝트 #pill[C++]],
  "2022.12",
  [Interactive 3D Product Catalog with OpenGL & Blender, _컴퓨터그래픽스설계: 미니 프로젝트_]
)
#tile(
  [#link("https://github.com/Astro36/qp")[*Quick Pool*], 오픈소스 #pill[Rust]],
  "2021.11 ~ 2021.12",
  [High Performance Async Generic Pool for Rust, implemented by Lock-free Waiter Queue, #label[다운로드: 2.1천 회]]
)
#tile(
  [*Spree*, 창업 #pill[Python] #pill[C++]],
  "2020.07 ~ 2020.12",
  [Robust Illegal Spam Detection Solution via CNN, _IITP-2020-SW마에스트로과정_]
)
#tile(
  [#link("https://github.com/Astro36/kotka")[*└ Kotka*], 오픈소스 #pill[Python]],
  "2020.07 ~ 2020.08",
  [#h(1em) Korean Obfuscation ToolKit for Data Augmentation, _IITP-2020-SW마에스트로과정_]
)
#tile(
  [*Shim*, 창업 #pill[Kotlin] #pill[Javascript]],
  "2019.09 ~ 2020.02",
  [Psychological Counselor Matching Platform, _Prography 5기_]
)
#tile(
  [*Care U*, 해커톤 #pill[Dart] #pill[Javascript]],
  "2020.01",
  [Shared Scooter Accident Prevention Solution App using Computer Vision, _2020 Super Challenge Hackathon_]
)
#tile(
  [*Hyeyum*, 교내 프로젝트 #pill[Python] #pill[Javascript]],
  "2019.11 ~ 2019.12",
  [Language Habit Correction Robot with Google Speech Recognition API, _창의적 정보통신공학설계: 최종 프로젝트_]
)
#tile(
  [#link("https://github.com/int-i/brainha-demo-server")[*BraInha*], 해커톤 #pill[Java] #pill[Javascript]],
  "2019.11",
  [On-campus Academic Q&A Platform App, _2019 Inha SW Hackathon_]
)
#tile(
  [#link("https://github.com/watchdocs")[*WATCH_DOCS*], 해커톤 #pill[Javascript]],
  "2019.08",
  [Business Document Management Service by WaykiChain Smart Contract, _Huobi Korea X WaykiChain Hackathon_]
)
#tile(
  [#link("https://github.com/Astro36/kodict")[*Kodict*], 오픈소스 #pill[Rust]],
  "2018.11 ~ 2019.02",
  [Provides Korean Dictionary Implements and Crawler for Rust, \ #label[다운로드: 2.6천 회]]
)
#tile(
  [#link("https://github.com/Astro36/kokoa")[*KokoaNLP*], 공모전 #pill[Javascript]],
  "2018.04 ~ 2018.07",
  [Unsupervised Learning Korean Kernel Object Analyzer, _2018 한국정보올림피아드 공모부문_]
)
#tile(
  [#link("https://github.com/Astro36/touch-music")[*Touch Music*], 공모전 #pill[Javascript] #pill[Python]],
  "2018.03",
  [Easy Music Finder via Word2vec on Song Lyrics, _2018 KAIST Creative Team Coding Challenge_]
)

#align(right)[
  #set text(size: 9pt)
  _(최종수정일: #datetime.today().display("[year].[month]"), #link("https://typst.app/")[Typst]로 작성됨)_
]
