import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/banner_item_model.dart';
import 'package:colorsolo/presentation/home_tab_container_page/models/home_tab_container_model.dart';
part 'home_tab_container_event.dart';
part 'home_tab_container_state.dart';

/// A bloc that manages the state of a HomeTabContainer according to the event that is dispatched to it.
class HomeTabContainerBloc
    extends Bloc<HomeTabContainerEvent, HomeTabContainerState> {
  HomeTabContainerBloc(HomeTabContainerState initialState)
      : super(initialState) {
    on<HomeTabContainerInitialEvent>(_onInitialize);
  }

  List<BannerItemModel> fillBannerItemList() {
    return List.generate(1, (index) => BannerItemModel());
  }

  _onInitialize(
    HomeTabContainerInitialEvent event,
    Emitter<HomeTabContainerState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        homeTabContainerModelObj: state.homeTabContainerModelObj?.copyWith(
      bannerItemList: fillBannerItemList(),
    )));
  }
}
