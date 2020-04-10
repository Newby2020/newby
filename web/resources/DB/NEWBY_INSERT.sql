-------------------------------- INSERT ------------------------------

-- 1. NOTICE
SET DEFINE OFF;
INSERT INTO NOTICE VALUES('N' || SEQ_NNO.NEXTVAL, '필독! 공지사항', '관리자', DEFAULT, DEFAULT,  '모든 국민은 직업선택의 자유를 가진다. 국가안전보장회의의 조직·직무범위 기타 필요한 사항은 법률로 정한다. 군인·군무원·경찰공무원 기타 법률이 정하는 자가 전투·훈련등 직무집행과 관련하여 받은 손해에 대하여는 법률이 정하는 보상외에 국가 또는 공공단체에 공무원의 직무상 불법행위로 인한 배상은 청구할 수 없다. 대통령은 내란 또는 외환의 죄를 범한 경우를 제외하고는 재직중 형사상의 소추를 받지 아니한다. 국회의원은 현행범인인 경우를 제외하고는 회기중 국회의 동의없이 체포 또는 구금되지 아니한다. 정당의 설립은 자유이며, 복수정당제는 보장된다. 타인의 범죄행위로 인하여 생명·신체에 대한 피해를 받은 국민은 법률이 정하는 바에 의하여 국가로부터 구조를 받을 수 있다.' ); 
INSERT INTO NOTICE VALUES('N' || SEQ_NNO.NEXTVAL, '필독! 공지사항2', '관리자', DEFAULT, DEFAULT,  '시퀀스란 자동으로 순차적으로 증가하는 순번을 반환하는 데이터베이스 객체입니다.  보통 PK값에 중복값을 방지하기위해 사용합니다. 예를들어 게시판에 글이 하나 추가될때마다 글번호(PK)가 생겨야 한다고 해보겠습니다.  만약 100번까지 글 번호가 생성되어있다면 그 다음 글이 추가가 되었을 경우 글 번호가 101으로 하나의 ROW를 생성해주어야 할것입니다.  이때 101이라는 숫자를 얻으려면 기존 글번호중 가장 큰 값에 +1을 하는 로직을 어딘가에 넣어야하는데 시퀀스를 사용하면 이러한 로직이  필요없이 데이터베이스에 ROW가 추가될때마다 자동으로 +1을 시켜주어 매우 편리합니다.' ); 
INSERT INTO NOTICE VALUES('N' || SEQ_NNO.NEXTVAL, '신종 코로나 바이러스 관련 환불 안내', '관리자', DEFAULT, DEFAULT,  '신종 코로나 바이러스의 여파로 인해 클래스 진행이 어려운경우 환불에 관하여 안내 드립니다. 본인 또는 가족이 중국 홍콩 마카오 대만등의 위험지역의 방문한 경우 증빙서류 제출시 환불이 가능합을 알려드립니다. 일정 취소 없이 클래스가 진행 될 경우 NEWBY 환불 규정을 따르고 있으며 코로나 바이러스 관련하여 참여가 우려되시는 분들은 클래스 참여 결제시 신중한 선택을 부탁드립니다. 건강하고 안전한 BEWBY를 위해 최선을 다하겠습니다. 감사합니다.  ' ); 
INSERT INTO NOTICE VALUES('N' || SEQ_NNO.NEXTVAL, '신종 코로나 중국 사망자','관리자',DEFAULT,DEFAULT, '중국 본토에서 신종코로나 누적 사망자가 800명을 넘어섰고, 확진자는 3만7천명에 육박하는 것으로 집계됐습니다. 이에따라 후베이성 전체의 누적 확진자는 2만7천100명, 사망자는 780명으로 증가했습니다. 중국 본토 내 다른 지역까지 합치면 누적 사망자 수는 최소 803명이고, 확진자는 3만7천명에 육박할 것으로 집계됐습니다. 한편, 전 세계 신종코로나 사망자는 최소 805명으로 지난 2002년~2003년 지구촌을 강타했던 사스 때 사망자 774명을 넘어선 것으로 나타났습니다.');
INSERT INTO NOTICE VALUES('N' || SEQ_NNO.NEXTVAL, '25번째 확진자', '관리자', DEFAULT, DEFAULT,'9일 중앙방역대책본부는 이날 오전 9시 기준 신종코로나 환자가 1명 추가 확인돼 국내 확진자가 25명으로 늘었다고 밝혔다.추가 확인된 25번째 환자는 73세 한국인 여성이다. 중국 광둥성을 방문(2019년 11월~2020년 1월 31일)했던 가족(아들, 며느리)의 동거인이다. 발열, 기침, 인후통 증상으로 검사를 시행해 "양성"으로 확인됐다. 현재 분당서울대병원에 입원해있다.');
INSERT INTO NOTICE VALUES('N' || SEQ_NNO.NEXTVAL, '필독! 공지사항3', '관리자', DEFAULT, DEFAULT, '모든 국민은 종교의 자유를 가진다. 대법원과 각급법원의 조직은 법률로 정한다. 대통령은 내란 또는 외환의 죄를 범한 경우를 제외하고는 재직중 형사상의 소추를 받지 아니한다.');
INSERT INTO NOTICE VALUES('N' || SEQ_NNO.NEXTVAL, '중립을 지켜야 한다', '관리자', DEFAULT, DEFAULT,'정당은 그 목적·조직과 활동이 민주적이어야 하며, 국민의 정치적 의사형성에 참여하는데 필요한 조직을 가져야 한다. 모든 국민은 학문과 예술의 자유를 가진다.');

-- 2. MEMBER

-- 관리자 계정
INSERT INTO MEMBER VALUES('M0', 'admin@naver.com', 'admin', 'admin', '관리자', '01023452524', DEFAULT, 10000000,DEFAULT);
-- 일반 계정
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'ABC123@gmail.com', '일렌시아', 'ABC123', '최진영', '01023452524', DEFAULT, 4000,DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'ahtp0070@naver.com', '남지짱', 'slgkrk23', '남지훈', '01088386688', DEFAULT, 300,DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'shson926@gmail.com', '스타듀밸리', '1q2w3e4r', '손신혜', '01027126866', DEFAULT, 1150,DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tomcho39@gmail.com', '루종', 'jsg39', '조성근', '01023006796', DEFAULT, 300,DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'jhjhjadh4060@gmail.com','안녕','asd123','민현기', '01033607333', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester01', 'tester', 'tester01', '한재우', '01001010101', DEFAULT, DEFAULT,DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'neutrality@gmail.com','정당','neutrality','유정후', '01011112222', DEFAULT, 900,DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'neutraSDFlity@gmail.com','당정','nelity','유후', '01011132222', DEFAULT, 1250,DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'neutraSSlity@gmail.com','녕안','neutralityYY','유후', '01012112222', DEFAULT, 3400,DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'alwkme@gmail.com','메이플','nelity','최진영', '01022222222', DEFAULT, 2100,DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'dfeoima@gmail.com','스토리','neutralityYY','최진영', '010333333333', DEFAULT, DEFAULT,DEFAULT);

--일반 샘플
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester01@tmail.com','날다','1234qwer','이운재','01015576269','2019-11-03','50',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester02@tmail.com','너머','1234qwer','오범석','01057194180','2019-11-04','510',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester03@tmail.com','동기','1234qwer','김형일','01066041005','2019-11-05','110',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester04@tmail.com','마련','1234qwer','조용형','01022964037','2019-11-06','640',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester05@tmail.com','살','1234qwer','김남일','01067597338','2019-11-07','790',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester06@tmail.com','선장','1234qwer','김보경','01049523649','2019-11-08','880',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester07@tmail.com','설탕','1234qwer','박지성','01042748383','2019-11-09','20',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester08@tmail.com','순수하다','1234qwer','김정우','01053428137','2019-11-10','780',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester09@tmail.com','스타일','1234qwer','안정환','01097099443','2019-11-11','850',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester10@tmail.com','시점','1234qwer','박주영','01082222138','2019-11-12','970',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester11@tmail.com','싸다','1234qwer','이승렬','01010593402','2019-11-13','740',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester12@tmail.com','의사','1234qwer','이영표','01022962366','2019-11-14','270',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester13@tmail.com','집중','1234qwer','김재성','01043278356','2019-11-15','140',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester14@tmail.com','코드','1234qwer','이정수','01069114961','2019-11-16','80',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester15@tmail.com','큰일','1234qwer','김동진','01077564004','2019-11-17','80',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester16@tmail.com','거짓말','1234qwer','기성용','01092670619','2019-11-18','720',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester17@tmail.com','대단하다','1234qwer','이청용','01038879199','2019-11-19','840',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester18@tmail.com','대단히','1234qwer','정성룡','01045318706','2019-11-20','430',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester19@tmail.com','마주','1234qwer','염기훈','01038128809','2019-11-21','30',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester20@tmail.com','세계관','1234qwer','이동국','01064349237','2019-11-22','710',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester21@tmail.com','어제','1234qwer','김영광','01070744163','2019-11-23','910',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester22@tmail.com','온통','1234qwer','차두리','01070994689','2019-11-24','280',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester23@tmail.com','의존하다','1234qwer','강민수','01034290762','2019-11-25','180',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester24@tmail.com','자세히','1234qwer','강기석','01050190264','2019-11-26','430',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester25@tmail.com','점심','1234qwer','송한근','01034629827','2019-11-27','800',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester26@tmail.com','정확히','1234qwer','박전복','01064888618','2019-11-28','690',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester27@tmail.com','지치다','1234qwer','황인섭','01086981817','2019-11-29','200',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester28@tmail.com','청년','1234qwer','김성운','01024199357','2019-11-30','670',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester29@tmail.com','혀','1234qwer','이윤구','01062920246','2019-12-01','870',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester30@tmail.com','확대하다','1234qwer','이준영','01041827416','2019-12-02','170',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester31@tmail.com','후춧가루','1234qwer','정영진','01023449315','2019-12-03','690',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester32@tmail.com','건설하다','1234qwer','노환식','01024295421','2019-12-04','440',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester33@tmail.com','경쟁력','1234qwer','김선규','01053302963','2019-12-05','970',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester34@tmail.com','마침','1234qwer','조영숙','01068013256','2019-12-06','20',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester35@tmail.com','신용','1234qwer','정태옥','01028030210','2019-12-07','650',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester36@tmail.com','연락','1234qwer','이종일','01076617291','2019-12-08','50',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester37@tmail.com','온몸','1234qwer','최은학','01031533401','2019-12-09','490',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester38@tmail.com','정','1234qwer','최시훈','01075869680','2019-12-10','680',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester39@tmail.com','정신적','1234qwer','김정수','01054616743','2019-12-11','440',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester40@tmail.com','증상','1234qwer','조훈','01083148902','2019-12-12','940',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester41@tmail.com','출연하다','1234qwer','최은희','01011122438','2019-12-13','330',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester42@tmail.com','칼','1234qwer','유성권','01099071482','2019-12-14','410',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester43@tmail.com','한꺼번에','1234qwer','김기영','01031618118','2019-12-15','750',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester44@tmail.com','강제','1234qwer','이준영','01037398752','2019-12-16','30',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester45@tmail.com','건너다','1234qwer','김정국','01090069046','2019-12-17','560',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester46@tmail.com','깨다','1234qwer','전상현','01099011310','2019-12-18','60',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester47@tmail.com','낚시','1234qwer','이옥현','01014072413','2019-12-19','320',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester48@tmail.com','다가가다','1234qwer','정우표','01062045485','2019-12-20','450',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester49@tmail.com','뛰어들다','1234qwer','이복용','01098099009','2019-12-21','980',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester50@tmail.com','문자','1234qwer','윤희선','01055642698','2019-12-22','810',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester51@tmail.com','묻다','1234qwer','배재석','01071673125','2019-12-23','10',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester52@tmail.com','비롯되다','1234qwer','박성원','01088087098','2019-12-24','290',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester53@tmail.com','슬프다','1234qwer','신종범','01060226322','2019-12-25','490',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester54@tmail.com','신부','1234qwer','김호군','01052462165','2019-12-26','740',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester55@tmail.com','여겨지다','1234qwer','김재훈','01047169234','2019-12-27','610',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester56@tmail.com','오징어','1234qwer','최충회','01041827646','2019-12-28','570',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester57@tmail.com','요금','1234qwer','김홍기','01039555910','2019-12-29','570',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester58@tmail.com','용돈','1234qwer','손영선','01040445288','2019-12-30','410',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester59@tmail.com','위주','1234qwer','최정집','01068678033','2019-12-31','630',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester60@tmail.com','음료','1234qwer','이정복','01041907364','2020-01-01','810',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester61@tmail.com','의자','1234qwer','박성범','01079311029','2020-01-02','200',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester62@tmail.com','전자','1234qwer','양선정','01089174041','2020-01-03','140',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester63@tmail.com','전해지다','1234qwer','장지원','01033878032','2020-01-04','510',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester64@tmail.com','전환','1234qwer','김승국','01025324120','2020-01-05','100',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester65@tmail.com','지경','1234qwer','임청운','01019349018','2020-01-06','780',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester66@tmail.com','진행','1234qwer','김민','01067560311','2020-01-07','360',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester67@tmail.com','카메라','1234qwer','오성일','01083487835','2020-01-08','550',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester68@tmail.com','통증','1234qwer','최호풍','01032611069','2020-01-09','720',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester69@tmail.com','편리하다','1234qwer','구영환','01023397084','2020-01-10','490',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester70@tmail.com','하천','1234qwer','최갑선','01063729875','2020-01-11','980',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester71@tmail.com','현금','1234qwer','박행수','01079061330','2020-01-12','940',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester72@tmail.com','화학','1234qwer','손영환','01078437445','2020-01-13','400',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester73@tmail.com','활발하다','1234qwer','김명수','01030588401','2020-01-14','200',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester74@tmail.com','떼다','1234qwer','이경표','01044606934','2020-01-15','200',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester75@tmail.com','만들어지다','1234qwer','이진석','01019448390','2020-01-16','720',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester76@tmail.com','속도','1234qwer','전영철','01088367206','2020-01-17','560',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester77@tmail.com','심각하다','1234qwer','전치중','01086051526','2020-01-18','360',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester78@tmail.com','준비','1234qwer','남명호','01043466309','2020-01-19','920',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester79@tmail.com','계속되다','1234qwer','최성용','01040499395','2020-01-20','420',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester80@tmail.com','구월','1234qwer','윤문걸','01028661460','2020-01-21','880',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester81@tmail.com','맑다','1234qwer','왕미숙','01042560370','2020-01-22','240',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester82@tmail.com','소년','1234qwer','박현근','01033504934','2020-01-23','660',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester83@tmail.com','소식','1234qwer','이정욱','01018793154','2020-01-24','670',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester84@tmail.com','유월','1234qwer','김근두','01012357867','2020-01-25','300',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester85@tmail.com','작용','1234qwer','조중환','01055996924','2020-01-26','480',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester86@tmail.com','허리','1234qwer','장석익','01032176334','2020-01-27','790',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester87@tmail.com','골','1234qwer','정진이','01051085528','2020-01-28','700',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester88@tmail.com','공업','1234qwer','조찬정','01083164119','2020-01-29','480',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester89@tmail.com','그중','1234qwer','이상욱','01031361706','2020-01-30','980',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester90@tmail.com','노인','1234qwer','배신현','01019983620','2020-01-31','10',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester91@tmail.com','벌다','1234qwer','여문환','01086581973','2020-02-01','720',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester92@tmail.com','살리다','1234qwer','황보철','01089001128','2020-02-02','660',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester93@tmail.com','새','1234qwer','박성준','01073663954','2020-02-03','410',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester94@tmail.com','영어','1234qwer','강대영','01074815598','2020-02-04','570',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester95@tmail.com','출신','1234qwer','박부연','01070172826','2020-02-05','610',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester96@tmail.com','결정','1234qwer','김강석','01016834040','2020-02-06','810',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester97@tmail.com','경향','1234qwer','전해성','01033220569','2020-02-07','750',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester98@tmail.com','기록','1234qwer','김태형','01069514262','2020-02-08','90',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester99@tmail.com','나름','1234qwer','정일섭','01092900908','2020-02-09','40',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester100@tmail.com','대답하다','1234qwer','신기준','01026014271','2020-02-10','100',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester101@tmail.com','반면','1234qwer','김옥필','01076995341','2020-02-11','690',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester102@tmail.com','썰다','1234qwer','김태규','01062984444','2020-02-12','320',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester103@tmail.com','움직임','1234qwer','조동래','01024709909','2020-02-13','210',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester104@tmail.com','이미지','1234qwer','주정관','01044377552','2020-02-14','80',DEFAULT);
INSERT INTO MEMBER VALUES('M' || SEQ_MNO.NEXTVAL, 'tester105@tmail.com','터지다','1234qwer','성낙길','01095285184','2020-02-15','570',DEFAULT);


-- 3. QNA

INSERT INTO QNA VALUES('Q' || SEQ_QNO.NEXTVAL, '간식은 주나요?', 'M1', DEFAULT, '수업시간이 상당히 길어서 그런데 간식은 주나요?', '아쉽지만 제공되지 않습니다. 직접 가져오세요~', DEFAULT, DEFAULT); 
INSERT INTO QNA VALUES('Q' || SEQ_QNO.NEXTVAL, '호스트 연락처 좀 알 수 있을까요?', 'M1', DEFAULT, '관심있어서요.', '아쉽지만 제공되지 않습니다. 직접 따세요~', DEFAULT, DEFAULT); 
INSERT INTO QNA VALUES('Q' || SEQ_QNO.NEXTVAL, '코로나 바이러스', 'M2', DEFAULT, '코로나 바이러스 유행인데 마스크 갖고가야 하나요? 마스크 배치되어 있다면 kf94인가요?', '일반 마스크는 강의실 입구에 배치되어있지만 kf94는 배치되어 있지 않습니다. 이점 참고하시어 준비하시기 바랍니다.', DEFAULT, DEFAULT); 
INSERT INTO QNA VALUES('Q' || SEQ_QNO.NEXTVAL, '수업 중간에 일이 생겼을 경우?', 'M4', DEFAULT, '수업을 듣다가 중간에 일이 생겨 나올 경우 수업료는 어떻게 되나요?','이미 수업에 참석을 했기 때문에 그 부분에 대한 환불은 어렵습니다.', DEFAULT, DEFAULT); 
INSERT INTO QNA VALUES('Q' || SEQ_QNO.NEXTVAL, '수업 하다가 우한폐렴에 걸렸어요', 'M5', DEFAULT, '수업 듣고 집에 왔는데 감기에 걸려서 병원에 갔더니 우한폐렴이랍니다', '유감입니다.', DEFAULT, DEFAULT); 
INSERT INTO QNA VALUES('Q' || SEQ_QNO.NEXTVAL, '이 페이지 개발자는 누군가요?', 'M3', DEFAULT, '페이지 디자인을 수정해야 할 것 같아서요.', '니가 직접 고치세요', DEFAULT, DEFAULT); 
INSERT INTO QNA VALUES('Q' || SEQ_QNO.NEXTVAL, '정치인들한테 자꾸 전화가 와요', 'M7', DEFAULT, '정치인들한테 전화가 와서 무서워요.. 우한 폐렴? 신종 코로나?', '제 권한 밖입니다.', DEFAULT, DEFAULT); 

-- 4. HOST

INSERT INTO HOST VALUES('H' || SEQ_HNO.NEXTVAL, 'ABC123@gmail.com', '우리은행', '최진영', '1002-321-231234', '일렌시아 BGM을 좋아하는 호스트', 4.5,DEFAULT,DEFAULT,DEFAULT); 
INSERT INTO HOST VALUES('H' || SEQ_HNO.NEXTVAL, 'ahtp0070@naver.com', '농협', '남지훈', '302-0701-0585-31', '멍때리기 최장기록 보유자', 5, DEFAULT, DEFAULT, DEFAULT); 
INSERT INTO HOST VALUES('H' || SEQ_HNO.NEXTVAL, 'shson926@gmail.com', '농협', '손신혜', '010-2712-6866-09', '구청에서 기피하는 1인', 3.3, DEFAULT, DEFAULT, DEFAULT); 
INSERT INTO HOST VALUES('H' || SEQ_HNO.NEXTVAL, 'tom@gmail.com', '신한', '조성근', '110-265-626695', '술자리는 좋아하는 호스트', 4.1, DEFAULT, DEFAULT, DEFAULT); 
INSERT INTO HOST VALUES('H' || SEQ_HNO.NEXTVAL, 'jhjhjadh4060@gmail.com', '우리', '민현기' ,'1002-151-415681', 'LOL을 좋아하는', 4, DEFAULT, DEFAULT, DEFAULT);
INSERT INTO HOST VALUES('H' || SEQ_HNO.NEXTVAL, 'tester01@gmail.com', 'KEB 하나은행', '한재우', '974-029504-90207', '내 안에 존재하는 흑염룡', 2.3, DEFAULT, DEFAULT, DEFAULT);
INSERT INTO HOST VALUES('H' || SEQ_HNO.NEXTVAL, 'neutrality@gmail.com', '신한', '유정후' ,'110-253-381817', '집에서 쉬고 싶은', 4.8, DEFAULT, DEFAULT, DEFAULT);

-- 호스트 샘플

INSERT INTO HOST VALUES('H' || SEQ_HNO.NEXTVAL, 'tester10@tmail.com','우리은행','박주영','110-2340-45454','축구를좋아하는호스트','4','2020-01-19',DEFAULT,DEFAULT);
INSERT INTO HOST VALUES('H' || SEQ_HNO.NEXTVAL, 'tester11@tmail.com','신한은행','이승렬','110-255-115421','커피를좋아하는호스트','2','2020-01-20',DEFAULT,DEFAULT);
INSERT INTO HOST VALUES('H' || SEQ_HNO.NEXTVAL, 'tester12@tmail.com','국민은행','이영표','908251-12-252554','라면을좋아하는호스트','5','2020-01-21',DEFAULT,DEFAULT);
INSERT INTO HOST VALUES('H' || SEQ_HNO.NEXTVAL, 'tester13@tmail.com','하나은행','김재성','132-1432-555641-1','영어를사랑하는호스트','4','2020-01-22',DEFAULT,DEFAULT);
INSERT INTO HOST VALUES('H' || SEQ_HNO.NEXTVAL, 'tester14@tmail.com','시티은행','이정수','132564-549-75481','연애를하고싶은호스트','3','2020-01-23',DEFAULT,DEFAULT);
INSERT INTO HOST VALUES('H' || SEQ_HNO.NEXTVAL, 'tester15@tmail.com','신한은행','김동진','113-547-884547','데이트를사랑하는호스트','5','2020-01-24',DEFAULT,DEFAULT);
INSERT INTO HOST VALUES('H' || SEQ_HNO.NEXTVAL, 'tester16@tmail.com','우리은행','기성용','1002-452-136589','공부를지양하는호스트','4','2020-01-25',DEFAULT,DEFAULT);
INSERT INTO HOST VALUES('H' || SEQ_HNO.NEXTVAL, 'tester17@tmail.com','국민은행','이청용','903546-85-654971','옷수집을좋아하는호스트','1','2020-01-26',DEFAULT,DEFAULT);
INSERT INTO HOST VALUES('H' || SEQ_HNO.NEXTVAL, 'tester18@tmail.com','새마을금고','정성룡','13458-1524-1355','집돌이를추구하는호스트','3','2020-01-27',DEFAULT,DEFAULT);
INSERT INTO HOST VALUES('H' || SEQ_HNO.NEXTVAL, 'tester19@tmail.com','국민은행','염기훈','903165-65-987541','대중교통을애용하는호스트','4','2020-01-28',DEFAULT,DEFAULT);
INSERT INTO HOST VALUES('H' || SEQ_HNO.NEXTVAL, 'tester20@tmail.com','국민은행','이동국','942518-44-687522','요리를잘하는호스트','2','2020-01-29',DEFAULT,DEFAULT);
INSERT INTO HOST VALUES('H' || SEQ_HNO.NEXTVAL, 'tester21@tmail.com','신한은행','김영광','110-253-958462','여행을즐기는호스트','5','2020-01-30',DEFAULT,DEFAULT);
INSERT INTO HOST VALUES('H' || SEQ_HNO.NEXTVAL, 'tester22@tmail.com','시티은행','차두리','136584-84-164985','저축을성공하고싶은호스트','1','2020-01-31',DEFAULT,DEFAULT);
INSERT INTO HOST VALUES('H' || SEQ_HNO.NEXTVAL, 'tester23@tmail.com','하나은행','강민수','154-5498-546778-5','목돈을모으고싶은호스트','3','2020-02-01',DEFAULT,DEFAULT);
INSERT INTO HOST VALUES('H' || SEQ_HNO.NEXTVAL, 'tester24@tmail.com','하나은행','강기석','648-5542-845776-5','운전을좋아하는호스트','4','2020-02-02',DEFAULT,DEFAULT);
INSERT INTO HOST VALUES('H' || SEQ_HNO.NEXTVAL, 'tester25@tmail.com','신한은행','송한근','111-648-556478','결혼하기싫은호스트','5','2020-02-03',DEFAULT,DEFAULT);
INSERT INTO HOST VALUES('H' || SEQ_HNO.NEXTVAL, 'tester26@tmail.com','시티은행','박전복','13457-6487-8845','집을사랑하는호스트','5','2020-02-04',DEFAULT,DEFAULT);
INSERT INTO HOST VALUES('H' || SEQ_HNO.NEXTVAL, 'tester27@tmail.com','우리은행','황인섭','1002-648-523948','롤을잘하는호스트','4','2020-02-05',DEFAULT,DEFAULT);
INSERT INTO HOST VALUES('H' || SEQ_HNO.NEXTVAL, 'tester28@tmail.com','새마을금고','김성운','65848-5154-6918','손버릇이좋은호스트','5','2020-02-06',DEFAULT,DEFAULT);
INSERT INTO HOST VALUES('H' || SEQ_HNO.NEXTVAL, 'tester29@tmail.com','시티은행','이윤구','15487-5548-9587','컴퓨터를잘하는호스트','2','2020-02-07',DEFAULT,DEFAULT);
INSERT INTO HOST VALUES('H' || SEQ_HNO.NEXTVAL, 'tester30@tmail.com','국민은행','이준영','958426-54-884421','참견하기좋아하는호스트','3','2020-02-08',DEFAULT,DEFAULT);
INSERT INTO HOST VALUES('H' || SEQ_HNO.NEXTVAL, 'tester31@tmail.com','우리은행','정영진','1005-846-845498','내일만잘하는호스트','5','2020-02-09',DEFAULT,DEFAULT);
INSERT INTO HOST VALUES('H' || SEQ_HNO.NEXTVAL, 'tester32@tmail.com','우리은행','노환식','1003-648-845671','아르바이트를많이해본호스트','1','2020-02-10',DEFAULT,DEFAULT);
INSERT INTO HOST VALUES('H' || SEQ_HNO.NEXTVAL, 'tester33@tmail.com','하나은행','김선규','125-6485-243166-8','여행이력이많은호스트','2','2020-02-11',DEFAULT,DEFAULT);
INSERT INTO HOST VALUES('H' || SEQ_HNO.NEXTVAL, 'tester34@tmail.com','신한은행','조영숙','101-548-956632','마트투어를좋아하는호스트','1','2020-02-12',DEFAULT,DEFAULT);
INSERT INTO HOST VALUES('H' || SEQ_HNO.NEXTVAL, 'tester35@tmail.com','국민은행','정태옥','924568-88-654782','술을즐기는호스트','2','2020-02-13',DEFAULT,DEFAULT);
INSERT INTO HOST VALUES('H' || SEQ_HNO.NEXTVAL, 'tester36@tmail.com','하나은행','이종일','154-8897-646855-4','염탐을좋아하는호스트','3','2020-02-14',DEFAULT,DEFAULT);
INSERT INTO HOST VALUES('H' || SEQ_HNO.NEXTVAL, 'tester37@tmail.com','신한은행','최은학','110-698-548466','무료를좋아하는호스트','4','2020-02-15',DEFAULT,DEFAULT);




-- 멤버 테이블에 호스트 넘버 추가
UPDATE "NEWBY"."MEMBER" SET MEM_HOST_NO = 'H1' WHERE MEM_NO='M1';
UPDATE "NEWBY"."MEMBER" SET MEM_HOST_NO = 'H2' WHERE MEM_NO='M2';                               
UPDATE "NEWBY"."MEMBER" SET MEM_HOST_NO = 'H3' WHERE MEM_NO='M3';
UPDATE "NEWBY"."MEMBER" SET MEM_HOST_NO = 'H4' WHERE MEM_NO='M4';
UPDATE "NEWBY"."MEMBER" SET MEM_HOST_NO = 'H5' WHERE MEM_NO='M5';
UPDATE "NEWBY"."MEMBER" SET MEM_HOST_NO = 'H6' WHERE MEM_NO='M6';
UPDATE "NEWBY"."MEMBER" SET MEM_HOST_NO = 'H7' WHERE MEM_NO='M7';
UPDATE "NEWBY"."MEMBER" SET MEM_HOST_NO = 'H8' WHERE MEM_NO='M21';
UPDATE "NEWBY"."MEMBER" SET MEM_HOST_NO = 'H9' WHERE MEM_NO='M22';
UPDATE "NEWBY"."MEMBER" SET MEM_HOST_NO = 'H10' WHERE MEM_NO='M23';
UPDATE "NEWBY"."MEMBER" SET MEM_HOST_NO = 'H11' WHERE MEM_NO='M24';
UPDATE "NEWBY"."MEMBER" SET MEM_HOST_NO = 'H12' WHERE MEM_NO='M25';
UPDATE "NEWBY"."MEMBER" SET MEM_HOST_NO = 'H13' WHERE MEM_NO='M26';
UPDATE "NEWBY"."MEMBER" SET MEM_HOST_NO = 'H14' WHERE MEM_NO='M27';
UPDATE "NEWBY"."MEMBER" SET MEM_HOST_NO = 'H15' WHERE MEM_NO='M28';
UPDATE "NEWBY"."MEMBER" SET MEM_HOST_NO = 'H16' WHERE MEM_NO='M29';
UPDATE "NEWBY"."MEMBER" SET MEM_HOST_NO = 'H17' WHERE MEM_NO='M30';
UPDATE "NEWBY"."MEMBER" SET MEM_HOST_NO = 'H18' WHERE MEM_NO='M31';
UPDATE "NEWBY"."MEMBER" SET MEM_HOST_NO = 'H19' WHERE MEM_NO='M32';
UPDATE "NEWBY"."MEMBER" SET MEM_HOST_NO = 'H20' WHERE MEM_NO='M33';
UPDATE "NEWBY"."MEMBER" SET MEM_HOST_NO = 'H21' WHERE MEM_NO='M34';
UPDATE "NEWBY"."MEMBER" SET MEM_HOST_NO = 'H22' WHERE MEM_NO='M35';
UPDATE "NEWBY"."MEMBER" SET MEM_HOST_NO = 'H23' WHERE MEM_NO='M36';
UPDATE "NEWBY"."MEMBER" SET MEM_HOST_NO = 'H24' WHERE MEM_NO='M37';
UPDATE "NEWBY"."MEMBER" SET MEM_HOST_NO = 'H25' WHERE MEM_NO='M38';
UPDATE "NEWBY"."MEMBER" SET MEM_HOST_NO = 'H26' WHERE MEM_NO='M39';
UPDATE "NEWBY"."MEMBER" SET MEM_HOST_NO = 'H27' WHERE MEM_NO='M40';
UPDATE "NEWBY"."MEMBER" SET MEM_HOST_NO = 'H28' WHERE MEM_NO='M41';
UPDATE "NEWBY"."MEMBER" SET MEM_HOST_NO = 'H29' WHERE MEM_NO='M42';
UPDATE "NEWBY"."MEMBER" SET MEM_HOST_NO = 'H30' WHERE MEM_NO='M43';
UPDATE "NEWBY"."MEMBER" SET MEM_HOST_NO = 'H31' WHERE MEM_NO='M44';
UPDATE "NEWBY"."MEMBER" SET MEM_HOST_NO = 'H32' WHERE MEM_NO='M45';
UPDATE "NEWBY"."MEMBER" SET MEM_HOST_NO = 'H33' WHERE MEM_NO='M46';
UPDATE "NEWBY"."MEMBER" SET MEM_HOST_NO = 'H34' WHERE MEM_NO='M47';
UPDATE "NEWBY"."MEMBER" SET MEM_HOST_NO = 'H35' WHERE MEM_NO='M48';
-- 5. CLASS     

INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL, 'H1', 'BGM과 함께하는 일렌시아 레벨업', '차분한', '교육', 'IT', '그룹', '5', '230000', '10', 'ABC.jpg', '경기도 구리시,역삼동 123-1', '아주 오래된 옛날, 고대인들은 정령석과 가이아의 도움으로 자유와 질서를 바탕으로 한 고도의 문명속에서 삶을 영위해 나갔습니다. 그러나, 그들도 통제할수 없는 검은 메테오가 지구에 떨어졌습니다. 태고적부터 존재하던 어둠의 영적 생명체, 즉 카오스였었죠. 카오스는 정령석과 융합하여, 더욱 강한 힘을 가지게 되었습니다.', '20대 중후반 백수', '1시~ 2시 : 원투펀치  2시~ 4시 : 티키타카  4시~ 6시 : BGM 감상',  '2020-01-02', '반려', '더이상 패치되지 않는 게임으로 수요가 없음');
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL, 'H2', '멍과 함께 하는 시간', '차분한', '액티비티', '스포츠', '그룹', '10', '500000', '100', 'AAA.jpg', '서울특별시 관악구,역삼동 123-1', '명상을 통해 지혜를 얻게 되니 그렇지 않으면 무지할 것이다. 무엇이 너를 앞으로 이끌고 무엇이 뒷덜미를 잡는지 분명히 알지어다. - 석가모니', '모든 연령대', '1시 ~ 11시 : 명상', '2020-01-05', '승인', DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL, 'H3', '효과적으로 민원넣는 방법', '차분한', '교육', '실무', '그룹', '2', '15000', '30', 'BBB.jpg', '서울특별시 강서구,역삼동 123-1', '민원을 넣어도 흐지부지 끝나기 일수였다면 이 수업을 들어보세요 전직 공무원이 알려주는 민원의 기법 옆집 소음때문에 힘드신분 집앞 불법주차 때문에 힘드신분들 모두 이 수업을 들으시고 건강을 회복하셨습니다. ', '40대 이상', '19 ~ 20시 : 효과적 민원 강의','2020-02-01', '승인', DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL, 'H4', '작업할 때 술 덜 취하는 법', '신나는', '교육', '실무', '그룹', '1', '10000', '10', 'CCC.jpg', '서울특별시 강남구,역삼동 123-1', '평소 술을 못마셔서 고민이신가요? 회사 회식, 미팅, 소개팅 자리에서 맨정신이고 싶으신가요? 말만 주당으로 만들어드리겠습니다.  ', '20대 이상', '19 ~ 20시 : 사전 준비 및 술자리 스킬', '2020-02-04', '반려', '선정적 컨텐츠');
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL, 'H5', 'LOL 실버에서 골드까지', '차분한', '교육', 'IT', '그룹', '8', '200000', '5', 'ABC.jpg', '서울특별시 강남구,역삼동 123-1', '시즌 보상을 못받아서 고민이죠? 여기서 골드 달성하고 시즌 보상 받아요', '20대 이상', '12 ~ 15시 : 개인 솔로랭크 15 ~ 17시 : 피드백 17 ~ 20시 : 개인 솔로랭크', '2020-03-13', '승인', DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL, 'H6', '덕수궁 돌담길에 아직 남아있어요', '신나는', '액티비티', '음악', '그룹', '2', '30000', '10', 'BBB.jpg', '서울시 강남구,역삼동 123-1', '함께 노래불러요', '노래부르고 싶으신 분, 배우고 싶으신 분들', '추후 업데이트 예정입니다.', '2020-03-15', '반려', '명확하지 않는 클래스명');
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL, 'H7', '집에서 효율적으로 쉬는 방법', '차분한', '교육', 'IT', '그룹', '8', '5000', '5', 'DDD.jpg', '서울특별시 강남구,역삼동 123-1', '집에서 누구보다 편하게, 방해받지 않으면서 쉬고 싶으신가요?', '20대 이상', '20 ~ 22시 : 효율적으로 쉬는 방법을 습득하자', '2020-04-12', '승인', DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL, 'H1', 'BGM과 함께하는 일렌시아 레벨업', '차분한', '교육', 'IT', '그룹', '5', '230000', '10', 'ABC.jpg', '경기도 구리시,역삼동 123-1', '아주 오래된 옛날, 고대인들은 정령석과 가이아의 도움으로 자유와 질서를 바탕으로 한 고도의 문명속에서 삶을 영위해 나갔습니다. 그러나, 그들도 통제할수 없는 검은 메테오가 지구에 떨어졌습니다. 태고적부터 존재하던 어둠의 영적 생명체, 즉 카오스였었죠. 카오스는 정령석과 융합하여, 더욱 강한 힘을 가지게 되었습니다.', '20대 중후반 백수', '1시~ 2시 : 원투펀치  2시~ 4시 : 티키타카  4시~ 6시 : BGM 감상',  '2020-05-01', '반려', '둠칫 두둠칫');
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL, 'H2', '멍과 함께 하는 시간', '차분한', '액티비티', '스포츠', '그룹', '10', '500000', '100', 'BBB.jpg', '서울특별시 관악구,역삼동 123-1', '명상을 통해 지혜를 얻게 되니 그렇지 않으면 무지할 것이다. 무엇이 너를 앞으로 이끌고 무엇이 뒷덜미를 잡는지 분명히 알지어다. - 석가모니', '모든 연령대', '1시 ~ 11시 : 명상', '2020-05-01', '반려', '북치기 박치기 북치기 박치기');
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL, 'H3', '효과적으로 민원넣는 방법', '차분한', '교육', '실무', '그룹', '2', '15000', '30', 'CCC.jpg', '서울특별시 강서구,역삼동 123-1', '민원을 넣어도 흐지부지 끝나기 일수였다면 이 수업을 들어보세요 전직 공무원이 알려주는 민원의 기법 옆집 소음때문에 힘드신분 집앞 불법주차 때문에 힘드신분들 모두 이 수업을 들으시고 건강을 회복하셨습니다. ', '40대 이상', '19 ~ 20시 : 효과적 민원 강의','2020-05-12', '승인', DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL, 'H4', '작업할 때 술 덜 취하는 법', '신나는', '교육', '실무', '그룹', '1', '10000', '10', 'ABC.jpg', '서울특별시 강남구,역삼동 123-1', '평소 술을 못마셔서 고민이신가요? 회사 회식, 미팅, 소개팅 자리에서 맨정신이고 싶으신가요? 말만 주당으로 만들어드리겠습니다.  ', '20대 이상', '19 ~ 20시 : 사전 준비 및 술자리 스킬', '2020-06-12', '반려', '누구보다 빠르게 난 남들과는 다르게 색다르게 리듬을 타는 비트위의 나그네');
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL, 'H5', 'LOL 실버에서 골드까지', '차분한', '교육', 'IT', '그룹', '8', '200000', '5', 'BBB.jpg', '서울특별시 강남구,역삼동 123-1', '시즌 보상을 못받아서 고민이죠? 여기서 골드 달성하고 시즌 보상 받아요', '20대 이상', '12 ~ 15시 : 개인 솔로랭크 15 ~ 17시 : 피드백 17 ~ 20시 : 개인 솔로랭크', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL, 'H6', '덕수궁 돌담길에 아직 남아있어요', '신나는', '액티비티', '음악', '그룹', '2', '30000', '10', 'DDD.jpg', '서울시 강남구,역삼동 123-1', '함께 노래불러요', '노래부르고 싶으신 분, 배우고 싶으신 분들', '추후 업데이트 예정입니다.', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL, 'H7', '집에서 효율적으로 쉬는 방법', '차분한', '교육', 'IT', '그룹', '8', '5000', '5', 'DDD.jpg', '서울특별시 강남구,역삼동 123-1', '집에서 누구보다 편하게, 방해받지 않으면서 쉬고 싶으신가요?', '20대 이상', '20 ~ 22시 : 효율적으로 쉬는 방법을 습득하자', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H8','자세교정 요가 클리닉 ','신나는','액티비티','스포츠','그룹','2','30000','3','sh01.jpg','서울 강북구, 노해로 9 9','- 주지마, 로꼬  화사<br>- Greedy, Ariana grande<br>- Upgrade u, Beyonce<br>- Link up, Tinashe<br>- Gold, Kiiara<br>- Dollar bills, Syd<br>- Lose my breath, Destinys child<br>- Beautiful, Zior park<br>- El anillo, Jennifer lopez  보깅<br>- Yonce, Beyonce<br>- Gold, kiiara<br>- You like it, Omarion<br>- River, Bishop briggs<br>- 야몽음인, 이바다<br>- Womanizer, britney spears  왁킹  보깅<br>- Thank you next, Ariana grande  왁킹<br>- Dangerous woman, Ariana grande<br>- Hush hush, Pussycat dolls  왁킹 코레오<br>- Pose, Rihanna<br>- Havana, Camila cabello<br>- Tudishi, AJAY  힙합 (기본기)<br>- Its raining men, Geri halliwell  왁킹 (기본기)<br>- Dip dop afrobeat-Dj flex  보깅<br><br>lt Kpop class  커버 gt<br>- 마마무, hip<br>- AOA, 날 보러 와요<br>- 선미, 날라리<br>- 청하, 벌써 12시<br>- 화사, 멍청이<br>- AOA, 빙글뱅글<br>- 여자아이들, 세뇨리따<br>- 블랙핑크, 불장난<br>- 블랙핑크, forever young<br><br>','남들과 다른 요가 춤을 추고싶은분<br>','* 2월 수업 (수업 신청 가능한 날짜와 시간대 입니다! 신청하기 전에 참고하시고 문의를 주시면 조금 더 수월한 상담이 가능합니다!)<br><br>- 24일  오후 7시~저녁 10시<br>- 25일  마감<br>- 26일  오후 8시~저녁 10시<br>- 27일  마감<br>- 28일  오후 6시~저녁 10시<br>- 29일  오후 4시~오후 6시<br><br>','2020-02-24','승인',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H8','앙금플라워 장미','차분한','쿠킹','베이킹','그룹','3','45000','5','sh02.jpg','서울 마포구, 독막로3길 13 1','<br>*수업목표*<br><br>장미 카네이션 파이핑 익히기<br>그라데이션 조색 법 익히기<br>나만의 감성 앙금플라워쿠키 만들기<br><br><br><br>*수업 소개*<br><br>장미 카네이션 앙금플라워 파이핑 기법 실습<br><br>-초보자도 걱정마세요. 앙금플라워 파이핑에 기초가 되는<br>장미 카네이션 파이핑의 각도와 자세를 섬세하게 잡아드립니다<br><br>맛있는 앙금쿠키 레시피 제공<br><br>소규모 수업으로 개별 밀착 수업 가능<br>','앙금플라워에 대해 관심이 있으신 분<br><br>이색 커플데이트, 같은 취미를 공유하고 싶은 분<br><br>플라워케이크 창업 전 나에게 잘 맞는지 알아보고 싶은 분<br><br>특별한 날 예쁜 쿠키를 선물하고싶으신 분<br><br>힐링 취미로 배워보고 싶은 분<br><br>부업 및 창업을 위해 배워보고 싶은 분<br><br>','장미 카네이션 앙금쿠키 원데이 클래스<br><br>1. 도구 및 재료 설명<br><br>2. 장미, 카네이션 파이핑 시연 및 실습<br><br>3. 원하는 색감으로 조색 실습<br><br>4. 장미 카네이션 파이핑 실습<br><br>5. 잎사귀 달기<br><br>6. 오븐에 굽기<br><br>7. 완성 후 포토타임<br><br>8.포장<br>','2020-02-24','승인',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H8',' 농장체험_반쪽 김장체험 ','신나는','쿠킹','쿠킹','그룹','2','20000','15','sh03.jpg','서울 강서구, 공항대로 6 6','<br>POINT 1★<br><br>지친 일상, 리틀 포레스트를 꿈꾸셨다구요?<br><br>한번도 해보지 못했던 로망,<br>일상을 버리고 멀리 시골로 내려 갈 순 없으니<br>가까운 서울에서 체험해보세요~<br><br>이 클래스로<br>하루! 딱ㅡ하루만! 일일귀농을 미리 경험할 수 있답니다!<br><br>이색체험 주말농장에서 소중한 추억을 만들어보세요.<br><br><br>POINT 2★<br><br>이 클래스의 가장 큰 장점은<br>직접 배추를 뽑고 배추김치를 만들어요<br><br>','- 일일 농부체험으로 귀농라이프를 미리 경험하고 싶은 분<br><br>- 흙과 식물을 직접 만지면서 살아있음을 느끼고 싶은 분<br>- 먹거리의 소중함을 느끼고 싶은 분<br>- 텃밭가꾸기에 관심있었던 분<br>- 배추를 직접 재배하고 피클로 즐기고 싶은 분<br><br>- 가까운 서울에서 시골같은 힐링을 느끼고 싶은 분<br>- 삼시세끼같은 따뜻함을 느끼고 싶은 분<br>','♧프로그램 내용♧<br><br>체험시간 : 1시간 내외<br><br>【함께 알아봐요】<br><br>-안전교육 및 무수확방법<br><br>【직접 해볼까요?】<br><br>-무수확하기<br>-무씻기<br>-깍두기만들기<br>-자유시간<br><br>마무리 + QA<br>','2020-02-24','승인',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H9','엑셀 기본반: 키보드로만 엑셀하염','차분한','교육','IT','그룹','1','15000','5','sh04.jpg','서울 서초구, 고무래로 8 빌딩','? 엑셀은 실무능력의 기본<br><br>직업불문, 직장에 들어가면 모든 업무는 바로 엑셀을 통해 진행하게 됩니다. 자료작성, 수치확인, 회계정리 등 거의 모든 영역에서 엑셀이 사용되고 신뢰받고 있지요. 바로 업무에 투입되는 신입분들 중에는 엑셀 사용법을 몰라 회사적응에 어려움을 겪는 경우가 많습니다. (컴퓨터 활용능력 자격증, MOS 자격증은 사실 실무와 큰 상관이 없습니다.)<br><br>이 수업은 바로 그런 분들을 위한 수업입니다. 우리는 실무 능력을 중시합니다. 이 수업을 통해 여러분들은 각종 엑셀 자격증 시험 대비부터 실제 업무에 바로 써먹을 수 있는 실용적인 기술까지 두루 배우실 수 있습니다. 본 수업에서만 배울 수 있는 특별한 기술을 기대하세요.<br><br>? 짧고 임팩트 있게<br><br>수업은 총 3시간동안 진행됩니다. 엑셀은 매우 논리적인 프로그램이므로 핵심만 정확히 배운다면 데이터분석, 피벗, 매크로까지 배우는 데 이 시간이면 충분합니다.<br><br>? 업무시간을 단축할 수 있습니다.<br><br>회사에서 일을 잘한다는 것은 자신에게 주어진 업무를 빠르면서도 정확하게 끝내는 것입니다. 그리고 대<br>','<br>1순위 : 엑셀 초보자(무경험자 및 비숙련자)<br>2순위 : 엑셀을 사용하고 있지만 단축키를 사용할 줄 모르는 분들<br>3순위 : 엑셀을 지금보다 더 효율적으로 사용하고 싶은 분들<br>4순위 : 엑셀 관련 자격증을 준비하시는 분들<br><br>','(1) 1교시 - 기본기 익히기<br><br>- 1교시에서는 단축키를 사용하여 셀과 시트와 관련된 기본기를 다집니다. 즉, 단축키를 통한 엑셀 다루기와 다양한 기능들을 공부합니다. 1교시에서 구체적으로 배울 내용들은 다음과 같습니다.<br>- 기본 조작법 : 셀 간 이동, 현재 데이터 영역의 가장자리로 이동, 셀 다중선택, 셀 다중선택 빠르게 하게, 선택 영역 추가, 행(열) 전체 선택, 행(열) 삽입 및 삭제, 이전 작업 반복하기, 셀 삽입 및 삭제, 행(열) 숨기기 및 숨기기 취소, 데이터 전체 선택, 행(열) 자동 맞춤 등.<br>- 시트 관련 조작법 : 새 시트 삽입, 시트 간 이동, 여러 시트 선택, 시트 삭제, 시트 이름 변경, 시트 색 변경, 시트 숨기기 및 숨기기 취소, 시트 이동 및 복사 등.<br><br>(2) 2교시 - 기본기 응용하기 및 보고서 꾸미기<br>','2020-02-24','승인',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H10','스마트스토어 중국구매대행','신나는','교육','실무','그룹','1','36000','5','sh05.jpg','서울 관악구, 난곡로 50 11','온라인 사업은 많은 노력과 시간이 필요합니다.<br><br>단기간에 매출을 올릴 수 있는 방법도 물론 있지만<br>이는 무일푼 무재고 상태 초보 셀러에게는<br>다소 어려운 부분이 있습니다.<br><br>현실적인 방법으로 하나 둘 씩 순차적으로 따라하세요.<br>초보자 분들을 위해 쓸데없는 부가설명이나 글은<br>모두 삭제했습니다.<br><br>1) 내 자본 0원으로도 시작할 수 있습니다!<br><br>2) 재고 쌓아둘 필요 없이 운영 가능합니다.<br><br>3) 소싱을 무제한으로 할 수 있습니다.<br><br>4) 단가가 저렴해서 일반 수입상품에 비해 구매전환율이 높습니다.<br><br>5) 추후 수입을 하더라도, 구매대행으로 검증한 상품으로만 수입을 해서 재고율을 낮출 수 있습니다.<br><br>6) 하루 2-4시간만 투자하면 월 300 가능합니다.<br>','온라인 유통을 궁굼해 하시는 분<br>중국 시장 개척 하고 싶은분<br>','국내에서 잘팔리는 상품 소싱하기<br>해외에서 잘 팔리는 상품 소싱하기<br>','2020-02-24','승인',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H10','자신있어지는 인생샷 클래스','차분한','예술','사진','1:1','2','50000','1','sh06.jpg','서울 동대문구, 겸재로 16 3층','ⓐ 사진찍을 때, 내가 가장 예쁘게 나오는<br>시그니쳐 포즈를 찾을 수 있습니다 !<br><br>ⓑ 내 얼굴의 장점/개성을 파악해<br>셀고에서 탈출할 수 있습니다 !<br><br>ⓒ 가장 잘나온 인생샷 사진을<br>바로 인화해 소장하실 수 있습니다 !<br><br>ⓓ 거북목부터 짝다리까지,<br>삐뚤어진 자세도 파악할 수 있습니다 !<br><br>사진 찍기를 두려워 하셨던 분들을 위해<br>스스로의 장점을 발견하고,<br>콤플렉스였던 부분들을 보완할 수 있도록 도와드리는<br>카메라 테스트클래스 입니다 :)<br><br>또한 가장 잘 나온 인생샷을<br>바로 인화해드리는 혜택이 제공됩니다.<br><br>','<br>- 프로필 사진 촬영 전에 연습하실 분<br>- 모델활동에 관심있는 분<br>- 카메라에 한 번 서보고 싶은 분<br>- 일상사진도 <br>','Step 1. 잘찍히는 사진이란?<br><br>▷ 셀카를 통해 내 얼굴을 잘 찍는 방법과<br>내 얼굴의 장점을 살리고 단점은 사라지도록 찍어보기<br>▷ 평소 자신이 찍고 싶었던 컨셉 or 연예인/모델 등의 사진을 보고 따라해보기(mimicking)<br><br>Step 2. 나도 포토제닉!<br><br>▷ 모델들은 어쩌면 저렇게 예쁘게 웃을까?<br>▷ 연예인처럼 예쁘게 웃는 방법과 나에게 맞는 앵글을 찾아보자!<br>▷ 컨셉에 맞게 따라해 본 포즈와 표정을 촬영한 사진, 모습 Reviewing<br><br>','2020-02-24','승인',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H10','그림심리, 딱 1시간','차분한','예술','미술','1:1','1','50000','1','sh07.jpg','서울 마포구, 신촌로 6 333','ⓐ 사진찍을 때, 내가 가장 예쁘게 나오는<br>시그니쳐 포즈를 찾을 수 있습니다 !<br><br>ⓑ 내 얼굴의 장점/개성을 파악해<br>셀고에서 탈출할 수 있습니다 !<br><br>ⓒ 가장 잘나온 인생샷 사진을<br>바로 인화해 소장하실 수 있습니다 !<br><br>ⓓ 거북목부터 짝다리까지,<br>삐뚤어진 자세도 파악할 수 있습니다 !<br><br>사진 찍기를 두려워 하셨던 분들을 위해<br>스스로의 장점을 발견하고,<br>콤플렉스였던 부분들을 보완할 수 있도록 도와드리는<br>카메라 테스트클래스 입니다 :)<br><br>또한 가장 잘 나온 인생샷을<br>바로 인화해드리는 혜택이 제공됩니다.<br><br>','? 부정적인 생각이 많아졌어요.<br>ex) 고민, 잡념, 걱정등<br>? 인간관계에 고민이 생겼어요.<br>ex) 친구, 연인, 가족, 회사등<br>? 저에 대해서 알고싶어요.<br>ex) 난 누구일까<br>? 나쁜 습관을 바꾸고 싶어요.<br>ex) 감정조절, 두려움, 성격<br>','그림심리상담<br>- 내담자의 이야기를 듣고 상담주제를 정합니다.<br>- 상담종류 중 2택을 통해 상담을 진행합니다.<br>(수업소개를 참고 부탁드려요!)<br><br>색체심리상담<br>- 내담자의 이야기를 듣고 상담종류를 정합니다.<br>( 나의 컬러는? or 탄생컬러 궁합 )<br><br>','2020-02-24','승인',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H11','패들 TRANING!','신나는','액티비티','아웃도어','그룹','2','40000','5','sh08.jpg','서울 용산구, 백범로 384,한강공원','최근 유럽, 일본, 미국 등 전 세계적으로<br><br>가장 폭발적인 인기를 얻고 있는<br><br>수상 레저 스포츠인 SUP(Stand Up Paddle Board)는<br><br>남녀노소 누구나 쉽게 물 위에서 즐길 수 있는 운동입니다.<br><br>근지구력 향상, 신체의 균형 잡힌 발달을 돕는 전신 운동으로<br><br>시간당 평균 500~1000칼로를 소모하는 고강도 운동이며,<br><br>자연 친화적인 스포츠로 SUP 레이싱뿐만 아니라<br>서핑, 낚시, 래프팅, 요가, 핏 등<br><br>SUP의 분야가 점차 확대되고 있습니다.',' 이색 취미 운동을 원하시는 분<br><br>· 남들이 해보지 못한 이색적인 경험을 찾는 분<br><br>· 일상에 쌓인 스트레스를 힐링하고 싶으신 분<br><br>· 몸의 균형을 확실하게 잡고 싶으신 분<br>','강습 1시간 / 자유시간 1시간<br><br>* 베이직<br><br>- 수상안전교육<br>- 장비소개<br>- 프론패들링<br>- 발란스중심이동교육<br>- 베이직 패들링교육<br>- 베이직 방향전환교육<br>','2020-02-24','승인',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H11','4주 완성 당신만을 위한 꼭 맞춤 영어','차분한','교육','어학','1:1','1','25000','1','sh09.jpg','서울 강남구, 강남대로 238 쏠라빌딩','1) 이 수업은 [맞춤 영어 학습법] 수업 입니다.<br>(1) 일반적인 영어 학습법(쉐도잉, script공부, speaking에 필요한 영문법, listening 학습법 등을 바르게 하는법)<br>(2) 해나가 개개인의 특성과 약점을 파악하여 방향성 제시<br><br>이 두 가지를 가져가실 수 있도록 수강하시는 한 달 동안 해나의 코칭이 들어갑니다!<br><br>2) 영어 습관화<br>영어의 가장 큰 적은 [꾸준함]. 이 수업의 목표는 [영어자립]이에요. 여러분이 수업이 끝나고도 영어공부를 습관처럼 하실 수 있도록, 오프라인 관리를 통해 영어를 일상에 녹여 습관화 시켜드립니다.<br><br>3) 전화영어<br>전화영어를 제공합니다! 전화영어에서 약점을 더 보완하고 어려워하시는 부분을 복습합니다.<br>예를 들어, r 발음을 유독 어려워하신다면 수업중에는 교정을 못 해드리지만 제가 공부 링크를 보내드리고 전화영어시간에 검토+교정을 합니다.<br><br>4) 카톡영어<br>하루 2문장씩 카톡으로 영작을 하는 숙제가 나갑니다!<br>수업 내내 완주하면, 상품까지 드려요~!<br><br>[단체에 맞추지 않는] 개인을 알아주는 수업!!!<br>한나의 Class로 오세요 :)<br>','<br>- 영어 공부를 하고 싶지만 어디서부터 해야할지 모르겠는 분<br>- 영어 초보자<br>- 영어로 대화가 어느정도 되지만 성장이 안되시는 분<br>- 스피킹 공부를 시도해봤는데 매번 실패하셨던 분<br>- 한국에서 영어 마스터하는 법이 궁금하신 분<br>- 영국식 억양으로 공부하고 싶으신 분<br>- 토익스피킹 5 이하, 오픽 IM 이하인 분<br>- 순간적으로 영단어가 떠오르지 않는 분<br>','lt영어 습관화 활동 익히기gt<br>1) O.T - 나의 영어 문제점 파악하기<br>2) 영어 습관화 실습<br>- 올바른 영어 공부법<br>- Hannah가 원어민 수준으로 영어를 끌어올린 노하우<br>3) 한국에서 잘못 가르치는 꼭 필요한 영문법 배우기 I - 미래시제<br><br>','2020-02-24','승인',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H11','나도 프로듀서가 될 수 있다!','차분한','예술','음악','1:1','2','35000','1','sh10.jpg','서울 동대문구, 서울시립대로7길 2 3층','저는 얼렁뚱땅 수업 을 진행하지 않습니다.<br>지식이 없는 건 괜찮습니다! 배우고자하는 태도를 가진 분이라면 누구든 환영합니다.<br><br>Q : 음악을 전혀 모르는데 곡을 만들 수 있을까요?<br>A : 전혀 모르시는 분들을 위한 수업입니다!<br>수업을 통해 알게되고, 누구나 곡을 만들 수 있습니다!<br><br>*악기를 연주하지 못해도, 악보를 볼 줄 몰라도 누구나 자신의 음악을 만들 수 있습니다!<br><br>RB / Hiphop / Trap / Future / Lo-fi / Pop / Jazz<br>원하시는 모든 장르를 배울 수 있습니다!<br>(DAW는 Ableton Live 10을 사용합니다.)<br><br>맨투맨 레슨으로 꼼꼼하게 체크해드리며, 한 회 진도의<br>[실무 활성화]에 목적을 둡니다 (초보자 가능)<br>사람마다 똑같은 커리큘럼을 갖고 진행하지 않고, 개개인의 방향과 색깔을 존중하며 하고자 하는 음악에 맞게 커리큘럼을 만들고 수업을 진행합니다.<br><br>※ 상황에 따라 날짜와 시간은 탄력적으로 맞춰드리니 부담없이 문의하세요!<br>(수업은 기본 60분에서 최대 90분까지 진행됩니다.)<br>','- 자신만의 음악을 만들고 싶으신 분<br>- 창작욕구가 강하신 분<br>- 실용음악과 입시준비생<br>- 음악 프로듀서가 되길 원하시는 분<br>- 비트메이킹을 하고 싶으신 분<br>- 사운드 디자인에 관심이 있으신 분<br>- 개인 결과물에 대한 만족도가 낮거나<br>디벨롭이 필요하신 분<br><br>','▶ 기본 과정<br>혼자서도 충분히 곡을 만들 수 있고, 방향에 확신을 갖게 됩니다!<br><br>- Drum Kit의 이해와 응용<br>- Groove 표현<br>- 기초 화성 (화음, 전위, 스케일, 연주)<br>- 악기 종류의 이해와 응용<br>- 악기 배치 Tip<br>- 곡 구성 및 편곡<br><br>▶ 심화 과정<br>자신이 만든 결과물의 완성도가 높아지고, 아티스트나 레이블에 데모를 보낼 수 있습니다!<br><br>- Bass 응용 (심화)<br>- 탑라인, 가이드라인 구성<br>- 악기별 사운드 디자인<br>- 보컬 사운드 디자인<br>- Mix  Master<br>- 유통 및 데뷔 Tip<br>','2020-02-24','승인',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H11',' 빛나는 아름다움, 자개공예','신나는','예술','공예','그룹','2','36000','5','sh11.jpg','서울 노원구, 공릉로 97 자개자개','안녕하세요,<br>자개공방 아랫집을 운영하고 있는<br>칠형제 입니다.<br><br><br>나전칠기.<br>기존 전통공예라는 틀안에서 접하기 어려웠던<br>옻칠과 자개를 많이 알리고자<br>칠형제만의 현대적 해석으로<br>다양한 그림, 소품, 조형물 등에<br>재미있는 작업들을 진행하고 있습니다.<br><br><br>/<br><br>본 수업은,<br>기존의 어렵고 오랜시간이 걸리는 옻칠, 자개공예와 레진을 접목하여,<br>누구나 빠른 시간안에 자개를 자유롭게 장식하여<br>자신만의 개성있는 작품을 만들 수 있는 수업입니다.<br>','강의계획<br>1. 수저 받침대에 레진 칠해보기 ( 연습)<br><br>: 연습 과정으로 수저 받침대에 먼저 레진을 칠해봅니다.<br>레진에 익숙해진 후에,<br>손거울이나 컵받침 같이 넓은 면적 작업을 합니다.<br><br>- 접하기 쉽지 않은 자개공예를 경험해 보고 싶으신 분<br><br>- 내가 직접 만든 컵받침/ 손거울 / 미니접시를 가지고 싶으신 분<br><br>- 소중한 분께 잊지못할 선물을 하고 싶으신 분<br><br>- 자개공예가 궁금하셨던 분<br><br>-새로운 경험을 해보고 싶으신 분<br><br><br>2. 백골 선택하기<br><br>: 손거울 ( 손잡이가 있는 것 / 원형 ) - 블랙<br>컵받침 - 블랙, 브라운<br>미니접시 - 블랙, 브라운<br>','강의계획<br>1. 수저 받침대에 레진 칠해보기 ( 연습)<br><br>: 연습 과정으로 수저 받침대에 먼저 레진을 칠해봅니다.<br>레진에 익숙해진 후에,<br>손거울이나 컵받침 같이 넓은 면적 작업을 합니다.<br><br>2. 백골 선택하기<br><br>: 손거울 ( 손잡이가 있는 것 / 원형 ) - 블랙<br>컵받침 - 블랙, 브라운<br>미니접시 - 블랙, 브라운<br>','2020-02-24','승인',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H15','1:1 포켓볼 집중 강습! (예약 가능)','신나는','액티비티','스포츠','그룹','2','25000','50','66622_banner_1529482105747.jpg','서울 강남구, 강남대로 238 한국 당구, 클럽','[신종 코로나 바이러스 관련 유의사항]<br><br><br><br>1. 프립은 다수의 인원이 참여하는 프로그램이므로, 발열/호흡기 관련 증상, 감기 등의 질병이 발생한 대원님은 참여를 지양해주세요.<br><br>2. 프립 참가 시에는 마스크 착용, 손 소독제 활용 등으로 안전에 특히 유의해주세요.<br><br>3. 일정 변동 없이 진행되는 프립은 하단의 환불 규정을 따릅니다. 참여가 우려되시는 분들은 구매 시 신중한 선택 부탁드리며, 환불 규정을 숙지하여 기한 내 환불 신청 바랍니다.<br><br><br><br>ㅡ<br><br>프립에서 구매 후<br><br>호스트 연락처를 문자로 보내드립니다.<br><br>구매 전 문의사항은 QA 게시판을 이용해주세요.<br><br>ㅡ<br><br>남녀노소 즐겁게 즐길 수 있는 포켓볼을<br><br>1:1로! 집중적으로!<br><br>배워보는 프립입니다.<br><br>','누구나<br>','누구나<br>','2020-02-24','승인',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H15','3가지 맛의 부드러운 스콘 만들기','차분한','쿠킹','베이킹','그룹','2','35000','20','scone_banner1.jpg','서울 강남구, 도곡동 953-11 부세빌딩 3층 201호','새콤달콤한 크랜베리  고소한 호두가 고루 박혀있는<br><br>크랜베리 스콘<br><br>고급 코코아 파우더  초코칩이 촘촘히 들어있<br><br>초코 스콘<br><br>홍차 향이 은은하게 퍼지는 향 좋고 맛 좋은<br><br>얼그레이 스콘<br><br><br><br>총 3가지 맛의 스콘을<br><br>12개 내외로 만들어 가져가실 거예요<br><br><br><br>퍽퍽한 식감이 아니라<br><br>부드러운 식감의 스콘이며<br><br>차나 커피에 너무 잘 어울려요~^0^<br><br><br>이제 카페에서 비싸게 사 먹지 말고<br><br>내가 직접 만들어<br><br>친구와 가족들과 함께 나눠 먹어보아요~<br><br>많이 어렵지 않아<br><br>베이킹 왕초보분들도 실패 없이 만들 수 있게<br><br>저희 라라디저트에서 자세히 알려드립니다!<br><br>완성 후 크라프트봉투에 담아드려요<br><br>선물하실 분들은 따로 포장상자 가지고 오셔야됩니다<br><br>','남녀노소 누구나<br>','20분 : 재료 준비 및 설명<br>80분 : 스콘 만들기<br>20분 : 스콘 포장<br>','2020-02-24','승인',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H12','스시 쿠킹 클래스','차분한','쿠킹','쿠킹','그룹','2','121000','25','83280_banner_1535512455903.jpg','서울 마포구, 연남동 358-1 세계맥주&이자카야','일본인 요리 선생님<br><br>야요에게 스시를 배워보세요!<br><br><br><br>요리 선생님 야요는<br><br>스시 학교에서 전문적으로<br><br>스시 강의를 수료하였습니다.<br><br><br><br>친절하고 자세히<br><br>요리 방법을 설명해드립니다.<br><br><br><br>칼을 사용하지 않기 때문에<br><br>요리 초보자도 가능합니다.<br><br><br><br>코스요리처럼 즐길 수 있는<br><br>특별한 스시 클래스!<br><br><br><br>애피타이저부터 후식까지<br><br>모두 직접 만들어 보고,<br><br>시식할 수 있습니다.<br><br>','20세 이상 남녀노소 누구나<br>','10분 : 집결<br>10분 : 간단 인사 및 스시 역사 소개<br>100분 : 스시 만들기<br>','2020-02-24','승인',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H12','#통영 #사량도 #지리산 #섬산행','신나는','액티비티','아웃도어','그룹','9','63000','50','Z345324324347wer50103_zummf1.jpg','서울 양천구, 의신면 돈지로 2 191-2번지','통영 여행의 진짜 매력은 섬여행에 있습니다.<br><br>안가시면 진짜로 후회합니다!<br><br><br><br>[산행 코스]<br><br>내지항~지리산(398m)~불모산(399m)~가마봉(303m)~<br><br>옥녀봉(261m)~금평항(종료)<br><br><br><br>[산행 길이]<br><br>6.5km<br><br><br><br>[산행 시간]<br><br>6시간<br><br>산행 종료 후,<br><br>현지에서 점심식사 시간 제공(개별 매식)<br><br>※ 해산물(횟집), 중국집, 카페 등<br><br>다양한 가게 있음.<br><br><br><br>[산행 난이도]<br><br>초중급<br><br>(암릉구간이 꽤 있습니다.)<br><br><br><br>※ 산악 동호회, 일반 여행사의<br><br>산행 컨셉 및 콘텐츠 임의 도용을 금지합니다.<br><br>임의 도용 시, 법적으로 처벌될 수 있습니다.<br><br><br><br>※ 프립 및 호스트를 활용한<br><br>대인 영업 행위를 엄격히 금지합니다.<br><br>(ex. 유사 성격의 아웃도어 동호회 / 크루 / 산악회)<br><br>해당 행위 시도 시, 추후 참여가 제한될 수 있습니다.<br><br>','남녀노소 누구나<br>','24:00 사당역 집결 및 인원 파악<br>01:30 휴게소 정차(15분)<br>03:00 휴게소 정차 및 아침식사<br>04:00 삼천포항 도착<br>06:30 선박 탑승 준비<br>07:50 사량도 도착<br>08:00 산행 시작<br>19:00 산행 종료 및 저녁식사<br>21:00 사당역 도착 및 해상<br>','2020-02-24','승인',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H13','일상의 여유, 유화 기초 수업 클래스','차분한','예술','미술','그룹','3','80000','15','104175_banner_1546864715245.jpg','서울 서대문구, 연희동 724-9 아트그리고 미술공방','유화는 집에서 하기에는 냄새 때문에 힘들고,<br><br>정보가 많이 없어 처음에 혼자 시작하기 힘드실 거에요.<br><br><br><br>재료도 부수적인 게 많이 필요해<br><br>한 번에 20만 원~ 되는 재료를 구비하자니 부담스럽고요!<br><br><br><br>아트그리고 취미미술 화실에서<br><br>유화의 기초부터<br><br>차근차근 배워보세요. ^^<br><br>모든 재료 제공해 드립니다.<br><br><br><br>취미미술, 성인 미술 전문 화실입니다.<br><br>첫 수업 시간에 10분 일찍 오셔서<br><br>상담받으신 뒤, 개인별 수준에 맞춰 일대일 맞춤<br><br>수업 진행합니다.<br><br><br>유화 외에도 수채화, 아크릴화, 색연필, 오일파스텔, 기초소묘 등 수강비에 모든 재료비가 포함되어 있어 다양하게 다뤄보실 수 있습니다. :)<br><br><br>아트그리고 취미미술화실의 최대 장점<br><br>-정해진 수업 시간표가 없습니다!-<br><br>매주 원하는 날짜, 시간에 제약 없이 아무때나 자신의 스케줄에맞춰 자유롭게 예약 후 수강하실 수 있습니다.<br><br>','남녀노소 누구나<br>','60분 : 형태와 구도, 명암 수업<br>60분 : 색의 이해와 유화 재료 설명과 실습<br>60분 : 캔버스에 실습<br>','2020-02-24','승인',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H13','보컬레슨, 녹음과 동시에 정복하자!','신나는','예술','음악','1:1','3','120000','1','product_banner_1555062154008_957559.jpg','서울 서초구, 반포동 748-12 세미빙딩 지하 1층 302호','보컬레슨, 녹음과 동시에 정복하자!<br><br><br><br><br><br><br><br>안녕하세요! So뮤직 호스트입니다<br><br><br><br>저는 노래를 좋아하는 음치였습니다,<br><br>잘하고싶은 마음에 노래를 배우기시작했지만<br><br>너무나도 어렵고 비 전문적으로 , 오랜시간 잘못되게 노래를 배웠습니다.<br><br><br><br>그래서 노래실력이 성장하기까지<br><br>너무나도 오랜시간이 소요됐습니다.<br><br><br><br>어렵게 터득한만큼 누구보다 잘 가르친다고 자부합니다.<br><br><br><br>보컬레슨만큼은 수업대상자가 왜 못하는지는<br><br>이론으로 이해하는것을 넘어서<br><br>겪어본자만 이해할수있는부분입니다<br><br><br><br>제 수업을 듣는분들 만큼은<br><br><br><br>저처럼 고생하지않고 ,<br><br><br><br>길을 헤메지않도록 수업하는것이 저의 목표입니다.<br><br><br><br>실제 가수들이 사용하는<br><br>장비와 프로그램으로 녹음하여<br><br><br><br>본인의 부족한 점과 개발 가능한 부분을<br><br>정확히 진단하여 레슨받으실 수 있습니다<br><br>','축가,공연,동아리발표 등 급하게 준비해야하는경우<br><br>이색 커플 데이트를 하고싶은분들!<br><br>그냥 노래를 잘하고싶은분들<br><br>고음을 탄탄하게 잘 내고싶은사람<br>','180분 : 보컬 레슨<br>','2020-02-24','승인',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H13','꽃 시장에서 부터 DIY 플라워 레슨','차분한','예술','공예','그룹','3','35000','15','product_banner_1571997692449_480969.jpg','서울 서초구, 방배동 2939 하루빌딩 2층 101호','사입부터 작품까지 내 손으로 직접 고르고<br><br>만들어보는 lt DIY 플라워 레슨 gt<br><br><br><br>수업에 많은 관심 가져 주셔서 감사드립니다.<br><br>수업은 매주 토요일에만 오픈 되고 있습니다.<br><br><br><br>작품의 컨셉 선정부터 꽃 사입, 시장 투어를 통해<br><br>내 손으로 직접고른 꽃으로 작품을 만들어보게 됩니다.<br><br><br><br>수업은 2인 이상 시에만 진행됩니다.<br><br>DIY 레슨은 꽃사입 비용이 포함되어있지 않습니다.<br><br>( 참가 인원들과 함께 비용을 나눠 사입 하게 됩니다. )<br><br>3인 이용시 개인 재료비 약 25,000원 지출<br><br><br><br>3인이 함께 사입 하므로 다같이 논의한<br><br>구성 컨셉 및 컬러에 맞는 꽃을 선정 하게 됩니다.<br><br><br><br>lt 8시 50분까지 경부선 1층 에스컬레이터앞 집결 gt<br><br>집결 후 10분 정도 미팅한 다음 꽃시장을 방문합니다.<br><br>프립 마감 후 연락처로 자세히 안내드립니다.<br><br>','꽃을 좋아하는 남녀노소 누구나<br>','60분 : 꽃 시장 투어 및 코칭<br>30분 : 작업실 이동<br>60분 : 작품 제작<br>30분 : 포장 및 마무리<br>','2020-02-24','승인',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H14','영어 Jock밥 스터디','신나는','교육','어학','그룹','3','50000','50','beauty_1579321262186_z728of.jpg','서울 서초구, 과천대로 786 엘제이빌딩 6층 602호','*Jock (특정한 활동을) 좋아하는 사람<br><br>영어를 좋아하고 싶은 사람들을 위한 스터디!<br><br><br><br>영어는 공부가 아니라 놀이이며 언어입니다!!<br><br><br><br>그동안 학원에서 딱딱한 공부로 지쳐있고 정체되어 있는 나의 영어실력에 재미를 불어드릴 스터디!<br><br><br><br>조금씩 전형적인 공부방식이 아닌 상황에서 배우는 영어로 영어에 대한 거부감이 사라질 거예요:)<br><br><br><br>더이상 외국인이 말을 걸때 도망칠 일이 없도록!!!<br><br><br><br>차근차근 하나하나 저 멘토 엔비가 험난한 영어의 여정을 같이 걸어가 드릴게요!<br><br>- 외국인만 보면 도망갔던 분들!<br><br>- 영어공부를 어디서부터 손을 데야 할 지 1도 감이 안오시는 분들!<br><br>- 영어를 책으로만 접했던 분들!<br><br>- 다양한 상황에서 쓸 수 있는 표현들을 알고 싶어하시는 분들!<br><br>- 주말을 의미있게 보내고 싶은 분들!<br><br>- 자기계발을 원하시는 분들!<br><br>- 2020년 새해목표인 영어공부를 실현하고 싶으신 분들까지 모두!<br><br>','영어를 좋아하는 남녀 누구나<br>영포자 여기루 !!!<br>','2:00 : 영어를 왜 못하는지 이유 설명<br>3:00 : 어휘 암기랑 이영어 원래 이뜻이 아니야!<br>4:00 : 질의 응답<br>','2020-02-24','승인',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H14','개발자와 시원하게 대화하자','차분한','교육','IT','그룹','3','120000','100','6de1af4e4facac75b12ac6a8c2520dc088c26ace.jpg','서울 구로구, 디지털로26길 144,구,로빌딩 1층 101호','개발자와의 대화. 막힘 없이 술술 진행되시나요?<br><br>만일 개발자와 대화 중간중간 답답함을 느끼셨다면, 이 수업은 필수입니다.<br><br>하루 수업만으로 앞으로 있을 기나긴 회사 생활에 필요한 코딩 IT지식 가이드를 드립니다.<br><br>몇 가지 용어와 특정 패턴만 이해하면 개발자와의 의사소통은 어렵지 않습니다.<br><br>엑셀이나 워드의 모든 기능을 알지 못해도, 기본 기능은 사용할 수 있는 것과 비슷합니다.<br><br>한 번의 수업으로 필수 용어들과 의사소통에 필요한 개념들을 알려드립니다.<br><br>IT개발자들이 사용하는 용어와, 패턴, 업무 방식에 대한 전반적인 내용을 들으세요.<br><br>수업 이후에는 개발자들 간에 하는 이야기도 들리기 시작합니다.<br>','업무에서 개발자와 의사소통이 필요하신 분.(기획자, 디자이너)<br>개발자로의 전향을 준비 중이신 분.<br>IT 전반에 관련된 지식이 궁금하신 분.<br>외부 IT 회사에 의뢰 또는 협업이 필요하신 분.<br>','14:00 - 일반 개발자의 로드맵 제시<br>15:00 - 실무에 필요한 능력 습득<br>16:00 - 팀워크를 통한 프로젝트 참여하기<br>','2020-02-24','승인',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H14','1분 자기소개, 자소서, 면접 대비','차분한','교육','실무','그룹','2','39000','200','qdfsdf3fd_knande.jpg','서울 강서구, 마곡동 723-1 마루빌딩 1층 101호','수업 1개 신청 시 1분 자기소개1개 무한 첨삭 가능<br><br>면접 전까지 수강생분이 만족하시는 완성본이 나올 때까지 무제한 첨삭해드립니다!<br><br>별 볼 일 없는 스펙에 지방대를 졸업했지만,<br><br>말과 글 하나로 삼성물산과 KBS(한국방송공사)에 공채로 입사할 수 있었습니다.<br><br>제 경험상 1분 자기소개는 지원자의 첫인상을 완전히 결정짓기에 압도적으로 중요합니다.<br><br>자기소개에서 좋은 인상을 남기면 추후 면접 때 실수를 해도 커버가 가능하고,<br><br>전체적인 면접 흐름을 긍정적으로 이끌어 나갈 수 있습니다.<br>','이제 취업 준비하는 사람!<br>면접에서 자꾸 떨어지는 사람!<br>','30분 - 자기소개서 분석<br>30분 - 기업 인재상 분석 및 기업별 핵심 키워드 추출(사내 용어, 업계 용어, 기업 용어)<br>60분 - 1분 자기소개 작성 가이드 및 1분 자기소개 발성, 태도 등 외부적 요소 교정<br>','2020-02-24','승인',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H14','필름카메라와 서울 레트로 여행 - 경희궁','신나는','예술','사진','그룹','2','60000','200','product_banner_1580358445588_223092.jpg','서울 관악구, 관천로12길 39 경희궁','무엇을 제공해 주시나요?<br><br>필름카메라 1대 (1인당 1대) - 대여용<br><br>필름 36컷 (1롤) - 현상스캔 포함<br><br><br>전문적인 필름카메라 지식이 필요한가요?<br><br>초보자의 마음으로 손쉽게 찍을 수 있는<br><br>필름카메라 사용법과 촬영 방법을 미리 알려드려요.<br><br><br>혼자가도 괜찮을까요?<br><br>80~90% 대원분들이 혼자 오십니다.<br><br>아이스 브레이킹과조별 활동으로 어색함을 날려드립니다.<br><br>물론 친구와 오셔도 좋습니다!<br><br>','사진 찍는 걸 좋아하는 사람 누구나!<br>','20분 -질문 카드를 이용한 아이스 브레이킹 (조 편성 포함)<br>15분 -카메라 조작법과 촬영 스팟 공유<br>15분 -카메라 대여 및 유의사항 교육<br>60분 -호스트와 동행하여 필름카메라 야외 촬영<br>10분 - 일정 마무리<br>','2020-02-24','승인',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H20','같이 빵을 태워보실 분을 찾아요','신나는','쿠킹','베이킹','1:1','2','990000','1','yjh01.png','서울 강남구, 강남대로 238 101호','제 수업은 커리큘럼처럼 진행됩니다.<br>','빵을 잘 굽는 사람<br>','빵의 재료부터 굽는 과정, 빵의 완성까지 한 번에 !<br>','2020-02-24','승인',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H20','함께 해요 우리 스키~','신나는','액티비티','아웃도어','그룹','24','600000','6','yjh06.png','서울 강남구, 강남대로 238 102호','경력자 위주로 받습니다. 스키타러 갈래?<br>','스키를 잘 타는 경력있는 사람으로 모집. 신규가입 불가<br>','스키를 잘 타는 사람 위주로 상급자 코스에서 더 즐기면서 탈 수 있게 만들 예정<br>','2020-02-24','승인',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H21','졸리다낭 요리를 즐겨보아요~','차분한','쿠킹','쿠킹','그룹','3','40000','3','yjh02.png','서울 관악구, 강남대로 238 103호','베트남 요리 맛있죠? 요리 어렵지 않아요~<br>같이 만들어보아요~<br>','베트남 요리에 관심있으신 분들은 모두 오세요~<br>','재료 손질부터 베트남 요리 재료, 성분 파악<br>요리 과정 전수<br>','2020-02-24','승인',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H21','여러 액티비티를 한 번에! 바로 이 곳 !','신나는','액티비티','스포츠','그룹','2','50000','10','yjh05.png','서울 강남구, 강남대로 238 104호','스포츠는 효율적으로! 알차고! 신나게! 함께 해요~<br>','스포츠를 좋아하는 모든 친구들<br>','공의 재질을 파악하고, 공의 탄성을 공부<br>얼마나 효율적으로 공을 다룰 수 있는지 검증<br>','2020-02-24','승인',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H22','차분한 공예~ 같이 합시다 모두 히릿 !!','차분한','예술','공예','그룹','5','30000','4','yjh03.png','서울 중구, 강남대로 238 105호','몸도 마음도 차분해질 수 있는 공예<br>같이 배우면 우리 모두 차분한 마음을 가질 수 있어요<br>배워 봅시다~<br>','공예를 즐기고자 하는 모든 사람들<br>','취미로서 공예를 배우고 공예를 습득한다.<br>진짜 커리큘럼은 쓸 게 없다<br>','2020-02-24','승인',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H22','마음 속의 응어리는 미술치료가 최고입니다','차분한','예술','미술','그룹','1','60000','10','yjh08.png','서울 노원구, 강남대로 238 106호','심리치료 마음이 편해요<br>미술치료 마음이 날아가요<br>한 번 오세요~ 신천지보다 좋아요 !!<br>','마음이 응어리가 진 아픈 사람들<br>','미술치료로 아픈 사람이 없도록 내면을 치료하고<br>더 나아가 미술이 몸에 배도록 교육한다<br>','2020-02-24','승인',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H22','뮤직 이즈 유어 라이프','신나는','예술','음악','그룹','4','100000','11','yjh09.png','서울 강남구, 강남대로 238 101호','음악? 씹어먹어보자 고객님들아<br>와라<br>','음악을 즐기는 모든 사람들<br>','음악을 탐구하고 음악을 섭렵하고<br>음악을 재패할 수 있도록 돕는다<br>그것이 나의 커리큘럼<br>','2020-02-24','승인',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H23','실무면접의 모든 것~ 팍팍','차분한','교육','실무','1:1','1','500000','1','yjh11.png','서울 강남구, 강남대로 238 1155호','서류 통과도 힘들었는데 실무면접이라니... 참 힘들죠?<br>제가 조금이나마 도와드리겠습니다<br>인사과 66년차의 경력을 살려 여러분의 면접을 단번에 통과시켜 드립니다.<br>','면접에서 긴장하는 친구들<br>면접을 미리 경험하고 싶은 친구들<br><br>','면접 때 떨지 않고 거짓말할 수 있는 방법을 터득<br>포커페이스를 유지할 수 있는 기술을 습득, 갈고 닦는 것이 주 목적이다<br>','2020-02-24','승인',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H23','20대와 30대의 어학연수는 10대의 그것과 달라야 합니다','차분한','교육','어학','그룹','24','999900','50','yjh10.png','서울 성동구, 강남대로 238 1111호','20대와 30대는 10대와 뇌가 다릅니다.<br>우리는 굳어 가는 뇌를 좀 더 효율적으로 다뤄 영어를 스펀지처럼 촥촥 빨아들일 수 있도록<br>이 호스트가 함께 합니다.<br>','영어에 관심있는 20대, 30대<br>','영어를 친숙하게, 한국어처럼 구사할 수 있도록<br>물적, 심적 지원을 한다<br>','2020-02-24','승인',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H23','내 구형 핸드폰으로 사진을 사진작가처럼? ','신나는','예술','사진','1:1','2','150000','1','yjh07.png','서울 강남구, 강남대로 238 1004호','도구를 탓하지 마세요~ 연장도 탓하지 마세요~<br>저의 1:1 수업은 그 누구보다도 여러분을 스튜디오의 사진사보다,<br>여행 사진작가보다 더 훌륭하게 만들어 드립니다.<br>함께 해요 사진으로~<br>','사진에 관심이 많은 사람<br>','사진 구도와 화질을 파악하고<br>핸드폰의 기능을 살려 보다 좋은 품질의 사진을 얻는다.<br>','2020-02-24','승인',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H23','it시스템 실무과정 대박사건~','차분한','교육','IT','그룹','3','80000','30','yjh04.png','서울 은평구, 강남대로 238 416호','여러분들을 it 시스템 실무과정의 마스터로 만들어 드릴게요<br>저만 믿고 끈기와 의지 이 2개만 준비하시면 됩니다.<br><br>','it 시스템 실무과정을 공부하고 싶은 사람들<br>','시스템 실무 과정의 습득<br>','2020-02-24','승인',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H24','체형을 바로잡는 자세교정 홈트레이닝','신나는','액티비티','스포츠','1:1','1','15000','1','jsg01.jpg','서울 강남구, 강남대로 238 51-3','---------------------------------------------------<br><br><br>무조건 마른 몸매를 원하시나요?<br>그렇다면 제 수업을 듣지 않아도 좋습니다.<br><br>오늘날 대부분 사람들은 참 오랫동안 앉아있어요~<br>공부하는 학생들 혹은 사무실에서 일하는 직장인들<br><br>지하철에 딱 앉아 앞에 있는 사람들을 살펴보세요.<br>그 중 10에 9은 다 구부리고 핸드폰을 보고있죠?<br>따라서 목, 어깨, 허리 등이 엉망인 경우가 많습니다.<br><br>여러분이 만나볼 SNPE(Self Nature Posture Exercise)는<br>한마디로 요가+필라테스+피트니스+카이로프래틱의 장점만을 결합해<br>운동효과를 극대화한 새로운 개념의 자연치유 바른자세 척추운동 입니다.<br><br>집에서 홈트로 하기에 최적화된 운동이죠^.^!<br>수업할 때만 몸이 좋아지는 것이 아니라 저한테 운동 방법을 배워가셔서 집에서 쉽게, 꾸준히 할 수 있도록 만들어졌습니다<br>쉽게 말하면 마치 메이크업 수업이랑 비슷하다고 할 수 있어요, 수업 때는 배우고, 따로 화장품 도구를 스스로 사서, 집에 가서 혼자 연습할 수 있거든요!<br>','으로 모집 되며 원데이 클래스입니다<br><br>*수업 신청하기 전 문의 부탁드립니다.<br>♡→→ 11월 3일 일요일 11AM ← ← 50분으로 진행됩니다 ♡<br>------------------------------------------------?<br><br><br>※ 프라이빗 레슨은 원하는 시간에 진행됩니다 ※ 50분<br>1:1, 2:1, 3:1<br><br>','1회차<br>lt 자세분석 및 SNPE 1번 동작 gt<br><br>● 어깨 말림 CHECK<br>● 인체 균형 테스트<br>● 자세 분석<br><br>● 벨트와 함께 1번 동작<br>- 목디스크 middot 척추측만증 middot 어깨 높낮이 불균형 middot 어깨 통증 완화 middot 허리 통증 middot 허리디스크 예방 middot 산후 몸매관리 middot 골반교정 middot 휜 다리(OX자) 교정<br><br>● 베개와 함께 근막 이완 (목, 어깨, 허리)<br>','2020-02-24','승인',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H24','[ 1일 체험 ] PLAY freediving 프리다이빙 # 3시간','신나는','액티비티','아웃도어','그룹','3','39000','3','jsg02.jpg','서울 광진구, 가가로 14,58-92','프리다이빙은 바다속을 안전하게 유영할 수 있는 기술과 자신의 신체를 트레이닝 하며 즐기는 익스트림스포츠입니다 ^^<br><br>1일 체험을 통해 프리다이빙 매력을 느껴보실수 있습니다<br>물공포증이 있어도 수영 배운적이 없는 분도 할 수 있어요<br>기초적인 스노클링을 마스터 하시고 프리다이빙 경험을 해보고 더 체계적인 교육을 받기 위한 적응단계 입니다<br>----------------------------------------------------------------------------------<br><br>단순하게 체험만 하는게 아니고 프리다이빙의 기초 지식과<br>프리다이빙을 일부 교육 받으시는 프로그램 입니다<br>물위에 부위 기구인 부이를 설치하여 실제 프리다이버처럼 경험을 해 보실 수 있습니다<br><br>위금액은 평일 기준 입니다^^ 주말은 시간당 16,000원 입니다 이점 꼭 확인하여 주세요 감사합니다<br>불포함 다 포함해서 입장료 +장비렌탈비 합치면<br>평일 입장료 12000원 +장비렌탈 9000원 = 60,000원<br>주말 입장료 15000원 +장비렌탈 9000원 = 72,000원<br>결제변경해서 결제 합니다<br><br>주말 원하시면 빠른 문의 부탁 드립니다 본인이 원하시는 날짜를 정하시고 제게 문의하는것이 빠른 예약방법입니다 . 일단 두드리세요<br>풀장에서 뵙겠습니다<br><br>PLAY freediving<br>','보라카이 세부 발리 동남아 휴양지 투어보다 더 재미있고 시원한 1일 체험 입니다 .<br><br>더 이상 튜브 타고 물위에서만 노는 휴가는 가라 ~<br>동남아 이쁜 바다를 온몸으로 느끼는 힐링을 하세요 .~<br><br>수업대상자 예 !!♡<br><br>1.남들 쉽게하는 스노클링이 난 왜 힘들지 ?<br>2. 수영을 좀 배웠는데 잠수는 못하겠어 ㅎㅎ<br>3. 동남아 비행기 티켓 끊으신 분<br>','? 전문 강사가 알려주는 프리다이빙 체험<br><br>1.준비운동 (장비 별도) 고프로 무료 촬영^^<br>2. 호흡법<br>3. 압력평형 (이퀄라이징)<br>4. 다이빙 체험 및 안전 수칙<br>5. 오리발 핀 차기<br><br>체험중 무료 사진 찍어드려요 ^^♡♡(고프로)<br>추억을 남기세요 ^^<br><br>무호흡으로 물속을 유영하는 프리다이빙<br>더이상 바다가 두렵지 않아요<br>물공포증이 있어도 할수 있습니다 ^^<br><br>준비물 : 세면도구 ,실내수영복,수영 모자,(수건 !!)<br>불포함 : 수영장 입장료 ,장비렌탈비<br>','2020-02-24','승인',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H26','♥요리체험♥ "엄빠 미안해, 집밥은 여기가 더 맛있어!"','차분한','쿠킹','쿠킹','그룹','3','30000','4','jsg04.jpg','서울 강동구 명일로 191 305호','수업소개<br>? 클래스 선택<br>- 이벤트 수업 : 30,000원<br>- 평일 수업 : 40,000원<br>- 휴일 수업 : 55,000원<br><br>(토, 일, 공휴일)<br><br><br>※ 유의사항 ※<br><br>*참여하시는 요일에 따라 이벤트/평일/휴일 참가 비용이 상이하오니 신청시 참고해주세요 ^-^<br><br>*이벤트 수업 외의 옵션을 신청하시는 분은 반드시 실시간 톡하기를 통해 맞춤결제를 문의주세요!<br><br>*수업신청시 꼭 날짜와 요리를 확인하시고 신청해주세요!<br><br>===========<br><br>▶ 수업소개<br><br>맨날 나가서 사먹는 밥!<br>오늘은 엄마가 해주시던 따뜻한 음식이 그리우신가요?<br><br>함께해서 더욱 즐거운 시간hellip♡<br><br>엄마가 한듯 손 맛 가득 맛있는 가정식을<br>한식 전문가와 함께 직접 배워봅니다!<br><br>수고한 당신에게<br>직접 만든 요리를 선물하세요.<br><br>','적극 추천 대상<br><br>- 엄마가 해주셨던 집밥이 그리운 분<br>- 부모님과 함께 살지만, 다양한 집밥을 경험하고 싶은 분<br><br>- 현직 한식 전문가에게 직접 배워보고 싶은 분<br>- 요리클래스 하루 체험하고 싶었던 분<br>- 핸드메이드 집밥에 관심이 많은 분<br>- 수제 한식요리를 알고 싶은 분<br>- 이색데이트/실내체험을 하고 싶은 분<br>- 먹는 것에서 느끼는 즐거움이 크신분<br>','강의계획<br>* 모든 수업은 원데이로 진행됩니다.<br>* 진행하는 요리에 따라 약간의 순서진행 과정이 상이할 수 있습니다.<br>▶ 클래스 진행순서<br>bull 15) 집결  튜터소개 및 오리엔테이션<br>bull 10분) 오늘 배울 요리 소개와 레시피스터디<br>bull 5분) 기본적인 쿠킹 툴 사용법<br>(칼질/도마 사용법 등을 배웁니다. 그날 메뉴와 참가자분들 실력에 따라 생략되거나 길어질 수 있습니다)<br>bull 60분~80분) 요리 실습<br>bull 10분) 플레이팅<br>bull +@ 60분) 직접 만든 요리를 함께 즐기기<br>bull 15분) 정리 및 해산<br>(설거지/조리도구 정리 +마지막 인사)<br>','2020-02-24','승인',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H26','[원데이] 폭신폭신 당신은 지금 "다쿠아즈"가 땡긴다!','신나는','쿠킹','베이킹','그룹','2','36000','6','jsg03.jpg','서울 강동구, 동남로 733 2동 81호','프랑스 대표 디저트 다쿠아즈!<br>마카롱의 친구이기도 한데요~<br><br>겉!바!속!촉!<br>겉은 바삭하고, 속은 촉촉한 최고의 조합이에요!<br><br>계량부터 포장까지!<br>인절미맛/초코맛/녹차맛 (각각 8개씩)<br>총 24개의 다쿠아즈를 직접 만들어보실 수 있는 클래스 입니다.<br><br>남녀노소 좋아하는 맛으로 여러분들을 만납니다<br><br><br>나를 위한 다쿠아즈<br><br>머랭을 이용해서 만드는 디저트로,<br>많이 달지않아서 어른들도 좋아하세요!<br><br>계량부터 필링 충전까지 처음부터 끝까지 혼자하는 수업인 만큼<br>정성스러운 선물을 하고 싶을때 더할나위없이 좋은 클래스가 될거예요<br><br>제 클래스을 들으시면!<br>여러분이 좋아하던 빵과 디저트를 더 잘 알고 즐기실 수 있어요!<br>(*왜 이런 이름을 지엇는지까지!)<br><br>만드는 것을 넘어서<br>디저트의 대한 수다도 함께 진행될 예정입니다 :-)<br><br>내 손과 정성으로 만드는 디저트<br>함께 참여해 보아요~♪<br>','#이런분들께 적극추천#<br><br>- 전문 파티쉐에게 베이킹체험 하고 싶은 분<br>- 건강한 디저트 드시고 싶은 분<br>- 집에서도 취미로 베이킹 하고 싶은 분<br>- 가게를 운영하면서 디저트가 필요하신분<br><br>- 제 2의 직업을 원하시는 분들<br>- 집에서 따라하면 항상 실수 하시는분<br>- 유튜브에서 영상은 몇 번 봤지만, 막상 엄두가 안나는 분<br>','강의계획<br>클래스 순서<br><br>소요시간 : 약 2시간<br>만드는 작품 수 : 8개씩, 총 24개<br>맛 종류 : 3가지 맛(인절미/초코/녹차)<br><br>Step.1 구성재료 및 레시피 소개<br><br>Step. 2 실습<br>- 계량<br>- 머랭 만들기<br>- 필링  속채우기<br><br>','2020-02-24','승인',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H26','[오반/유세윤/라디/디어등] 쉽게 접근하는 랩, 보컬 작사작곡','신나는','예술','음악','1:1','2','35000','1','jsg05.jpg','서울 마포구, 가금로 29 304호','수업은 기본 회당 60분에서 90분 진행합니다.<br><br>음악에 대한 기초지식이 전혀 없더라도, 아주 기본적인<br>이론만 최대한 알기쉽게 이해시켜 드린후.<br>수강생 고유의 느낌과 성향에 맞춰 음악으로 하고싶은<br>말을 할수있도록 아주 쉽게 도와드립니다.<br><br>수강생들 100프로 빠르면 1회 느리면 2회 수업차때,<br>본인의 녹음본을 완성해 갈수있었습니다.<br><br>앨범 작업에 손색없는 오디오 인터페이스와 마이크를<br>통하여 실제 뮤지션들 앨범사운드와 비교해도<br>전혀 꿀리지않는 사운드로 다양한 녹음위주의 수업을<br>진행하고 있고, 수업 외의 시간에 본인이 녹음한 곡을<br>모니터링 하고 발성과 리듬감을 발전해나가는 수업입니다<br>','수업대상<br>- 자신만의 음악을 만들고 싶으신 분<br>- 창작욕구가 강하신 분<br>- 실용음악과 입시준비생<br>- 래퍼 이상의 음악예술 자체를 원하시는 분<br>- 훅 메이킹을 하고 싶으신 분<br>- 발성 사운드 디자인에 관심이 있으신 분<br>- 개인 결과물에 대한 만족도가 낮거나<br>디벨롭이 필요하신 분<br>','1회차<br>수강생 개인의 성격,성향과 원하는 방향성을 파악-<br><br>하고싶은 말에 음과 리듬을 쉽게 붙이는 방법 -<br><br>라임, 유행하는 작사법, 플로우 (랩의 음) 설계 설명-<br><br>개개인의 목소리에 맞는 올바른 발성법 훈련-<br>2회차<br>랩이나 보컬을 이용한 다양한 리듬활용법-<br><br>레코딩을 통해 본인이 쓴 랩벌스에 감정 활용-<br><br>보컬과, 랩을 활용한 훅(후렴) 만들기-<br><br><br><br><br>3회차<br>- 작사 자유도의 제한적 틀을 제시하여 과한 자유도에서 오는 선택에 어려움을 방지하는 작사법 과제<br>- Groove 표현<br>- 기초화성악을 통한 비트와 플로우의 이해<br>- 발성 종류의 이해와 응용<br>- 비트 고르기 Tip<br>- 간단한 곡 구성 및 편곡<br>4회차<br>- Bass음을 이용한 더블링 응용 (심화)<br>- 탑라인, 가이드라인 구성<br>- 녹음구간별 사운드 디자인<br>- 보컬 사운드 디자인<br>- Mix  Master<br>- 유통 및 데뷔 Tip<br>','2020-02-24','승인',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H27','[드로잉 클래스] 캐릭터 일러스트','차분한','예술','미술','그룹','2','28000','2','jsg06.jpg','서울 강동구, 명일로 189 511-811','수업소개<br>****<br><br>텔레비전 화면 또는 극장 스크린 속의 애니메이션 주인공들!<br>그런 캐릭터들을 내 손으로 직접 그리고 만들어 본다면 얼마나 재밌고 멋질까요?<br><br>사랑스럽고 이야기가 가득한 캐릭터는 어떻게 만들어지고 어떻게 그릴 수 있는지 알려드릴게요.<br><br>* 아이패드, 타블렛 등 그림 그리기가 가능한 기기가 있으신 분들은 더 응용할 수 있는 방법들을 알려드려요<br>','* 추천)<br><br>- 만화/ 애니메이션을 좋아하시는 분<br>- 캐릭터 만들기에 관심이 있으신 분<br>- 낙서하기 좋아하는 분<br>- 그림 그리기를 취미 혹은 특기로 삼고 싶은 분<br>','1회차<br>- 수업 소개<br>- 손풀기 연습<br>- 기본 인체 드로잉<br><br>학생분 개개인의 목표와 취향, 기존 작업물 등을 참고하여 상담 후 커리큘럼에 참고합니다.<br><br>인물을 그리기 위한 기초 단계부터 쌓아가며 추후 스타일과 목적에 맞는 응용법을 안내합니다<br><br>2회차<br>- 기본 남여 인체<br>3회차<br>-얼굴 드로잉<br>','2020-02-24','승인',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H27','왕초보도 하루면 배우는 아날로그 감성 충만 필름카메라 클래스','차분한','예술','사진','그룹','2','35000','8','jsg07.jpg','서울 송파구, 양재대로 지하 1231 정문앞','<br>?1. 그냥 몸만 오세요! 필카와 필름은 다 준비되어 있습니다.<br><br>필름카메라가 없는데 어떡하지?라는 고민하실 필요없습니다.<br>올드스쿨 감성을 자극하는 필름카메라가<br>수강생 한 분당 한대씩 사용할 수 있게 준비되어 있어요.<br>필름 한 통도 수업료에 포함되어 있습니다.<br><br>필카를 경험해보시고 구매 결정할 수 있다는 게<br>이 수업의 가장 큰 장점이라 생각합니다!<br><br><br>?2. 이론만 듣는 수업은 지겹다. 촬영실습!<br><br>필름감성이 아무리 좋아도 앉아서 수업만 들으면 재미없잖아요.<br>이론 수업 딱 1시간하고 근처 산책로에 가서<br>배운 내용대로 직접 필름 한 통을 촬영하실겁니다.<br><br>사진을 전혀 모르는 데 딱 1시간 수업듣고<br>정말 필카 촬영이 가능할까요?<br><br>매우 가능합니다ㅋㅋ<br>혼자 오시면 고즈넉하게 필름감성에 제대로 취해보시고<br><br>친구, 혹은 연인과 함께 오시면 다 비슷한 스마트폰 사진과는<br>차원이 다른 감성의 인생샷을 얻을 수 있습니다!<br>','? 사진을 1도 모르시는 분<br>? 필카를 살까말까 고민 중이신 분<br>? 장롱에서 옛날에 부모님께서 쓰시던 필카를 찾으신 분<br>? 영롱한 필카의 자태에 홀려 야심차게 구매하셨지만 독학에 실패하신 분<br>? 언젠가 능숙하게 카메라를 다루고 싶으신 분<br>? 새로운 취미를 갖고 싶으신 분<br>? 같이 다니면서 친구들 사진 찍어주기 좋아하시는 분<br>? 여행 좋아하시는 분<br><br>','강의계획<br>??Part 1. 이론 수업 - 1 시간<br><br>?자동카메라는 왜 자동카메라일까<br><br>자동카메라는 말을 정말 많이 사용하고 있지만<br>카메라가 정작 무엇을 자동으로 해주는 지는 전혀 모르고 있습니다.<br><br>이 개념만 알아도 사진이 아주 쉬워집니다! 알려드릴게요!<br><br>--------<br><br>?전설로만 전해지는 셔터스피드, 조리개, ISO<br><br>정말 많이 들어봤지만 아무도 정리해주지 않았던 이 세 가지.<br>한번에 정리해드릴게요. 생각보다 진짜 별거 없습니다. 쫄지마세요!<br><br>--------<br><br>?기계치인 내가 과연 필름카메라를 다룰 수 있을까, 필카 사용법.<br><br>멀쩡한 기계도 내가 만지면 고장나던데ㅠ 필카, 과연 괜찮을까?<br>사용법을 정확하게 알면 고장날 일이 없습니다.<br>사진 초보자가 사용하기 가장 편한 모델로 수업하니<br>필카를 부디 편한 친구로 생각해주세요!<br><br>','2020-02-24','승인',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H27','나만의 천연가죽 에어팟 케이스를 만들어보자!!','차분한','예술','공예','그룹','3','39000','2','jsg08.jpg','서울 마포구, 가양대로 117 308호','안녕하세요,<br><br>서교동 작은 쏘셜클럽 동방싸롱의 맨 끝방,<br><br>가죽 워크샵 라미서울입니다 :)<br><br>화학약품을 사용하지 않는<br><br>이태리 베지터블 소가죽만을 사용해<br><br>다양한 작업을 하고 있습니다.<br><br>이번에 함께 할 제품은<br>라미서울의 에어팟케이스입니다.<br><br>순수 이태리 베지터블 소가죽만을 사용하며<br>화학약품을 사용하지 않아<br>친환경적인것은 물론 뛰어난 퀄리티의<br>제품을 만들어 보실 수 있습니다.<br><br>[ 컬러 옵션 ]<br><br>- 가죽 : 기본 4색 중 택 1<br><br>(기본색 : 베이지 / 블랙 / 그린 / 레드)<br><br>*공방 구비 상황에 따라 추가 선택 가능합니다<br><br>- 스티치 : 20가지 이상<br><br>*재료비 발생 : 20,000원<br>/<br>화학약품 없이 물로만 단면을 마감하고,<br>새들스티치로 바느질 해 마무리합니다.<br><br>실용적이면서도 내 손으로 만져보는 시간을<br>최대한 많이 가져볼 수 있게 디자인 된<br>에어팟 가죽케이스이며,<br>저의 많은 고민이 전해졌으면 좋겠어요.<br><br>일반 가죽과 비교할 수 없을 만큼 질감이 우수하고<br>유해물질이 포함되지 않아 안전하며<br>시간이 흘러 태닝이 될수록 더욱 매력을 뽐내는<br>이태리 천연 소가죽으로 나만의 에어팟케이스를 만들어보아요 :)<br>/<br>*베지터블의 가장 큰 특징은 에이징(태닝)이 된다는 것입니다.<br>나의 사용습관에 따라 더욱 멋지게 에이징되면서<br>세상에 단 하나밖에 없는 나만의 제품을 가져보세요!<br>라미서울은 모든 창작물에<br>베라펠레 인증 이태리 베지터블 소가죽만 사용하며,<br>식용도축되거나 자연사한 동물의 가죽만 사용합니다.<br>또한, 식용 도축이 더 인도적으로 행해지길 소원합니다.*<br>','-소중한 나의 에어팟에 고급 가죽옷을 입히고 싶지만<br>기성 가죽제품의 비싸고 낮은 품질에 고민하시던 분.<br><br>-소중한 사람에게 내 손길이 닿은 특별한 선물을 하고싶은 분.<br><br>-내가 만든 나의 가죽제품을 지니고 다니고 싶은분.<br><br>-한땀 한땀 정성스래 만들기 좋아하시는 분.<br><br>-새로운 사람들과 함께 어울리고 싶은 분.<br>','강의계획<br>0. 가죽과 실의 컬러를<br>가장 마음에 드는 조합으로 선택합니다.<br><br>1. 정성으로 완성되는 단면 윤내기<br>재단된 패턴의 단면에 물을 묻혀<br>슬리커로 문질러 면을 부드럽게 정리합니다.<br><br>2. 간편하게 열고 닫는 스냅버튼<br>똑딱이 단추를 달아 편리하게 열고 닫을 수 있습니다.<br><br>3. 불도장으로 나만의 문구 새기기 핫스탬핑<br>정성들여 만든 제품에 지워지지 않는 문구를 새깁니다<br><br>4. 편리한 스트랩 X자 스티치로 D링 달기<br>D링에 스트랩을 달면 떨어뜨리지 않고 멋스러워요! :)<br><br>5. 튼튼한 바느질의 대명사 새들스티치<br>바늘 두 개를 실의 양쪽 끝에 끼워<br>지그재그로 서로 엮어 튼튼하게 바느질 해줍니다.<br><br><br><br>재료비 포함내용<br><br>- 에어팟 케이스 1개분 가죽  실  스냅버튼<br>- 베라펠레 베지터블가죽 보증서<br>- 가죽제품 취급 설명서<br>- 라미서울 스티커<br>- 선물 포장용 박스  끈<br>','2020-02-24','미결',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H25','남미, 스페인 여행가기 전! 로컬들과 소통하는 왕초보 스페인어!','신나는','교육','어학','그룹','2','20000','6','jsg10.jpg','서울 강남구, 강남대로 250 205호','수업소개<br>수업 신청전 문의로 꼭 체크해주세요!<br><br>*********************************************************<br><br>스페인어는 스페인 뿐만 아니라 중남미 대부분에서 사용되는 언어이죠:)<br><br>꽃보다 할배 이후 정말 인기 많은 여행지인 스페인!<br>배낭여행의 끝 남아메리카!<br>여행을 좀 더 풍부하게 즐기고 싶으신가요?<br><br>요즘은 local 식당, 작은 마을을 가는 추세이죠?<br>주요 관광지라면 영어가 통하지만 이런 곳들은 영어가 통하지 않아요.<br>마추피추, 우유니 소금 사막으로 유명한 남미 역시 영어가 거의 통하지 않죠.<br>완벽하지 않아도 현지어로 인사를 건네고 물건을 사면서<br>현지사람과도 더 가까워져보아요.<br><br>보께리아시장에서 구경만 하지 말고 맛있는 과일, 하몽을 원하는 만큼 직접 사보고, 기차역과 숙소에서 운행 스케줄과 가격표를 한눈에 알아보면 어떨까요?!<br><br>★수업을 통해 우리는?★<br>- 대도시가 아닌 소도시에서도 인사를 하고 간단한 대화를 할 수 있어요<br>- 레스토랑의 메뉴에 대해 알 수 있어요<br>- 스페인과 중남미의 진짜 음식과 문화에 대해 이해할 수 있어요<br>- 시장에서 상인에게 과일을 사고 하몽을 살 수 있어요<br>- 수공예 시장에서 물건을 흥정할 수 있어요<br>- 표지판을 이해하고, 길을 물어볼 수 있어요<br>- 기차, 버스 스케줄을 이해할 수 있어요<br>- 경찰에 물건 도난 사건을 신고할 수 있어요<br>- 혼자 질문을 하는 것이 아니라 상대방의 말도 알아들을 수 있어요!!!!!<br><br><br>* 여행 상황별 회화 중심으로 진행되며, 그에 따른 문법도 함께 설명합니다.<br>회화만 달달 외우면 외워지지 않아요:)<br>기초 문법을 이해해야 원하는 말을 구사할 수 있겠죠?<br><br>수업 시작전 별도 프린트물을 메일로 보내드려요!<br><br>* 그룹수업 1:1 수업 모두 가능합니다. 다만 1:1 수업은 시간당 25,000원입니다.<br>','이런 분들을 환영해요!<br><br>1. 스페인어권으로 여행을 계획하신 분<br>2. 여행을 좀 더 풍족하게 로컬 스럽게 하고 싶으신 분<br>3. 여행계획 짜기 어려운 분(기차 예약, 루트 및 맛집 추천 언제나 도와드려요)<br>4. 영어 이외에 자기소개쯤은 멋지게 다른 언어로 하고 싶으신 분<br>','1회차<br>1. 오리엔테이션(수업 진행 방법, 각 튜티분들 의견 수렴 등)<br>2. 스페인 여행은 어떻게?<br>3. 스페인어 기초(알파벳, 읽기, 기본 문법구조)<br>4. ser와 estar동사 활용 (영어의 be 동사에 해당합니다)<br>5. 인사하기<br>- 안녕! 나는 한국에서 온 멜리사야! hola!! Soy Melisa de Corea :)<br>- 아침/점심/저녁 인사<br>- 감사합니다.<br><br>6. 위치 묻기<br>- 지하철은 어디에 있나요? 화장실은 어디인가요?<br>Perdoacuten, doacutende estaacute el servicio?(metro, mercado..)<br>- 구엘공원으로 가는 버스는 어디서 타나요???<br>- 답변 알아듣기<br>- 스페인은 정말 소매치기가 많을까? 중남미는 치안이 정말로 안좋을까?<br><br>2회차<br>1. 주문하기/물건사기(시장, 카페)<br>- 얼마예요? 복숭아 5개 주세요!!<br><br>- 하몽 슈퍼에서 포장된 것 말고 시장에서 1000배 맛있는걸로 사먹어봐요!!<br>Quiero 100g de Jamoacuten, y 200g de chorizo por favor:)<br><br>- 아이스 아메리카노를 찾아 스타벅스로<br>Quiero un americano con hielo.<br><br>- 입장권을 구매해요<br><br>- 스페인어 숫자 표현<br><br>2. 주문하기(레스토랑에서)<br>- 물가가 비싼 바르셀로나에서 가장 합리적으로 밥을 먹는 방법은?<br>(menu del dia주문하기)<br>- 주요 음식 표현(에피타이저, 본식, 디저트)<br>- 소금 적게 넣어 주세요<br>- 스페인에는 상그리아만 있을까요? 스페인에서 마실 수 있는 다양한 음료!<br>- 계산서 주세요! 각 국가별 식당에서 팁은?<br><br>3. 시간/요일 표현<br>- 8시 기차표입니다<br>- 스페인 요일<br>','2020-02-24','미결',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H25','[2020년 2월반 모집]서비스 설계부터 배포까지! 요즘 핫한 React','차분한','교육','IT','그룹','3','30000','6','jsg11.jpg','서울 관악구, 관천로 17 3층 3관','★ 서비스 설계부터 배포까지! 요즘 핫한 React리액트 제대로 배우기 ★<br><br>** 2020년 2월 8일 토요일 모집중입니다<br><br>? 수업안내<br><br>- 장소: 서울대입구역 근처<br>- 준비물: 개인 노트북 필참!<br><br>* 수업 신청전에 꼭 문의 메세지 부탁드립니다!<br><br><br>? 수업의 강점<br><br><br><br>ⓐ기초부터 차근차근 학습하실 수 있도록 도와드려요.<br><br><br>리액트를 처음부터 모두 혼자 공부하는건 정말 어려워요. 처음 공부하면 모르는 용어, 알 수 없는 애러가 계속 발생하거든요.<br>기초부터 차근차근 자기 실력에 맞는 학습과 연습이 필요해요.<br>5번의 강의만에 그치지 않고 추가적으로 어느 부분을 공부하셔야 할지, 그리고 어떤 부분을 연습하셔야 할지에 대한 체계적인 내용을 작은 책 한권 정도 분량으로 정리된 학습자료로 전달해 드려요.<br>또한 혹시나 수업을 빠지시거나 중간에 놓치시는 부분이 있더라도 따라오시고 공부하실 수 있도록 추가 학습자료로 모든 학습내용을 정리해서 드려요.<br>혼자서 공부하기에 결코 쉽지 않은 리액트 따라오실 수 있도록 옆에서 응원하고 계속 도와드릴게요!<br><br><br>ⓑ 개발부터 배포까지 전 과정에 걸쳐 실무에 반드시 필요한 핵심 개념 + 실습 + 최신트랜드를 적절히 조화한 강의에요.<br><br>초기 셋팅부터 개발, 배포까지 배운 내용을 토대로 내 손으로 직접 만들어보며 좀 더 재밌게 체득하도록 도와드려요.<br>그리고 이를 바로 활용하실 수 있도록 실무에서 활용하는 필수적인 개념들과 패턴들을 그리고 최신 사용되는 라이브러리(hooks, styled component 등)를 다뤄보고 추가적인 공부를 이어가실 수 있도록 길을 잡아드려요.<br><br><br>ⓒ 리액트를 적용해 활용하고 있는 실무자의 1:1피드백!!!<br>단순 온라인 강의나 책만으로는 채워지지 못했던 내 코드 및 설계 습관에 대한 피드백을 드려요.<br>수강생 여러분들은 매주 배운내용을 복습하는 과제를 제출하고 그 코드에 대한 피드백을 받으실 수 있어요.<br>과제를 하면서 어려우셨던 부분, 혼자 공부하면서 어려우셨던 부분들을 수강생분의 필요에 맞춰 딱딱 채워드려요.<br>공부방향과 취업시장에 대한 질문도 언제든지 환영입니다.<br><br><br>? 수업 진행방식<br><br>ⓐ 웹으로 정리된 예습 자료를 통한 기본 개념 이해, 간단한 실습<br>ⓑ 개념 설명과 실습이 조화된 강의 + 심화 및 복습용 교육자료<br>ⓒ 응용 및 이해를 위한 과제 제출, 제출 과제에 대한 1:1 코드 리뷰 / 피드백<br>ⓓ 슬랙을 통한 실시간 QA<br><br>ⓐ 웹으로 정리된 예습 자료를 통한 기본 개념 이해, 간단한 실습<br>웹사이트를 통해 모바일과 데스크탑 모두에서 쉽게 교육자료를 보실 수 있어요. 교육 홈페이지에서 수업 시작 전에 알아 두면 좋은 개념과 추가 공부자료를 제공해 드려요. 수강생분의 배경지식과 실력에 따라 필요하신 부분들을 찾아보고 공부하실 수 있게 도와드려요.<br><br><br>','혼자 React를 공부하다가 의지부족/어려움 등으로 실패하신 분<br>기초는 여러 온라인 강의를 통해 배우긴 했지만 무언가를 만들기에는 더 공부가 필요한 것 같고,그렇다고 혼자 공부하려니 뭐를 해야 될지 모르겠는 분!<br>프로젝트와 간단한 서비스 구현 과정을 통해 만들어가는 것에 재미를 붙이실 수 있도록 도와드려요.<br><br>','1회차<br>첫 주차는 리액트에서 반드시 알아야 할 필수적인 내용들을 빠르게 이해하고 다뤄보는 시간입니다. javascript 기본적인 개념과 react의 핵심 기능을 훑어보고 본격적으로 react의 세상으로 deep dive할 준비를 해봐요.<br>예습 :<br>React 개발환경 설정(node, create-react-app, github)<br>JavaScript 기본 문법 간단 정리<br>수업 : 카운터 만들기<br>리액트란 무엇인가?(리액트의 등장배경, SPA, 언제 React를 쓰는가 등)<br>리액트의 특징(DOM, Virtual DOM ,단방향 데이터 흐름, 컴포넌트 구조 등)<br>JavaScript (ES6) 기본 개념(class, let, const, arrow function 등)<br>JSX 기초(기본문법, 개념 ClassName, style등)<br>Component, Props, State 다루기 (기초 문법, setState, lifting up state)<br>Event 다루기( 숫자 증가 / 감소 카운터 만들기)<br>Lifecycle (개념 설명, 예제)<br>','2020-02-24','미결',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H25','[직장인의 말하기] "최소한의 말"로 감정 없이! 우아하게!','신나는','교육','실무','그룹','2','30000','6','jsg12.jpg','서울 강남구, 강남대로 278 506','말의 효과는 메신저와 메시지가 결정합니다.<br>메신저가 우아하면, 메시지도 함께 우아해지죠.<br><br>만약 메신저가 자꾸 실수하면,<br>메시지가 훌륭해도 메신저 때문에 격이 떨어집니다.<br><br>반대로 메시지가 엉망이면, 메신저를 손상시키고요.<br><br>이 메신저와 메시지를 결정하는 회사 내 주요한 상황들이 있습니다.<br>바로 이 상황들을 지금보다 똑똑하게 활용하기 위한 수업입니다.<br><br><br>? 수업 목표<br><br>사내 커뮤니케이션 상황별 말하기 노하우를 터득하는 게 목표입니다!<br><br>그래서 이 수업은<br>직장인 분들의 말하기 전략이면서, 처세술이기도 해요.<br><br>이 전략들을 토대로<br>좀 더 주도적으로 자신의 역할과 상황을 결정할 수 있게 도와드릴게요!<br><br><br>? 기대하셔도 좋은 점<br><br>① 미안한데 이것 좀 부탁할게로부터 벗어납니다.<br>② 말의 횟수를 줄이면서 더욱 명확한 커뮤니케이션 가능해요.<br>③ 상대가 높은 상사든 다수의 동료든 조율하는 여유가 생겨요.<br>④ 애매하고 짜증나는 뒷얘기들, 똑똑하게 벗어납니다.<br>⑤ 겸손함과 소극적인 것을 구분해서 풀어갈 수 있어요.<br><br>','? 이런 문제 해결에 도움이 됩니다!<br>- 커뮤니케이션 비용이 커서 야근이나 잔업이 많은 분들<br>- 상사  동료들과 대화하기 두려운 분들<br>- 회의나 토론에서 말을 꺼내기 수월치 않은 분들<br>- 말만하면 무시 당하거나 묻히는 분들<br>- 거절을 못해, 무조건 수락하는 YES쟁이 분들<br>- 업무상 또는 친목상 더 많은 발언 기회를 갖고 싶은 분들<br><br>','강의계획<br># 직장인 말하기의 기본<br>- 왠지 모르게 우아한 사람, 가만히 있어도 시선이 가는 이유<br>- 자세와 목소리에서 감정을 빼는 노하우<br>- 작은 소리로 모든 청중에게 닿을 수 있는 발성법<br>- 똑같은 의미라도 문장을 간결하게, 풍부한 어휘를 구사하는 노하우<br><br># 말실수 대처법<br>- 현명하게 말실수 주워 담기<br>- 실수한 상황에서 벗어나는 넘기기 요령<br><br># 회의 스킬의 모든 것<br>- 흐름을 가져오는 화제 전환 요령<br>- 똑똑하게 다른 의견 이끌어내기<br><br># 본 게임을 유리하게 만드는 사전 작업<br>- Tea 타임, 엘리베이터 타임 활용법<br><br># 똑똑한 반대 요령<br>- 호감가는 반대 내용 구성과 애티튜드<br>- 반대하는 사람까지 내편으로 만드는 요령<br><br># 적은 말로 인싸되기<br>- 세련된 직장인의 말하기2 : 8듣기 법칙<br>- 2:8 비율로 말하면서 인싸되는 요령<br><br># 남의 말 다루기<br>- 말 배달만으로 존재감을 만드는 요령<br>- 나에 대한 오해가 돌아다닐 때 대처법<br>','2020-02-24','미결',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H32','운동 전문가의 필라테스 + P.T 한번에 배우기','신나는','액티비티','스포츠','1:1','1','19000','1','cls012.png','서울 서초구, 반포대로30길 86 90-2','<br>신분 인증 됨<br><br><br>cenatreal pilates mat 재퐐 필라테스 전문가<br>cenatreal pilates reformer 재활 필라테스 전문가<br>cenatreal pilates cadilac, chair baree 재활 필라테스 전문가<br><br>센트리얼 필라테스 재활 필라테스 전문가 과정 수료<br>trudy pilates 상지 재활 심화과정 수료<br>해부하 평가법, 체형 평가 및 분석 교육과정 수료<br>상지 심화 기능해부학 및 도수 요법 수료<br>하지 심화 기능해부학 및 도수 요법 수료<br>미스터 서울 비키니 5위<br>전 ) 2X 휘트니스 근무<br>전 ) 프로 휘트니스 근무<br>전 ) 스타 휘트니스 근무<br><br>? 튜터소개<br><br>안녕하세요 퍼스널 트레이너 및 필라테스 강사 이지원 입니다.<br><br>필라테스와 퍼스널트레이닝 어떻게 보면 상상되는 이미지가 정반대 이기 때문에 완전히 다른 운동으로만 생각하고 계시진 않았나요?<br><br>사실 필라테스 및 퍼스널트레이닝(웨이트 트레이닝)의 기본적인 움직임은 같고 운동학적으로 서로 시너지가될수 있습니다<br><br>필라테스를 통한 체형교정 및 근육의 기능개선<br>웨이트트레이닝을 통한 다이어트 및 근력 발달까지<br><br>제가 한번에 도와드리겠습니다 :-)<br><br>제 수업은 크게 두가지 운동을 바탕으로 수업이 진행됩니다<br><br>첫번째, 기구필라테스를 통한 체형교정 및 몸의 움직임 개선<br>두번째, 웨이트트레이닝을 통한 다이어트 및 근력강화<br><br><br>? 필라테스는 기본적으로 3가지의 움직임을 바탕으로 운동됩니다<br><br>1. 정렬<br>2. 호흡<br>3. 분절<br><br>이렇게 세가지의 움직임을 통해 인체의 올바른 체형 및 움직임을 개선 시키고자 고안된 운동이 바로 필라테스 입니다, 이에 우선적으로 필라테스 운동을 통해 몸의 균형 및 체형을 교정하고 올바른 움직임을 만들어 내고 필라테스를 통해 개선된 체형과 움직임은 높은 강도, 즉 웨이트 트레이닝을 할수 있는 환경을 제공해줍니다,<br><br><br>? 올바른 체형 및 움직임이 나온다면 웨이트 트레이닝을 통해 효과적으로 근력강화및 다이어트가 가능합니다<br><br>필라테스는 기본적으로 교정 및 움직임 개선을 위해 고안된 운동으로 상대적으로 운동강도가 낮습니다. 이에 효율적으로 근력을 향상시키거나 다이어트를 만들어 내기 어려운데 이에 필라테스를 통해 개선된 체형및 움직임으로 웨이트 트레이닝을 효과적으로 운동시킵니다.<br>',' 체형교정 및 통증관리가 필요해 필라테스를 배우고자 하는분<br><br>다이어트 및 근력강화를 위해 P.T를 받고자 하는분<br><br>운동을 전문적으로 배우고 싶고 어떻게 운동해야하는지 알고싶은분<br><br>앞으로 운동에 대한 방향성 및 목표를 설정 받고 싶으신분<br>','<br>* Step1<br>몸에 대한 평가 시간입니다.<br><br>운동 기능 검사, 체형 평가 를 통해 몸에대한 문제를 파악하고 어떤 문제가 잇는지, 그리고 이를 어떻게 해결해아하는지에대한 솔루션을 드립니다.<br><br>* Step2<br>필라테스 및 웨이트트레이닝에 대한 기초를 배우는 시간입니다<br><br>필라테스의 호흡,정렬,분절에 대한 이해<br>웨이트트레이닝에대한 호흡 그리고 기본적인 움직임을 배우는 시간입니다.<br><br>* Step3<br>기초를 바탕으로 트레이니을 시작하는 단계입니다<br><br>나에게 맞는 운동은 무엇이고 또한 어떻게 운동해야하는지 정확하게 배우고 트레이닝하는 시간입니다.<br>','2020-02-24','미결',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H32','폭신폭신 당신은 지금 "다쿠아즈"가 땡긴다! 수제 다쿠아즈 클래스!','신나는','쿠킹','베이킹','그룹','2','25000','5','cls021.jpg','서울 서초구, 반포대로30길 86 90-2','<br>신분 인증 됨<br><br><br>현) 합정 마카롱 카페 운영  오너쉐프<br><br>※ 자격보유 ※<br>- 제과기능사 자격증<br>- 바리스타 2급 자격증<br>- 한식조리사 자격증<br><br>? 이력<br>- 前 베이킹 공방 운영<br>- 베이킹 창업반 강의 진행<br>- 베이킹 대량생산 클래스 강의<br>- 성인 대상 원데이/취미정규 클래스 다수 진행<br><br>? 인사말<br><br>안녕하세요~!<br><br>현재 합정역에서 마카롱 카페를 운영중인 오너 쉐프, 국혜정 튜터 입니다.<br><br>저는 까페를 하기 전,<br>오랜 시간 핸드메이드 베이킹 공방을 운영해왔는데요!<br>디저트 카페를 운영한지는 약 4년정도 되었습니다 :)<br><br>꽤나 오랜 시간 빵과 디저트를 가까이 해오다 보니,<br>웬만한 빵덕후, 디저트 덕후 분들을 많이 만나뵈었는데요!<br><br>제가 알려드린 레시피로<br>가게 창업까지 고려하시는 분들을 보며!<br><br>카페에서 판매하는 맛있는 디저트를<br>집에 가서도 취미로 즐기실 수 있도록<br>이렇게 베이킹체험 클래스를 오픈하게 되었습니다!<br><br>++ 많은 분들의 성원에 힘입어 1탄 뚱카롱 클래스에 이은 2탄 다쿠아즈 클래스를 오픈 합니다.<br><br>▼ 뚱카롱 클래스 ▼<br>https://taling.me/Talent/Detail/12656<br><br>맛있고 즐거운 클래스로 보답하겠습니다!<br><br>현직 오너쉐프인 저와함께<br>일일 파티쉐로 달콤한 체험도 하고,<br>폭신 바삭한 다쿠아즈로로 일상의 부드러움을 채워보세요~!<br>수업소개<br>- 진행시간 : 1시간 30-2시간 소요<br>- 작품 : 직접 만든 수제다쿠아즈 12개 (8가지 맛 中 2가지 선택)<br>- 추가비용 : X<br>- 포함사항 : 재료비/강습비/개별 포장패키지보냉팩/레시피<br>수업에 15분이상 지각시 레시피만 제공 됩니다<br>장소가 협소 합니다<br>시간변동시 다른수업이렁 병행 할 수 있습니다<br><br><br><br>? 클래스 소개<br><br>요즘 베스트셀링 No. 1!<br>바로 대세 디저트 다쿠아즈인데요~<br><br>마카롱 보다 만들기 쉽고, 폭신 바삭한 매력이 돋보이는<br>다쿠아즈를 직접 만들어 보시는 수제 베이킹 클래스 입니다<br><br>나의 취향따라 입맛대로!<br>아래의 필링들 중 원하는 맛을 선택할 수 있어 공방에서도 인기 있는 수업 입니다★<br><br><br>? 다쿠아즈 필링 선택옵션 ?<br>* 아래의 옵션 중 2가지를 선택하실 수 있습니다.<br>* 모든 재료는 수업에 준비되기 때문에 빈손으로 놀러오세요!<br><br><br>#1. 얼그레이<br>: 직접 만든 수제 얼그레이 잼을 넣어 홍차향 가득, 달콤한 맛 여성 고객분들이 좋아 하는 맛이에요.<br><br>#2. 황치즈<br>: 단짠에 정석! 고급스러운 치즈스프레드로 중독성 강한 맛<br><br>#3. 브라우니<br>: 꾸덕하게 구운 브라우니가 쏙~ 들어가요!<br><br>#4. 인절미<br>: 익숙한 맛이라 남녀노소 좋아하는, 가운데 인절미 떡까지 들어가서 쫀득 폭신한 맛<br><br>#5. 오레오<br>: 오레오 덕후라면 놓칠수 없는 맛<br><br>#6. 로투스<br>: 안에도 밖에도 가득가득 넣어 주는 로튜스맛, 커피랑 최강조합!<br><br>#7. 딸기우유<br>: 수제 딸기 잼과 우유가 들어가 상큼한 맛<br><br>#8. 조리퐁<br>: 입안 가득 고소한 조리퐁이 들어가 누구나 쉽게 소화할 수 있는 맛<br>','- 일일 파티쉐 체험하고 싶은 분<br>- 내가 원하는 맛으로 많이 만들고싶은 분<br>- 폭신 바삭한 진짜 다쿠아즈 먹고 싶은 분<br>','진행시간 : 2시간<br>만드는 작품 : 2가지 맛 다쿠아즈 (12개)<br>*포장박스/포장패키지보냉팩/레시피<br><br>? 클래스 진행순서 ?<br><br>Cht. 1 간단한 베이킹 이론 및 도구활용법 안내<br><br>Cht. 2 시연  실습<br>','2020-02-24','미결',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H33','엄빠 미안해, 집밥은 여기가 더 맛있어!','신나는','쿠킹','쿠킹','그룹','2','25000','5','cls031.jpg','서울 서초구, 반포대로30길 86 90-3','? 클래스 선택<br>- 이벤트 수업 : 30,000원<br>- 평일 수업 : 40,000원<br>- 휴일 수업 : 55,000원<br><br>(토, 일, 공휴일)<br><br><br>※ 유의사항 ※<br><br>*참여하시는 요일에 따라 이벤트/평일/휴일 참가 비용이 상이하오니 신청시 참고해주세요 ^-^<br><br>*이벤트 수업 외의 옵션을 신청하시는 분은 반드시 실시간 톡하기를 통해 맞춤결제를 문의주세요!<br><br>*수업신청시 꼭 날짜와 요리를 확인하시고 신청해주세요!<br><br>===========<br><br>▶ 수업소개<br><br>맨날 나가서 사먹는 밥!<br>오늘은 엄마가 해주시던 따뜻한 음식이 그리우신가요?<br><br>함께해서 더욱 즐거운 시간hellip♡<br><br>엄마가 한듯 손 맛 가득 맛있는 가정식을<br>한식 전문가와 함께 직접 배워봅니다!<br><br>수고한 당신에게<br>직접 만든 요리를 선물하세요.<br><br><br>? 오늘의 집밥 만들기<br><br>초계탕, 콩국수, 막국수보쌈<br>전부 식당에서만 먹는 것 아니냐구요!?<br><br>제가 운영하는 집밥 클래스에 오시면<br>맨날 해먹던 반찬말고!<br><br>그날 그날 마다 진행하는<br>당일의 재료수급과 시장상황에 따라<br><br>가장 맛있는 재료를 활용해<br>여러분도 온기가 느껴지는 집밥을 먹을 수 있게 됩니다.<br>(*메인 메뉴 1-2가지가량을 만들어요)<br><br>? 내가 만들어 믿을 수 있는 요리<br><br>영화lt리틀포레스트gt에<br>최고의 요리는 아무래도 직접 해먹는 요리가 아닐까?라는 대사가 있죠.<br><br>제가 운영하는 한식연구소에서는!<br>제대로 된 진짜 요리를 직접 하고, 그것을 함께 즐기는 것을 목표로하고 있어요..<br><br>나의 손길이 닿은 재료 손질부터<br>직접 조리하고, 그릇에 담아내는 과정까지<br><br>함께 참여하시는 분들과 식사 시간을 가지며 힐링하실 수 있어요.<br><br><br>? 하나를 배워도 제대로!<br><br>제가 운영하는 집밥 클래스를 듣게 되면,<br>요리과정을 꼼꼼히 살펴드리는 만큼 늘 실패 없이 군침도는 요리가 완성됩니다 :)<br><br>어디가서 배우기 힘든<br>칼질 기본기/양념공식/재료 손질법 등을<br>요리의 정석을 배우고나면 요리자신감이 생겨요!<br><br>★ 다른 요리에도 다양히 응용할 수 있는 요리 꿀팁은 덤입니다~!<br><br>평소 궁금하셨던 요리지식도 물어주세요.<br>집밥이라는 주제로 얘기 나누다보면<br><br>어느새<br>선생님, 다른 참가자분들과도 분위기에 녹아 즐거운 담소시간이 됩니다.<br><br>맛있는 요리, 좋은 사람과 함께,<br>어느새 피곤한 일상이 잊혀집니다.<br><br>특별하지 않은 특별한 날!<br>여러분만을 위한 파티를 즐겨보세요 :)<br><br><br>★안내사항<br><br>bull 2인 1조로 직접 조리합니다.<br>bull 요리 후엔 다 함께 맛보고 즐기는 시간을 가질 거예요.<br>bull 포장도 가능합니다!<br>bull 조리기능장 선생님께 칼질부터 직접 배워요!<br>bull 요리에 관심 있는 초보~고수 요리인이 함께 즐깁니다!<br>','- 엄마가 해주셨던 집밥이 그리운 분<br>- 부모님과 함께 살지만, 다양한 집밥을 경험하고 싶은 분<br><br>- 현직 한식 전문가에게 직접 배워보고 싶은 분<br>- 요리클래스 하루 체험하고 싶었던 분<br>- 핸드메이드 집밥에 관심이 많은 분<br>- 수제 한식요리를 알고 싶은 분<br><br>- 이색데이트/실내체험을 하고 싶은 분<br>- 먹는 것에서 느끼는 즐거움이 크신분<br>','* 모든 수업은 원데이로 진행됩니다.<br>* 진행하는 요리에 따라 약간의 순서진행 과정이 상이할 수 있습니다.<br><br>▶ 클래스 진행순서<br><br>bull 15분) 집결  튜터소개 및 오리엔테이션<br><br>bull 10분) 오늘 배울 요리 소개와 레시피스터디<br><br>bull 5분) 기본적인 쿠킹 툴 사용법<br>(칼질/도마 사용법 등을 배웁니다. 그날 메뉴와 참가자분들 실력에 따라 생략되거나 길어질 수 있습니다)<br><br>bull 60분~80분) 요리 실습<br><br>bull 10분) 플레이팅<br><br>bull +@ 60분) 직접 만든 요리를 함께 즐기기<br><br>bull 15분) 정리 및 해산<br>(설거지/조리도구 정리 +마지막 인사)<br>','2020-02-24','미결',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H33','하루만에 배워가는 초보클라이밍 레슨!! #클라이밍#다이어트','신나는','액티비티','아웃도어','1:1','1','30000','1','cls04.jpg','서울 노원구, 반포대로30길 86 30-4','안녕하세요 :D<br><br>클라임이모션의 대표 최성운입니다!!<br>저는 그동안의 클라이밍을 하며 느낀 경험과 노하우를 토대로 많은 클라이밍 입문자와 초보자 분들에게 클라이밍을 친숙하고 편안한 그리고 건강하고 즐겁게 함께즐길 수 있는 문화와 환경을 제공하기 위한일들을 해나아가고 있습니다.<br><br>클라이밍에 대해 아무것도 몰라도 괜찮아요!! :D<br><br><br><br>경력 :<br><br>클라이밍 경력 10년<br>등반 경력 10년<br>클라임이모션 운영 5년<br>클라이밍 강습 약 4000여명<br><br>날씨에 상관없이 즐길 수 있는 이색 실내스포츠 클라이밍 제가 클라이밍에 매력에 취하게 도와드립니다. 초보자와 중급자들 레벨에 맞춘 수업과 적합한 시설을 갖춘 강남 클라임이모션에서 같이 함께 시작해요~<br><br>편하게 몸만 오시면 됩니다 :D<br>(양말은 있으셔야되요 :D)<br><br><br>#첫 클라이밍 #강남 클라이밍 #클라이밍 초보 #건강미 #잔근육 #다이어트 #클밍 #연인과 함께 #친구와 함께 #특별한 볼더링 #취미의시작 #Climbing<br>','- 클라이밍 체험을 하고 싶은 분.<br><br>- 활동적인게 좋고 운동도 좋은데 어떤 운동을 할지 모르겠는 분.<br><br>- 다양한 운동하고 싶은 분들 .<br><br>- 재미있는 운동과 다이어트 건강미를 원하는 분.<br><br>- 연인과 함께 이색적인 운동 데이트를 원하는 분.<br><br>- 인싸 액티비티는 필수로 하시는 분.<br><br>- 어울리며 즐기는 운동 문화를 원하는 분.<br><br>- 초보 클라이머 분.<br><br>','원데이 클래스<br><br>- 스트레칭 몸풀기<br><br>- 안전 교육<br><br>- 클라이밍 용어와 기본자세<br><br>- 클라이밍 이동/ 낙하<br><br>- 클라이밍 실습<br><br>- 자세 교정<br><br>- 자유 클라이밍<br><br>- 마무리 운동<br><br>* 개인별 능력의 맞춘 난이도로 진행합니다.<br><br>* 개인 준비물<br><br>편한 복장(운동복), 양말<br><br>( 클라이밍 슈즈 착용시 양말 필수! )<br>','2020-02-24','미결',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H34','「이탈리아 가방 만들기」완전 초보를 위한 가죽공예!!','차분한','예술','미술','그룹','3','30000','3','cls05.jpg','서울 서초구, 반포대로30길 86 90-5','<br>신분 인증 됨<br><br><br>현) 이탈리아 가죽 공방 운영 중<br><br>? 튜터 이력<br><br>전) 시몬느 핸드백 해외영업팀 자재 담당<br><br>- SCUOLA DEL CUOIO 정규과정 수료(이탈리아 가죽학교)<br>- 관악구 여성센터, 가죽공예 자문 활동<br>- 현) 베로 꾸오이오 가죽공방 운영<br><br>-------------------------------------------------<br><br>? 튜터 인사말<br><br>안녕하세요!<br>서울에서 이탈리아 가죽공방을 운영중인 베로쌤입니다 )<br><br>이탈리아 피렌체에 위치한<br>역사 깊은 가죽학교 Scuola Del Cuoio에서 정규과정을 이수하였구요.<br><br>현재는<br>이탈리아 전통의 기술을 전문적으로 교육을 하며, 다양한 분들을 만나뵙고 있답니다.<br><br>최고급 이탈리아 천연가죽으로<br>세상에 하나뿐인 가방을 만들어보시는 건 어떨까요~? :)<br><br>? Made in Italy 천연 소가죽!<br><br>끝없는 매력의 소재 - 이탈리아 가죽<br><br>가죽은 시간이 흐를수록 그 아름다움과 매력이 더욱 깊어지는 소재입니다.<br><br>저 역시 그 매력에 푹 빠져<br>가죽의 본고장이라 할 수 있는 이탈리아 피렌체에 소재한 가죽학교에서 기술을 습득해 다시 한국으로 오게 되었어요.<br><br>요즘은 누구나 한 가지씩 취미를 다 가지고 있는 시대잖아요.<br><br>비교적 부담이 덜한 비용으로<br>가죽공예라는 고급 취미를 많은 분들이 즐기실 수 있기 바라는 마음으로 여러분께 다가가려 노력하고 있답니다 :)<br>','[이런 분들께 추천합니다]<br><br>- 손재주는 없지만 예쁜 가죽제품을 만들고픈 분<br>- Special 한 선물을 직접 만들고픈 분<br>- 천연 가죽을 좋아하는 분<br>- 색다른 데이트 코스가 필요한 분<br>- 저렴한 비용으로 고급 취미를 시작하고픈 분<br>- 이탈리아 가죽공예에 관심이 많은 초보분<br>','?클래스 순서<br><br>＃ 간단한 가죽제품 제작 이론 및 과정 설명<br>＃ 가죽 선택<br>＃ 금속 선택<br>＃ 재단 / 본딩작업 / 기계재봉<br>＃ 이니셜 각인<br>＃ 엣지코트 마무리 작업<br><br>★ 이 모든 작업이 3시간 만에 완성! ★<br>','2020-02-24','미결',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H34','시창+성악레슨 으로 노래실력과 악보 보는 능력 향상 시키기!!','차분한','예술','음악','1:1','1','35000','1','cls06.jpg','서울 강북구, 반포대로30길 86 90-6','<br>국민대학교 성악과<br>신분 인증 됨<br><br><br>Soprano. 김나성<br><br>경기예술 고등학교 성악과 졸업<br><br>국민대학교 성악과 졸업 (수석 장학생)<br><br>세라핌 합창단 활동 10주년 앨범 발매, 전국 합창대회 대상 수상<br><br>엘피스 합창단 활동 찾아가는 음악회, 정기연주회, 후원 모음 음악회 출연<br><br>조안 스 음악회, 사랑의 음악회, 한국 가곡 발표회 등 다수의 음악회 출연<br><br>쇼팽음악학원 부원장, 예음 피아노 성악 전담강사<br><br>이레 음악학원, 고은 바이올린 성악 전담 강사, 부천 유스콰이어 부지휘자<br><br>?<br><br><br>소개<br><br>안녕하세요. Nasong Class lt나쏭 클래스gt 나성공 선생님입니다.<br><br>저는 2009년부터 현재까지 약 10년간 성악을 전공했고,<br><br>5년 이상의 레슨 경력이 있습니다.<br><br>10년 동안 공부해온 성악의 기술과 훈련법 노하우를 많이 알고 있고,<br><br>수년간의 레슨을 통해 학생들에게 더욱 효과적인 교육방식을 익혀왔습니다.<br><br>많은 학생들과 다양한 시도를 통해 레슨을 진행해 오면서,<br><br>가장 효과적이고 즐겁게 배울 수 있는 방법들을 모아<br><br>lt나쏭클래스gt를 만들었습니다.<br><br>lt나쏭 클래스gt는 함께하면 즐거운 너와 나의 노래라는 주제로<br><br>관객과 소통하는 법, 함께 노래 부르는 법을 즐겁게 배우는 것이 목표입니다. 즐겁게란 단순히 재미를 위한 것이 아니라, 조금 더 수업에 집중할 수 있도록,<br><br>이해하기 쉽도록, 혼자서도 연습을 잘 진행할 수 있도록 도와줍니다.<br><br>저는 항상 같이 하는 학생들이 즐겁게 열정적으로<br><br>수업할 수 있도록 지도합니다.<br>','성가대에서 활동하시는 분들<br><br>아마추어 합창단에서 활동하시는분들<br><br>음감,리듬감이 부족하신 분들<br><br>입시 준비중인 학생 특히 기초가 부족한 학생들<br>','<br>1회차<br>기본호흡과 발성, 노래를 부르는 구조를 설명해줍니다.<br>또한 레슨후 연습할 수있는 상세한 연습법을 같이 연습해봅니다.<br>간단한 시창 테스트를 통해 수강자에게 맞는 레벨의 시창 수업 커리큘럼을 제공합니다.<br>본인이 원하는 분야의 노래 찬양곡/외국가곡/한국가곡/뮤지컬/동요 등에 맞추어<br>난이도에따른 곡으로 노래 레슨을 받습니다.<br>2회차<br>호흡연습시 시간을재어 향상되는지 체크하고, 발성시 잘못된 자세와<br>입모양, 그리고 성대움직임등을 상세히 교정해줍니다.<br>기본적인 시창교재로 올바른 리듬과, 음감을 향상시켜줍니다.<br>배운 발성과 호흡을 이용하여 곡에 접목시켜 레슨을 진행합니다.<br>3회차<br>어느정도 정리가 된 호흡과 발성을 이용하여 음역대를 발전시킵니다.<br>성대의 구조를 간단히 배운후 고음과 저음을 내는 방향을 제시해줍니다.<br>시창교재는 순서대로 진행하며, 리듬읽기, 음높이 듣기등 다양한 방법으로 정확한<br>음을 낼수있도록 지도합니다.<br>2회차동안 익힌 노래에 가사에 조금더 집중하도록 지도합니다.<br>가사의 늬앙스와 강세등을 통해 호흡으로 노래하는 법을 배웁니다.<br>4회차<br>4회차에서는 호흡의 양을 더 상세히 체크하여 향상된 부분과 잘못된부분을 다시한번 점검후 연습방향을 제시해줍니다. 올바른 말소리 훈련을 통해 노래도 바른 발성으로 할 수있도록 접목 시켜줍니다.<br>조금더 난이도 있는 시창을통해 다양한 리듬과 음역대를 소화할수 있도록 훈련합니다.<br>전체 곡의 완성도를 높입니다. 특히 처음부터 끝까지 한곡을 소화할수있도록 반복 레슨을 진행합니다.<br>','2020-02-24','미결',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H34','볼수록 예쁜 그릇, 나만의 감성을 담은 도자기: 물레 원데이클래스','차분한','예술','공예','그룹','2','25000','4','cls07.jpg','서울 강서구, 반포대로30길 86 90-7','<br>서울여자대학교 공예학과<br>신분 인증 됨<br><br><br>안녕하세요 홍대에서 공방을 운영하고 있는<br>도예작가 smile ma 입니다 :]<br><br>흙을 소재로 다양한 소품과 식기를 만들어<br>도자기의 다양성을 느낄 수 있는 클래스를 운영합니다.<br>완성도 높은 작품을 위해 지정된 인원을 넘지 않는 소규모 클래스로 진행이 됩니다!<br><br>저와 함께 말랑한 촉감의 흙을 만지면서<br>굳었던 생각과 마음을 풀어보는 시간을 가져 보는건 어떨까요?<br>수업소개<br>|클래스 소개|<br>[볼수록 예쁜 그릇 나만의 감성을 담은 도자기: 물레 원데이클래스]<br><br>물레를 이용하여 도자기를 빚어내는 클래스 입니다.<br><br>동글동글 돌아가는 물레와 말랑한 흙의 촉감을 느끼면서<br>차분하게 마음을 풀어보는 시간이 될거에요:]<br><br>물레 수업은 접시, 컵, 볼 3가지 형태 중 한가지를 선택하여 수업을 진행 합니다.<br>단시간에 끝낼 수 있는 작업이 아니므로 강사의 도움을 많이 필요로 하는 수업입니다.<br>물레를 이용해 나만의 감성을 담은 도자기 1개와 흙의 말랑함을 느끼며 만든 수저 받침까지 총 2개의 작품을 만듭니다.<br>물레 작업으로 만든 작품을 꾸미는 페인팅 작업도 포함되어 있습니다.<br>페인팅을 원하지 않으시면 투명유, 유광흑유, 유백유 중 원하는 유약을 선택하여 색을 입힐 수 있습니다.<br>수업 전 원하는 디자인 또는 사진자료를 찾아 오시면 더 수월하게 진행 하실 수 있습니다!<br><br>정형적이고 비슷한 도자기 체험이 아니라<br><br>특별한 도자기 소품을 만들고 싶으신 분,<br><br>친구, 연인, 가족과 특별한 시간을 보내고 싶으신 분,<br><br>정신없는 일상 속, 차분한 취미를 즐기고 싶으신 분,<br><br>모두를 위한 원데이 클래스입니다<br><br>직접 만든 그릇과 수저받침으로 오직 나만의 감성이 가득한 테이블웨어로 식탁을 꾸며보세요:]<br><br><br>','*나만의 개성이 담긴 도자기소품을 가지고싶은 분들<br><br>*반려동물에게 특별한 밥 그릇을 만들어 주고 싶은 집사님들<br><br>*기념일을 앞두고 정성이 담긴 선물을 준비하는 분들<br><br>*특별한 취미를 원하는 분들<br><br>*나에게, 또는 소중한 사람들에게 의미있는 시간을 선물하고 싶으신 분<br><br>*조금 더 전문적인 도자 클래스를 원하는 분들<br><br><br>','강의계획<br>*원데이클래스로 진행되는 수업입니다*<br><br>[ 00:00-00:10 ]<br>- 도자에 대한 간단한 이론 설명 (10분)<br><br>[ 00:10-00:30 ]<br>- 원하는 형태 선택과 디자인 하기 (20분)<br><br>[ 00:30-01:50]<br>- 물레수업, 수저받침 만들기, 도자기 페인팅 (1시간20분)<br><br>[ 01:50-02:00 ]<br>- 뒷정리와 포토타임,연락처남기기 (10분)<br>','2020-02-24','승인',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H35','최소한의 말로 감정 없이! 우아하게! 성취하는 똑똑한 거절','차분한','교육','어학','그룹','2','20000','10','cls08.jpeg','서울 서대문구, 반포대로30길 86 90-8','<br>중앙대학교 신문방송대학원 방송영상뉴미디어<br>신분 인증 됨<br>공영홈쇼핑 쇼호스트 경력증명서<br>큐브엔터테인먼트 스피치강사 경력증명서<br>에이큐브엔터테인먼트 스피치강사 경력증명서<br>티브로드 아나운서 경력증명서<br><br><br>? 튜터 경력 7년차<br><br>2018- 현재<br>- 신한금융그룹, KB투자, 위워크, 한국환경공단, 아카마이코리아 등 기업 출강<br>- 중앙대학교, 광운대학교, 예림디자인고등학교 등 학교 특강<br>- 비즈니스 피칭, 프레젠테이션, 발표, IR 전문<br>- 스피치 일대일, 소수 그룹 수업 진행 중<br><br>2017<br>- 쇼호스트 지망생 개인 지도<br>- 아나운서 공감 아카데미 부원장<br><br>2014-2016<br>- 엔터테인먼트 방송 스피치 강사<br>- 큐브, 에이큐브 엔터테인먼트<br>- 아이돌 연습생 대상 강의<br><br><br>? 방송 경력 11년차<br><br>2019<br>- 유튜브/틱톡 흥버튼 채널 운영<br><br>2018<br>- 글로벌이코노믹 기자<br>- 뉴미디어부 소속<br><br>2015-2018<br>- 공영홈쇼핑 쇼호스트<br>- 생방송 프로그램 4년간 진행<br>- 식품/ 생활/ 가전/ 가구/ 패션/ 뷰티 제품 판매<br><br>2012-2014<br>- 농협중앙회 아나운서<br>- 뉴스 앵커, 교양 프로그램 진행<br>- 농협 행사 사회<br><br>2009-2011<br>- 티브로드 아나운서<br>- 생방송 뉴스 앵커<br>- 시사 프로그램 진행<br><br><br>? 업무까지 줄이는 슬기로운 직장인 말하기<br><br>안녕하세요. 탈잉의 말하기 튜터 정흥수입니다!<br>지난 1년간 탈잉을 통해 많은 분과 1:1로 말하기 수업을 진행했는데요.<br><br>대부분 직장인이셨고,<br>회사생활에서 보다 현명하게 상황을 이끌어 갈 수 있는 말하기에 대한 고민이 많으셨어요.<br><br>이런 부분들은 개별적으로 말씀을 드리기보단,<br>우리가 회사에서 빈번하게 접하게 되는 특정 상황, 특정 목적별로 사례를 보면서 함께 배워보면 좋을 것 같아서 이렇게 수업을 열게 됐습니다 :)<br><br>이번 수업을 한마디로 정의하자면<br><br>보다 적은 말로,<br>상황을 현명하게 풀어가는 요령을 통해<br>커뮤니케이션 성공률을 높이는 거예요!<br><br>직장인 수백여 명의 고민을 해결해온 튜터이자,<br>저 또한 한 명의 직장인으로 살아왔던 경험을 토대로<br><br>여러분들의 말하기를 점검하고 개선할 수 있도록<br>최선을 다해 도와드릴게요!<br>',' 이런 문제 해결에 도움이 됩니다!<br>- 커뮤니케이션 비용이 커서 야근이나 잔업이 많은 분들<br>- 상사  동료들과 대화하기 두려운 분들<br>- 회의나 토론에서 말을 꺼내기 수월치 않은 분들<br>- 말만하면 무시 당하거나 묻히는 분들<br>- 거절을 못해, 무조건 수락하는 YES쟁이 분들<br>- 업무상 또는 친목상 더 많은 발언 기회를 갖고 싶은 분들<br>','# 직장인 말하기의 기본<br>- 왠지 모르게 우아한 사람, 가만히 있어도 시선이 가는 이유<br>- 자세와 목소리에서 감정을 빼는 노하우<br>- 작은 소리로 모든 청중에게 닿을 수 있는 발성법<br>- 똑같은 의미라도 문장을 간결하게, 풍부한 어휘를 구사하는 노하우<br><br># 말실수 대처법<br>- 현명하게 말실수 주워 담기<br>- 실수한 상황에서 벗어나는 넘기기 요령<br><br># 회의 스킬의 모든 것<br>- 흐름을 가져오는 화제 전환 요령<br>- 똑똑하게 다른 의견 이끌어내기<br><br># 본 게임을 유리하게 만드는 사전 작업<br>- Tea 타임, 엘리베이터 타임 활용법<br><br># 똑똑한 반대 요령<br>- 호감가는 반대 내용 구성과 애티튜드<br>- 반대하는 사람까지 내편으로 만드는 요령<br><br># 적은 말로 인싸되기<br>- 세련된 직장인의 말하기2 : 8듣기 법칙<br>- 2:8 비율로 말하면서 인싸되는 요령<br><br># 남의 말 다루기<br>- 말 배달만으로 존재감을 만드는 요령<br>- 나에 대한 오해가 돌아다닐 때 대처법<br>','2020-02-24','승인',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H35','[SQL] 쉽게 배우는 실무 데이터분석! 기초부터 현업사례까지!','차분한','교육','IT','그룹','3','30000','6','cls08.jpg','서울 중랑구, 반포대로30길 86 90-8','★ 1:1 수업의 경우,<br>시간당 4만원 * 3시간 * 4회 = 48만원 입니다.<br>수업 커리큘럼이 수강생 수준과 원하는 목적에 따라 맞춤형으로 진행됩니다.<br><br>★ 2월 수업은 일요일 2~5시만 가능합니다.<br>( 그 외 일정 모두 마감입니다)<br><br><br>? 자체 교재 제작(약200페이지 분량)<br>: 다수의 실습자료와 실무자료<br><br>? why SQL ? 데이터 분석인데, 왜 ?<br><br>데이터 분석을 하려면 가장 기본이 되는 언어 SQL!!<br>실제 데이터는 우리가 원하는 대로 차곡차곡 쌓여 있지 않아요.<br>빅데이터 분석 중 80%는 전처리 과정이라는 말 들어보셨나요?<br>그래서 데이터를 이렇게,저렇게 조회도 해보고, 데이터 탐색도 해보면서<br>데이터전처리 및 변환 작업을 해줘야 하는거죠.<br>그 작업을 위한 언어가 바로 SQL입니다 !<br>그러니 R, SAS 등등을 통해 빅데이터 분석을 하기 전에 꼭 필요한 언어인거죠!<br>실제 수많은 기업이 SQL을 통해 데이터분석을 하고 있다는 사실!<br><br><br>? 실제 현업에서 쓰이는 실무 중심 수업<br><br>딱딱한 이론이 아닌, 실제 현업에서 쓰이는 실무 중심으로 수업합니다.<br>정말 알아야 하는 SQL기초부터 자주 쓰이는 함수들까지,<br>그리고 그래서 이걸로 어떻게 분석을 하는데?<br>실 데이터 중심으로 알려드리겠습니다.<br><br>- SQL에 대한 기초 문법<br>- 데이터 분석 기획<br>- 데이터 분석 시각화<br>- (+) 데이터마트 구축 방법<br><br><br>? 회차별 과제 및 1:1 피드백 진행<br>','실제 현업에서의 데이터 업무를 알고 싶은 대학생<br><br>데이터 분석 업무로 커리어를 쌓고 싶은 취준생<br><br>매번 IT부서에 요청하여 데이터를 받고 있는 마케터<br><br>SQL하고 싶은데, 어디서부터 시작해야 할 지 막막하신 분들<br>?<br>','1회차<br>[ 데이터의 기초개념]<br><br>데이터와 SQL에 대한 기본적인 개념 및 문법을 학습합니다.<br><br>? SQL? 데이터베이스? 데이터마트? 개념<br>? SQL 기본 문법<br><br><br>','2020-02-24','승인',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H35','1인 브랜드 경험자가 말하는 브랜드 기획 돈을 버는 브랜딩의 기본','차분한','교육','실무','그룹','2','50000','5','cls09.jpg','서울 서초구, 반포대로30길 86 90-9','★ 브랜딩 수업 후 당장 내가 얻을 수 있는 것은 뭘까? ★<br><br>- 아, 가격경쟁력만이 답이 아니구나 나도 할 수 있겠다는 자신감<br>- 강의할 때는 소규모로 진행하기에 제가 개별 질문을 많이 드려요. 그건 생각을 해내는 방법을 유도하려고 하는 질문이기에 2시간동안 반복하다보면 집에가서도 어떻게 전략을 세워야하는지 감을 찾을 수 있도록 최대한 진행합니다.<br>- 거래처에 원하는 아이템을 컨택할 수 있도록 비즈니스적 에티튜드를 알려드려요.<br>- 기본적인 비즈니스 개념 정보를 머리 속에 정리할 수 있게되요<br>- 업체들을 대하는 비즈니스 기본 룰이 이해되요. 그럼 딜, 제안을 제 쪽으로 유리하게 할 수 있어요<br>- 내가 가진 장점을 브랜드에 녹여낼 수 있는 방법을 생각할 수 있어요<br>- 시장, 브랜드, 제조 공장 등 여러 관계에 대해 밀당하는 방법을 터득해여<br>- 한 제품을 만드는 큰 과정이 이해되요<br>- 내 사업의 다음 전략을 생각 할 수 있는 힘을 키워요<br><br>★ 이 수업만의 차별성 ★<br>매일 적용할 실무 포인트를 빠르고 쉽게 알려드릴게요.<br>왜냐면, 제가 직접 해보고 결과물을 얻은 방법이니깐요 :)<br>1인 브랜드일 수록 자본금보다는 통통튀는 아이디어, 열정, 기존 제품과는 색다른 아이템 혹은 서비스일테니 이런 차별점이 시장에 무사히 안착될 수 있도록 어디서도 알려주지 않는 비즈니스의 정말 기본의 기본을 알려드려요!<br>그걸 알고 모르고는 정말 큰 차이일거예요! 직접 경험해본 제가 그랬으니깐요^^<br><br>','경기 호스트 사무실 본사: 1회, 약 120분(죽전 사무실은 1:1 레슨도 가능)<br><br>- 지정된 시간 외 스케쥴은 메세지로 연락주시면, 협의하여 가능여부 알려드립니다 :)<br><br>- 정원은 1~5명입니다<br><br>- 죽전 단국대학교 근처 호스트 사무실에서 진행되며, 이때 공간대여비는 없습니다.<br><br>다만, 서울 강남권을 원하시는 경우 공간대여비가 소정 발생합니다.<br><br><br>','1. 창업과 사업<br>2. 제일먼저 선택해야할 것?<br>- 사업자 종류<br>- 사무실<br>- 사업자관련 필수 등록 절차<br>3. 쇼핑몰<br>4. 마케팅,,? 그 다음은 뭘해야할까?<br><br>/<br>휴식시간 10분<br>/<br><br>[창업 후반전]<br><br>1. 나의 브랜드 (제조 or 유통 도소매)<br>2. 보호받고 싶은데? 특허, 지재권<br>3. 화장품 브랜드 혹은 브랜드 온라인 쇼핑몰을 만들기 전에 알아야하는 법적 조건<br>4. 생산 방식(OEM, ODM, 유통 등)<br>5. 재고 및 운영관리<br>5. 효율성을 높이는 선택지<br>','2020-02-24','승인',DEFAULT);
INSERT INTO CLASS VALUES('C' || SEQ_CNO.NEXTVAL,'H35','체계적인 커리큘럼. 나만 믿고 따라와! 기초부터 취업까지!','차분한','예술','사진','1:1','2','50000','1','cls11.jpg','서울 동작구, 반포대로30길 86 90-11','안녕하세요. 사진작가 튜나리 입니다.<br><br>저는 사진을 전공으로 공부하고, 세상을 표현하는 도구로써 인생의 한 부분으로 삼고 살아가는 사람입니다.<br><br><br>제게 사진은 쉽지 않습니다.<br><br><br>물론 단순히 셔터를 누르는 것은 어렵지 않습니다.<br><br>하지만 사진에 나를 담아 자신만의 스타일을 만드는 것은 시간이 흘러도 쉽지 않은 일입니다.<br><br><br>그렇기에 처음이 중요합니다.<br><br>모든 일에는 시작이 있습니다.<br><br>피카소도 캔버스에 연필로 선을 그으며 그림을 시작 했을 것이고,<br><br>모짜르트도 건반위의 도를 누르면서 음악을 시작 했을 것입니다.<br><br><br>저 또한 처음 셔터를 눌렀던 그 설레임과 떨림이 저를 사진이라는 새로움에 도전하게 했고<br><br>사진가라는 길을 걸어 가게 했습니다.<br>','- 학원아카데미는 부담스럽고 검증된 사람에게 배우고<br>싶으신 분.<br><br>- 전문가에게 사진을 처음부터 진짜 제대로 배우고<br>','마음 먹으신 분.<br>','2020-02-24','미결',DEFAULT);

-- 6. CLASS_SCHEDULE
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C1', '2020-03-12', '13:00', '18:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C1', '2020-03-19', '13:00', '18:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C1', '2020-03-26', '13:00', '18:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C1', '2020-04-02', '13:00', '18:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C1', '2020-04-09', '13:00', '18:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C2', '2020-04-22', '13:00', '23:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C2', '2020-04-28', '13:00', '23:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C3', '2020-02-22', '19:00', '20:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C4', '2020-02-27', '19:00', '20:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C5', '2020-02-29', '12:00', '20:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C6', '2020-04-20', '12:00', '20:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C7', '2020-03-07', '20:00', '22:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C8', '2020-03-12', '13:00', '18:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C8', '2020-03-19', '13:00', '18:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C8', '2020-03-26', '13:00', '18:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C8', '2020-04-02', '13:00', '18:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C8', '2020-04-09', '13:00', '18:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C9', '2020-04-22', '13:00', '23:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C9', '2020-04-28', '13:00', '23:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C10', '2020-02-22', '19:00', '20:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C11', '2020-02-27', '19:00', '20:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C12', '2020-02-29', '12:00', '20:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C13', '2020-04-20', '12:00', '20:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C14', '2020-03-07', '20:00', '22:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C15','2020-02-23','13:00','15:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C15','2020-02-28','13:00','15:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C15','2020-03-06','13:00','15:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C16','2020-02-23','14:00','17:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C16','2020-02-26','14:00','17:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C16','2020-03-03','14:00','17:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C17','2020-02-23','9:00','11:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C17','2020-02-29','9:00','11:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C17','2020-03-07','9:00','11:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C18','2020-02-23','14:00','15:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C18','2020-03-02','14:00','15:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C18','2020-02-27','14:00','15:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C19','2020-02-23','11:00','12:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C19','2020-02-24','11:00','12:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C19','2020-03-02','11:00','12:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C20','2020-02-23','18:00','20:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C20','2020-02-27','18:00','20:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C20','2020-03-02','18:00','20:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C21','2020-02-23','11:00','12:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C21','2020-02-28','11:00','12:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C21','2020-03-06','11:00','12:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C22','2020-02-23','14:00','16:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C22','2020-03-01','14:00','16:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C22','2020-03-08','14:00','16:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C23','2020-02-22','9:00','10:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C23','2020-02-29','9:00','10:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C23','2020-03-07','9:00','10:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C24','2020-02-23','22:00','24:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C24','2020-02-28','22:00','24:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C24','2020-03-06','22:00','24:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C25','2020-02-23','13:00','15:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C25','2020-02-28','13:00','15:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C25','2020-03-02','13:00','15:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C26','2020-02-22','18:00','20:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C26','2020-02-25','18:00','20:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C26','2020-03-03','18:00','20:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C27','2020-02-22','12:00','14:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C27','2020-02-25','12:00','14:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C27','2020-03-03','12:00','14:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C28','2020-02-22','20:00','22:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C28','2020-02-26','20:00','22:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C28','2020-03-03','20:00','22:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C29','2020-02-23','0:00','9:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C29','2020-02-29','0:00','9:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C29','2020-03-07','0:00','9:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C30','2020-02-22','18:00','21:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C30','2020-02-25','18:00','21:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C30','2020-03-06','18:00','21:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C31','2020-02-22','10:00','13:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C31','2020-02-26','10:00','13:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C31','2020-03-04','10:00','13:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C32','2020-02-22','10:00','13:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C32','2020-02-26','10:00','13:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C32','2020-03-02','10:00','13:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C33','2020-02-23','12:00','15:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C33','2020-02-28','12:00','15:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C33','2020-03-07','12:00','15:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C34','2020-02-26','14:00','17:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C35','2020-02-22','10:00','12:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C35','2020-02-27','10:00','12:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C35','2020-03-04','10:00','12:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C36','2020-02-23','10:00','12:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C36','2020-02-26','10:00','12:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C36','2020-03-02','10:00','12:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C37','2020-02-22','17:00','19:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C38','2020-02-28','0:00','24:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C38','2020-02-29','0:00','24:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C39','2020-02-23','13:00','16:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C39','2020-02-29','13:00','16:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C39','2020-03-04','13:00','16:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C40','2020-02-23','7:00','9:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C40','2020-02-29','7:00','9:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C40','2020-03-02','7:00','9:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C41','2020-02-23','11:00','16:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C41','2020-02-29','11:00','16:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C41','2020-03-02','11:00','16:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C42','2020-02-23','13:00','14:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C42','2020-02-29','13:00','14:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C42','2020-03-03','13:00','14:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C43','2020-02-23','10:00','14:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C43','2020-02-29','23:00','3:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C43','2020-03-01','14:00','18:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C44','2020-02-23','17:00','18:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C44','2020-02-29','17:00','18:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C44','2020-03-03','19:00','20:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C45','2020-02-23','7:00','7:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C45','2020-02-28','15:00','15:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C45','2020-03-06','7:00','7:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C46','2020-02-23','17:00','19:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C46','2020-02-29','17:00','19:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C46','2020-03-01','11:00','13:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C47','2020-02-23','15:30','18:30');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C47','2020-02-28','15:30','18:30');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C47','2020-03-03','15:30','18:30');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C48','2020-02-22','19:30','20:30');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C48','2020-02-25','20:00','21:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C48','2020-03-08','20:30','21:30');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C49','2020-02-22','21:00','24:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C49','2020-02-27','20:00','23:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C49','2020-03-04','20:00','23:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C50','2020-02-21','19:00','22:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C50','2020-02-26','19:00','22:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C50','2020-03-04','20:00','23:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C51','2020-02-22','18:00','20:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C51','2020-02-24','19:00','21:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C51','2020-03-03','20:00','22:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C52','2020-02-22','19:00','21:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C52','2020-02-25','18:30','20:30');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C52','2020-03-03','11:30','13:30');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C53','2020-02-21','18:00','20:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C53','2020-02-26','19:00','21:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C54','2020-02-21','18:30','20:30');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C54','2020-02-25','19:30','21:30');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C54','2020-03-01','11:00','13:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C55','2020-02-21','11:00','14:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C55','2020-02-27','14:00','17:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C55','2020-03-02','19:00','22:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C56','2020-02-22','19:00','21:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C56','2020-02-29','11:00','13:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C56','2020-03-02','19:30','21:30');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C57','2020-02-26','10:00','13:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C58','2020-02-22','11:00','13:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C58','2020-02-27','19:00','21:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C58','2020-03-02','8:00','10:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C59','2020-02-22','6:00','7:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C60','2020-02-23','1:00','3:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C60','2020-02-24','1:00','3:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C61','2020-02-25','4:03','6:03');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C61','2020-02-26','5:06','7:06');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C62','2020-03-02','18:00','19:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C62','2020-03-03','19:04','20:04');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C63','2020-02-28','15:00','18:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C64','2020-02-29','14:00','15:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C64','2020-03-01','15:01','16:01');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C65','2020-03-10','20:01','22:01');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C66','2020-02-22','15:00','17:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C66','2020-02-23','18:00','20:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C67','2020-03-21','14:00','17:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C68','2020-02-25','5:00','7:00');
INSERT INTO CLASS_SCHEDULE VALUES('CS' || SEQ_CSNO.NEXTVAL, 'C69','2020-02-20','5:01','7:01');

-- 7. REVIEW
INSERT INTO REVIEW VALUES('R' || SEQ_RNO.NEXTVAL, 'C1', 'M7', 1, '차분한 음악이 인상적인 수업이었습니다.', DEFAULT);
INSERT INTO REVIEW VALUES('R' || SEQ_RNO.NEXTVAL, 'C2', 'M6', 2, '차분한 음악이 인상적인 수업이었습니다.', DEFAULT);
INSERT INTO REVIEW VALUES('R' || SEQ_RNO.NEXTVAL, 'C3', 'M5', 1, '이 수업 듣고 삶이 불편해졌어여', DEFAULT);
INSERT INTO REVIEW VALUES('R' || SEQ_RNO.NEXTVAL, 'C4', 'M3', 4, '웹개발자가 무엇인가.....', DEFAULT);
INSERT INTO REVIEW VALUES('R' || SEQ_RNO.NEXTVAL, 'C5', 'M4', 3, '브론즈로 떨어졌어요', DEFAULT);
INSERT INTO REVIEW VALUES('R' || SEQ_RNO.NEXTVAL, 'C6', 'M2', 2, '강사님께서 친절히 잘 가르쳐주셨습니다. 추천드립니다.', DEFAULT);
INSERT INTO REVIEW VALUES('R' || SEQ_RNO.NEXTVAL, 'C7', 'M1', 5, '참 특이한 수업이었어요. 재미있었습니다.', DEFAULT);
                             
-- 8. CLAIM
INSERT INTO CLAIM VALUES('CM' || SEQ_CMNO.NEXTVAL, 'C1', 'M7', '그래픽이 넘 구려요', '생각했던 것보다 그래픽도 넘 구리고 렉이 심하게 걸리네요', '2020-01-01', DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT);
INSERT INTO CLAIM VALUES('CM' || SEQ_CMNO.NEXTVAL, 'C1', 'M7', '그래픽이 넘 구려요', '생각했던 것보다 그래픽도 넘 구리고 렉이 심하게 걸리네요', '2020-01-02', '2020-01-07','정지만료', 30, '2020-01-14','2020-02-14');
INSERT INTO CLAIM VALUES('CM' || SEQ_CMNO.NEXTVAL, 'C2', 'M6', '호스트 이사람 인생 편하게 사려고 해요', '인당 50만원 받아 10시간동안 명상만 한다는게 무슨 의도로 클래스를 열었는지 도무지 이해할 수 없네요.', '2020-02-02', DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT);
INSERT INTO CLAIM VALUES('CM' || SEQ_CMNO.NEXTVAL, 'C5', 'M4', '호스트 실력', '호스트가 브론즈이고 피드백때 욕을 엄청해요', '2020-03-01', '2020-02-12', '경고', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO CLAIM VALUES('CM' || SEQ_CMNO.NEXTVAL, 'C3', 'M5', '호스트 수업태도', '수업 강의하시는 분이 말을 너무 막해요 기분이 안좋아졌어여', '2020-03-03', DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT);
INSERT INTO CLAIM VALUES('CM' || SEQ_CMNO.NEXTVAL, 'C4', 'M3', '호스트 수업태도', '제대로된 스킬은 하나도 없고 그냥 마시는 얘기만 주구장창 하네요?', '2020-04-01', DEFAULT, '정지', 100000, '2020-04-21', DEFAULT);
INSERT INTO CLAIM VALUES('CM' || SEQ_CMNO.NEXTVAL, 'C5', 'M4', '호스트 실력', '호스트가 브론즈이고 피드백때 욕을 엄청해요', '2020-05-01', '2020-05-12', '정지', 30, '2020-05-19', '2020-06-18');
INSERT INTO CLAIM VALUES('CM' || SEQ_CMNO.NEXTVAL, 'C6', 'M2', '제 뒤에 사람이 너무 시끄럽게 불러서 수업에 집중하기가 힘들었습니다.', '학생관리를 좀 더 철저히 해주셨으면 좋겠습니다.', '2020-06-01', '2020-06-12', '정지', 60, '2020-06-19', '2020-08-18');
INSERT INTO CLAIM VALUES('CM' || SEQ_CMNO.NEXTVAL, 'C7', 'M1', '수업 내용', '아.. 이걸 돈 내고 배웠다는 게 할 말을 잃게 만드네요', '2020-07-01', '2020-07-12', '정지', 90, '2020-07-19', '2020-10-17');

-- 9. PAYMENT             
INSERT INTO PAYMENT VALUES('P' || SEQ_PNO.NEXTVAL, 'M7', DEFAULT, 'C1', 100, '1150', DEFAULT); 
INSERT INTO PAYMENT VALUES('P' || SEQ_PNO.NEXTVAL, 'M6', DEFAULT, 'C2', 150, '2500', DEFAULT); 
INSERT INTO PAYMENT VALUES('P' || SEQ_PNO.NEXTVAL, 'M5', DEFAULT, 'C3', DEFAULT, '75', DEFAULT); 
INSERT INTO PAYMENT VALUES('P' || SEQ_PNO.NEXTVAL, 'M3', DEFAULT, 'C4', 30, '50', DEFAULT); 
INSERT INTO PAYMENT VALUES('P' || SEQ_PNO.NEXTVAL, 'M4', DEFAULT, 'C5', 1000, '1000', DEFAULT); 
INSERT INTO PAYMENT VALUES('P' || SEQ_PNO.NEXTVAL, 'M2', DEFAULT, 'C6', DEFAULT, '150', DEFAULT); 
INSERT INTO PAYMENT VALUES('P' || SEQ_PNO.NEXTVAL, 'M1', DEFAULT, 'C7', 80, '25', DEFAULT); 
INSERT INTO PAYMENT VALUES('P' || SEQ_PNO.NEXTVAL, 'M7', DEFAULT, 'C1', 1000, '1150', DEFAULT); 
INSERT INTO PAYMENT VALUES('P' || SEQ_PNO.NEXTVAL, 'M6', DEFAULT, 'C2', DEFAULT, '2500', DEFAULT); 
INSERT INTO PAYMENT VALUES('P' || SEQ_PNO.NEXTVAL, 'M5', DEFAULT, 'C3', 120, '75', DEFAULT); 
INSERT INTO PAYMENT VALUES('P' || SEQ_PNO.NEXTVAL, 'M3', DEFAULT, 'C4', 880, '50', DEFAULT); 
INSERT INTO PAYMENT VALUES('P' || SEQ_PNO.NEXTVAL, 'M4', DEFAULT, 'C5', 3000, '1000', DEFAULT); 
INSERT INTO PAYMENT VALUES('P' || SEQ_PNO.NEXTVAL, 'M2', DEFAULT, 'C6', 310, '150', DEFAULT); 
INSERT INTO PAYMENT VALUES('P' || SEQ_PNO.NEXTVAL, 'M1', DEFAULT, 'C7', DEFAULT, '25', DEFAULT); 
INSERT INTO PAYMENT VALUES('P' || SEQ_PNO.NEXTVAL, 'M8', DEFAULT, 'C1', 100, '2300', DEFAULT); 



-- 10. PAYMENT_SCHEDULE

INSERT INTO PAYMENT_SCHEDULE VALUES ('PS' || SEQ_PSNO.NEXTVAL, 'P1', 'CS1', DEFAULT);
INSERT INTO PAYMENT_SCHEDULE VALUES ('PS' || SEQ_PSNO.NEXTVAL, 'P2', 'CS6', DEFAULT);
INSERT INTO PAYMENT_SCHEDULE VALUES ('PS' || SEQ_PSNO.NEXTVAL, 'P3', 'CS8', DEFAULT);
INSERT INTO PAYMENT_SCHEDULE VALUES ('PS' || SEQ_PSNO.NEXTVAL, 'P4', 'CS9', DEFAULT);
INSERT INTO PAYMENT_SCHEDULE VALUES ('PS' || SEQ_PSNO.NEXTVAL, 'P5', 'CS10', DEFAULT);
INSERT INTO PAYMENT_SCHEDULE VALUES ('PS' || SEQ_PSNO.NEXTVAL, 'P6', 'CS11', DEFAULT);
INSERT INTO PAYMENT_SCHEDULE VALUES ('PS' || SEQ_PSNO.NEXTVAL, 'P7', 'CS12', DEFAULT);
INSERT INTO PAYMENT_SCHEDULE VALUES ('PS' || SEQ_PSNO.NEXTVAL, 'P8', 'CS2', DEFAULT);
INSERT INTO PAYMENT_SCHEDULE VALUES ('PS' || SEQ_PSNO.NEXTVAL, 'P9', 'CS7', DEFAULT);
INSERT INTO PAYMENT_SCHEDULE VALUES ('PS' || SEQ_PSNO.NEXTVAL, 'P15', 'CS1', DEFAULT);
INSERT INTO PAYMENT_SCHEDULE VALUES ('PS' || SEQ_PSNO.NEXTVAL, 'P15', 'CS2', DEFAULT);
INSERT INTO PAYMENT_SCHEDULE VALUES ('PS' || SEQ_PSNO.NEXTVAL, 'P15', 'CS3', DEFAULT);



-- 11. PAYMENT_LIST
INSERT INTO PAYMENT_LIST VALUES('PL' || SEQ_PLNO.NEXTVAL, 'PS1', '결제완료', NULL);
INSERT INTO PAYMENT_LIST VALUES('PL' || SEQ_PLNO.NEXTVAL, 'PS2', '결제완료', NULL);
INSERT INTO PAYMENT_LIST VALUES('PL' || SEQ_PLNO.NEXTVAL, 'PS3', '결제완료', NULL);
INSERT INTO PAYMENT_LIST VALUES('PL' || SEQ_PLNO.NEXTVAL, 'PS4', '결제완료', NULL);
INSERT INTO PAYMENT_LIST VALUES('PL' || SEQ_PLNO.NEXTVAL, 'PS5', '결제완료', NULL);
INSERT INTO PAYMENT_LIST VALUES('PL' || SEQ_PLNO.NEXTVAL, 'PS6', '결제완료', NULL);
INSERT INTO PAYMENT_LIST VALUES('PL' || SEQ_PLNO.NEXTVAL, 'PS7', '결제완료', NULL);
INSERT INTO PAYMENT_LIST VALUES('PL' || SEQ_PLNO.NEXTVAL, 'PS8', '결제완료', NULL);
INSERT INTO PAYMENT_LIST VALUES('PL' || SEQ_PLNO.NEXTVAL, 'PS9', '결제완료', NULL);
INSERT INTO PAYMENT_LIST VALUES('PL' || SEQ_PLNO.NEXTVAL, 'PS10', '결제완료', NULL);
INSERT INTO PAYMENT_LIST VALUES('PL' || SEQ_PLNO.NEXTVAL, 'PS11', '결제취소', SYSDATE);
INSERT INTO PAYMENT_LIST VALUES('PL' || SEQ_PLNO.NEXTVAL, 'PS12', '결제완료', NULL);





COMMIT;
-- 수정자 : 유정후
-- 수정 일시 : 20200212
-- 수정 내용 : DROP TABLE / CLASS_APPROVAL 테이블 추가 및 CLASS_SCHEDULE 1컬럼 삭제
-- 찾기 시작 : DROP TABLE CLASS_INFO CASCADE CONSTRAINTS;
-- 찾기 종료 : DROP TABLE REPORT_LIST CASCADE CONSTRAINTS;
-- 찾기 시작 : CREATE TABLE CLASS_APPROVAL
-- 찾기 종료 : COMMENT ON COLUMN "CLASS_APPROVAL"."CA_APPROVAL_DATE" IS '승인(반려) 날짜';
-- 찾기 : ALTER TABLE CLASS_APPROVAL ADD CONSTRAINT CLASS_APPROVAL_NO_fkey FOREIGN KEY (CA_CLASS_NO) REFERENCES CLASS(CLASS_NO);
-- 찾기 시작 : 11. CLASS APPROVAL CHECK NUMBER
-- 찾기 종료 : NOCACHE;

-- 수정자 : 유정후
-- 수정 일시 : 20200213
-- 수정 내용 : 처리유무 컬럼 추가 및 기본값 'N' -> NULL로 변경 
-- 찾기 : NULL 검색 후 참조
-- 찾기 : 처리 검색 후 참조 

-- 수정자 : 최진영
-- 수정 일시 : 200213_20:50     
-- INSERT INTO CLAIM VALUES('CM' || SEQ_CMNO.NEXTVAL, 'C5', 'M4', '호스트 실력', '호스트가 브론즈이고 피드백때 욕을 엄청해요', DEFAULT, '2020-03-12', DEFAULT, 30, '2020-03-19', '2020-04-18');
-- INSERT INTO CLAIM VALUES('CM' || SEQ_CMNO.NEXTVAL, 'C6', 'M2', '제 뒤에 사람이 너무 시끄럽게 불러서 수업에 집중하기가 힘들었습니다.', '학생관리를 좀 더 철저히 해주셨으면 좋겠습니다.', DEFAULT, '2020-04-12', DEFAULT, 60, '2020-04-19', '2020-06-18');
-- INSERT INTO CLAIM VALUES('CM' || SEQ_CMNO.NEXTVAL, 'C7', 'M1', '수업 내용', '아.. 이걸 돈 내고 배웠다는 게 할 말을 잃게 만드네요', DEFAULT, '2020-05-12', DEFAULT, 90, '2020-05-19', '2020-08-17');


-- 수정자 : 손신혜
-- 수정일시 : 200214_19:55
-- CLASS_APPROVAL 데이터 추가
-- CLASS 7개 추가 개설

-- 수정자 : 손신혜
-- 수정일시 : 20200215_2:43
-- PAY, PL 테이블 수정

-- 수정 2020-02-22
