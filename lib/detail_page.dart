import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_store_app/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:readmore/readmore.dart';

import 'app_styles.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.blocSizeVertical! * 50,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: Image.asset(
                      'assets/images/image_product_detail.png',
                      height: SizeConfig.blocSizeVertical! * 50,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: SizeConfig.blocSizeVertical! * 10,
                            height: SizeConfig.blocSizeHorizontal! * 10,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: kWhite,
                                boxShadow: [
                                  BoxShadow(
                                      color: kBrown.withOpacity(0.11),
                                      spreadRadius: 0.0,
                                      blurRadius: 12,
                                      offset: const Offset(0, 5))
                                ]),
                            child:
                                SvgPicture.asset('assets/arrow_back_icon.svg'),
                          ),
                          Container(
                            width: SizeConfig.blocSizeVertical! * 10,
                            height: SizeConfig.blocSizeHorizontal! * 10,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: kWhite,
                                boxShadow: [
                                  BoxShadow(
                                      color: kBrown.withOpacity(0.11),
                                      spreadRadius: 0.0,
                                      blurRadius: 12,
                                      offset: const Offset(0, 5))
                                ]),
                            child: SvgPicture.asset(
                                'assets/favorite_black_icon.svg'),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 24.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Text(
                  'Modern light clothes',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: kEncodeSansBold.copyWith(
                      color: kDarkBrown,
                      fontSize: SizeConfig.blocSizeHorizontal! * 7),
                )),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(color: kBorderColor, width: 1),
                          shape: BoxShape.circle,
                          color: kWhite,
                        ),
                        child: const Icon(
                          Icons.remove,
                          color: kDarkGrey,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: SizeConfig.blocSizeHorizontal! * 3,
                    ),
                    Text(
                      '0',
                      style: kEncodeSansBold.copyWith(
                          fontSize: SizeConfig.blocSizeHorizontal! * 5,
                          color: kDarkBrown),
                    ),
                    SizedBox(
                      width: SizeConfig.blocSizeHorizontal! * 3,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(color: kBorderColor, width: 1),
                          shape: BoxShape.circle,
                          color: kWhite,
                        ),
                        child: const Icon(
                          Icons.add,
                          color: kDarkGrey,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 8.0,
            ),
            Row(
              children: [
                RatingBar.builder(
                  itemSize: 18,
                  itemCount: 5,
                  initialRating: 3.4,
                  minRating: 1,
                  direction: Axis.horizontal,
                  itemPadding: const EdgeInsets.all(2),
                  itemBuilder: (context, index) {
                    return const Icon(
                      Icons.star,
                      color: kYellow,
                    );
                  },
                  onRatingUpdate: (value) {},
                  unratedColor: kLightGrey,
                ),
                const SizedBox(
                  width: 8.0,
                ),
                RichText(
                    text: TextSpan(
                        text: '5.0',
                        style: kEncodeSansRegular.copyWith(
                            color: kDarkGrey,
                            fontSize: SizeConfig.blocSizeHorizontal! * 3.5),
                        children: [
                      TextSpan(
                        text: ' (95.000 reviews)',
                        style: kEncodeSansRegular.copyWith(color: kBlue),
                      )
                    ]))
              ],
            ),
            const SizedBox(
              height: 8.0,
            ),
            ReadMoreText(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
              trimLines: 2,
              trimMode: TrimMode.Line,
              style: kEncodeSansRegular.copyWith(
                  color: kDarkGrey,
                  fontSize: SizeConfig.blocSizeHorizontal! * 3.5),
              moreStyle: kEncodeSansBold.copyWith(
                  color: kDarkBrown,
                  fontSize: SizeConfig.blocSizeHorizontal! * 4),
              lessStyle: kEncodeSansBold.copyWith(
                  color: kDarkBrown,
                  fontSize: SizeConfig.blocSizeHorizontal! * 4),
            ),
            const SizedBox(
              height: 16.0,
            ),
            const Divider(
              height: 1,
              color: kLightGrey,
            ),
            const SizedBox(
              height: 16.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(
                      'Choose size',
                      style: kEncodeSansBold.copyWith(
                          color: kDarkBrown,
                          fontSize: SizeConfig.blocSizeHorizontal! * 3.5),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Row(
                      children: [
                        Container(
                          width: SizeConfig.blocSizeHorizontal! * 9,
                          height: SizeConfig.blocSizeHorizontal! * 9,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: kWhite,
                              border: Border.all(width: 1, color: kLightGrey)),
                          child: Center(
                            child: Text(
                              'S',
                              style: kEncodeSansRegular.copyWith(
                                  color: kDarkBrown,
                                  fontSize: SizeConfig.blocSizeHorizontal! * 3.5),
                            ),
                          ),
                        ),
                        Container(
                          width: SizeConfig.blocSizeHorizontal! * 9,
                          height: SizeConfig.blocSizeHorizontal! * 9,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: kWhite,
                              border: Border.all(width: 1, color: kLightGrey)),
                          child: Center(
                            child: Text(
                              'M',
                              style: kEncodeSansRegular.copyWith(
                                  color: kDarkBrown,
                                  fontSize: SizeConfig.blocSizeHorizontal! * 3.5),
                            ),
                          ),
                        ),
                        Container(
                          width: SizeConfig.blocSizeHorizontal! * 9,
                          height: SizeConfig.blocSizeHorizontal! * 9,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: kWhite,
                              border: Border.all(width: 1, color: kLightGrey)),
                          child: Center(
                            child: Text(
                              'L',
                              style: kEncodeSansRegular.copyWith(
                                  color: kDarkBrown,
                                  fontSize: SizeConfig.blocSizeHorizontal! * 3.5),
                            ),
                          ),
                        ),
                        Container(
                          width: SizeConfig.blocSizeHorizontal! * 9,
                          height: SizeConfig.blocSizeHorizontal! * 9,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: kWhite,
                              border: Border.all(width: 1, color: kLightGrey)),
                          child: Center(
                            child: Text(
                              'XL',
                              style: kEncodeSansRegular.copyWith(
                                  color: kDarkBrown,
                                  fontSize: SizeConfig.blocSizeHorizontal! * 3.5),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
