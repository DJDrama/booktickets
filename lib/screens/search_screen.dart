import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../widgets/double_text_widget.dart';
import '../widgets/icon_text_widget.dart';
import '../widgets/ticket_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20),
              vertical: AppLayout.getHeight(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Text("What are\nyou looking for?",
                style: Styles.headLineStyle1
                    .copyWith(fontSize: AppLayout.getWidth(35))),
            Gap(AppLayout.getHeight(20)),
            const AppTicketTabs(firstTab: "Airline Tickets", secondTab: "Hotels"),
            Gap(AppLayout.getHeight(24)),
            const AppIconText(
                icon: Icons.flight_takeoff_rounded, text: "Departure"),
            Gap(AppLayout.getHeight(20)),
            const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
            Gap(AppLayout.getHeight(24)),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
                color: const Color(0xD91130CE),
              ),
              padding: EdgeInsets.symmetric(
                  vertical: AppLayout.getHeight(18),
                  horizontal: AppLayout.getWidth(16)),
              child: Center(
                child: Text("Find Tickets",
                    style: Styles.textStyle.copyWith(color: Colors.white)),
              ),
            ),
            Gap(AppLayout.getHeight(40)),
            const AppDoubleTextWidget(
                bigText: "Upcoming Flights", smallText: "View all"),
            Gap(AppLayout.getHeight(16)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: AppLayout.getHeight(400),
                    width: size.width * 0.42,
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getWidth(16),
                        vertical: AppLayout.getHeight(16)),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(20)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade200,
                              blurRadius: 1,
                              spreadRadius: 1),
                        ]),
                    child: Column(
                      children: [
                        Container(
                          height: AppLayout.getHeight(190),
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/images/sit.jpg")),
                              borderRadius: BorderRadius.circular(
                                  AppLayout.getHeight(12))),
                        ),
                        Gap(AppLayout.getHeight(12)),
                        Text(
                            "20% discount on the early booking of this flight, Do not miss out this chance!",
                            style: Styles.headLineStyle3)
                      ],
                    )),
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: size.width * 0.44,
                          height: AppLayout.getHeight(210),
                          decoration: BoxDecoration(
                              color: const Color(0xFF3AB8B8),
                              borderRadius: BorderRadius.circular(
                                  AppLayout.getHeight(16))),
                          padding: EdgeInsets.symmetric(
                              vertical: AppLayout.getHeight(16),
                              horizontal: AppLayout.getWidth(16)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Discount\nfor a survey.",
                                  style: Styles.headLineStyle2.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              Gap(AppLayout.getHeight(10)),
                              Text(
                                  "Take the survey about our services and get discount!",
                                  style: Styles.headLineStyle2.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      fontSize: 18)),
                            ],
                          ),
                        ),
                        Positioned(
                          right: -45,
                          top: -40,
                          child: Container(
                            padding: EdgeInsets.all(AppLayout.getHeight(30)),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 18, color: const Color(0xFF189999)),
                                color: Colors.transparent),
                          ),
                        )
                      ],
                    ),
                    Gap(AppLayout.getHeight(16)),
                    Container(
                      width: size.width * 0.44,
                      height: AppLayout.getHeight(170),
                      padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(16),
                          horizontal: AppLayout.getWidth(16)),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(18)),
                          color: const Color(0xFFEC6545)),
                      child: Column(
                        children: [
                          Text(
                            "Take love!",
                            style: Styles.headLineStyle2.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          Gap(AppLayout.getHeight(4)),
                          RichText(text: const TextSpan(children: [
                            TextSpan(
                              text: "😃",
                              style: TextStyle(fontSize: 30)
                            ),
                            TextSpan(
                                text: "😆",
                                style: TextStyle(fontSize: 44)
                            ),
                            TextSpan(
                                text: "😅",
                                style: TextStyle(fontSize: 30)
                            )
                          ]))
                        ],
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ));
  }
}
