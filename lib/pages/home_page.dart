import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek_alfi/datas/icons.dart';
import 'package:gojek_alfi/datas/news.dart';
import 'package:gojek_alfi/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: green2, // <-- SEE HERE
          statusBarIconBrightness:
              Brightness.light, //<-- For Android SEE HERE (dark icons)
          statusBarBrightness:
              Brightness.dark, //<-- For iOS SEE HERE (dark icons)
        ),
        backgroundColor: green2,
        elevation: 0,
        toolbarHeight: 71,
        title: Header(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //search
            Padding(
              padding: const EdgeInsets.only(
                top: 23,
                left: 15,
                right: 15,
                bottom: 15,
              ),
              child: Row(
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                      decoration: BoxDecoration(
                        color: Color(0xFFFAFAFA),
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: Color(0xFFE8E8E8),
                        ),
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/search.svg',
                            color: dark1,
                            height: 20,
                            width: 20,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Cari layanan, makanan & tujuan',
                            style: regular14.copyWith(color: dark3),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  SizedBox(
                    height: 35,
                    width: 35,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35 / 2),
                          ),
                          clipBehavior: Clip.hardEdge,
                          child: Image.asset('assets/images/avatar.jpg'),
                        ),
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: Container(
                            width: 16,
                            height: 16,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35 / 2),
                              color: Color(0xFFD1E7EE),
                            ),
                            clipBehavior: Clip.hardEdge,
                            child: SvgPicture.asset(
                              'assets/icons/goclub.svg',
                              color: blue3,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            //gopay
            Padding(
              padding: EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Container(
                height: 96,
                decoration: BoxDecoration(
                  color: blue1,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 2,
                            height: 8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1),
                              color: Color(0xFFBBBBBB),
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Container(
                            width: 2,
                            height: 8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1),
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          height: 11,
                          width: 118,
                          decoration: const BoxDecoration(
                            color: Color(0xFF9CCDDB),
                            borderRadius: BorderRadius.vertical(
                                bottom: Radius.circular(8)),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 68,
                          width: 127,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 6),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/icons/gopay.png',
                                  width: 57,
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "Rp64.000",
                                  style: bold16.copyWith(color: dark1),
                                ),
                                Text(
                                  "Klik & cek riwayat",
                                  style: semibold12_5.copyWith(
                                      color: Color(0xFF0C9B16)),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    ...gopayIcons.map(
                      (e) => Flexible(
                        fit: FlexFit.tight,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: SvgPicture.asset(
                                'assets/icons/${e.icon}.svg',
                                color: blue1,
                              ),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              e.title,
                              style: semibold14.copyWith(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ),
            ),
            //menuIcons
            Padding(
              padding: EdgeInsets.only(top: 32, left: 27, right: 27),
              child: Container(
                height: 179,
                child: GridView.count(
                  crossAxisCount: 4,
                  children: [
                    ...menuIcons.map(
                      (e) => Container(
                        child: Column(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: e.icon == 'goclub'
                                    ? Colors.white
                                    : e.icon == 'other'
                                        ? dark4
                                        : e.color,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: SvgPicture.asset(
                                "assets/icons/${e.icon}.svg",
                                color: e.icon == 'goclub'
                                    ? purple1
                                    : e.icon == 'other'
                                        ? dark2
                                        : Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 9,
                            ),
                            Text(
                              e.title,
                              style: regular12_5.copyWith(color: dark2),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //goclub
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                height: 65,
                width: double.infinity,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Color(0xFFEAF3F6), Colors.white]),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Color(0xFFE8E8E8)),
                ),
                child: Stack(children: [
                  Positioned(
                    left: 8,
                    top: 4,
                    bottom: 4,
                    child: SvgPicture.asset('assets/icons/dots.svg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 13),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/star.svg',
                          height: 40,
                        ),
                        SizedBox(width: 16),
                        Flexible(
                          fit: FlexFit.tight,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '117 XP lagi ada Harta Karun',
                                style: semibold14.copyWith(color: dark1),
                              ),
                              SizedBox(height: 8),
                              Container(
                                height: 4,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                child: LinearProgressIndicator(
                                  backgroundColor: Color(0xFFBBBBBB),
                                  color: green2,
                                  value: 0.76,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 24),
                        SvgPicture.asset(
                          'assets/icons/left.svg',
                          height: 24,
                          color: dark2,
                        )
                      ],
                    ),
                  )
                ]),
              ),
            ),
            //akses cepat
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 16, bottom: 10),
              child: Text("Akses Cepat",
                  style: bold18.copyWith(color: Colors.black)),
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Color(0xFFE8E8E8)),
              ),
              child: Column(
                children: [
                  ...[
                    'Pintu masuk motor, MNC Land',
                    'Pintu keluar motor, MNC Land'
                  ].map((e) => Container(
                        padding: EdgeInsets.all(16),
                        child: Row(children: [
                          Container(
                            height: 24,
                            width: 24,
                            decoration: BoxDecoration(
                              color: green3,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: SvgPicture.asset('assets/icons/goride.svg'),
                          ),
                          SizedBox(width: 12),
                          Flexible(fit: FlexFit.tight, child: Text(e)),
                          SizedBox(width: 12),
                          SvgPicture.asset(
                            'assets/icons/left.svg',
                            color: dark1,
                            height: 18,
                            width: 18,
                          )
                        ]),
                      )),
                ],
              ),
            ),
            //lebih hemat pakek gopay
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/icons/gopaylater.png',
                    height: 14,
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        'Lebih hemat pake GoPayLater',
                        style: bold16.copyWith(color: dark1),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Image.asset('assets/icons/emotecemerlang.png')
                    ],
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Yuk, belanja di TokoPedia pake GoPayLater dan nikmati cashback',
                    style: regular14.copyWith(color: dark2),
                  ),
                ],
              ),
            ),
            //news
            SizedBox(height: 24),
            ...news.map(
              (e) => Container(
                clipBehavior: Clip.hardEdge,
                margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFE8E8E8)),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/${e.image}",
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 24, right: 24, top: 24, bottom: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                e.title,
                                style: bold16.copyWith(color: dark1),
                              ),
                              SizedBox(width: 2),
                              Image.asset(
                                "assets/icons/emotting.png",
                                height: 16,
                                width: 16,
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Text(
                            e.description,
                            style: regular14.copyWith(color: dark2),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: green1,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Text(
              "Beranda",
              style: semibold14.copyWith(color: green1),
            ),
          ),
          ...['Promo', 'Pesanan', 'Chat'].map(
            (title) => Flexible(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                child: Center(
                  child: Text(
                    title,
                    style: semibold14,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
