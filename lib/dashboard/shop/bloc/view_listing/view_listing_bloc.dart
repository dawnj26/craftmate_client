import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'view_listing_event.dart';
part 'view_listing_state.dart';
part 'view_listing_bloc.freezed.dart';

class ViewListingBloc extends Bloc<ViewListingEvent, ViewListingState> {
  ViewListingBloc() : super(const Initial()) {
    on<ViewListingEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
