import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:the_luxury_hut/constants/dimens.dart';
import 'package:the_luxury_hut/constants/palatte.dart';

class SellScreen extends StatefulWidget {
  const SellScreen({Key? key}) : super(key: key);

  @override
  State<SellScreen> createState() => _SellScreenState();
}

class _SellScreenState extends State<SellScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _key,
        drawer: Drawer(
          backgroundColor: AppColors.drawerBackGrey,
          child: ListView(
            children: [
              SizedBox(
                height: 120,
                child: DrawerHeader(
                  decoration: const BoxDecoration(
                    color: AppColors.black,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            child: SvgPicture.asset(
                              "assets/svg-images/team-4.svg",
                              fit: BoxFit.fill,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(AppSizes.dimen8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "John Doe",
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      color: AppColors.white),
                                ),
                                Text(
                                  "ID: 123456789",
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      color: AppColors.grey),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Divider(
                        color: AppColors.lightGrey.withOpacity(0.7),
                        thickness: 1,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 0, primary: AppColors.white),
                            onPressed: () {},
                            child: const Text(
                              "+ Create New",
                              style: TextStyle(
                                  fontFamily: "JosefinSans",
                                  color: AppColors.black,
                                  fontSize: AppSizes.bodyText1),
                            )),
                      ),
                      const SizedBox(height: 25,),
                      ListTile(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                        tileColor: AppColors.black,
                        leading: SvgPicture.asset(
                          "assets/svg-images/dashboard-5486.svg",
                          height: 20,
                        ),
                        title: const Text(
                          "Dashboard",
                          style: TextStyle(
                              fontFamily: "JosefinSans",
                              color: AppColors.white,
                              fontSize: AppSizes.bodyText1),
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(Icons.mail_outlined,color: AppColors.white,),
                        trailing: Container(
                          width: 40,
                          height: 20,
                          decoration: const BoxDecoration(
                              color:
                              AppColors
                                  .youtube,
                              borderRadius:  BorderRadius
                                  .all(
                                  Radius.circular(
                                      AppSizes
                                          .slideToOffButtonRadius))),
                          child: const Center(
                            child: Text(
                             "10",
                             style: TextStyle(
                                 fontSize: 10,
                                 height:
                                 1.5,
                                 fontFamily:
                                 "JosefinSans",
                                 color:
                                 AppColors.white),
                                ),
                          ),
                        ),
                        title: const Text(
                          "Messages",
                          style: TextStyle(
                              fontFamily: "JosefinSans",
                              color: AppColors.white,
                              fontSize: AppSizes.bodyText1),
                        ),
                        onTap: () {},
                      ),
                      /// kept empty to filled later
                      ListTile(
                        leading: const Icon(Icons.person_outline,color: AppColors.white,),
                        title: const Text(
                          "Account",
                          style: TextStyle(
                              fontFamily: "JosefinSans",
                              color: AppColors.white,
                              fontSize: AppSizes.bodyText1),
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(Icons.logout,color: AppColors.white,),
                        title: const Text(
                          "Log Out",
                          style: TextStyle(
                              fontFamily: "JosefinSans",
                              color: AppColors.white,
                              fontSize: AppSizes.bodyText1),
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: SvgPicture.asset(
                          "assets/svg-images/support-technology-svgrepo-com.svg",
                          height: 20,
                        ),
                        title: const Text(
                          "Support",
                          style: TextStyle(
                              fontFamily: "JosefinSans",
                              color: AppColors.white,
                              fontSize: AppSizes.bodyText1),
                        ),
                        onTap: () {},
                      ),

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        backgroundColor: AppColors.black,
        appBar: AppBar(
          backgroundColor: AppColors.transparent,
          leading: IconButton(
            onPressed: () {
              _key.currentState?.openDrawer();
            },
            icon: const Icon(Icons.menu),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_none),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person_outline),
            ),
          ],
        ),
        body: Container(
          decoration: const BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(AppSizes.containerCornerRadius),
                topLeft: Radius.circular(AppSizes.containerCornerRadius),
              )),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 25, right: 25, top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          child: SvgPicture.asset(
                            "assets/svg-images/team-4.svg",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(AppSizes.dimen8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "John Doe",
                                style: TextStyle(
                                    fontFamily: "Montserrat",
                                    color: AppColors.black),
                              ),
                              Text(
                                "ID: 123456789",
                                style: TextStyle(
                                    fontFamily: "Montserrat",
                                    color: AppColors.black),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 0, primary: AppColors.green),
                          onPressed: () {},
                          child: Row(
                            children: const [
                              Icon(
                                Icons.sticky_note_2_outlined,
                                size: AppSizes.caption,
                              ),
                              SizedBox(
                                width: AppSizes.dimen5,
                              ),
                              Text(
                                "Edit Profile ",
                                style: TextStyle(fontSize: AppSizes.caption),
                              )
                            ],
                          )),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                          color: AppColors.lightGrey,
                          borderRadius: BorderRadius.only(
                            topRight:
                                Radius.circular(AppSizes.containerCornerRadius),
                            topLeft:
                                Radius.circular(AppSizes.containerCornerRadius),
                          )),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: ListView(
                          children: [
                            GridView.count(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                childAspectRatio: 1,
                                crossAxisCount: 3,
                                crossAxisSpacing: 1.0,
                                mainAxisSpacing: 8.0,
                                children: List.generate(3, (index) {
                                  return Center(
                                    child: Container(
                                      height: 90,
                                      width: 150,
                                      margin: const EdgeInsets.only(
                                          left: 5, right: 5, top: 20),
                                      decoration: const BoxDecoration(
                                          color: AppColors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(
                                                  AppSizes.cardCornerRadius))),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          CircleAvatar(
                                              backgroundColor: AppColors.green,
                                              radius: 15,
                                              child: Icon(
                                                  Icons.add_circle_outline)),
                                          Text(
                                            "Total Listing",
                                            style: TextStyle(
                                                fontFamily: "JosefinSans",
                                                color: AppColors.black,
                                                height: 2),
                                          ),
                                          Text(
                                            "150",
                                            style: TextStyle(
                                                fontFamily: "JosefinSans",
                                                color: AppColors.black),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                })),
                            Container(
                              margin: const EdgeInsets.only(
                                  top: 10, bottom: 10, right: 5, left: 5),
                              decoration: const BoxDecoration(
                                  color: AppColors.black,
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          AppSizes.cardCornerRadius))),
                              child: Padding(
                                padding: const EdgeInsets.all(AppSizes.dimen12),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text(
                                          "Listing Limit",
                                          style: TextStyle(
                                              fontFamily: "JosefinSans",
                                              color: AppColors.white),
                                        ),
                                        Text(
                                          "70%",
                                          style: TextStyle(
                                              fontFamily: "JosefinSans",
                                              color: AppColors.white),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          top: 10, bottom: 10),
                                      decoration: const BoxDecoration(
                                          color: AppColors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(
                                                  AppSizes.cardCornerRadius))),
                                      child: Padding(
                                        padding: const EdgeInsets.all(2),
                                        child: LinearPercentIndicator(
                                          padding: const EdgeInsets.all(0),
                                          animation: true,
                                          lineHeight: 10.0,
                                          animationDuration: 2000,
                                          percent: 0.7,
                                          barRadius: const Radius.circular(5),
                                          progressColor: AppColors.green,
                                          backgroundColor: AppColors.white,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          "Current Usage",
                                          style: TextStyle(
                                              height: 2,
                                              fontFamily: "JosefinSans",
                                              color: AppColors.white),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Container(
                                          height: 14,
                                          width: 40,
                                          decoration: const BoxDecoration(
                                              color: AppColors.white,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(AppSizes
                                                      .cardCornerRadius))),
                                          child: const Text(
                                            "70/100",
                                            style: TextStyle(
                                                fontSize: AppSizes.caption,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: "Montserrat",
                                                color: AppColors.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5, bottom: 8),
                                      child: Divider(
                                        color: AppColors.lightGrey
                                            .withOpacity(0.7),
                                        thickness: 0.7,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          "Free Listing Plan",
                                          style: TextStyle(
                                              fontFamily: "JosefinSans",
                                              color: AppColors.white),
                                        ),
                                        SizedBox(
                                          width: 105,
                                          height: 30,
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                                elevation: 0,
                                                primary: AppColors.green),
                                            child: const Text(
                                              "Upgrade Now",
                                              style: TextStyle(
                                                  fontSize: AppSizes.caption,
                                                  fontFamily: "JosefinSans",
                                                  color: AppColors.white),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              //margin: const EdgeInsets.only(bottom: 10, right: 5, left: 5),
                              decoration: const BoxDecoration(
                                  color: AppColors.white,
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          AppSizes.cardCornerRadius))),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: AppSizes.dimen12),
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: const BoxDecoration(
                                              color: AppColors.green,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(AppSizes
                                                      .cardCornerRadius))),
                                          height: 30,
                                          width: 5,
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        const Text(
                                          "Communication",
                                          style: TextStyle(
                                              fontSize: AppSizes.headline6,
                                              fontFamily: "JosefinSans",
                                              color: AppColors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        right: 20, left: 20, top: 10),
                                    child: Text(
                                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                                      style: TextStyle(
                                          fontFamily: "JosefinSans",
                                          color: AppColors.grey),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 20,
                                        left: 20,
                                        top: 20,
                                        bottom: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CircularPercentIndicator(
                                          radius: 50.0,
                                          lineWidth: 4.0,
                                          percent: 0.60,
                                          animation: true,
                                          center: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: const [
                                              Text(
                                                "12h",
                                                style: TextStyle(
                                                    fontFamily: "JosefinSans",
                                                    color: AppColors.black),
                                              ),
                                              Text(
                                                "Response Time",
                                                style: TextStyle(
                                                    fontSize: AppSizes.caption,
                                                    height: 2,
                                                    fontFamily: "JosefinSans",
                                                    color: AppColors.grey),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Icon(Icons.watch_later_outlined)
                                            ],
                                          ),
                                          progressColor: AppColors.green,
                                        ),
                                        CircularPercentIndicator(
                                          radius: 50.0,
                                          lineWidth: 4.0,
                                          animation: true,
                                          percent: 0.90,
                                          center: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Text(
                                                "66",
                                                style: TextStyle(
                                                    fontFamily: "JosefinSans",
                                                    color: AppColors.black),
                                              ),
                                              const Text(
                                                "Number of Calls",
                                                style: TextStyle(
                                                    fontSize: AppSizes.caption,
                                                    height: 2,
                                                    fontFamily: "JosefinSans",
                                                    color: AppColors.grey),
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              SvgPicture.asset(
                                                "assets/svg-images/Page-6.svg",
                                                height: 22,
                                              )
                                            ],
                                          ),
                                          progressColor: AppColors.green,
                                        ),
                                        CircularPercentIndicator(
                                          radius: 50.0,
                                          lineWidth: 4.0,
                                          animation: true,
                                          percent: 0.30,
                                          center: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Text(
                                                "25",
                                                style: TextStyle(
                                                    fontFamily: "JosefinSans",
                                                    color: AppColors.black),
                                              ),
                                              const Text(
                                                "Unread Message",
                                                style: TextStyle(
                                                    fontSize: AppSizes.caption,
                                                    height: 2,
                                                    fontFamily: "JosefinSans",
                                                    color: AppColors.grey),
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              SvgPicture.asset(
                                                "assets/svg-images/mail-2.svg",
                                                height: 15,
                                              )
                                            ],
                                          ),
                                          progressColor: AppColors.green,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(
                                          color: AppColors.green,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(
                                                  AppSizes.cardCornerRadius))),
                                      height: 30,
                                      width: 5,
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    const Text(
                                      "Recently Added",
                                      style: TextStyle(
                                          fontSize: AppSizes.headline6,
                                          fontFamily: "JosefinSans",
                                          color: AppColors.black),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          elevation: 0,
                                          primary: AppColors.green),
                                      onPressed: () {},
                                      child: Row(
                                        children: const [
                                          Text(
                                            "Add Products +",
                                            style: TextStyle(
                                                fontSize: AppSizes.caption,
                                                fontFamily: "JosefinSans",
                                                color: AppColors.white),
                                          ),
                                        ],
                                      )),
                                ),
                              ],
                            ),
                            ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: 2,
                                shrinkWrap: true,
                                itemBuilder: (BuildContext context, int index) {
                                  return Card(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.all(AppSizes.dimen8),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: Row(
                                              children: [
                                                Expanded(
                                                    flex: 1,
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          border: Border.all(
                                                              color: Colors
                                                                  .black)),
                                                      child: Row(
                                                        children: [
                                                          SvgPicture.asset(
                                                            "assets/svg-images/Rolex-GMT-Master-II-1.svg",
                                                            fit: BoxFit
                                                                .fitHeight,
                                                          ),
                                                        ],
                                                      ),
                                                    )),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                Expanded(
                                                    flex: 2,
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        const Text(
                                                          "ROLEX GMT-MASTER II 40MM BLACK DIAL REF: 116710LN – FULL SET – 2009",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 11,
                                                              fontFamily:
                                                                  "Montserrat",
                                                              color: AppColors
                                                                  .black),
                                                        ),
                                                        const Text(
                                                          "£ 2500",
                                                          style: TextStyle(
                                                              fontSize: AppSizes
                                                                  .headline6,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              height: 2,
                                                              fontFamily:
                                                                  "JosefinSans",
                                                              color: AppColors
                                                                  .black),
                                                        ),
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: const [
                                                                Text(
                                                                  "Product Code:",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          AppSizes
                                                                              .caption,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      height: 2,
                                                                      fontFamily:
                                                                          "JosefinSans",
                                                                      color: AppColors
                                                                          .grey),
                                                                ),
                                                                Text(
                                                                  "14760",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          AppSizes
                                                                              .caption,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      height: 2,
                                                                      fontFamily:
                                                                          "JosefinSans",
                                                                      color: AppColors
                                                                          .black),
                                                                ),
                                                              ],
                                                            ),
                                                            Divider(
                                                              color: Colors.grey
                                                                  .withOpacity(
                                                                      0.6),
                                                              thickness: 0.5,
                                                            ),
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: const [
                                                                Text(
                                                                  "Reference Number:",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          AppSizes
                                                                              .caption,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      height: 2,
                                                                      fontFamily:
                                                                          "JosefinSans",
                                                                      color: AppColors
                                                                          .grey),
                                                                ),
                                                                Text(
                                                                  "L 360 14",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          AppSizes
                                                                              .caption,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      height: 2,
                                                                      fontFamily:
                                                                          "JosefinSans",
                                                                      color: AppColors
                                                                          .black),
                                                                ),
                                                              ],
                                                            ),
                                                            Divider(
                                                              color: Colors.grey
                                                                  .withOpacity(
                                                                      0.6),
                                                              thickness: 0.5,
                                                            ),
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: const [
                                                                Text(
                                                                  "Year:",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          AppSizes
                                                                              .caption,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      height: 2,
                                                                      fontFamily:
                                                                          "JosefinSans",
                                                                      color: AppColors
                                                                          .grey),
                                                                ),
                                                                Text(
                                                                  "2020",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          AppSizes
                                                                              .caption,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      height: 2,
                                                                      fontFamily:
                                                                          "JosefinSans",
                                                                      color: AppColors
                                                                          .black),
                                                                ),
                                                              ],
                                                            ),
                                                            Divider(
                                                              color: Colors.grey
                                                                  .withOpacity(
                                                                      0.6),
                                                              thickness: 0.9,
                                                            ),
                                                          ],
                                                        )
                                                      ],
                                                    ))
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 50,
                                            child: Row(
                                              children: [
                                                Expanded(
                                                    flex: 1,
                                                    child: Row(
                                                      children: [
                                                        Container(
                                                          decoration: const BoxDecoration(
                                                              color: AppColors
                                                                  .tint,
                                                              borderRadius: BorderRadius
                                                                  .all(Radius
                                                                      .circular(
                                                                          50))),
                                                          child: const Padding(
                                                            padding: EdgeInsets
                                                                .all(AppSizes
                                                                    .dimen8),
                                                            child: Text(
                                                              "Reserved",
                                                              style: TextStyle(
                                                                  fontSize: 10,
                                                                  fontFamily:
                                                                      "Montserrat",
                                                                  color: AppColors
                                                                      .reservedText),
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    )),
                                                Expanded(
                                                    flex: 2,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Card(
                                                              child: Padding(
                                                                padding: const EdgeInsets
                                                                        .all(
                                                                    AppSizes
                                                                        .dimen5),
                                                                child:
                                                                    SvgPicture
                                                                        .asset(
                                                                  "assets/svg-images/speech-bubble-1.svg",
                                                                  height: 18,
                                                                ),
                                                              ),
                                                            ),
                                                            SvgPicture.asset(
                                                              "assets/svg-images/eye-1.svg",
                                                              height: 8,
                                                            ),
                                                            const Text(
                                                              "112 Views",
                                                              style: TextStyle(
                                                                  fontSize: AppSizes
                                                                      .fontSize10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontFamily:
                                                                      "JosefinSans",
                                                                  color: AppColors
                                                                      .black),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            const Icon(Icons
                                                                .more_vert),
                                                            Container(
                                                              decoration: BoxDecoration(
                                                                  boxShadow: [
                                                                    BoxShadow(
                                                                      offset:
                                                                          const Offset(
                                                                              2,
                                                                              2),
                                                                      spreadRadius:
                                                                          2,
                                                                      blurRadius:
                                                                          5,
                                                                      color: AppColors
                                                                          .grey
                                                                          .withOpacity(
                                                                              0.3),
                                                                    )
                                                                  ],
                                                                  color:
                                                                      AppColors
                                                                          .white,
                                                                  borderRadius: const BorderRadius
                                                                          .all(
                                                                      Radius.circular(
                                                                          AppSizes
                                                                              .slideToOffButtonRadius))),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        8.0),
                                                                child: Row(
                                                                  children: [
                                                                    const Text(
                                                                      "Slide to off",
                                                                      style: TextStyle(
                                                                          fontSize: AppSizes
                                                                              .fontSize9,
                                                                          height:
                                                                              1.5,
                                                                          fontWeight: FontWeight
                                                                              .w600,
                                                                          fontFamily:
                                                                              "JosefinSans",
                                                                          color:
                                                                              AppColors.grey),
                                                                    ),
                                                                    const SizedBox(
                                                                      width: 10,
                                                                    ),
                                                                    SvgPicture
                                                                        .asset(
                                                                      "assets/svg-images/off-6.svg",
                                                                      height:
                                                                          13,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        )
                                                      ],
                                                    )),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                }),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      elevation: 0, primary: AppColors.green),
                                  onPressed: () {},
                                  child: const Text(
                                    "View All Listing",
                                    style: TextStyle(
                                        fontSize: AppSizes.caption,
                                        fontFamily: "JosefinSans",
                                        color: AppColors.white),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 40,
                            )
                          ],
                        ),
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
