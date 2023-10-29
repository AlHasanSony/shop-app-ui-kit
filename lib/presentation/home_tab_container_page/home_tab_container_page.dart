import '../home_tab_container_page/widgets/banner_item_widget.dart';
import 'bloc/home_tab_container_bloc.dart';
import 'models/banner_item_model.dart';
import 'models/home_tab_container_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:colorsolo/core/app_export.dart';
import 'package:colorsolo/presentation/home_page/home_page.dart';
import 'package:colorsolo/widgets/app_bar/appbar_image_1.dart';
import 'package:colorsolo/widgets/app_bar/appbar_title.dart';
import 'package:colorsolo/widgets/app_bar/custom_app_bar.dart';
import 'package:colorsolo/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class HomeTabContainerPage extends StatefulWidget {
  const HomeTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  HomeTabContainerPageState createState() => HomeTabContainerPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<HomeTabContainerBloc>(
      create: (context) => HomeTabContainerBloc(HomeTabContainerState(
        homeTabContainerModelObj: HomeTabContainerModel(),
      ))
        ..add(HomeTabContainerInitialEvent()),
      child: HomeTabContainerPage(),
    );
  }
}

class HomeTabContainerPageState extends State<HomeTabContainerPage>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          title: AppbarTitle(
            text: "lbl_discover".tr,
            margin: EdgeInsets.only(left: 24.h),
          ),
          actions: [
            AppbarImage1(
              svgPath: ImageConstant.imgShoppingcart,
              margin: EdgeInsets.only(
                left: 24.h,
                top: 17.v,
                right: 14.h,
              ),
            ),
            AppbarImage1(
              svgPath: ImageConstant.imgStroke2menuhambuger,
              margin: EdgeInsets.only(
                left: 16.h,
                top: 17.v,
                right: 38.h,
              ),
            ),
          ],
        ),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 13.v),
            child: Column(
              children: [
                BlocSelector<HomeTabContainerBloc, HomeTabContainerState,
                    TextEditingController?>(
                  selector: (state) => state.searchController,
                  builder: (context, searchController) {
                    return CustomSearchView(
                      margin: EdgeInsets.only(
                        left: 23.h,
                        right: 24.h,
                      ),
                      controller: searchController,
                      hintText: "lbl_search".tr,
                      prefix: Container(
                        margin: EdgeInsets.fromLTRB(16.h, 14.v, 10.h, 14.v),
                        child: CustomImageView(
                          svgPath: ImageConstant.imgSearch,
                        ),
                      ),
                      prefixConstraints: BoxConstraints(
                        maxHeight: 44.v,
                      ),
                      suffix: Container(
                        margin: EdgeInsets.fromLTRB(30.h, 14.v, 16.h, 14.v),
                        child: CustomImageView(
                          svgPath:
                              ImageConstant.imgStroke2Adjusthorizontalsettings,
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        maxHeight: 44.v,
                      ),
                    );
                  },
                ),
                SizedBox(height: 24.v),
                SizedBox(
                  height: 169.v,
                  width: 326.h,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      BlocBuilder<HomeTabContainerBloc, HomeTabContainerState>(
                        builder: (context, state) {
                          return CarouselSlider.builder(
                            options: CarouselOptions(
                              height: 169.v,
                              initialPage: 0,
                              autoPlay: true,
                              viewportFraction: 1.0,
                              enableInfiniteScroll: false,
                              scrollDirection: Axis.horizontal,
                              onPageChanged: (
                                index,
                                reason,
                              ) {
                                state.sliderIndex = index;
                              },
                            ),
                            itemCount: state.homeTabContainerModelObj
                                    ?.bannerItemList.length ??
                                0,
                            itemBuilder: (context, index, realIndex) {
                              BannerItemModel model = state
                                      .homeTabContainerModelObj
                                      ?.bannerItemList[index] ??
                                  BannerItemModel();
                              return BannerItemWidget(
                                model,
                              );
                            },
                          );
                        },
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: BlocBuilder<HomeTabContainerBloc,
                            HomeTabContainerState>(
                          builder: (context, state) {
                            return Container(
                              height: 2.v,
                              margin: EdgeInsets.only(bottom: 18.v),
                              child: AnimatedSmoothIndicator(
                                activeIndex: state.sliderIndex,
                                count: state.homeTabContainerModelObj
                                        ?.bannerItemList.length ??
                                    0,
                                axisDirection: Axis.horizontal,
                                effect: ScrollingDotsEffect(
                                  spacing: 4,
                                  activeDotColor: appTheme.lightGreen500,
                                  dotColor: appTheme.gray50,
                                  dotHeight: 2.v,
                                  dotWidth: 23.h,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 23.h,
                    top: 23.v,
                    right: 23.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 1.v),
                        child: Text(
                          "lbl_categories".tr,
                          style: CustomTextStyles.bodyMediumOnPrimaryContainer,
                        ),
                      ),
                      Text(
                        "lbl_see_all".tr,
                        style: CustomTextStyles.titleSmallOnPrimary,
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 23.h,
                      top: 7.v,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 32.v,
                          width: 322.h,
                          child: TabBar(
                            controller: tabviewController,
                            labelPadding: EdgeInsets.zero,
                            labelColor: theme.colorScheme.onPrimary,
                            unselectedLabelColor: appTheme.blueGray400,
                            tabs: [
                              Tab(
                                child: Text(
                                  "lbl_all".tr,
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "lbl_popular".tr,
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "lbl_indoor".tr,
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "lbl_office".tr,
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "lbl_garden".tr,
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "lbl_outdoor".tr,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 32.v,
                          width: 14.h,
                          margin: EdgeInsets.only(left: 8.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              8.h,
                            ),
                            border: Border.all(
                              color: appTheme.blueGray400,
                              width: 1.h,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 271.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      HomePage.builder(context),
                      HomePage.builder(context),
                      HomePage.builder(context),
                      HomePage.builder(context),
                      HomePage.builder(context),
                      HomePage.builder(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
