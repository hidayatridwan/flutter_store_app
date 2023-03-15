import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_store_app/app_styles.dart';
import 'package:flutter_store_app/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: const HomeScreen(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Container(
          height: 64,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: CustomNavigationBar(
              isFloating: true,
              borderRadius: const Radius.circular(40),
              selectedColor: kWhite,
              unSelectedColor: kGrey,
              backgroundColor: kBrown,
              strokeColor: Colors.transparent,
              scaleFactor: 0.1,
              iconSize: 40,
              items: [
                CustomNavigationBarItem(
                    icon: pageIndex == 0
                        ? SvgPicture.asset('assets/home_icon_selected.svg')
                        : SvgPicture.asset('assets/home_icon_unselected.svg')),
                CustomNavigationBarItem(
                    icon: pageIndex == 1
                        ? SvgPicture.asset('assets/cart_icon_selected.svg')
                        : SvgPicture.asset('assets/cart_icon_unselected.svg')),
                CustomNavigationBarItem(
                    icon: pageIndex == 2
                        ? SvgPicture.asset('assets/favorite_icon_selected.svg')
                        : SvgPicture.asset(
                            'assets/favorite_icon_unselected.svg')),
                CustomNavigationBarItem(
                    icon: pageIndex == 3
                        ? SvgPicture.asset('assets/account_icon_selected.svg')
                        : SvgPicture.asset(
                            'assets/account_icon_unselected.svg')),
              ]),
        ),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> categories = ['All categories', 'Dress', 'Hat', 'Watch'];
  final List<String> icons = [
    'all_items_icon',
    'dress_icon',
    'hat_icon',
    'watch_icon'
  ];
  final List<String> images = [
    'image-01.png',
    'image-02.png',
    'image-03.png',
    'image-04.png',
    'image-05.jpg',
    'image-06.jpg',
    'image-07.jpg',
    'image-08.jpg',
  ];
  int catIndex = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return SafeArea(
        child: ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello, Welcome 👋',
                    style: kEncodeSansRegular.copyWith(
                        color: kDarkBrown,
                        fontSize: SizeConfig.blocSizeHorizontal! * 3.5),
                  ),
                  Text(
                    'Ridwan Hidayat',
                    style: kEncodeSansBold.copyWith(
                        color: kDarkBrown,
                        fontSize: SizeConfig.blocSizeHorizontal! * 4),
                  )
                ],
              ),
              const CircleAvatar(
                radius: 20.0,
                backgroundColor: kGrey,
                backgroundImage: AssetImage('assets/images/image-04.png'),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 24.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
          child: Row(
            children: [
              Expanded(
                  child: TextField(
                      style: kEncodeSansRegular.copyWith(
                          color: kDarkGrey,
                          fontSize: SizeConfig.blocSizeHorizontal! * 3.5),
                      controller: TextEditingController(),
                      decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 13.0),
                          prefixIcon: const IconTheme(
                              data: IconThemeData(color: kDarkGrey),
                              child: Icon(Icons.search)),
                          border: kInputBorder,
                          errorBorder: kInputBorder,
                          disabledBorder: kInputBorder,
                          focusedBorder: kInputBorder,
                          focusedErrorBorder: kInputBorder,
                          enabledBorder: kInputBorder,
                          hintText: 'Search clothes...',
                          hintStyle: kEncodeSansRegular.copyWith(
                              color: kDarkGrey,
                              fontSize:
                                  SizeConfig.blocSizeHorizontal! * 3.5)))),
              const SizedBox(
                width: 16.0,
              ),
              Container(
                width: 49,
                height: 49,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kBorderRadius),
                    color: kBlack),
                child: SvgPicture.asset('assets/filter_icon.svg'),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 24.0,
        ),
        SizedBox(
          height: 36,
          width: double.infinity,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: categories.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    catIndex = index;
                  });
                },
                child: Container(
                  margin: EdgeInsets.only(
                      left: catIndex == index ? kPaddingHorizontal : 10,
                      right: catIndex == categories.length - 1
                          ? kPaddingHorizontal
                          : 0),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  height: 36,
                  decoration: BoxDecoration(
                      color: catIndex == index ? kBrown : kWhite,
                      borderRadius: BorderRadius.circular(8.0),
                      border: catIndex == index
                          ? null
                          : Border.all(width: 1.0, color: kLightGrey)),
                  child: Row(
                    children: [
                      SvgPicture.asset(catIndex == index
                          ? 'assets/${icons[index]}_selected.svg'
                          : 'assets/${icons[index]}_unselected.svg'),
                      const SizedBox(
                        width: 4.0,
                      ),
                      Text(
                        categories[index],
                        style: kEncodeSansMedium.copyWith(
                            color: catIndex == index ? kWhite : kDarkBrown,
                            fontSize: SizeConfig.blocSizeHorizontal! * 3),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        MasonryGridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: images.length,
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Positioned(
                        child: ClipRRect(
                      borderRadius: BorderRadius.circular(kBorderRadius),
                      child: Image.asset(
                        'assets/images/${images[index]}',
                        fit: BoxFit.cover,
                      ),
                    )),
                    Positioned(
                        top: 8,
                        right: 8,
                        child: GestureDetector(
                          child: SvgPicture.asset(
                              'assets/favorite_cloth_icon_unselected.svg'),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Modern light clothes',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: kEncodeSansSemiBold.copyWith(
                      color: kDarkBrown,
                      fontSize: SizeConfig.blocSizeHorizontal! * 3.5),
                ),
                Text(
                  'Dress modern',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: kEncodeSansRegular.copyWith(
                      color: kGrey,
                      fontSize: SizeConfig.blocSizeHorizontal! * 2.5),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '\$200.00',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: kEncodeSansSemiBold.copyWith(
                          color: kDarkBrown,
                          fontSize: SizeConfig.blocSizeHorizontal! * 3.5),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: kYellow,
                          size: 16,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          '5.0',
                          style: kEncodeSansRegular.copyWith(
                              color: kDarkBrown,
                              fontSize: SizeConfig.blocSizeHorizontal! * 3),
                        )
                      ],
                    )
                  ],
                ),
              ],
            );
          },
        )
      ],
    ));
  }
}
