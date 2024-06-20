import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProfilPage extends StatefulWidget {
  ProfilPage({Key? key}) : super(key: key);

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  List<dynamic> carouselPages = [
    "photo/1.jpg",
    "photo/2.jpg",
    "photo/3.jpg",
    "photo/4.jpg",
    "photo/5.jpg",
    "photo/6.jpg",
  ];
  final CarouselController csc = CarouselController();
  int curIndex = 0;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text(
          'Biz barada',
          style: TextStyle(
              fontFamily: 'Quicksand',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Colors.white),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.white,
                size: 22,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            );
          },
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: <Widget>[
              Text(
                'Annagylyç Esenow',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Quicksand',
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: h / 2.1,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(h / 42.2)),
                margin: EdgeInsets.fromLTRB(h / 42.2, 0, h / 42.2, 0),
                child: CarouselSlider(
                  items: carouselPages
                      .map((e) => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(h / 42.2),
                                child: Image.asset(
                                  e,
                                  fit: BoxFit.fill,
                                  width: double.infinity,
                                )),
                          ))
                      .toList(),
                  carouselController: csc,
                  options: CarouselOptions(
                    scrollPhysics: const BouncingScrollPhysics(),
                    autoPlay: true,
                    aspectRatio: 2,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) => {
                      setState(() {
                        curIndex = index;
                      })
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Center(
                      child: Padding(
                        padding: EdgeInsets.only(
                            bottom: 15, left: h / 42.2, right: h / 42.2),
                        child: Text(
                          '     Annagylyç Esenow edebi döredijilige 1968-nji ýylda  ilkinji makala we goşgulary gazetlerde çap edilip başlandan soň, yzygiderli girişip ýyllardyr. ' +
                              'Soň 1990-2010ý. aralygynda dürli sebäplere görä goşgy, başlady. Goşgy düzüliş tehnikasyny, edebiýat teoriýasyny tiz ele aldy.' +
                              '\n     Proza, makala, terjimeler bilen hem meşgullanyp başlady. Şeýle ' +
                              'materiallary “Zähmetkeşler sesi”, “Zähmet baýdagy” (“Balkan”) we merkezi gazet-žurnallarda barha yzygiderli çap edildi. Ýaş ýazyjylaryň ' +
                              'oblast we respublikan seminarlarynda A.Esenowyň döredijiliginiň barha kämilleşýändigi nygtaldy. Dürli ýyllarda Türmenistanyň halk' +
                              'ýazyjylary Ç. Aşyrow, A. Kowusow, K. Gurbannepesow, Ý. Durdyýew, A.Atabaýew, I. Nuryýew, professor şahyr  G. Geldiýew we başgalar' +
                              'Annagylyjyň goşgularyna oňat baha berdiler.' +
                              '\n     A.Esenowyň goşgulary “Bahar bulaklary”,”Söýgi we buýsanç”' +
                              'kollektiw ýygyndylarda ýerleşdirildi. 1992ý. “Ruh” neşirýaty “Söýgi hüwdüsi” goşgular kitabyny we şol ýylda A. Esenowyň Ibn Sinanyň' +
                              '2-nji tomundan toplap terjime eden “Lukman hekimiň melhemlerinden” atly kitapçasyny neşir edip, köpçülige ýetirdi.' +
                              '\n     1993-nji ýylda “Magaryf” neşirýaty A.Esenowyň  çagalar üçin hekaýalaryny “Tanyş boluň, Gülaýym!” ady bilen 12 müň nusgada neşir etdi.' +
                              '\n     A.Esenow 1979ý. Däneata obasynda türkmen dili we edebiýaty mugallymy bolup işe başlady. 1990-2010ý. aralygynda A.Esenow' +
                              'durmuş we saglyk ýagdaýy hem-de mugallymçylyk işindäki borçişleri sebäpli, edebi döredijilikden ep-esli ara üzmeli boldy.' +
                              '1985ý. Oboý obasyndaky 5-nji orta mekdebe mugallym bolup işe geçdi. Şu ýyllarda mugallymçylykda üstünlikler gazandy. “Halk' +
                              'magaryfynyň otliçnigi” (1988ý.) nyşany berildi. 1989-njy ýylda Türkmenistanyň Milli bilim institutynyň ylmy habarçylygyna kabul' +
                              'edildi. Iş tejribesi etrap, welaýat we respublikan möçberinde öwrenilip, gazet sahypalary görnüşde ýaýradyldy. A.Esenowyň iş tejribesi barada dürli awtorlar birnäçe makalalar,' +
                              ' oçerkler ýazdylar. A. Esenow 1995ý. bäri ýokary derejeli mugallymdyr.' +
                              '\n     Eliňizdäki “Ömür menzili” kitabyndaky goşgular gowşagrak ýa-da kämil bolmagyna garamazdan, ýazylan seneleri boýunça yzygiderliräk ýerleşdirildi.' +
                              'Munuň özi awtoryň döredijilik ýoluna, nähili kämilleşişine baha bermek üçin zerurdyr.' +
                              'Elbetde, başky onýyllyk (1968-1978) döredijilige ýaňy başlanan ýyllardyr. Soň 1990-2010ý. aralygynda dürli sebäplere görä goşgy,' +
                              'proza, makalalar, terjimeler  20 ýyl çemesi örän seýrek ýazyldy. Şeýlelikde, şu kitapdaky goşgular öndümli işlenen 10-15 ýylyň ' +
                              'goşgularydyr. Pessimistik  ýa-da juda şahsy mazmynly “albom”	goşgularynyň birnäçesi bu kitaba girizilmedi. (Bular golýazma ' +
                              'depderlerde galdyryldy). Şeýlelikde, bu kitap saýlanan goşgular kitabydyr. Döwlet neşirýatlarynda kitap çykartmak üçin amatly ' +
                              'bolmagy üçin, bir ýere jemlemek maksady bilen kitap görnüşde taýýarlandy. Esasy zat—bu kitap awtoryň ömründen bir edebi ' +
                              'mirasdyr. Juda bikär ýaşalmadygynyň, ömür we dünýä hakynda bolman ýaşamaga synanyşylanynyň bir şaýadydyr.\n Kyrk ýyl çemesi döwürde bu goşgulary gazet-žurnallarda ' +
                              'okan müňlerçe okyjylar her gezek sähelçe minutlar bolsa-da begenip, oýlanyp, guwanyp täsir alypdylar. Bu meniň hem bagty pursatlarydyr. “Goşgularyňy okadyk, ýene ' +
                              'ýazaweri!” diýen adamlaryň onlarçasynyň sözleri heniz hem ýadymda dur!' +
                              '\n     Şu uzak onýyllyklaryň dowamynda meniň döredijiligimi goldan adamlar hem, çap etmekden galdyran adamlar hem' +
                              'bolupdy.' +
                              '\n   “Uly ýola niýetlenen gämiler\n   Her öwsen şemala çaýkanýan däldir”' +
                              '\n— diýen setirlerim şeýle pursatlarda döräpdi.' +
                              '\n     Il guwansa, il ýatlasa, ýazan zatlaryň il-günüň şatlygyna ' +
                              'şatlyk goşsa, gaýgyly gününde teselli berip bilse, armanyň näme?!' +
                              '\n     Söz üçin, setir üçin ukusyz geçen gijelerime, öz-özüme gümra bolup çola çykan pursatlaryma, köp gezek ýaşlyk eşretlerinden özümi mahrum edenime sähelçe-de ökünemok.',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Quicksand',
                            color: Colors.black,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Divider(
                height: 2,
                color: Colors.grey,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: h / 42.2, vertical: 10),
                child: const Column(
                  children: [
                    Text(
                      'Programmany döredenler',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Quicksand',
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(CupertinoIcons.info_circle, color: Colors.black),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Baýmyrat Esenow',
                          style: TextStyle(
                            fontSize: 16,
                            // fontWeight: FontWeight.bold,
                            fontFamily: 'Quicksand',
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(CupertinoIcons.info_circle, color: Colors.black),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Annageldi Annageldiýew',
                          style: TextStyle(
                            fontSize: 16,
                            // fontWeight: FontWeight.bold,
                            fontFamily: 'Quicksand',
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(CupertinoIcons.info_circle, color: Colors.black),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Aşyr Ýegenmyradow',
                          style: TextStyle(
                            fontSize: 16,
                            // fontWeight: FontWeight.bold,
                            fontFamily: 'Quicksand',
                            color: Colors.black,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
