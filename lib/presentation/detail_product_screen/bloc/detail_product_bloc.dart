import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:colorsolo/presentation/detail_product_screen/models/detail_product_model.dart';
part 'detail_product_event.dart';
part 'detail_product_state.dart';

/// A bloc that manages the state of a DetailProduct according to the event that is dispatched to it.
class DetailProductBloc extends Bloc<DetailProductEvent, DetailProductState> {
  DetailProductBloc(DetailProductState initialState) : super(initialState) {
    on<DetailProductInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DetailProductInitialEvent event,
    Emitter<DetailProductState> emit,
  ) async {}
}
