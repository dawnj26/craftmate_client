import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_activity_event.dart';
part 'shop_activity_state.dart';
part 'shop_activity_bloc.freezed.dart';

class ShopActivityBloc extends Bloc<ShopActivityEvent, ShopActivityState> {
  ShopActivityBloc() : super(const _Initial()) {
    on<ShopActivityEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
