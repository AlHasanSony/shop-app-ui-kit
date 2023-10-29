import '../home_page/widgets/usercard_item_widget.dart';
import 'bloc/home_bloc.dart';
import 'models/home_model.dart';
import 'models/usercard_item_model.dart';
import 'package:colorsolo/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatefulWidget {
  const HomePage({Key? key})
      : super(
          key: key,
        );

  @override
  HomePageState createState() => HomePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(HomeState(
        homeModelObj: HomeModel(),
      ))
        ..add(HomeInitialEvent()),
      child: HomePage(),
    );
  }
}

class HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin<HomePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Padding(
            padding: EdgeInsets.only(
              left: 23.h,
              top: 16.v,
              right: 23.h,
            ),
            child: BlocSelector<HomeBloc, HomeState, HomeModel?>(
              selector: (state) => state.homeModelObj,
              builder: (context, homeModelObj) {
                return GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 211.v,
                    crossAxisCount: 2,
                    mainAxisSpacing: 24.h,
                    crossAxisSpacing: 24.h,
                  ),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: homeModelObj?.usercardItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    UsercardItemModel model =
                        homeModelObj?.usercardItemList[index] ??
                            UsercardItemModel();
                    return UsercardItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
