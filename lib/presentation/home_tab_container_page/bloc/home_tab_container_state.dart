// ignore_for_file: must_be_immutable

part of 'home_tab_container_bloc.dart';

/// Represents the state of HomeTabContainer in the application.
class HomeTabContainerState extends Equatable {
  HomeTabContainerState({
    this.searchController,
    this.sliderIndex = 0,
    this.homeTabContainerModelObj,
  });

  TextEditingController? searchController;

  HomeTabContainerModel? homeTabContainerModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        searchController,
        sliderIndex,
        homeTabContainerModelObj,
      ];
  HomeTabContainerState copyWith({
    TextEditingController? searchController,
    int? sliderIndex,
    HomeTabContainerModel? homeTabContainerModelObj,
  }) {
    return HomeTabContainerState(
      searchController: searchController ?? this.searchController,
      sliderIndex: sliderIndex ?? this.sliderIndex,
      homeTabContainerModelObj:
          homeTabContainerModelObj ?? this.homeTabContainerModelObj,
    );
  }
}
