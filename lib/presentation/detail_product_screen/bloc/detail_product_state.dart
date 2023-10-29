// ignore_for_file: must_be_immutable

part of 'detail_product_bloc.dart';

/// Represents the state of DetailProduct in the application.
class DetailProductState extends Equatable {
  DetailProductState({this.detailProductModelObj});

  DetailProductModel? detailProductModelObj;

  @override
  List<Object?> get props => [
        detailProductModelObj,
      ];
  DetailProductState copyWith({DetailProductModel? detailProductModelObj}) {
    return DetailProductState(
      detailProductModelObj:
          detailProductModelObj ?? this.detailProductModelObj,
    );
  }
}
