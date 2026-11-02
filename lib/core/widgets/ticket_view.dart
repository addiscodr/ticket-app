import 'package:flutter/material.dart';
import 'package:ticket_app/core/res/styles/app_styles.dart';
import 'package:ticket_app/core/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/core/widgets/big_circle.dart';
import 'package:ticket_app/core/widgets/big_dot.dart';
import 'package:ticket_app/core/widgets/text_style_fourth.dart';
import 'package:ticket_app/core/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    final screenWidth = MediaQuery.sizeOf(context).width;

    return SizedBox(
      width: screenWidth * 0.85,
      height: screenHeight * 0.21,
      child: Container(
        margin: EdgeInsets.only(right: 16),
        child: Column(
          children: [
            // blue part of the ticket
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketBlue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  // Show departure and destination with icons first line
                  Row(
                    children: [
                      const TextStyleThird(text: "NBI"),
                      Expanded(child: Container()),
                      const BigDot(),
                      Expanded(
                        child: Stack(
                          children: [
                            const SizedBox(
                              height: 24,
                              child: AppLayoutbuilderWidget(randomDivider: 6),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.57,
                                child: const Icon(
                                  Icons.local_airport_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const BigDot(),
                      Expanded(child: Container()),
                      const TextStyleThird(text: "ADD"),
                    ],
                  ),
                  const SizedBox(height: 3),
                  // Show departure and destination names with time
                  Row(
                    children: [
                      const TextStyleFourth(text: "NAIROBI"),
                      Expanded(child: Container()),
                      const TextStyleFourth(text: "02H 15M"),
                      Expanded(child: Container()),
                      const TextStyleFourth(text: "ADDIS ABABA"),
                    ],
                  ),
                ],
              ),
            ),
            // circles and dots
            Container(
              color: AppStyles.ticketOrange,
              child: Row(
                children: [
                  BigCircle(isRight: false),
                  Expanded(
                    child: AppLayoutbuilderWidget(randomDivider: 16, width: 6),
                  ),
                  BigCircle(isRight: true),
                ],
              ),
            ),
            // orange part of the ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketOrange,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  // Show departure and destination with icons first line
                  Row(
                    children: [
                      const TextStyleThird(text: "1 MAY"),
                      Expanded(child: Container()),

                      const TextStyleThird(text: "08:00 AM"),
                      Expanded(child: Container()),
                      const TextStyleThird(text: "23"),
                    ],
                  ),
                  const SizedBox(height: 3),
                  // Show departure and destination names with time
                  Row(
                    children: [
                      const TextStyleFourth(text: "DATE"),
                      Expanded(child: Container()),
                      const TextStyleFourth(
                        text: "DEPARTURE TIME",
                        
                      ),
                      Expanded(child: Container()),
                      const TextStyleFourth(text: "NO."),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
