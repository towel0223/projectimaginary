package song;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

public class chart {
	
    public static String[] title() {
    	
    	String[] title = {"소나기",
    			"미워요",
    			"신촌을 못가",
    			"가질수 없는 너",
    			"술 한잔 해요",
    			"눈의 꽃",
    			"지우개",
    			"오르막길",
    			"그녀를 찾아주세요",
    			"걱정말아요 그대",
    			"물감",
    			"인연",
    			"바람기억",
    			"겨울을 걷는다",
    			"보고싶다",
    			"바보에게... 바보가",
    			"퇴근버스",
    			"내가 저지른 사랑",
    			"행복하지 말아요",
    			"야생화",
    			"가시",
    			"이 소설의 끝을 다시 써보려 해",
    			"체념",
    			"스토커",
    			"Tears",
    			"One Love",
    			"Hello",
    			"그대라는 사치",
    			"응급실",
    			"소주 한잔",
    			"안아줘",
    			"Marry Me",
    			"키보드 (Prod. By Hansen)",
    			"Believer",
    			"If You Were Me",
    			"Wow Thing",
    			"Perfect",
    			"정인 (情人)",
    			"이별하러 가는 길",
    			"IndiGO",
    			"열애중 (답가)",
    			"유재석 (prod. 진대호)",
    			"별 (Feat. 김종완 of 넬) (prod.BOYCOLD)",
    			"도망가지마",
    			"가을 타나 봐",
    			"하루도 그대를 사랑하지 않은 적이 없었다",
    			"우리 그만하자",
    			"지워져",
    			"사랑에 아파본 적 있나요",
    			"셀 수 없는 (Countless)",
    			"We Young",
    			"V",
    			"노래",
    			"불꽃놀이 (Remember Me)",
    			"잘 지내요",
    			"헤어지는 중",
    			"사이렌 (Siren)",
    			"너만 괜찮다면",
    			"We Go Up",
    			"NOAH (Feat. 박재범, Hoody)",
    			"See You Again (Feat. 리처드 용재 오닐)",
    			"몰랐니 (Lil’ Touch)",
    			"사이렌(Siren)",
    			"Kiss Me Like That",
    			"AND I",
    			"YOUNG",
    			"Vacation (Feat. SOLE)",
    			"늘 그대",
    			"I AM",
    			"IDOL (Feat. Nicki Minaj)",
    			"스무살이 왜이리 능글맞아 (Feat. 숀 (SHAUN))",
    			"다시 만나 (See you again)",
    			"Serendipity (Full Length Edition)",
    			"미워도 다시 한 번",
    			"1000%",
    			"Rollin` Rollin`",
    			"Trivia 承 : Love",
    			"Trivia 轉 : Seesaw",
    			"왜 몰랐을까",
    			"너에게 닿기를 (To reach you)",
    			"Power",
    			"어디에도",
    			"HOLIDAY (Feat. DPR LIVE)",
    			"덜덜덜",
    			"Ko Ko Bop",
    			"눈 (Feat. 이문세)",
    			"별",
    			"겨울소리",
    			"애쓰지 마요",
    			"고민보다 Go",
    			"팔레트 (Feat. G-DRAGON)",
    			"다시 쓰고 싶어",
    			"매일 듣는 노래 (A Daily Song)",
    			"한숨",
    			"Blue",
    			"미안해",
    			"그 사람을 아나요",
    			"Closer (Feat. Halsey)",
    			"Universe",
    			"Thunder"};
    	
        return title;
    }

    public static String[] album() {
    	String[] album = {"소나기",
    			"정인 From Andromeda",
    			"신촌을 못가",
    			"Bank 선물",
    			"Atelier",
    			"미안하다 사랑한다 OST",
    			"지우개",
    			"2012 월간 윤종신 6월호",
    			"This Is The Name",
    			"응답하라 1988 OST Part 2",
    			"물감",
    			"사랑아...",
    			"Principle Of My Soul",
    			"반오십",
    			"3집 보고 싶다",
    			"바보에게... 바보가",
    			"퇴근버스",
    			"I`M",
    			"Solitude Love",
    			"야생화",
    			"Effect",
    			"이 소설의 끝을 다시 써보려 해",
    			"1집 Like The Bible",
    			"3",
    			"First Bridge",
    			"때려 OST",
    			"Like 1st Mini Album `First Story`",
    			"The 3rd Digital Single `그대라는 사치`",
    			"쾌걸 춘향 OST",
    			"Bye",
    			"Lo9ve3r4s",
    			"마크툽 프로젝트 Vol.03",
    			"공상과학음악",
    			"Evolve",
    			"미스터 션샤인 OST Part 14",
    			"Wow Thing",
    			"연애플레이리스트3 Part.1",
    			"미스터 션샤인 OST Part 13",
    			"이별하러 가는 길",
    			"IM",
    			"열애중 (답가)",
    			"별",
    			"별",
    			"A-TEEN Part.4",
    			"가을 타나 봐",
    			"하루도 그대를 사랑하지 않은 적이 없었다",
    			"우리 그만하자",
    			"백일의 낭군님 OST Part 1",
    			"리코드",
    			"`The Story of Light` Epilogue - The 6th Album",
    			"We Young",
    			"V",
    			"노래",
    			"6th Mini Album `REMEMBER ME`",
    			"라이프 OST Part.6",
    			"헤어지는 중",
    			"WARNING",
    			"Second Write..",
    			"We Go Up - The 2nd Mini Album",
    			"TRAVEL: NOAH",
    			"미스터 션샤인 OST Part 11",
    			"몰랐니 - The 1st Single Album",
    			"WARNING",
    			"SHINHWA TWENTY SPECIAL ALBUM `HEART`",
    			"미스터 션샤인 OST Part 10",
    			"YOUNG",
    			"Vacation",
    			"뜻밖의 만남 #9. 늘 그대",
    			"PRODUCE 48 - 30 Girls 6 Concepts",
    			"LOVE YOURSELF 結 `Answer`",
    			"스무살이 왜이리 능글맞아",
    			"PRODUCE 48 - 30 Girls 6 Concepts",
    			"LOVE YOURSELF 結 `Answer`",
    			"리플리 Vol.3",
    			"PRODUCE 48 - 30 Girls 6 Concepts",
    			"PRODUCE 48 - 30 Girls 6 Concepts",
    			"LOVE YOURSELF 結 `Answer`",
    			"LOVE YOURSELF 結 `Answer`",
    			"아는 와이프 OST Part 3",
    			"PRODUCE 48 - 30 Girls 6 Concepts",
    			"The Power Of Music - The 4th Album Repackage",
    			"pathos",
    			"Faces of Love",
    			"Full Moon",
    			"THE WAR - The 4th Album",
    			"눈",
    			"별",
    			"겨울소리",
    			"애쓰지 마요",
    			"LOVE YOURSELF 承 `Her`",
    			"Palette",
    			"이런 꽃 같은 엔딩 OST Part 3",
    			"Be ordinary",
    			"SEOULITE",
    			"Red Diary Page.1",
    			"inside",
    			"그 사람을 아나요",
    			"Collage",
    			"Universe - 겨울 스페셜 앨범, 2017",
    			"Thunder"};

        return album;
    }

    public static String[] artist() {
    	String[] artist = {"아이오아이 (I.O.I)",
    			"정인",
    			"포스트맨 (Postmen)",
    			"뱅크",
    			"지아 (Zia)",
    			"박효신",
    			"알리 (Ali)",
    			"정인, 윤종신",
    			"더 네임 (The Name)",
    			"이적",
    			"문문 (MoonMoon)",
    			"이선희",
    			"나얼",
    			"윤딴딴",
    			"김범수",
    			"박명수",
    			"이준호",
    			"임창정",
    			"엠씨더맥스 (M.C The Max)",
    			"박효신",
    			"버즈 (Buzz)",
    			"한동근",
    			"빅마마 (Big Mama)",
    			"10cm",
    			"소찬휘",
    			"엠씨더맥스 (M.C The Max)",
    			"허각",
    			"한동근",
    			"이지 (izi)",
    			"임창정",
    			"정준일",
    			"구윤회",
    			"기리보이 (Giriboy)",
    			"Imagine Dragons",
    			"벤(Ben)",
    			"슬기 (SEULGI), 신비, 청하, 소연",
    			"10cm",
    			"세정",
    			"임한별",
    			"저스디스 (JUSTHIS), Kid Milli, NO:EL, 영비 (Young B)",
    			"하은",
    			"빈첸 (VINXEN)",
    			"빈첸 (VINXEN)",
    			"모트 (Motte)",
    			"바이브 (Vibe)",
    			"임창정",
    			"로이킴",
    			"거미",
    			"스탠딩 에그 (Standing Egg)",
    			"샤이니 (SHINee)",
    			"찬열, 세훈",
    			"박재범",
    			"김동률",
    			"오마이걸 (OH MY GIRL)",
    			"정승환",
    			"펀치 (Punch)",
    			"선미",
    			"남우현",
    			"NCT DREAM",
    			"김하온 (HAON)",
    			"백지영",
    			"소녀시대-Oh!GG",
    			"선미",
    			"신화",
    			"뉴이스트 W",
    			"백현 (BAEKHYUN), 로꼬",
    			"개코 (GAEKO)",
    			"양희은, 성시경",
    			"새벽 한 시",
    			"방탄소년단",
    			"오반 (OVAN)",
    			"약속",
    			"방탄소년단",
    			"벤(Ben)",
    			"Summer Wish",
    			"러브포션",
    			"방탄소년단",
    			"방탄소년단",
    			"로이킴",
    			"기억 조작단",
    			"EXO",
    			"엠씨더맥스 (M.C The Max)",
    			"수지",
    			"EXID",
    			"EXO",
    			"자이언티(Zion.T)",
    			"양요섭",
    			"박효신",
    			"박보람",
    			"방탄소년단",
    			"아이유 (IU)",
    			"에일리 (Ailee)",
    			"황치열",
    			"이하이",
    			"볼빨간 사춘기",
    			"양다일",
    			"임창정",
    			"The Chainsmokers",
    			"EXO",
    			"Imagine Dragons"};
    	
    	return artist;
    }

    public static String[] maker() {
    	String[] maker = {"YMC엔터테인먼트",
    			"정글엔터테인먼트",
    			"Good fellas Entertainment",
    			"Universal Music",
    			"로엔엔터테인먼트",
    			"스펀지엔터테인먼트",
    			"예당컴퍼니",
    			"미스틱 엔터테인먼트",
    			"Warner Music",
    			"CJ E&M, 쿵엔터테인먼트",
    			"MoonMoon",
    			"CJ E&M",
    			"인넥스트 트렌드",
    			"Romantic Planet (로맨틱플래닛)",
    			"Team Entertainment",
    			"무지개미디어",
    			"디지탈레코드",
    			"NH EMG",
    			"미성음반(김흥대)",
    			"젤리피쉬 엔터테인먼트",
    			"예전미디어",
    			"플레디스",
    			"YG Entertainment",
    			"매직스트로베리사운드",
    			"한국음반산업협회",
    			"태원엔터테인먼트",
    			"플랜에이 엔터테인먼트",
    			"플레디스",
    			"엠라이브러리",
    			"Warner Music",
    			"악당뮤직",
    			"Maktub Studio",
    			"린치핀뮤직",
    			"KIDinaKORNER, Interscope Records",
    			"Stone Music Entertainment, 화앤담픽쳐스",
    			"SM Entertainment",
    			"PLAYLIST",
    			"Stone Music Entertainment, 화앤담픽쳐스",
    			"모스트웍스",
    			"인디고뮤직",
    			"인디안레이블, 메이저나인",
    			"로맨틱팩토리",
    			"로맨틱팩토리",
    			"PLAYLIST",
    			"메이저나인",
    			"NH EMG",
    			"Stone Music Entertainment",
    			"Stone Music Entertainment, 팝뮤직",
    			"스포트라이트",
    			"SM Entertainment",
    			"SM Entertainment",
    			"AOMG",
    			"뮤직팜",
    			"WM엔터테인먼트",
    			"씨그널엔터테인먼트그룹",
    			"냠냠엔터테인먼트",
    			"메이크어스엔터테인먼트",
    			"울림 엔터테인먼트",
    			"SM Entertainment",
    			"H1GHR MUSIC",
    			"Stone Music Entertainment, 화앤담픽쳐스",
    			"SM Entertainment",
    			"메이크어스엔터테인먼트",
    			"신화컴퍼니",
    			"Stone Music Entertainment, 화앤담픽쳐스",
    			"SM Entertainment",
    			"아메바컬쳐",
    			"옹달샘",
    			"Stone Music Entertainment",
    			"빅히트 엔터테인먼트",
    			"로맨틱팩토리",
    			"Stone Music Entertainment",
    			"빅히트 엔터테인먼트",
    			"PLAYLIST",
    			"Stone Music Entertainment",
    			"Stone Music Entertainment",
    			"빅히트 엔터테인먼트",
    			"빅히트 엔터테인먼트",
    			"Stone Music Entertainment",
    			"Stone Music Entertainment",
    			"SM Entertainment",
    			"뮤직앤뉴",
    			"JYP Entertainment",
    			"바나나컬쳐",
    			"SM Entertainment",
    			"The Black Label",
    			"어라운드 어스",
    			"글러브엔터테인먼트",
    			"Stone Music Entertainment, MMO Entertainment",
    			"빅히트 엔터테인먼트",
    			"페이브엔터테인먼트",
    			"스페이스오디티",
    			"How엔터테인먼트",
    			"YG Entertainment",
    			"쇼파르뮤직",
    			"브랜뉴뮤직",
    			"NH EMG",
    			"Disruptor Records, Columbia",
    			"SM Entertainment",
    			"KIDinaKORNER, Interscope Records"};

    	
        return maker;
    }
}
