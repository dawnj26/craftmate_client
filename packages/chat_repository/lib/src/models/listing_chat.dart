import 'package:chat_repository/chat_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_repository/shop_repository.dart';

part 'listing_chat.freezed.dart';

@freezed
class ListingChat with _$ListingChat {
  const factory ListingChat({
    @Default(QueryProduct()) QueryProduct product,
    @Default(Chat()) Chat chat,
  }) = _ListingChat;
}
