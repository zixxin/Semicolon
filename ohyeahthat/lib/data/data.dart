import 'package:flutter/material.dart';
import 'package:ohyeahthat/data/model.dart';

final concerns = [
  {'label': '일반공지', 'color': Colors.teal},
  {'label': '수강신청', 'color': Colors.teal},
  {'label': '교내공지', 'color': Colors.teal},
  {'label': '장학금', 'color': Colors.teal},
  {'label': '공채', 'color': Colors.teal},
  {'label': '시간표', 'color': Colors.teal},
  {'label': '슬기짜기', 'color': Colors.green},
  {'label': '동아리', 'color': Colors.redAccent},
  {'label': '전전', 'color': Colors.indigo},
  {'label': 'SLE', 'color': Colors.blue},
  {'label': '코딩스페이스', 'color': Colors.black38},
  {'label': '인턴', 'color': Colors.teal},
  {'label': '근로', 'color': Colors.teal},
  {'label': 'Walab', 'color': Colors.teal},
  {'label': '랩실', 'color': Colors.teal},
  {'label': '소중대마일리지', 'color': Colors.teal},
  {'label': '계절학기', 'color': Colors.teal},
  {'label': '기숙사신청', 'color': Colors.teal},
];

class Data {
  static List<Content> contents = <Content>[
    Content(
      title: '2022-1 EAP-IT 수강신청 관련 안내',
      keyword: '#수강신청',
      board: '전산전자',
      content:
          '안녕하세요.\n\n2022-1학기 언어교육원의 EAP 수업을 수강하고자하는 SW전공 학생들은 같은 과목이지만 IT에 조금 더 특화 된 EAP-IT 수업을 수강해주시기 바랍니다.\n\nEAP-IT는 사전수강신청을 통해 수강 가능하오니, 수강신청을 원하는 학생들은 반드시 아래의 구글폼을 작성해주시기 바랍니다.\n\n1. 대상: SW전공학생(컴퓨터공학, AI·컴퓨터공학심화, IT, ICT융합)\n2. 신청: 구글폼 작성 \n(https://forms.gle/dgxwqjNkiEmdqLfH8)\n3. 기간: 1/24(월)~2/8(화)까지\n(구글폼 서버시간 기준으로 1/24(월)~2/8(화)에 제출된 건만 유효합니다)\n\n4. 참고\n- 구글폼으로 신청한 학생들 대상으로 일괄 수강신청되며, 수강신청사이트에서 신청하지 않으셔도 됩니다. 또한, 학점을 비워두어야 수강신청 가능합니다. 수강을 원하는 학생은 미리 학점 비워두시기 바랍니다.\n\n5. 문의\n- 수강신청관련: 전산전자 학부사무실(csee@handong.edu)\n- 기타 문의: DLE사무실 or 최희열교수님(hchoi@handong.edu)',
      imp: true,
    ),
    Content(
      title: '2022-1 시간표 변경 안내',
      keyword: '#시간표',
      board: '전산전자',
      content:
          '안녕하세요?\n전산전자공학부 2022년 1학기 시간표 변경 안내드립니다.\n\n아래와 같이 변경되었으므로, 수강신청에 참고하시기 바랍니다.\n\n[1] 개설취소\n\n[2] 추가개설\n\n[3] 변경',
      imp: false,
    ),
    Content(
      title: '[언어교육원] 2022-1학기 영어1과정 수강신청 안내',
      keyword: '#수강신청',
      board: '일반공지',
      content:
          '1. EAP Information Technology (EAP IT) 01,02분반\nERC 혹은 ERD/ EGC 과정 이수 완료한 학생 대상이며, 전산전자공학부 학생 우선 수강 과목입니다.\n\n2. English Pre Course 1\nEnglish Pre Course 1은 새터민 학생 대상 필수과목 입니다. 수강 대상 학생은 언어교육원(sarah0569@handong.edu / 260-1338)으로 수강신청 바랍니다. \n\n3. Essentials of English Communication(EEC)\n9학기 이상 재학생 대상으로 졸업영어성적 인정 과목으로 100% On line수업으로 진행됩니다. (새터민의 경우 학기에 관계없이 수강 가능)\n\n4. 재이수\n-2019학년부터 EN, EI,ERD, EGC 가 개설되지 않음에 따라 EN---> EF, EI--->EC, ERD/EGC--->ERC로 재이수할 수 있습니다. (ERC를 별도 과목으로 이수 원할 경우 수강사이트에서 ERC 분반에 수강신청 후 교무처로 별도과목 처리요청 필요)\n-2021-2학기 부터 EAP 전공별 교과목이 개설되지 않습니다. (EAP IT제외)\n-EAP Life Science, EAP Management and Economics, EAP Counselling Psychology and Social Welfare, EAP Communication Arts and Science, EAP Contents Convergence Design, EAP International Studies and Law, EAP Engineering 과목이 개설되지 않음에 따라, EAP Humanities, EAP Science로 재이수 할수 있습니다. \n(EAP Engineering을 재이수 원할 경우, 수강사이트에서 EAP Humanities, EAP Science분반에 수강신청 후, 언어교육원으로 개별재이수 처리요청 필요)\n\n문의: ☏054)260-1338 / sarah0569@han dong.edu  ',
      imp: true,
    ),
    Content(
      title: '2022-1 수강신청 유의사항 안내',
      keyword: '#수강신청',
      board: '전산전자',
      content:
          '안녕하세요? 전산전자공학부입니다.\n\n2022-1 학기 수강신청 관련 유의사항 안내드립니다.\n\n1. 수강정원이 "0명"으로 되어있는 과목 : 각 학년별 수강신청일에 정원 오픈\n\n2. 수강정원이 "1명"으로 되어있는 과목 : 모두 대기신청으로 수강신청 받는 과목.\n\n3. 학년별 수강인원 차등 과목: 각 학년별 수강신청일에 정원 오픈.\n\n4. 온라인 수강신청 불가능한 과목\n- 공학프로젝트기획(2학점), 캡스톤디자인(4학점), 포스트캡스톤연구(3학점)\n1) 추후 안내 예정(수강신청사이트 신청 안됨)\n2) 학점을 비워두어야 수강신청 가능합니다.수강을 원하는 학생은 미리 학점 비워두시기 바랍니다.\n\n감사합니다:D\n\n수강신청 관련 문의: 260-1414, 심화전공관련 문의: 260-1378',
      imp: false,
    ),
    Content(
      title: '2022학년도 1학기 교내장학금 수혜대상자 발표일 안내',
      keyword: '#장학금',
      board: '장학공지',
      content:
          '2022학년도 1학기 교내장학금 수혜대상자 발표일을 공지하여 드리오니 재학생 여러분께서는 참고하여 주시기 바라며, 발표일 이후 안내에 따라 본인의 장학금 수혜여부를 확인하시기 바랍니다.\n\n1. 발표 및 조회 가능일 :  2022. 1.28(금) 16시 이후부터 조회 가능\n* 부득이 내부사정으로 연기될 경우 히즈넷 공지를 통해 알림\n\n2. 조회방법 : 히즈넷 로그인 -> 학사정보 -> 장학 -> 장학내역조회',
      imp: false,
    ),
    Content(
      title: '[1월 24일 공채]',
      keyword: '#공채',
      board: '취업공지',
      content: '(이미지가 첨부되어있는 공지입니다. 해당 이미지는 Hisnet 공지사항을 참고해주세요.)',
      imp: false,
    ),
    Content(
      title: '2022-1 수강신청 유의사항 안내',
      keyword: '#수강신청',
      board: '전산전자',
      content:
          '안녕하세요? 전산전자공학부입니다.\n\n2022-1 학기 수강신청 관련 유의사항 안내드립니다.\n\n1. 수강정원이 "0명"으로 되어있는 과목 : 각 학년별 수강신청일에 정원 오픈\n\n2. 수강정원이 "1명"으로 되어있는 과목 : 모두 대기신청으로 수강신청 받는 과목.\n\n3. 학년별 수강인원 차등 과목: 각 학년별 수강신청일에 정원 오픈.\n\n4. 온라인 수강신청 불가능한 과목\n- 공학프로젝트기획(2학점), 캡스톤디자인(4학점), 포스트캡스톤연구(3학점)\n1) 추후 안내 예정(수강신청사이트 신청 안됨)\n2) 학점을 비워두어야 수강신청 가능합니다.수강을 원하는 학생은 미리 학점 비워두시기 바랍니다.\n\n감사합니다:D\n\n수강신청 관련 문의: 260-1414, 심화전공관련 문의: 260-1378',
      imp: false,
    ),
    Content(
      title: '2022-1 시간표 변경 안내',
      keyword: '#시간표',
      board: '전산전자',
      content:
          '안녕하세요?\n전산전자공학부 2022년 1학기 시간표 변경 안내드립니다.\n\n아래와 같이 변경되었으므로, 수강신청에 참고하시기 바랍니다.\n\n[1] 개설취소\n\n[2] 추가개설\n\n[3] 변경',
      imp: false,
    ),
    Content(
      title: '[언어교육원] 2022-1학기 영어1과정 수강신청 안내',
      keyword: '#수강신청',
      board: '일반공지',
      content:
          '1. EAP Information Technology (EAP IT) 01,02분반\nERC 혹은 ERD/ EGC 과정 이수 완료한 학생 대상이며, 전산전자공학부 학생 우선 수강 과목입니다.\n\n2. English Pre Course 1\nEnglish Pre Course 1은 새터민 학생 대상 필수과목 입니다. 수강 대상 학생은 언어교육원(sarah0569@handong.edu / 260-1338)으로 수강신청 바랍니다. \n\n3. Essentials of English Communication(EEC)\n9학기 이상 재학생 대상으로 졸업영어성적 인정 과목으로 100% On line수업으로 진행됩니다. (새터민의 경우 학기에 관계없이 수강 가능)\n\n4. 재이수\n-2019학년부터 EN, EI,ERD, EGC 가 개설되지 않음에 따라 EN---> EF, EI--->EC, ERD/EGC--->ERC로 재이수할 수 있습니다. (ERC를 별도 과목으로 이수 원할 경우 수강사이트에서 ERC 분반에 수강신청 후 교무처로 별도과목 처리요청 필요)\n-2021-2학기 부터 EAP 전공별 교과목이 개설되지 않습니다. (EAP IT제외)\n-EAP Life Science, EAP Management and Economics, EAP Counselling Psychology and Social Welfare, EAP Communication Arts and Science, EAP Contents Convergence Design, EAP International Studies and Law, EAP Engineering 과목이 개설되지 않음에 따라, EAP Humanities, EAP Science로 재이수 할수 있습니다. \n(EAP Engineering을 재이수 원할 경우, 수강사이트에서 EAP Humanities, EAP Science분반에 수강신청 후, 언어교육원으로 개별재이수 처리요청 필요)\n\n문의: ☏054)260-1338 / sarah0569@han dong.edu  ',
      imp: false,
    ),
    Content(
      title: '2022학년도 1학기 교내장학금 수혜대상자 발표일 안내',
      keyword: '#장학금',
      board: '장학공지',
      content:
          '2022학년도 1학기 교내장학금 수혜대상자 발표일을 공지하여 드리오니 재학생 여러분께서는 참고하여 주시기 바라며, 발표일 이후 안내에 따라 본인의 장학금 수혜여부를 확인하시기 바랍니다.\n\n1. 발표 및 조회 가능일 :  2022. 1.28(금) 16시 이후부터 조회 가능\n* 부득이 내부사정으로 연기될 경우 히즈넷 공지를 통해 알림\n\n2. 조회방법 : 히즈넷 로그인 -> 학사정보 -> 장학 -> 장학내역조회',
      imp: false,
    ),
    Content(
      title: '[1월 24일 공채]',
      keyword: '#공채',
      board: '취업공지',
      content: '(이미지가 첨부되어있는 공지입니다. 해당 이미지는 Hisnet 공지사항을 참고해주세요.)',
      imp: false,
    ),
    Content(
      title: '2022-1 시간표 변경 안내',
      keyword: '#시간표',
      board: '전산전자',
      content:
          '안녕하세요?\n전산전자공학부 2022년 1학기 시간표 변경 안내드립니다.\n\n아래와 같이 변경되었으므로, 수강신청에 참고하시기 바랍니다.\n\n[1] 개설취소\n\n[2] 추가개설\n\n[3] 변경',
      imp: false,
    ),
    Content(
      title: '[그레이스스쿨] 전인적 세계시민교육(HGCP) 수강신청 ...',
      keyword: '#수강신청',
      board: '일반공지',
      content:
          '안녕하세요. 김영길 그레이스 스쿨입니다.한동인이라면 모두~ 수강 가능한 전인적 세계시민교육 특화 프로그램(HGCP) 22-1학기 개설 과목을 아래와 같이 안내드립니다.   * 전인적 세계시민 특화프로그램(HGCP) 수료증- 한동대학교와 UNAI Korea가 공동발급하는 수료증입니다.- H.U.M.A.N. 필수 과목 3과목을 포함한 총 5개 교과목(15학점)을 3.0학점 이상으로 이수할 경우 신청 가능합니다.- 수료증을 받은 학생에 한하여 국내외 인턴십 기회가 제공됩니다. * 전인적 세계시민 특화프로그램(HGCP) 장학금수강 학생 대상으로 경원문화재단의 "전인적 세계시민 장학금"을 지급할 예정이니, 자세한 사항은 추후 관련 공지 참고 바랍니다. * 수업 상세 안내1. 전공 인정 수업1) 국제 지역학 및 국제 관계학- 과목명: [CCE22015] Participation and Empowerment in Practice- 수업시간: 금 23교시 연강- 교수명: 방청록/심희정 교수님 팀티칭2) 공간환경시스템공학-도시환경- 과목명:  [CCE22009] Our Future Survival with Sustainable Development- 수업시간: 월목5교시 - 교수명: 서덕수 교수님2. 교양 인정 수업(외국인,새터민 학생 한정)1) 교양-인문학 : [CCE22008] Ethical Foundations: Honesty, Integrity and Responsibility2) 교양-세계관1 : [CCE22007] Understanding the Global Times3) 교양-리더십 및 문제 해결 : [CCE22009] Our Future Survival with Sustainable Development   [CCE22015] Participation and Empowerment in Practice[CCE22016] Capable and Responsible Leaders and Entrepreneurs   [CCE22017] Practicum 1※ 문의: 권지은 054-260-3075 / jekwon@unaikorea.org※ 김영길 그레이스 스쿨 인스타그램 https://instagram.com/official.graceschoolGreetings from Kim Young-Gil GRACE School.Kim Young-Gil GRACE School is the world’s 1st institute to provide Holistic Global Citizenship Education for sustainable peace and prosperity in the 21st century.There are 6 classes will be offered in Fall semester, 2021. You can check the information in the course book p265-268.You can search our classes by selecting [Course Info]-[Search Courses]-**[Schools - Creative Convergence Education (First One)] in Hisnet.* Holistic Global Citizenship Education CertificationYou should take at least 5 classes(15credits) including 3 required classes to apply for the certificate of Holistic Global Citizenship Education Program (HGCP). Please refer the chart for the list of subjects. * Kyungwon Culture Foundation ScholarshipFor students who are enrolled in at least one of five classes offered at GRACE School this semester, GRACE School will offer Kyungwon Culture Foundation Scholarship Program. For more information, please check further notice.* Some of our classes are recognized as major or required categories of general education course.1) School of Spatial Environment System Engineering *only Urban Environment Engineering. - [CCE22011] Networking and Partnerships in a Globalized World2) School of International Studies *only International Area studies, International Relations - [CCE22013] Promoting Sustainable Development and Prosperity for All2. Classes are recognized as required general education course.(for international & North Korean students only)1) Humanities category:[CCE22008] Ethical Foundations: Honesty, Integrity and Responsibility2) Worldview1 category:[CCE22007] Understanding the Global Times3) Leadership & Problem Solving category:[CCE22009] Our Future Survival with Sustainable Development[CCE22015] Participation and Empowerment in Practice[CCE22016] Capable and Responsible Leaders and Entrepreneurs[CCE22017] Practicum 1※ Inquires: jekwon@unaikorea.org',
      imp: false,
    ),
    Content(
      title: '[국제처] 2022-2023 브루나이 정부초청 장학생 선발 ...',
      keyword: '#장학',
      board: '일반공지',
      content:
          '안녕하세요, 국제처입니다.2022-2023 브루나이 정부초청 장학생 선발을 아래와 같이 안내합니다. 1. 선발 과정 : 디플로마, 학사 및 석사 학위 과정 2. 장 학 금 : 학비, 왕복항공료, 생활비, 식비, 서적구입비 등 3. 지원방법 및 기한   1) 지원 방법 : 지원자가 제출 서류를 우리원 메일( niied1382@korea.kr )로 송부   2) 지원 기한 : 2022. 2. 10. (목) 4. 지원자격 및 제출서류 : 첨부자료 참조  자세한 내용은 첨부자료 R11; ‘2022-2023 브루나이 정부초청 장학생 선발요강’을 참조해 주십시오![문의] 브루나이 외교부( queriesBDGS2022@mfa.gov.bn )국립국제교육원 국제장학센터( 02-3668-1389 / niied1382@korea.kr )',
      imp: false,
    ),
    Content(
      title: '[경력개발팀]전산전자 취뽀 선배와 겨울방학 방구석 ...',
      keyword: '#전전',
      board: '일반공지',
      content:
          '* 신청방법 : hisact.handong.edu - 로그인 후 프로그램 신청* 신청기간 : 각 특강 개설 주 금요일 13:00까지* 신청기간 종료 후는 오픈채팅방에 신청바람',
      imp: false,
    ),
    Content(
      title: '[상사] 2022년 1학기 상담이론과 실제 01분반 수강신...',
      keyword: '#수강신청',
      board: '일반공지',
      content:
          '안녕하십니까 상담심리사회복지학부 입니다. 상담이론과 실제 01분반 수강신청시 유의할점 안내드립니다. 상담이론과 실제(CSW20001-01) 1분반 수강신청 안내 2022학년도 봄학기 상담이론과 실제 1분반(월, 목 5교시) 수업은 상담심리전공 학부생 우선으로 수강신청을 받을 예정입니다. 수강신청시 참고바랍니다.  문의: 21600458@handong.edu',
      imp: false,
    ),
    Content(
      title: '[창의융합교육원] "권리와 자유의 역사, 통일" 수업 ...',
      keyword: '#수강신청',
      board: '일반공지',
      content:
          '안녕하세요 창의융합교육원입니다.  22-1학기 "권리와 자유의 역사, 통일" 교과목 수업 시간이 아래와 같이 변경되었으니해당 수업 수강을 계획중인 학생은 참고하시기 바랍니다.  [교과목 정보]- 교과목코드: CCE10009- 교과목명: 권리와 자유의 역사, 통일- 담당교수: 송인호- 강의실: 올네이션스홀 313호  [변경사항: 수업시간](변경 전) 화,금 3교시(변경 후) 화,금 5교시감사합니다.',
      imp: false,
    ),
    Content(
      title: '[보건실] 1월 17일(월)~1월 28일(금) 운영시간 변경 ...',
      keyword: '#일반공지',
      board: '일반공지',
      content:
          '안녕하세요! 보건실 입니다. 1월 18일(화) ~ 1월 21일(금) , 1월 25일(화) ~ 1월 28(금) 2주간 근무자 휴가로 보건실 운영시간을 변경하게 됩니다.  * 1월 18일(화) ~ 1월 21일(금) : 9AM~3PM (점심시간 12PM-1PM)1월 25일(화) ~ 1월 28일(금) : 9AM~3PM (점심시간 12PM-1PM)1월 17일(월) , 1월 24(월)은 정상진료 합니다.  방문에 착오 없으시길 바랍니다.   Greetings!  Due to the vacation of staff, from January 17th(Mon) to January 28th(Fri), Health Care Room operating hours will be changed.   * January 18th(Tue) ~ January 21th(Fri) : 9AM~3PM (lunch break 12PM-1PM)January 25th(Tue) ~ January 28th(Fri) : 9AM~3PM (lunch break 12PM-1PM )January 17th(Mon), January 24th(Mon) same as usual (9AM-8PM). Please check the schedule.      2022. 1. 17   보 건 실  ',
      imp: false,
    ),
    Content(
      title: '[한동글쓰기센터] 겨울방학 글쓰기 온라인 특강 안내',
      keyword: '#일반공지',
      board: '일반공지',
      content:
          '대학혁신지원사업의 일환으로 한동글쓰기센터에서 아래와 같이 글쓰기 온라인 특강을 실시합니다. 특강 주제인 서평, 과제 보고서(Term paper)는 학업을 해 가는 가운데 매 학기 써야 하는 글이고, 자기소개서는 적어도 2학년 때부터 준비를 해야 잘 쓸 수 있는 글이어서 미리 이 특강을 들어 두면 매우 좋습니다. 특강은 해당 특강 영상을 시청한 후에 질의-응답을 하는 방식으로 진행됩니다.  1. 특강 주제 및 일시 * 자기소개서 작성법 : 2022년 1월 24일(월) / 오전 10:00~11:15- 참여링크 주소: https://meet.google.com/vss-gxev-ezo  * 서평 작성법 : 2022년 1월 25일(화) / 오전 10:00~11:15- 참여링크 주소: https://meet.google.com/ktf-wpih-cjv  * 과제 보고서(Term paper) 작성법 : 2022년 1월 26일(수) / 오전 10:00~11:15- 참여링크 주소: https://meet.google.com/oxq-hmwe-xua  2. 강사 : 김종록(글로벌리더십학부 교수, 한동글쓰기센터장)3. 진행 및 질의응답 : 최윤정 연구원  * 참여 방법 : 시간에 맞춰 위의 구글 meet 링크에 한동 gmail로 접속하시면 됩니다.* 특강에 관련된 모든 자료는 한동글쓰기센터에서 제공합니다.* [참고] 겨울방학 중에도 국문 및 영문 헬프데스크를 On-line으로 운영합니다.',
      imp: false,
    ),
    Content(
      title: '[상사] 2022-1 상담심리사회복지학부 임원단 모집',
      keyword: '#교내공지',
      board: '일반공지',
      content:
          '🥰2022-1학기 상사 임원단 모집🥰안녕하세요! 사랑하는 상담심리사회복지학부생 여러분 추운 날씨 속에 다들 건강하게 잘 지내고 계신가요?저희는 22-1학기 상사대표 임수빈, 부대표 이준혁입니다.상사 임원단 모집이 시작되었습니다!섬김의 자리에 나아오실 여러분들의 소중한 마음을 귀하게 여기며 사랑으로 연합되어지는 공동체를 꿈꾸고 있습니다 💭💖상사학부를 섬기는 큰 기쁨의 자리에 함께하지 않으시겠습니까? 🙌c89;임원단 모집 분야임원(사업 기획 및 진행)서기(회의록 기록 및 학부 소통 담당)회계(물품 구매, 결산안 작성)총무(물품 관리, 시설 관리, 행정 업무 관리)디자이너(홍보물 제작)기도회 인도자(기도회 인도, 복지)🕑지원 기간: 1월 24일(월)까지🚗면접 기간: 1월 25일(화)-27일(금) 예정 💨신청 링크: https://forms.gle/4tNYDSDnzMHGawUe8존재만으로도 빛나는 여러분과 함께할 것을 기대하며 기다리겠습니다 💛많은 지원 부탁드립니다 💌문의 임수빈 ejking7@naver.com',
      imp: false,
    ),
    Content(
      title: '[언어교육원]2022-1학기 English Placement Test(TOEF...',
      keyword: '#교내공지',
      board: '일반공지',
      content:
          '2022-1학기 영어배치고사를 아래와 같이 실시합니다.*영어배치고사 성적이 없는 경우 졸업필수요건인 영어1 교과목 수강이 불가능하오니, 입학 시 미응시 한 학생들은 꼭 응시해주시기 바랍니다.*재응시 한 후, 입학 시 배정 받은 레벨에 변동이 있는 경우, 성적표 원본을 언어교육원으로 제출하셔야 합니다.*영어배치고사 결과에 따라 수업 면제된 과목은 학점으로 인정되지 않고 성적표기도 되지 않습니다. 1.   안내사항A.   한동대학교 신입생, 편입생, 재학생 응시 가능B.   시험 응시 준비물: 규정신분증(주민등록증, 운전면허증, 기간만료 전 여권, 또는 미성년자의 경우 고등학교 학생증) 필참, 연필(또는 샤프), 지우개, 아날로그 손목시계, 마스크C.   시험접수 문의: TOEFL ITP 사무국 02-2279-4725 university@toeic.co.kr D.   학사관련 문의: 한동대 언어교육원 054-260-1338 sarah0569@handong.edu  2.   한동대 English Placement Test (TOEFL ITP)A.   시험일시: 2022년 2월 22일(화) 09시 30분(변경된 일정)B.   응시장소: 추후공지(한동대학교 캠퍼스)C.   접수기간: 2022년 1월 17일(월) ~ 2022년 2월 14일(월) 17:00※ 접수추이에 따라 추가접수 진행 예정D.   응시료: 27,000원E.   접수방법: 접수페이지 https://b2b.toeic.co.kr/hgu 접속F.   환불안내: 접수기간 내 취소 가능(접수 기간 이후 취소 및 환불 불가)G.   성적발표: 성적 확인 사이트(http://ipresult.toeflitp.co.kr)에서 확인 및 성적표 최대 3매까지 무료 발급 가능H.   성적발표일: 2022년 2월 24일(목) 15시',
      imp: false,
    ),
    Content(
      title: '[창업교육지원팀]대구 북구, 2022 청년창업경진대회 ...',
      keyword: '#교내공지',
      board: '일반공지',
      content:
          '[창업교육지원팀]대구 북구, 2022 청년창업경진대회 개최 안내',
      imp: false,
    ),
    Content(
      title: '[교무팀] 2022-1학기 수강신청 테스트 기간 안내',
      keyword: '#수강신청',
      board: '일반공지',
      content:
          '안녕하세요. 교무팀에서 안내드립니다.1월 17일(월) ~ 1. 20(목)까지 2022-1학기 수강신청테스트 기간입니다.지금 수강신청이 되더라도 테스트 완료후 모든 수강 자료가 삭제되므로 반드시 예비수강신청 및 본 수강신청 기간에 수강신청을 하여야 합니다.감사합니다.  ========================================================= Please note that the data you registered during the course registration test period (17 Jan, 2022 ~ 20 Jan, 2022) will be deleted.You must do course registration during the pre-registration or regular registration period.Thank You ',
      imp: false,
    ),
  ];
}
