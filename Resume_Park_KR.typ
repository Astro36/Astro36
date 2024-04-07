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
    컴퓨터는 마법으로 돌아가지 않는다. 원리에 집중하자.
  ]
]
#block[
  #text(size: 10pt, fill: black80)[
    만 23세, 군필 \
    astro.psj\@gmail.com \
    https://github.com/Astro36 \
  ]
]

#place(
  top + right,
  image("assets/profile.jpg", width: 3cm),
)

== 학력
#tile(
  [#link("https://www.inha.ac.kr/")[*인하대학교 학사*] (졸업예정)],
  "2019.03 ~ 재학 중",
  [
    #link("https://ice.inha.ac.kr/")[#accent[정보통신공학]] 전공, #link("https://gfiba.inha.ac.kr/")[#accent[글로벌금융학]] 부전공 \
    학점 4.38/4.5, #accent[석차 1/150]
  ],
)
#tile(
  [#link("https://www.inha.ac.kr/")[*백석고등학교*] 졸업],
  "2016.03 ~ 2019.02",
  [],
)

== 교육이력
#tile(
  [#link("https://www.swmaestro.org/")[*SW마에스트로 제11기 연수과정 수료*], 창의도전형 SW인재육성 정부지원 사업],
  "2020.05 ~ 2020.12",
  [
    자연어 빅데이터를 이용한 한글 교정 및 점진적 성능 향상이 가능한 #accent[불법 스팸·매크로 탐지 솔루션] 개발(Python, C++) \
    창업, 프로그래밍, AI 멘토링 교육 이수 \
    #link("https://www.msit.go.kr/")[과학기술정보통신부], #link("https://www.iitp.kr/")[정보통신기획평가원] 주관 / #link("https://www.fkii.org/")[한국정보산업연합회] 운영
  ],
)
#tile(
  [*제4회 국가슈퍼컴퓨팅 청소년캠프 수료*, 고등학생 슈퍼컴퓨팅 인재발굴 사업],
  "2018.07",
  [
    베어울프 타입 슈퍼컴퓨터 강의, MPI 병렬 프로그래밍 실습, AI, 드론 활용 교육 \
    #link("https://www.kisti.re.kr/")[한국과학기술정보연구원], #link("https://www.unist.ac.kr/")[UNIST] 주관
  ],
)

== 수상 및 사회경험
#tile(
  [#link("https://kbig.kr/portal/kbig/keybiz/creatorcamp/info.page")[*2023 데이터 크리에이터 캠프*], #accent[우수상]],
  "2023.09 ~ 2023.12",
  [
    빅데이터 멘토링 해커톤: 딥러닝 #accent[음식 이미지 분류] 챌린지 \
    #link("https://kbig.kr/")[K-ICT 빅데이터센터] 주최 / #link("https://www.msit.go.kr/")[과학기술정보통신부], #link("https://www.nia.or.kr/")[한국지능정보사회진흥원] 주관
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

== 동아리
#tile(
  [#link("https://inhabluechip.com/")[*블루칩 뮤추얼펀드*], 인하대학교 주식투자 동아리],
  "2023.03 ~ 활동 중",
  [
    #accent[리서치 팀장] 및 펀드 매니저#note[2024.01 \~ 현재], #label[#link("https://fund.inhabluechip.com/")[펀드 운용규모]: 3.8천만 원] \
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
    안드로이드 앱 및 API 서버 담당(풀스택) / 서버와 PG사 결제 API 연동 업무 수행
  ],
)
#tile(
  [#link("https://cafe.naver.com/websinha")[*WEBS*], #link("http://startup.inha.ac.kr/")[인하대학교 창업지원단] 소속 창업동아리],
  "2019.03 ~ 2019.12",
  [],
)

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
    text(fill: black90)[MySQL, PostgreSQL, MongoDB],
  )
]

== 프로젝트
#tile(
  [#link("https://fund.inhabluechip.com/")[*BCMF NAV*], 동아리 프로젝트 #pill[Tailwind CSS] #pill[GitHub Actions]],
  "2024.01",
  [
    교내 주식투자 동아리에서 운영하는 블루칩 뮤추얼펀드의 주당순자산가치(NAV)와 총운용자산(AUM)를 매일 계산해서 보여주는 서비스(반응형 디자인)
    #stack(
      dir: ltr,
      spacing: 1em,
      image("assets/bcmf_nav_0.png", height: 7.5cm),
      image("assets/bcmf_nav_1.png", height: 7.5cm),
    )
  ]
)
#tile(
  [#link("https://play.google.com/store/apps/details?id=me.astro36.mystock")[*Stock Earnings Calendar*], 토이 프로젝트 #pill[Flutter]],
  "2023.06 ~ 2023.07",
  [
    관심기업의 주가와 실적 발표일을 보여주는 달력, Google Play에 업로드
    #stack(
      dir: ltr,
      spacing: 1em,
      image("assets/mystock_0.png", width: 33%),
      image("assets/mystock_1.png", width: 33%),
      image("assets/mystock_2.png", width: 33%),
    )
  ]
)
#tile(
  [#link("https://github.com/Astro36/ICE3015-project")[*Self-Balancing Robot*], 교과목 프로젝트 #pill[C++]],
  "2023.05 ~ 2023.06",
  [
    PID 제어기를 이용한 2륜 자가균형 로봇, ATmega4809와 MPU6050 센서 사용, 외부 라이브러리 없이 데이터시트를 참고해 구현, _임베디드시스템설계: 최종 프로젝트_
    #stack(
      dir: ltr,
      spacing: 1em,
      pad(top: 1em)[#image("assets/ice3015.png", width: 33%)],
      image("assets/ice3015_circuit.png", width: 66%),
    )
  ]
)
#tile(
  [#link("https://github.com/Astro36/ICE3016-miniproject")[*3D Product Catalog*], 교과목 프로젝트 #pill[C++]],
  "2022.12",
  [
    3D 제품 반응형 카탈로그, OpenGL과 Blender(모델링) 이용, _컴퓨터그래픽스설계: 미니 프로젝트_
    #stack(
      dir: ltr,
      spacing: 1em,
      image("assets/ice3016_0.png", width: 50%),
      image("assets/ice3016_1.png", width: 50%),
    )
    #stack(
      dir: ltr,
      spacing: 1em,
      image("assets/ice3016_2.png", width: 50%),
      image("assets/ice3016_3.png", width: 50%),
    )
  ]
)
#tile(
  [#link("https://github.com/ICE-LIFE/ICE-LIFE-Backend")[*ICE Market*], 학생회 프로젝트 #pill[React] #pill[Spring] #pill[MySQL]],
  "2022.07 ~ 2022.08",
  [
    정보통신공학과 온라인 중고장터 서비스, 학생회 공약 실행 \
    #accent[팀 프로젝트] - 역할: Docker와 NGINX 세팅, Spring 웹 소켓을 이용한 1대1 채팅 API 구현
    #image("assets/icemarket.png", width: 100%)
  ]
)
#tile(
  [#link("https://github.com/Astro36/qp")[*Quick Pool*], 오픈소스 #pill[Rust]],
  "2021.11 ~ 2021.12",
  [
    고성능 비동기 Generic Pool, 자원할당 Queue에 Lock-free 자료구조 적용, \
    #label[다운로드: 2.1천 회]
    #stack(
      dir: ltr,
      spacing: 1em,
      image("assets/qp_0.png", width: 50%),
      image("assets/qp_1.png", width: 50%),
    )
  ]
)
#tile(
  [*Spree*, 창업 #pill[Django] #pill[TensorFlow] #pill[C++]],
  "2020.07 ~ 2020.12",
  [
    자연어 빅데이터를 이용한 한글 교정 및 점진적 성능 향상이 가능한 불법 스팸・매크로 탐지 솔루션, _IITP-2020-SW마에스트로과정_, \
    #accent[팀 프로젝트] - 역할: CNN 기반 스팸 메시지 분류 모델 설계, 학습된 모델을 C++ 라이브러리 형태로 포팅해 배포
  ]
)
#tile(
  [#link("https://github.com/Astro36/kotka")[*└ Kotka*], 오픈소스 #pill[Python]],
  "2020.07 ~ 2020.08",
  [
    #box(inset: (left: 1em))[
      데이터 Augmentation을 위한 한글 난독화 도구, _IITP-2020-SW마에스트로과정_
    ]
    #stack(
      dir: ltr,
      spacing: 1em,
      image("assets/spree_2.png", width: 50%),
      image("assets/spree_1.png", width: 50%),
    )
    #stack(
      dir: ltr,
      spacing: 1em,
      image("assets/spree_0.png", width: 50%),
      image("assets/spree_3.png", width: 50%),
    )
  ]
)
#tile(
  [*Shim*, 창업 #pill[Android] #pill[Express.js] #pill[MySQL]],
  "2019.09 ~ 2020.02",
  [
    심리상담사 매칭 플랫폼 및 힐링 음악 앱, Prography 4\~5기 \
    #accent[팀 프로젝트] - 역할: 안드로이드 앱 및 API 서버 개발, 서버와 PG사 결제 API 연동 업무 수행
    #image("assets/shim.png", height: 11cm)
  ]
)
#tile(
  [*Care U*, 해커톤 #pill[Flutter] #pill[TensorFlow]],
  "2020.01",
  [
    컴퓨터 비전 기술을 활용한 공유킥보드 사고 예방 솔루션, _2020 슈퍼 챌린지 해커톤_ \
    #accent[팀 프로젝트] - 역할: TensorFlow Lite 모델을 실행하는 Flutter 앱 개발
    #stack(
      dir: ltr,
      spacing: 1em,
      image("assets/careu_0.png", height: 5.5cm),
      image("assets/careu_2.png", height: 5.5cm),
    )
    #stack(
      dir: ltr,
      spacing: 1em,
      image("assets/careu_1.png", height: 5.5cm),
      image("assets/careu_3.png", height: 5.5cm),
    )
  ]
)
#tile(
  [*Hyeyum*, 교과목 프로젝트 #pill[Express.js] #pill[Python]],
  "2019.11 ~ 2019.12",
  [
    Google 음성 인식 API를 이용한 언어 습관 교정 로봇, _창의적 정보통신공학설계: 최종 프로젝트_
    #image("assets/hyeyum.png", height: 8cm)
  ]
)
#tile(
  [#link("https://github.com/int-i/brainha-demo-server")[*BraInha*], 해커톤 #pill[Android] #pill[Express.js] #pill[MySQL]],
  "2019.11",
  [
    교내 전공 공부 Q&A 플랫폼 앱, _2019 인하 SW 해커톤_ \
    #accent[팀 프로젝트] - 역할: Docker와 NGINX 세팅, API 서버 개발
    #stack(
      dir: ltr,
      spacing: 1em,
      image("assets/brainha_0.png", width: 33%),
      image("assets/brainha_1.png", width: 33%),
      image("assets/brainha_2.png", width: 33%),
    )
  ]
)
#tile(
  [#link("https://github.com/watchdocs")[*WATCH_DOCS*], 해커톤 #pill[Vue.js] #pill[Express.js] #pill[MongoDB]],
  "2019.08",
  [
    WaykiChain Smart Contract를 이용한 비즈니스 문서 관리 서비스, _Huobi Korea X WaykiChain Hackathon_ \
    #accent[팀 프로젝트] - 역할: Vue.js를 이용한 서비스 웹 페이지 개발
    #image("assets/watchdocs.png", width: 100%)
  ]
)
#tile(
  [#link("https://github.com/Astro36/kodict")[*Kodict*], 오픈소스 #pill[Rust]],
  "2018.11 ~ 2019.02",
  [효율적 탐색을 위한 한국어 국어사전 자료구조 구현 및 국어사전 크롤러 제공, \ #label[다운로드: 2.6천 회]]
)
#pagebreak()
#tile(
  [#link("https://github.com/Astro36/kokoa")[*KokoaNLP*], 공모전 #pill[Node.js]],
  "2018.04 ~ 2018.07",
  [
    비지도 학습 기반의 한국어 자연어 처리 도구, _2018 한국정보올림피아드 공모부문_
    #image("assets/kokoanlp.png", width: 100%)
  ]
)
#tile(
  [#link("https://github.com/Astro36/touch-music")[*Touch Music*], 공모전 #pill[Electron] #pill[Python]],
  "2018.03",
  [
    마인드맵 형식의 음악 검색 서비스, _2018 KAIST Creative Team Coding Challenge_, #label[우수상] \
    #accent[팀 프로젝트] - 역할: Melon 노래 가사 크롤링, Word2Vec을 이용한 노래 스타일 분석 알고리즘 개발, Electron 앱 개발
    #image("assets/touchmusic.png", width: 100%)
  ]
)

#align(right)[
  #text(size: 9pt, fill: black70)[
    _(최종 수정: #datetime.today().display("[year].[month]"), #link("https://typst.app/")[Typst]로 작성됨)_
  ] 
]
