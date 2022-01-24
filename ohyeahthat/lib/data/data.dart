import 'package:flutter/material.dart';
import 'package:ohyeahthat/data/model.dart';

final concerns = [
  {'label': '수강신청', 'color': Colors.teal},
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
  ];
}
