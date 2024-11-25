// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatEvent {










}

/// @nodoc
abstract class $ChatEventCopyWith<$Res>  {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) = _$ChatEventCopyWithImpl<$Res, ChatEvent>;



}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res,$Val extends ChatEvent> implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.


}


/// @nodoc
abstract class _$$StartedImplCopyWith<$Res>  {
  factory _$$StartedImplCopyWith(_$StartedImpl value, $Res Function(_$StartedImpl) then) = __$$StartedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 int senderId, int receiverId
});



}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res, _$StartedImpl> implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(_$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);


/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? senderId = null,Object? receiverId = null,}) {
  return _then(_$StartedImpl(
null == senderId ? _value.senderId : senderId // ignore: cast_nullable_to_non_nullable
as int,null == receiverId ? _value.receiverId : receiverId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _$StartedImpl  implements _Started {
  const _$StartedImpl(this.senderId, this.receiverId);

  

@override final  int senderId;
@override final  int receiverId;

@override
String toString() {
  return 'ChatEvent.started(senderId: $senderId, receiverId: $receiverId)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$StartedImpl&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.receiverId, receiverId) || other.receiverId == receiverId));
}


@override
int get hashCode => Object.hash(runtimeType,senderId,receiverId);

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$StartedImplCopyWith<_$StartedImpl> get copyWith => __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);








}


abstract class _Started implements ChatEvent {
  const factory _Started(final  int senderId, final  int receiverId) = _$StartedImpl;
  

  

 int get senderId; int get receiverId;
/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$StartedImplCopyWith<_$StartedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$MessagesChangedImplCopyWith<$Res>  {
  factory _$$MessagesChangedImplCopyWith(_$MessagesChangedImpl value, $Res Function(_$MessagesChangedImpl) then) = __$$MessagesChangedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 List<Message> messages
});



}

/// @nodoc
class __$$MessagesChangedImplCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res, _$MessagesChangedImpl> implements _$$MessagesChangedImplCopyWith<$Res> {
  __$$MessagesChangedImplCopyWithImpl(_$MessagesChangedImpl _value, $Res Function(_$MessagesChangedImpl) _then)
      : super(_value, _then);


/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? messages = null,}) {
  return _then(_$MessagesChangedImpl(
null == messages ? _value._messages : messages // ignore: cast_nullable_to_non_nullable
as List<Message>,
  ));
}


}

/// @nodoc


class _$MessagesChangedImpl  implements _MessagesChanged {
  const _$MessagesChangedImpl(final  List<Message> messages): _messages = messages;

  

 final  List<Message> _messages;
@override List<Message> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}


@override
String toString() {
  return 'ChatEvent.messagesChanged(messages: $messages)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$MessagesChangedImpl&&const DeepCollectionEquality().equals(other._messages, _messages));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_messages));

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$MessagesChangedImplCopyWith<_$MessagesChangedImpl> get copyWith => __$$MessagesChangedImplCopyWithImpl<_$MessagesChangedImpl>(this, _$identity);








}


abstract class _MessagesChanged implements ChatEvent {
  const factory _MessagesChanged(final  List<Message> messages) = _$MessagesChangedImpl;
  

  

 List<Message> get messages;
/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$MessagesChangedImplCopyWith<_$MessagesChangedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$MessageSentImplCopyWith<$Res>  {
  factory _$$MessageSentImplCopyWith(_$MessageSentImpl value, $Res Function(_$MessageSentImpl) then) = __$$MessageSentImplCopyWithImpl<$Res>;
@useResult
$Res call({
 Message message
});


$MessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$MessageSentImplCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res, _$MessageSentImpl> implements _$$MessageSentImplCopyWith<$Res> {
  __$$MessageSentImplCopyWithImpl(_$MessageSentImpl _value, $Res Function(_$MessageSentImpl) _then)
      : super(_value, _then);


/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_$MessageSentImpl(
null == message ? _value.message : message // ignore: cast_nullable_to_non_nullable
as Message,
  ));
}

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MessageCopyWith<$Res> get message {
  
  return $MessageCopyWith<$Res>(_value.message, (value) {
    return _then(_value.copyWith(message: value) );
  });
}
}

/// @nodoc


class _$MessageSentImpl  implements _MessageSent {
  const _$MessageSentImpl(this.message);

  

@override final  Message message;

@override
String toString() {
  return 'ChatEvent.messageSent(message: $message)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$MessageSentImpl&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$MessageSentImplCopyWith<_$MessageSentImpl> get copyWith => __$$MessageSentImplCopyWithImpl<_$MessageSentImpl>(this, _$identity);








}


abstract class _MessageSent implements ChatEvent {
  const factory _MessageSent(final  Message message) = _$MessageSentImpl;
  

  

 Message get message;
/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$MessageSentImplCopyWith<_$MessageSentImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
mixin _$ChatState {

 List<Message> get messages => throw _privateConstructorUsedError;







/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$ChatStateCopyWith<ChatState> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $ChatStateCopyWith<$Res>  {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) = _$ChatStateCopyWithImpl<$Res, ChatState>;
@useResult
$Res call({
 List<Message> messages
});



}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res,$Val extends ChatState> implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? messages = null,}) {
  return _then(_value.copyWith(
messages: null == messages ? _value.messages : messages // ignore: cast_nullable_to_non_nullable
as List<Message>,
  )as $Val);
}

}


/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> implements $ChatStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(_$InitialImpl value, $Res Function(_$InitialImpl) then) = __$$InitialImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<Message> messages
});



}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res> extends _$ChatStateCopyWithImpl<$Res, _$InitialImpl> implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(_$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);


/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? messages = null,}) {
  return _then(_$InitialImpl(
messages: null == messages ? _value._messages : messages // ignore: cast_nullable_to_non_nullable
as List<Message>,
  ));
}


}

/// @nodoc


class _$InitialImpl  implements Initial {
  const _$InitialImpl({final  List<Message> messages = const []}): _messages = messages;

  

 final  List<Message> _messages;
@override@JsonKey() List<Message> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}


@override
String toString() {
  return 'ChatState.initial(messages: $messages)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$InitialImpl&&const DeepCollectionEquality().equals(other._messages, _messages));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_messages));

/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);








}


abstract class Initial implements ChatState {
  const factory Initial({final  List<Message> messages}) = _$InitialImpl;
  

  

@override List<Message> get messages;
/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> implements $ChatStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(_$LoadingImpl value, $Res Function(_$LoadingImpl) then) = __$$LoadingImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<Message> messages
});



}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res> extends _$ChatStateCopyWithImpl<$Res, _$LoadingImpl> implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(_$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);


/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? messages = null,}) {
  return _then(_$LoadingImpl(
messages: null == messages ? _value._messages : messages // ignore: cast_nullable_to_non_nullable
as List<Message>,
  ));
}


}

/// @nodoc


class _$LoadingImpl  implements Loading {
  const _$LoadingImpl({final  List<Message> messages = const []}): _messages = messages;

  

 final  List<Message> _messages;
@override@JsonKey() List<Message> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}


@override
String toString() {
  return 'ChatState.loading(messages: $messages)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadingImpl&&const DeepCollectionEquality().equals(other._messages, _messages));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_messages));

/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);








}


abstract class Loading implements ChatState {
  const factory Loading({final  List<Message> messages}) = _$LoadingImpl;
  

  

@override List<Message> get messages;
/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$SendingImplCopyWith<$Res> implements $ChatStateCopyWith<$Res> {
  factory _$$SendingImplCopyWith(_$SendingImpl value, $Res Function(_$SendingImpl) then) = __$$SendingImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<Message> messages
});



}

/// @nodoc
class __$$SendingImplCopyWithImpl<$Res> extends _$ChatStateCopyWithImpl<$Res, _$SendingImpl> implements _$$SendingImplCopyWith<$Res> {
  __$$SendingImplCopyWithImpl(_$SendingImpl _value, $Res Function(_$SendingImpl) _then)
      : super(_value, _then);


/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? messages = null,}) {
  return _then(_$SendingImpl(
messages: null == messages ? _value._messages : messages // ignore: cast_nullable_to_non_nullable
as List<Message>,
  ));
}


}

/// @nodoc


class _$SendingImpl  implements Sending {
  const _$SendingImpl({final  List<Message> messages = const []}): _messages = messages;

  

 final  List<Message> _messages;
@override@JsonKey() List<Message> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}


@override
String toString() {
  return 'ChatState.sending(messages: $messages)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$SendingImpl&&const DeepCollectionEquality().equals(other._messages, _messages));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_messages));

/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$SendingImplCopyWith<_$SendingImpl> get copyWith => __$$SendingImplCopyWithImpl<_$SendingImpl>(this, _$identity);








}


abstract class Sending implements ChatState {
  const factory Sending({final  List<Message> messages}) = _$SendingImpl;
  

  

@override List<Message> get messages;
/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$SendingImplCopyWith<_$SendingImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> implements $ChatStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(_$LoadedImpl value, $Res Function(_$LoadedImpl) then) = __$$LoadedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<Message> messages
});



}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res> extends _$ChatStateCopyWithImpl<$Res, _$LoadedImpl> implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(_$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);


/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? messages = null,}) {
  return _then(_$LoadedImpl(
messages: null == messages ? _value._messages : messages // ignore: cast_nullable_to_non_nullable
as List<Message>,
  ));
}


}

/// @nodoc


class _$LoadedImpl  implements Loaded {
  const _$LoadedImpl({final  List<Message> messages = const []}): _messages = messages;

  

 final  List<Message> _messages;
@override@JsonKey() List<Message> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}


@override
String toString() {
  return 'ChatState.loaded(messages: $messages)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadedImpl&&const DeepCollectionEquality().equals(other._messages, _messages));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_messages));

/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);








}


abstract class Loaded implements ChatState {
  const factory Loaded({final  List<Message> messages}) = _$LoadedImpl;
  

  

@override List<Message> get messages;
/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> implements $ChatStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(_$ErrorImpl value, $Res Function(_$ErrorImpl) then) = __$$ErrorImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<Message> messages, String message
});



}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res> extends _$ChatStateCopyWithImpl<$Res, _$ErrorImpl> implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(_$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);


/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? messages = null,Object? message = null,}) {
  return _then(_$ErrorImpl(
messages: null == messages ? _value._messages : messages // ignore: cast_nullable_to_non_nullable
as List<Message>,message: null == message ? _value.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$ErrorImpl  implements Error {
  const _$ErrorImpl({final  List<Message> messages = const [], required this.message}): _messages = messages;

  

 final  List<Message> _messages;
@override@JsonKey() List<Message> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}

@override final  String message;

@override
String toString() {
  return 'ChatState.error(messages: $messages, message: $message)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ErrorImpl&&const DeepCollectionEquality().equals(other._messages, _messages)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_messages),message);

/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);








}


abstract class Error implements ChatState {
  const factory Error({final  List<Message> messages, required final  String message}) = _$ErrorImpl;
  

  

@override List<Message> get messages; String get message;
/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => throw _privateConstructorUsedError;

}
