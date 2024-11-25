// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'listing_chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ListingChat {
  QueryProduct get product => throw _privateConstructorUsedError;
  Chat get chat => throw _privateConstructorUsedError;

  /// Create a copy of ListingChat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ListingChatCopyWith<ListingChat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListingChatCopyWith<$Res> {
  factory $ListingChatCopyWith(
          ListingChat value, $Res Function(ListingChat) then) =
      _$ListingChatCopyWithImpl<$Res, ListingChat>;
  @useResult
  $Res call({QueryProduct product, Chat chat});

  $QueryProductCopyWith<$Res> get product;
  $ChatCopyWith<$Res> get chat;
}

/// @nodoc
class _$ListingChatCopyWithImpl<$Res, $Val extends ListingChat>
    implements $ListingChatCopyWith<$Res> {
  _$ListingChatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ListingChat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? chat = null,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as QueryProduct,
      chat: null == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
    ) as $Val);
  }

  /// Create a copy of ListingChat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QueryProductCopyWith<$Res> get product {
    return $QueryProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }

  /// Create a copy of ListingChat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res> get chat {
    return $ChatCopyWith<$Res>(_value.chat, (value) {
      return _then(_value.copyWith(chat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ListingChatImplCopyWith<$Res>
    implements $ListingChatCopyWith<$Res> {
  factory _$$ListingChatImplCopyWith(
          _$ListingChatImpl value, $Res Function(_$ListingChatImpl) then) =
      __$$ListingChatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({QueryProduct product, Chat chat});

  @override
  $QueryProductCopyWith<$Res> get product;
  @override
  $ChatCopyWith<$Res> get chat;
}

/// @nodoc
class __$$ListingChatImplCopyWithImpl<$Res>
    extends _$ListingChatCopyWithImpl<$Res, _$ListingChatImpl>
    implements _$$ListingChatImplCopyWith<$Res> {
  __$$ListingChatImplCopyWithImpl(
      _$ListingChatImpl _value, $Res Function(_$ListingChatImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListingChat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? chat = null,
  }) {
    return _then(_$ListingChatImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as QueryProduct,
      chat: null == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
    ));
  }
}

/// @nodoc

class _$ListingChatImpl implements _ListingChat {
  const _$ListingChatImpl(
      {this.product = const QueryProduct(), this.chat = const Chat()});

  @override
  @JsonKey()
  final QueryProduct product;
  @override
  @JsonKey()
  final Chat chat;

  @override
  String toString() {
    return 'ListingChat(product: $product, chat: $chat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListingChatImpl &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.chat, chat) || other.chat == chat));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product, chat);

  /// Create a copy of ListingChat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListingChatImplCopyWith<_$ListingChatImpl> get copyWith =>
      __$$ListingChatImplCopyWithImpl<_$ListingChatImpl>(this, _$identity);
}

abstract class _ListingChat implements ListingChat {
  const factory _ListingChat({final QueryProduct product, final Chat chat}) =
      _$ListingChatImpl;

  @override
  QueryProduct get product;
  @override
  Chat get chat;

  /// Create a copy of ListingChat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListingChatImplCopyWith<_$ListingChatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
