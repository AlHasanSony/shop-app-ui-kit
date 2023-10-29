// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'banner_item_model.dart';

/// This class defines the variables used in the [home_tab_container_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeTabContainerModel extends Equatable {
  HomeTabContainerModel({this.bannerItemList = const []}) {}

  List<BannerItemModel> bannerItemList;

  HomeTabContainerModel copyWith({List<BannerItemModel>? bannerItemList}) {
    return HomeTabContainerModel(
      bannerItemList: bannerItemList ?? this.bannerItemList,
    );
  }

  @override
  List<Object?> get props => [bannerItemList];
}
