import 'package:flutter/material.dart';
import 'package:the_luxury_hut/constants/dimens.dart';
import 'package:the_luxury_hut/constants/palatte.dart';

class SellScreen extends StatefulWidget {
  const SellScreen({Key? key}) : super(key: key);

  @override
  State<SellScreen> createState() => _SellScreenState();
}

class _SellScreenState extends State<SellScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        leading: IconButton(
          onPressed: () {},
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
              padding: const EdgeInsets.symmetric(
                  horizontal: AppSizes.dimen40, vertical: AppSizes.dimen8),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(AppSizes.dimen8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("John Doe"),
                        Text("ID: 123456789"),
                      ],
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 105,
                    child: ElevatedButton(
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
                              "Edit Profile",
                              style: TextStyle(fontSize: AppSizes.caption),
                            )
                          ],
                        )),
                  )
                ],
              ),
            ),
            Expanded(
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 500,
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
                              childAspectRatio: 1.3,
                              crossAxisCount: 3,
                              crossAxisSpacing: 1.0,
                              mainAxisSpacing: 8.0,
                              children: List.generate(3, (index) {
                                return Center(
                                  child: Container(
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
                                          radius: 15,
                                            child: Icon(Icons.add_circle_outline)),
                                        Text("data"),
                                        Text("data"),
                                      ],
                                    ),
                                  ),
                                );
                              })),
                        ],
                      ),
                    )))
          ],
        ),
      ),
    );
  }
}
