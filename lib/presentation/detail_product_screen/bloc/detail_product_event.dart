// ignore_for_file: must_be_immutable

part of 'detail_product_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DetailProduct widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DetailProductEvent extends Equatable {}

/// Event that is dispatched when the DetailProduct widget is first created.
class DetailProductInitialEvent extends DetailProductEvent {
  @override
  List<Object?> get props => [];
}
