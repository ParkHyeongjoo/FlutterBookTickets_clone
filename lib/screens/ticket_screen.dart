import 'package:bookticketsclone/screens/ticket_view.dart';
import 'package:bookticketsclone/utils/app_info_list.dart';
import 'package:bookticketsclone/utils/app_layout.dart';
import 'package:bookticketsclone/utils/app_styles.dart';
import 'package:bookticketsclone/widgets/column_layout.dart';
import 'package:bookticketsclone/widgets/layout_builder_widget.dart';
import 'package:bookticketsclone/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20), vertical: AppLayout.getHeight(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text('Tickets', style: Styles.headLineStyle1,),
              Gap(AppLayout.getHeight(20)),
              const AppTicketTabs(firstTab: 'Upcoming', secondTab: 'Previous'),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(ticket: ticketList[0], isColor: true),
              ),
              SizedBox(height: 1,),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(firstText: 'Flutter DB', secondText: 'Passenger', alignment: CrossAxisAlignment.start, isColor: true,),
                        AppColumnLayout(firstText: '5221 364869', secondText: 'passport', alignment: CrossAxisAlignment.end, isColor: true,),
                      ],
                    ),
                    const AppLayoutBuilderWidget(sections: 15),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
