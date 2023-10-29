// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'usercard_item_model.dart';

/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel extends Equatable {
  HomeModel({this.usercardItemList = const []}) {}

  List<UsercardItemModel> usercardItemList;

  HomeModel copyWith({List<UsercardItemModel>? usercardItemList}) {
    return HomeModel(
      usercardItemList: usercardItemList ?? this.usercardItemList,
    );
  }

  @override
  List<Object?> get props => [usercardItemList];
}
