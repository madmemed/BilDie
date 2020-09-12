import "package:bildie/classes/question.dart";

Map uDed = {
  "Baştan başla": 0,
  "Kapat": -2,
};

class QuestionBank {
  int currentQuestionNo = 0;

  List<Question> _questions = [
    Question(//0
        questText: "Saat 10'da kalkıyorsun. Dün gece ne yaptığının pek bir önemi yok, tabii ki de geç yatacaksın, Bilkent öğrencisisin sen. Kendine gelince sanki 8.40'da dersin olduğunu hatırlıyorsun.",
        answers: {
          "Uyumaya devam et.": 1,
          "Yurttan çıkmak için hazırlık yap.": 2,
        }),
    Question(//1
      questText: "Uyumaya devam ettin ve yarım saat sonra odanı temizlemeye gelen ablalar seni görmeyip seni de temizlediler, öldün.",
      answers: uDed
    ),
    Question(//2
      questText: "Giyinip dışarı çıktın. Yurdun içi bomboş. Ablaların tehditkar bakışları arasında yurdun önüne indin.",
      answers: {
        "Zaten derse geç kalmışsın, koşmaya başla.": 3,
        "Ders bekleyebilir, otomattan kahve al ve sigara yak.": 4
      }
    ),
    Question(//3
      questText: "Daha gözünü açmadan ders ders diye tutturup koşmaya başladın. Daha spor salonu otoparkına gelmeden panikle yola atladığın için TMD aldında kaldın, öldün.",
      answers: uDed
    ),
    Question(//4
      questText: "Aç karnına yaktığın sigara mideni yaksa da kahve ile mükemmel bir kahvaltı kombini olduğu inkar edilemez bir gerçek. Kendine geliyorsun ve daha mantıklı kararlar alacağına inanarak yurdun merdivenlerine bakıyorsun. B binasına gitmen gerekiyor.",
      answers: {
        "Nanotam önünden geç, daha kısa.": 5,
        "Ff binasının ordan geç, belki birini bulup laflarsın.": 6
      }
    ),
    Question(//5
      questText: "Derse geldin. Tahtada Natalya var. Dersin bitmesine 15 dk olsa bile hem Natalya'ya hem de derse saygı duymadığın için kadının saçma bakışlarına aldırmadan arka sıraya geçtin.",
      answers: {
        "Koy kafayı uyu": 7,
        "Dersi dinlemeye çalış": 8
      }
    ),
    Question(//6
      questText: "Okula geldiğinde tanışıtığın ilk insanlardan biririni görün, zaten dersin bitmesine 15dk kalmış diyerek birer çay alıp laflıyorsunuz. Ama arkadaşın korona çıkıyor. 2 hafta sonra yurtta ölü bulunuyorsun",
      answers: uDed
    ),
    Question(//7
      questText: "Kafanı koyduğun gibi Natalya'nın yüksek oktav sesiyle uyuya kalıyorsun. Aynı dersi aldığınız bölümdaşın tenefüs olduğu için seni uyandırıyor.",
      answers: {
        "Zaten uykunu alamamışsın, homurdan ve uykuya dön.": 9,
        "Arkadaşının teklifini redettme ve onunla tenefüse çıkıp sigara yandır.": 10
      }
    ),
    Question(//8
      questText: "Dersi anlamaya çalışırken amk Natalya karısının boktan aksanı da kafaya vurunca beyin ölümün gerçekleşti.",
      answers: uDed
    ),
    Question(//9
      questText: "Tenefüste uyumaya çalışırken Natalya gülerek yanına yaklaştı. Lan bu kadında da tam sosyopat tipi var diye düşünürken elini boğazına götürüp geri çekiyor. Naptı lan bu demeye kalmadan kıldan ince bir neşterle boğazını kestiğini üstüne dökülen kanlardan anlıyorsun. Kendi kanında boğularak ses çıkarmadan öldün.",
      answers: uDed
    ),
    Question(//10
      questText: "---",
      answers: {
        "---": 11,
        "- -": 12,
      }
    )

  ];

Question getQuestion(int questionNo) {
  return _questions[questionNo];
}

void updateCurrentQuestionNo(int answerNo) {
  print(_questions.elementAt(currentQuestionNo).getPathId(answerNo));
  print(_questions.length);
  if(_questions.elementAt(currentQuestionNo).getPathId(answerNo) <= _questions.length-1) {
    currentQuestionNo = _questions.elementAt(currentQuestionNo).getPathId(answerNo);
  }
  else if(_questions.elementAt(currentQuestionNo).getPathId(answerNo) == -2) {
    print("kapat");
  }
  else {
    print("bruh");
  }
}

}