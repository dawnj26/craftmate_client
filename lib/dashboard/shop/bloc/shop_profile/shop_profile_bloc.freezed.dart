// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShopProfileEvent {

 int get sellerId => throw _privateConstructorUsedError;







/// Create a copy of ShopProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$ShopProfileEventCopyWith<ShopProfileEvent> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $ShopProfileEventCopyWith<$Res>  {
  factory $ShopProfileEventCopyWith(ShopProfileEvent value, $Res Function(ShopProfileEvent) then) = _$ShopProfileEventCopyWithImpl<$Res, ShopProfileEvent>;
@useResult
$Res call({
 int sellerId
});



}

/// @nodoc
class _$ShopProfileEventCopyWithImpl<$Res,$Val extends ShopProfileEvent> implements $ShopProfileEventCopyWith<$Res> {
  _$ShopProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ShopProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sellerId = null,}) {
  return _then(_value.copyWith(
sellerId: null == sellerId ? _value.sellerId : sellerId // ignore: cast_nullable_to_non_nullable
as int,
  )as $Val);
}

}


/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> implements $ShopProfileEventCopyWith<$Res> {
  factory _$$StartedImplCopyWith(_$StartedImpl value, $Res Function(_$StartedImpl) then) = __$$StartedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 int sellerId
});



}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res> extends _$ShopProfileEventCopyWithImpl<$Res, _$StartedImpl> implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(_$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);


/// Create a copy of ShopProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sellerId = null,}) {
  return _then(_$StartedImpl(
null == sellerId ? _value.sellerId : sellerId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _$StartedImpl  implements _Started {
  const _$StartedImpl(this.sellerId);

  

@override final  int sellerId;

@override
String toString() {
  return 'ShopProfileEvent.started(sellerId: $sellerId)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$StartedImpl&&(identical(other.sellerId, sellerId) || other.sellerId == sellerId));
}


@override
int get hashCode => Object.hash(runtimeType,sellerId);

/// Create a copy of ShopProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$StartedImplCopyWith<_$StartedImpl> get copyWith => __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);








}


abstract class _Started implements ShopProfileEvent {
  const factory _Started(final  int sellerId) = _$StartedImpl;
  

  

@override int get sellerId;
/// Create a copy of ShopProfileEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$StartedImplCopyWith<_$StartedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$PeriodChangedImplCopyWith<$Res> implements $ShopProfileEventCopyWith<$Res> {
  factory _$$PeriodChangedImplCopyWith(_$PeriodChangedImpl value, $Res Function(_$PeriodChangedImpl) then) = __$$PeriodChangedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String period, int sellerId
});



}

/// @nodoc
class __$$PeriodChangedImplCopyWithImpl<$Res> extends _$ShopProfileEventCopyWithImpl<$Res, _$PeriodChangedImpl> implements _$$PeriodChangedImplCopyWith<$Res> {
  __$$PeriodChangedImplCopyWithImpl(_$PeriodChangedImpl _value, $Res Function(_$PeriodChangedImpl) _then)
      : super(_value, _then);


/// Create a copy of ShopProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? period = null,Object? sellerId = null,}) {
  return _then(_$PeriodChangedImpl(
null == period ? _value.period : period // ignore: cast_nullable_to_non_nullable
as String,null == sellerId ? _value.sellerId : sellerId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _$PeriodChangedImpl  implements _PeriodChanged {
  const _$PeriodChangedImpl(this.period, this.sellerId);

  

@override final  String period;
@override final  int sellerId;

@override
String toString() {
  return 'ShopProfileEvent.periodChanged(period: $period, sellerId: $sellerId)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$PeriodChangedImpl&&(identical(other.period, period) || other.period == period)&&(identical(other.sellerId, sellerId) || other.sellerId == sellerId));
}


@override
int get hashCode => Object.hash(runtimeType,period,sellerId);

/// Create a copy of ShopProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$PeriodChangedImplCopyWith<_$PeriodChangedImpl> get copyWith => __$$PeriodChangedImplCopyWithImpl<_$PeriodChangedImpl>(this, _$identity);








}


abstract class _PeriodChanged implements ShopProfileEvent {
  const factory _PeriodChanged(final  String period, final  int sellerId) = _$PeriodChangedImpl;
  

  

 String get period;@override int get sellerId;
/// Create a copy of ShopProfileEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$PeriodChangedImplCopyWith<_$PeriodChangedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
mixin _$ShopProfileState {

 ShopOverview get shopOverview => throw _privateConstructorUsedError; String get period => throw _privateConstructorUsedError;







/// Create a copy of ShopProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$ShopProfileStateCopyWith<ShopProfileState> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $ShopProfileStateCopyWith<$Res>  {
  factory $ShopProfileStateCopyWith(ShopProfileState value, $Res Function(ShopProfileState) then) = _$ShopProfileStateCopyWithImpl<$Res, ShopProfileState>;
@useResult
$Res call({
 ShopOverview shopOverview, String period
});


$ShopOverviewCopyWith<$Res> get shopOverview;
}

/// @nodoc
class _$ShopProfileStateCopyWithImpl<$Res,$Val extends ShopProfileState> implements $ShopProfileStateCopyWith<$Res> {
  _$ShopProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ShopProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? shopOverview = null,Object? period = null,}) {
  return _then(_value.copyWith(
shopOverview: null == shopOverview ? _value.shopOverview : shopOverview // ignore: cast_nullable_to_non_nullable
as ShopOverview,period: null == period ? _value.period : period // ignore: cast_nullable_to_non_nullable
as String,
  )as $Val);
}
/// Create a copy of ShopProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ShopOverviewCopyWith<$Res> get shopOverview {
  
  return $ShopOverviewCopyWith<$Res>(_value.shopOverview, (value) {
    return _then(_value.copyWith(shopOverview: value) as $Val);
  });
}
}


/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> implements $ShopProfileStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(_$InitialImpl value, $Res Function(_$InitialImpl) then) = __$$InitialImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 ShopOverview shopOverview, String period
});


@override $ShopOverviewCopyWith<$Res> get shopOverview;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res> extends _$ShopProfileStateCopyWithImpl<$Res, _$InitialImpl> implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(_$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);


/// Create a copy of ShopProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? shopOverview = null,Object? period = null,}) {
  return _then(_$InitialImpl(
shopOverview: null == shopOverview ? _value.shopOverview : shopOverview // ignore: cast_nullable_to_non_nullable
as ShopOverview,period: null == period ? _value.period : period // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$InitialImpl  implements Initial {
  const _$InitialImpl({this.shopOverview = const ShopOverview(), this.period = 'Last 7 days'});

  

@override@JsonKey() final  ShopOverview shopOverview;
@override@JsonKey() final  String period;

@override
String toString() {
  return 'ShopProfileState.initial(shopOverview: $shopOverview, period: $period)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$InitialImpl&&(identical(other.shopOverview, shopOverview) || other.shopOverview == shopOverview)&&(identical(other.period, period) || other.period == period));
}


@override
int get hashCode => Object.hash(runtimeType,shopOverview,period);

/// Create a copy of ShopProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);








}


abstract class Initial implements ShopProfileState {
  const factory Initial({final  ShopOverview shopOverview, final  String period}) = _$InitialImpl;
  

  

@override ShopOverview get shopOverview;@override String get period;
/// Create a copy of ShopProfileState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> implements $ShopProfileStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(_$LoadingImpl value, $Res Function(_$LoadingImpl) then) = __$$LoadingImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 ShopOverview shopOverview, String period
});


@override $ShopOverviewCopyWith<$Res> get shopOverview;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res> extends _$ShopProfileStateCopyWithImpl<$Res, _$LoadingImpl> implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(_$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);


/// Create a copy of ShopProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? shopOverview = null,Object? period = null,}) {
  return _then(_$LoadingImpl(
shopOverview: null == shopOverview ? _value.shopOverview : shopOverview // ignore: cast_nullable_to_non_nullable
as ShopOverview,period: null == period ? _value.period : period // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$LoadingImpl  implements Loading {
  const _$LoadingImpl({this.shopOverview = const ShopOverview(), this.period = 'Last 7 days'});

  

@override@JsonKey() final  ShopOverview shopOverview;
@override@JsonKey() final  String period;

@override
String toString() {
  return 'ShopProfileState.loading(shopOverview: $shopOverview, period: $period)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadingImpl&&(identical(other.shopOverview, shopOverview) || other.shopOverview == shopOverview)&&(identical(other.period, period) || other.period == period));
}


@override
int get hashCode => Object.hash(runtimeType,shopOverview,period);

/// Create a copy of ShopProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);








}


abstract class Loading implements ShopProfileState {
  const factory Loading({final  ShopOverview shopOverview, final  String period}) = _$LoadingImpl;
  

  

@override ShopOverview get shopOverview;@override String get period;
/// Create a copy of ShopProfileState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> implements $ShopProfileStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(_$LoadedImpl value, $Res Function(_$LoadedImpl) then) = __$$LoadedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 ShopOverview shopOverview, String period
});


@override $ShopOverviewCopyWith<$Res> get shopOverview;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res> extends _$ShopProfileStateCopyWithImpl<$Res, _$LoadedImpl> implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(_$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);


/// Create a copy of ShopProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? shopOverview = null,Object? period = null,}) {
  return _then(_$LoadedImpl(
shopOverview: null == shopOverview ? _value.shopOverview : shopOverview // ignore: cast_nullable_to_non_nullable
as ShopOverview,period: null == period ? _value.period : period // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$LoadedImpl  implements Loaded {
  const _$LoadedImpl({this.shopOverview = const ShopOverview(), this.period = 'Weekly'});

  

@override@JsonKey() final  ShopOverview shopOverview;
@override@JsonKey() final  String period;

@override
String toString() {
  return 'ShopProfileState.loaded(shopOverview: $shopOverview, period: $period)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadedImpl&&(identical(other.shopOverview, shopOverview) || other.shopOverview == shopOverview)&&(identical(other.period, period) || other.period == period));
}


@override
int get hashCode => Object.hash(runtimeType,shopOverview,period);

/// Create a copy of ShopProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);








}


abstract class Loaded implements ShopProfileState {
  const factory Loaded({final  ShopOverview shopOverview, final  String period}) = _$LoadedImpl;
  

  

@override ShopOverview get shopOverview;@override String get period;
/// Create a copy of ShopProfileState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> implements $ShopProfileStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(_$ErrorImpl value, $Res Function(_$ErrorImpl) then) = __$$ErrorImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 ShopOverview shopOverview, String period, String message
});


@override $ShopOverviewCopyWith<$Res> get shopOverview;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res> extends _$ShopProfileStateCopyWithImpl<$Res, _$ErrorImpl> implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(_$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);


/// Create a copy of ShopProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? shopOverview = null,Object? period = null,Object? message = null,}) {
  return _then(_$ErrorImpl(
shopOverview: null == shopOverview ? _value.shopOverview : shopOverview // ignore: cast_nullable_to_non_nullable
as ShopOverview,period: null == period ? _value.period : period // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _value.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$ErrorImpl  implements Error {
  const _$ErrorImpl({this.shopOverview = const ShopOverview(), this.period = 'Weekly', required this.message});

  

@override@JsonKey() final  ShopOverview shopOverview;
@override@JsonKey() final  String period;
@override final  String message;

@override
String toString() {
  return 'ShopProfileState.error(shopOverview: $shopOverview, period: $period, message: $message)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ErrorImpl&&(identical(other.shopOverview, shopOverview) || other.shopOverview == shopOverview)&&(identical(other.period, period) || other.period == period)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,shopOverview,period,message);

/// Create a copy of ShopProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);








}


abstract class Error implements ShopProfileState {
  const factory Error({final  ShopOverview shopOverview, final  String period, required final  String message}) = _$ErrorImpl;
  

  

@override ShopOverview get shopOverview;@override String get period; String get message;
/// Create a copy of ShopProfileState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => throw _privateConstructorUsedError;

}
