// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShopSearchEvent {










}

/// @nodoc
abstract class $ShopSearchEventCopyWith<$Res>  {
  factory $ShopSearchEventCopyWith(ShopSearchEvent value, $Res Function(ShopSearchEvent) then) = _$ShopSearchEventCopyWithImpl<$Res, ShopSearchEvent>;



}

/// @nodoc
class _$ShopSearchEventCopyWithImpl<$Res,$Val extends ShopSearchEvent> implements $ShopSearchEventCopyWith<$Res> {
  _$ShopSearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ShopSearchEvent
/// with the given fields replaced by the non-null parameter values.


}


/// @nodoc
abstract class _$$SearchImplCopyWith<$Res>  {
  factory _$$SearchImplCopyWith(_$SearchImpl value, $Res Function(_$SearchImpl) then) = __$$SearchImplCopyWithImpl<$Res>;
@useResult
$Res call({
 String query
});



}

/// @nodoc
class __$$SearchImplCopyWithImpl<$Res> extends _$ShopSearchEventCopyWithImpl<$Res, _$SearchImpl> implements _$$SearchImplCopyWith<$Res> {
  __$$SearchImplCopyWithImpl(_$SearchImpl _value, $Res Function(_$SearchImpl) _then)
      : super(_value, _then);


/// Create a copy of ShopSearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,}) {
  return _then(_$SearchImpl(
null == query ? _value.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$SearchImpl  implements _Search {
  const _$SearchImpl(this.query);

  

@override final  String query;

@override
String toString() {
  return 'ShopSearchEvent.search(query: $query)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$SearchImpl&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

/// Create a copy of ShopSearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$SearchImplCopyWith<_$SearchImpl> get copyWith => __$$SearchImplCopyWithImpl<_$SearchImpl>(this, _$identity);








}


abstract class _Search implements ShopSearchEvent {
  const factory _Search(final  String query) = _$SearchImpl;
  

  

 String get query;
/// Create a copy of ShopSearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$SearchImplCopyWith<_$SearchImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res>  {
  factory _$$StartedImplCopyWith(_$StartedImpl value, $Res Function(_$StartedImpl) then) = __$$StartedImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res> extends _$ShopSearchEventCopyWithImpl<$Res, _$StartedImpl> implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(_$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);


/// Create a copy of ShopSearchEvent
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc


class _$StartedImpl  implements _Started {
  const _$StartedImpl();

  



@override
String toString() {
  return 'ShopSearchEvent.started()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$StartedImpl);
}


@override
int get hashCode => runtimeType.hashCode;









}


abstract class _Started implements ShopSearchEvent {
  const factory _Started() = _$StartedImpl;
  

  



}

/// @nodoc
mixin _$ShopSearchState {

 List<SearchSuggestion> get results => throw _privateConstructorUsedError; String get query => throw _privateConstructorUsedError;







/// Create a copy of ShopSearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$ShopSearchStateCopyWith<ShopSearchState> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $ShopSearchStateCopyWith<$Res>  {
  factory $ShopSearchStateCopyWith(ShopSearchState value, $Res Function(ShopSearchState) then) = _$ShopSearchStateCopyWithImpl<$Res, ShopSearchState>;
@useResult
$Res call({
 List<SearchSuggestion> results, String query
});



}

/// @nodoc
class _$ShopSearchStateCopyWithImpl<$Res,$Val extends ShopSearchState> implements $ShopSearchStateCopyWith<$Res> {
  _$ShopSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ShopSearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? results = null,Object? query = null,}) {
  return _then(_value.copyWith(
results: null == results ? _value.results : results // ignore: cast_nullable_to_non_nullable
as List<SearchSuggestion>,query: null == query ? _value.query : query // ignore: cast_nullable_to_non_nullable
as String,
  )as $Val);
}

}


/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> implements $ShopSearchStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(_$InitialImpl value, $Res Function(_$InitialImpl) then) = __$$InitialImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<SearchSuggestion> results, String query
});



}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res> extends _$ShopSearchStateCopyWithImpl<$Res, _$InitialImpl> implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(_$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);


/// Create a copy of ShopSearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? results = null,Object? query = null,}) {
  return _then(_$InitialImpl(
results: null == results ? _value._results : results // ignore: cast_nullable_to_non_nullable
as List<SearchSuggestion>,query: null == query ? _value.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$InitialImpl  implements Initial {
  const _$InitialImpl({final  List<SearchSuggestion> results = const [], this.query = ''}): _results = results;

  

 final  List<SearchSuggestion> _results;
@override@JsonKey() List<SearchSuggestion> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}

@override@JsonKey() final  String query;

@override
String toString() {
  return 'ShopSearchState.initial(results: $results, query: $query)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$InitialImpl&&const DeepCollectionEquality().equals(other._results, _results)&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_results),query);

/// Create a copy of ShopSearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);








}


abstract class Initial implements ShopSearchState {
  const factory Initial({final  List<SearchSuggestion> results, final  String query}) = _$InitialImpl;
  

  

@override List<SearchSuggestion> get results;@override String get query;
/// Create a copy of ShopSearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> implements $ShopSearchStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(_$LoadingImpl value, $Res Function(_$LoadingImpl) then) = __$$LoadingImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<SearchSuggestion> results, String query
});



}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res> extends _$ShopSearchStateCopyWithImpl<$Res, _$LoadingImpl> implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(_$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);


/// Create a copy of ShopSearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? results = null,Object? query = null,}) {
  return _then(_$LoadingImpl(
results: null == results ? _value._results : results // ignore: cast_nullable_to_non_nullable
as List<SearchSuggestion>,query: null == query ? _value.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$LoadingImpl  implements Loading {
  const _$LoadingImpl({final  List<SearchSuggestion> results = const [], this.query = ''}): _results = results;

  

 final  List<SearchSuggestion> _results;
@override@JsonKey() List<SearchSuggestion> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}

@override@JsonKey() final  String query;

@override
String toString() {
  return 'ShopSearchState.loading(results: $results, query: $query)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadingImpl&&const DeepCollectionEquality().equals(other._results, _results)&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_results),query);

/// Create a copy of ShopSearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);








}


abstract class Loading implements ShopSearchState {
  const factory Loading({final  List<SearchSuggestion> results, final  String query}) = _$LoadingImpl;
  

  

@override List<SearchSuggestion> get results;@override String get query;
/// Create a copy of ShopSearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadingImplCopyWith<_$LoadingImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> implements $ShopSearchStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(_$LoadedImpl value, $Res Function(_$LoadedImpl) then) = __$$LoadedImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<SearchSuggestion> results, String query
});



}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res> extends _$ShopSearchStateCopyWithImpl<$Res, _$LoadedImpl> implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(_$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);


/// Create a copy of ShopSearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? results = null,Object? query = null,}) {
  return _then(_$LoadedImpl(
results: null == results ? _value._results : results // ignore: cast_nullable_to_non_nullable
as List<SearchSuggestion>,query: null == query ? _value.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$LoadedImpl  implements Loaded {
  const _$LoadedImpl({final  List<SearchSuggestion> results = const [], this.query = ''}): _results = results;

  

 final  List<SearchSuggestion> _results;
@override@JsonKey() List<SearchSuggestion> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}

@override@JsonKey() final  String query;

@override
String toString() {
  return 'ShopSearchState.loaded(results: $results, query: $query)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadedImpl&&const DeepCollectionEquality().equals(other._results, _results)&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_results),query);

/// Create a copy of ShopSearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);








}


abstract class Loaded implements ShopSearchState {
  const factory Loaded({final  List<SearchSuggestion> results, final  String query}) = _$LoadedImpl;
  

  

@override List<SearchSuggestion> get results;@override String get query;
/// Create a copy of ShopSearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadedImplCopyWith<_$LoadedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> implements $ShopSearchStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(_$ErrorImpl value, $Res Function(_$ErrorImpl) then) = __$$ErrorImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<SearchSuggestion> results, String query, String error
});



}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res> extends _$ShopSearchStateCopyWithImpl<$Res, _$ErrorImpl> implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(_$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);


/// Create a copy of ShopSearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? results = null,Object? query = null,Object? error = null,}) {
  return _then(_$ErrorImpl(
results: null == results ? _value._results : results // ignore: cast_nullable_to_non_nullable
as List<SearchSuggestion>,query: null == query ? _value.query : query // ignore: cast_nullable_to_non_nullable
as String,error: null == error ? _value.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$ErrorImpl  implements Error {
  const _$ErrorImpl({final  List<SearchSuggestion> results = const [], this.query = '', required this.error}): _results = results;

  

 final  List<SearchSuggestion> _results;
@override@JsonKey() List<SearchSuggestion> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}

@override@JsonKey() final  String query;
@override final  String error;

@override
String toString() {
  return 'ShopSearchState.error(results: $results, query: $query, error: $error)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ErrorImpl&&const DeepCollectionEquality().equals(other._results, _results)&&(identical(other.query, query) || other.query == query)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_results),query,error);

/// Create a copy of ShopSearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);








}


abstract class Error implements ShopSearchState {
  const factory Error({final  List<SearchSuggestion> results, final  String query, required final  String error}) = _$ErrorImpl;
  

  

@override List<SearchSuggestion> get results;@override String get query; String get error;
/// Create a copy of ShopSearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => throw _privateConstructorUsedError;

}
