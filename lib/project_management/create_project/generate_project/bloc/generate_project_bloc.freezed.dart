// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generate_project_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GenerateProjectEvent {










}

/// @nodoc
abstract class $GenerateProjectEventCopyWith<$Res>  {
  factory $GenerateProjectEventCopyWith(GenerateProjectEvent value, $Res Function(GenerateProjectEvent) then) = _$GenerateProjectEventCopyWithImpl<$Res, GenerateProjectEvent>;



}

/// @nodoc
class _$GenerateProjectEventCopyWithImpl<$Res,$Val extends GenerateProjectEvent> implements $GenerateProjectEventCopyWith<$Res> {
  _$GenerateProjectEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of GenerateProjectEvent
/// with the given fields replaced by the non-null parameter values.


}


/// @nodoc
abstract class _$$StartedImplCopyWith<$Res>  {
  factory _$$StartedImplCopyWith(_$StartedImpl value, $Res Function(_$StartedImpl) then) = __$$StartedImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res> extends _$GenerateProjectEventCopyWithImpl<$Res, _$StartedImpl> implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(_$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);


/// Create a copy of GenerateProjectEvent
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc


class _$StartedImpl  implements _Started {
  const _$StartedImpl();

  



@override
String toString() {
  return 'GenerateProjectEvent.started()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$StartedImpl);
}


@override
int get hashCode => runtimeType.hashCode;









}


abstract class _Started implements GenerateProjectEvent {
  const factory _Started() = _$StartedImpl;
  

  



}

/// @nodoc
abstract class _$$MaterialsLoadedImplCopyWith<$Res>  {
  factory _$$MaterialsLoadedImplCopyWith(_$MaterialsLoadedImpl value, $Res Function(_$MaterialsLoadedImpl) then) = __$$MaterialsLoadedImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$MaterialsLoadedImplCopyWithImpl<$Res> extends _$GenerateProjectEventCopyWithImpl<$Res, _$MaterialsLoadedImpl> implements _$$MaterialsLoadedImplCopyWith<$Res> {
  __$$MaterialsLoadedImplCopyWithImpl(_$MaterialsLoadedImpl _value, $Res Function(_$MaterialsLoadedImpl) _then)
      : super(_value, _then);


/// Create a copy of GenerateProjectEvent
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc


class _$MaterialsLoadedImpl  implements _MaterialsLoaded {
  const _$MaterialsLoadedImpl();

  



@override
String toString() {
  return 'GenerateProjectEvent.materialsLoaded()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$MaterialsLoadedImpl);
}


@override
int get hashCode => runtimeType.hashCode;









}


abstract class _MaterialsLoaded implements GenerateProjectEvent {
  const factory _MaterialsLoaded() = _$MaterialsLoadedImpl;
  

  



}

/// @nodoc
abstract class _$$GenerateSuggestionsImplCopyWith<$Res>  {
  factory _$$GenerateSuggestionsImplCopyWith(_$GenerateSuggestionsImpl value, $Res Function(_$GenerateSuggestionsImpl) then) = __$$GenerateSuggestionsImplCopyWithImpl<$Res>;
@useResult
$Res call({
 String type, String difficulty, List<String> materials, String additionalInfo
});



}

/// @nodoc
class __$$GenerateSuggestionsImplCopyWithImpl<$Res> extends _$GenerateProjectEventCopyWithImpl<$Res, _$GenerateSuggestionsImpl> implements _$$GenerateSuggestionsImplCopyWith<$Res> {
  __$$GenerateSuggestionsImplCopyWithImpl(_$GenerateSuggestionsImpl _value, $Res Function(_$GenerateSuggestionsImpl) _then)
      : super(_value, _then);


/// Create a copy of GenerateProjectEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? difficulty = null,Object? materials = null,Object? additionalInfo = null,}) {
  return _then(_$GenerateSuggestionsImpl(
type: null == type ? _value.type : type // ignore: cast_nullable_to_non_nullable
as String,difficulty: null == difficulty ? _value.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as String,materials: null == materials ? _value._materials : materials // ignore: cast_nullable_to_non_nullable
as List<String>,additionalInfo: null == additionalInfo ? _value.additionalInfo : additionalInfo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$GenerateSuggestionsImpl  implements _GenerateSuggestions {
  const _$GenerateSuggestionsImpl({required this.type, required this.difficulty, required final  List<String> materials, this.additionalInfo = ''}): _materials = materials;

  

@override final  String type;
@override final  String difficulty;
 final  List<String> _materials;
@override List<String> get materials {
  if (_materials is EqualUnmodifiableListView) return _materials;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_materials);
}

@override@JsonKey() final  String additionalInfo;

@override
String toString() {
  return 'GenerateProjectEvent.generateSuggestions(type: $type, difficulty: $difficulty, materials: $materials, additionalInfo: $additionalInfo)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$GenerateSuggestionsImpl&&(identical(other.type, type) || other.type == type)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty)&&const DeepCollectionEquality().equals(other._materials, _materials)&&(identical(other.additionalInfo, additionalInfo) || other.additionalInfo == additionalInfo));
}


@override
int get hashCode => Object.hash(runtimeType,type,difficulty,const DeepCollectionEquality().hash(_materials),additionalInfo);

/// Create a copy of GenerateProjectEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$GenerateSuggestionsImplCopyWith<_$GenerateSuggestionsImpl> get copyWith => __$$GenerateSuggestionsImplCopyWithImpl<_$GenerateSuggestionsImpl>(this, _$identity);








}


abstract class _GenerateSuggestions implements GenerateProjectEvent {
  const factory _GenerateSuggestions({required final  String type, required final  String difficulty, required final  List<String> materials, final  String additionalInfo}) = _$GenerateSuggestionsImpl;
  

  

 String get type; String get difficulty; List<String> get materials; String get additionalInfo;
/// Create a copy of GenerateProjectEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$GenerateSuggestionsImplCopyWith<_$GenerateSuggestionsImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$ImageSelectedImplCopyWith<$Res>  {
  factory _$$ImageSelectedImplCopyWith(_$ImageSelectedImpl value, $Res Function(_$ImageSelectedImpl) then) = __$$ImageSelectedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 String imagePath
});



}

/// @nodoc
class __$$ImageSelectedImplCopyWithImpl<$Res> extends _$GenerateProjectEventCopyWithImpl<$Res, _$ImageSelectedImpl> implements _$$ImageSelectedImplCopyWith<$Res> {
  __$$ImageSelectedImplCopyWithImpl(_$ImageSelectedImpl _value, $Res Function(_$ImageSelectedImpl) _then)
      : super(_value, _then);


/// Create a copy of GenerateProjectEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? imagePath = null,}) {
  return _then(_$ImageSelectedImpl(
imagePath: null == imagePath ? _value.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$ImageSelectedImpl  implements _ImageSelected {
  const _$ImageSelectedImpl({required this.imagePath});

  

@override final  String imagePath;

@override
String toString() {
  return 'GenerateProjectEvent.imageSelected(imagePath: $imagePath)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ImageSelectedImpl&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath));
}


@override
int get hashCode => Object.hash(runtimeType,imagePath);

/// Create a copy of GenerateProjectEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ImageSelectedImplCopyWith<_$ImageSelectedImpl> get copyWith => __$$ImageSelectedImplCopyWithImpl<_$ImageSelectedImpl>(this, _$identity);








}


abstract class _ImageSelected implements GenerateProjectEvent {
  const factory _ImageSelected({required final  String imagePath}) = _$ImageSelectedImpl;
  

  

 String get imagePath;
/// Create a copy of GenerateProjectEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$ImageSelectedImplCopyWith<_$ImageSelectedImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
mixin _$GenerateProjectState {

 List<Material> get materials => throw _privateConstructorUsedError; String? get imagePath => throw _privateConstructorUsedError;







/// Create a copy of GenerateProjectState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$GenerateProjectStateCopyWith<GenerateProjectState> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $GenerateProjectStateCopyWith<$Res>  {
  factory $GenerateProjectStateCopyWith(GenerateProjectState value, $Res Function(GenerateProjectState) then) = _$GenerateProjectStateCopyWithImpl<$Res, GenerateProjectState>;
@useResult
$Res call({
 List<Material> materials, String? imagePath
});



}

/// @nodoc
class _$GenerateProjectStateCopyWithImpl<$Res,$Val extends GenerateProjectState> implements $GenerateProjectStateCopyWith<$Res> {
  _$GenerateProjectStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of GenerateProjectState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? materials = null,Object? imagePath = freezed,}) {
  return _then(_value.copyWith(
materials: null == materials ? _value.materials : materials // ignore: cast_nullable_to_non_nullable
as List<Material>,imagePath: freezed == imagePath ? _value.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,
  )as $Val);
}

}


/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> implements $GenerateProjectStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(_$InitialImpl value, $Res Function(_$InitialImpl) then) = __$$InitialImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<Material> materials, String? imagePath
});



}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res> extends _$GenerateProjectStateCopyWithImpl<$Res, _$InitialImpl> implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(_$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);


/// Create a copy of GenerateProjectState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? materials = null,Object? imagePath = freezed,}) {
  return _then(_$InitialImpl(
materials: null == materials ? _value._materials : materials // ignore: cast_nullable_to_non_nullable
as List<Material>,imagePath: freezed == imagePath ? _value.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _$InitialImpl  implements Initial {
  const _$InitialImpl({final  List<Material> materials = const [], this.imagePath}): _materials = materials;

  

 final  List<Material> _materials;
@override@JsonKey() List<Material> get materials {
  if (_materials is EqualUnmodifiableListView) return _materials;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_materials);
}

@override final  String? imagePath;

@override
String toString() {
  return 'GenerateProjectState.initial(materials: $materials, imagePath: $imagePath)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$InitialImpl&&const DeepCollectionEquality().equals(other._materials, _materials)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_materials),imagePath);

/// Create a copy of GenerateProjectState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);








}


abstract class Initial implements GenerateProjectState {
  const factory Initial({final  List<Material> materials, final  String? imagePath}) = _$InitialImpl;
  

  

@override List<Material> get materials;@override String? get imagePath;
/// Create a copy of GenerateProjectState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$InitialImplCopyWith<_$InitialImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadingMaterialsImplCopyWith<$Res> implements $GenerateProjectStateCopyWith<$Res> {
  factory _$$LoadingMaterialsImplCopyWith(_$LoadingMaterialsImpl value, $Res Function(_$LoadingMaterialsImpl) then) = __$$LoadingMaterialsImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<Material> materials, String? imagePath
});



}

/// @nodoc
class __$$LoadingMaterialsImplCopyWithImpl<$Res> extends _$GenerateProjectStateCopyWithImpl<$Res, _$LoadingMaterialsImpl> implements _$$LoadingMaterialsImplCopyWith<$Res> {
  __$$LoadingMaterialsImplCopyWithImpl(_$LoadingMaterialsImpl _value, $Res Function(_$LoadingMaterialsImpl) _then)
      : super(_value, _then);


/// Create a copy of GenerateProjectState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? materials = null,Object? imagePath = freezed,}) {
  return _then(_$LoadingMaterialsImpl(
materials: null == materials ? _value._materials : materials // ignore: cast_nullable_to_non_nullable
as List<Material>,imagePath: freezed == imagePath ? _value.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _$LoadingMaterialsImpl  implements LoadingMaterials {
  const _$LoadingMaterialsImpl({final  List<Material> materials = const [], this.imagePath}): _materials = materials;

  

 final  List<Material> _materials;
@override@JsonKey() List<Material> get materials {
  if (_materials is EqualUnmodifiableListView) return _materials;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_materials);
}

@override final  String? imagePath;

@override
String toString() {
  return 'GenerateProjectState.loadingMaterials(materials: $materials, imagePath: $imagePath)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadingMaterialsImpl&&const DeepCollectionEquality().equals(other._materials, _materials)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_materials),imagePath);

/// Create a copy of GenerateProjectState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadingMaterialsImplCopyWith<_$LoadingMaterialsImpl> get copyWith => __$$LoadingMaterialsImplCopyWithImpl<_$LoadingMaterialsImpl>(this, _$identity);








}


abstract class LoadingMaterials implements GenerateProjectState {
  const factory LoadingMaterials({final  List<Material> materials, final  String? imagePath}) = _$LoadingMaterialsImpl;
  

  

@override List<Material> get materials;@override String? get imagePath;
/// Create a copy of GenerateProjectState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadingMaterialsImplCopyWith<_$LoadingMaterialsImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadedMaterialsImplCopyWith<$Res> implements $GenerateProjectStateCopyWith<$Res> {
  factory _$$LoadedMaterialsImplCopyWith(_$LoadedMaterialsImpl value, $Res Function(_$LoadedMaterialsImpl) then) = __$$LoadedMaterialsImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<Material> materials, String? imagePath
});



}

/// @nodoc
class __$$LoadedMaterialsImplCopyWithImpl<$Res> extends _$GenerateProjectStateCopyWithImpl<$Res, _$LoadedMaterialsImpl> implements _$$LoadedMaterialsImplCopyWith<$Res> {
  __$$LoadedMaterialsImplCopyWithImpl(_$LoadedMaterialsImpl _value, $Res Function(_$LoadedMaterialsImpl) _then)
      : super(_value, _then);


/// Create a copy of GenerateProjectState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? materials = null,Object? imagePath = freezed,}) {
  return _then(_$LoadedMaterialsImpl(
materials: null == materials ? _value._materials : materials // ignore: cast_nullable_to_non_nullable
as List<Material>,imagePath: freezed == imagePath ? _value.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _$LoadedMaterialsImpl  implements LoadedMaterials {
  const _$LoadedMaterialsImpl({final  List<Material> materials = const [], this.imagePath}): _materials = materials;

  

 final  List<Material> _materials;
@override@JsonKey() List<Material> get materials {
  if (_materials is EqualUnmodifiableListView) return _materials;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_materials);
}

@override final  String? imagePath;

@override
String toString() {
  return 'GenerateProjectState.loadedMaterials(materials: $materials, imagePath: $imagePath)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadedMaterialsImpl&&const DeepCollectionEquality().equals(other._materials, _materials)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_materials),imagePath);

/// Create a copy of GenerateProjectState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadedMaterialsImplCopyWith<_$LoadedMaterialsImpl> get copyWith => __$$LoadedMaterialsImplCopyWithImpl<_$LoadedMaterialsImpl>(this, _$identity);








}


abstract class LoadedMaterials implements GenerateProjectState {
  const factory LoadedMaterials({final  List<Material> materials, final  String? imagePath}) = _$LoadedMaterialsImpl;
  

  

@override List<Material> get materials;@override String? get imagePath;
/// Create a copy of GenerateProjectState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadedMaterialsImplCopyWith<_$LoadedMaterialsImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadingSuggestionsImplCopyWith<$Res> implements $GenerateProjectStateCopyWith<$Res> {
  factory _$$LoadingSuggestionsImplCopyWith(_$LoadingSuggestionsImpl value, $Res Function(_$LoadingSuggestionsImpl) then) = __$$LoadingSuggestionsImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<Material> materials, String? imagePath
});



}

/// @nodoc
class __$$LoadingSuggestionsImplCopyWithImpl<$Res> extends _$GenerateProjectStateCopyWithImpl<$Res, _$LoadingSuggestionsImpl> implements _$$LoadingSuggestionsImplCopyWith<$Res> {
  __$$LoadingSuggestionsImplCopyWithImpl(_$LoadingSuggestionsImpl _value, $Res Function(_$LoadingSuggestionsImpl) _then)
      : super(_value, _then);


/// Create a copy of GenerateProjectState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? materials = null,Object? imagePath = freezed,}) {
  return _then(_$LoadingSuggestionsImpl(
materials: null == materials ? _value._materials : materials // ignore: cast_nullable_to_non_nullable
as List<Material>,imagePath: freezed == imagePath ? _value.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _$LoadingSuggestionsImpl  implements LoadingSuggestions {
  const _$LoadingSuggestionsImpl({final  List<Material> materials = const [], this.imagePath}): _materials = materials;

  

 final  List<Material> _materials;
@override@JsonKey() List<Material> get materials {
  if (_materials is EqualUnmodifiableListView) return _materials;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_materials);
}

@override final  String? imagePath;

@override
String toString() {
  return 'GenerateProjectState.loadingSuggestions(materials: $materials, imagePath: $imagePath)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadingSuggestionsImpl&&const DeepCollectionEquality().equals(other._materials, _materials)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_materials),imagePath);

/// Create a copy of GenerateProjectState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadingSuggestionsImplCopyWith<_$LoadingSuggestionsImpl> get copyWith => __$$LoadingSuggestionsImplCopyWithImpl<_$LoadingSuggestionsImpl>(this, _$identity);








}


abstract class LoadingSuggestions implements GenerateProjectState {
  const factory LoadingSuggestions({final  List<Material> materials, final  String? imagePath}) = _$LoadingSuggestionsImpl;
  

  

@override List<Material> get materials;@override String? get imagePath;
/// Create a copy of GenerateProjectState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadingSuggestionsImplCopyWith<_$LoadingSuggestionsImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$LoadedSuggestionsImplCopyWith<$Res> implements $GenerateProjectStateCopyWith<$Res> {
  factory _$$LoadedSuggestionsImplCopyWith(_$LoadedSuggestionsImpl value, $Res Function(_$LoadedSuggestionsImpl) then) = __$$LoadedSuggestionsImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<Material> materials, String? imagePath, List<ProjectSuggestion> suggestions, Prompt prompt
});


$PromptCopyWith<$Res> get prompt;
}

/// @nodoc
class __$$LoadedSuggestionsImplCopyWithImpl<$Res> extends _$GenerateProjectStateCopyWithImpl<$Res, _$LoadedSuggestionsImpl> implements _$$LoadedSuggestionsImplCopyWith<$Res> {
  __$$LoadedSuggestionsImplCopyWithImpl(_$LoadedSuggestionsImpl _value, $Res Function(_$LoadedSuggestionsImpl) _then)
      : super(_value, _then);


/// Create a copy of GenerateProjectState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? materials = null,Object? imagePath = freezed,Object? suggestions = null,Object? prompt = null,}) {
  return _then(_$LoadedSuggestionsImpl(
materials: null == materials ? _value._materials : materials // ignore: cast_nullable_to_non_nullable
as List<Material>,imagePath: freezed == imagePath ? _value.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,suggestions: null == suggestions ? _value._suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as List<ProjectSuggestion>,prompt: null == prompt ? _value.prompt : prompt // ignore: cast_nullable_to_non_nullable
as Prompt,
  ));
}

/// Create a copy of GenerateProjectState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PromptCopyWith<$Res> get prompt {
  
  return $PromptCopyWith<$Res>(_value.prompt, (value) {
    return _then(_value.copyWith(prompt: value) );
  });
}
}

/// @nodoc


class _$LoadedSuggestionsImpl  implements LoadedSuggestions {
  const _$LoadedSuggestionsImpl({final  List<Material> materials = const [], this.imagePath, required final  List<ProjectSuggestion> suggestions, required this.prompt}): _materials = materials,_suggestions = suggestions;

  

 final  List<Material> _materials;
@override@JsonKey() List<Material> get materials {
  if (_materials is EqualUnmodifiableListView) return _materials;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_materials);
}

@override final  String? imagePath;
 final  List<ProjectSuggestion> _suggestions;
@override List<ProjectSuggestion> get suggestions {
  if (_suggestions is EqualUnmodifiableListView) return _suggestions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_suggestions);
}

@override final  Prompt prompt;

@override
String toString() {
  return 'GenerateProjectState.loadedSuggestions(materials: $materials, imagePath: $imagePath, suggestions: $suggestions, prompt: $prompt)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LoadedSuggestionsImpl&&const DeepCollectionEquality().equals(other._materials, _materials)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&const DeepCollectionEquality().equals(other._suggestions, _suggestions)&&(identical(other.prompt, prompt) || other.prompt == prompt));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_materials),imagePath,const DeepCollectionEquality().hash(_suggestions),prompt);

/// Create a copy of GenerateProjectState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LoadedSuggestionsImplCopyWith<_$LoadedSuggestionsImpl> get copyWith => __$$LoadedSuggestionsImplCopyWithImpl<_$LoadedSuggestionsImpl>(this, _$identity);








}


abstract class LoadedSuggestions implements GenerateProjectState {
  const factory LoadedSuggestions({final  List<Material> materials, final  String? imagePath, required final  List<ProjectSuggestion> suggestions, required final  Prompt prompt}) = _$LoadedSuggestionsImpl;
  

  

@override List<Material> get materials;@override String? get imagePath; List<ProjectSuggestion> get suggestions; Prompt get prompt;
/// Create a copy of GenerateProjectState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LoadedSuggestionsImplCopyWith<_$LoadedSuggestionsImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> implements $GenerateProjectStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(_$ErrorImpl value, $Res Function(_$ErrorImpl) then) = __$$ErrorImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<Material> materials, String? imagePath, String message
});



}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res> extends _$GenerateProjectStateCopyWithImpl<$Res, _$ErrorImpl> implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(_$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);


/// Create a copy of GenerateProjectState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? materials = null,Object? imagePath = freezed,Object? message = null,}) {
  return _then(_$ErrorImpl(
materials: null == materials ? _value._materials : materials // ignore: cast_nullable_to_non_nullable
as List<Material>,imagePath: freezed == imagePath ? _value.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,message: null == message ? _value.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$ErrorImpl  implements Error {
  const _$ErrorImpl({final  List<Material> materials = const [], this.imagePath, required this.message}): _materials = materials;

  

 final  List<Material> _materials;
@override@JsonKey() List<Material> get materials {
  if (_materials is EqualUnmodifiableListView) return _materials;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_materials);
}

@override final  String? imagePath;
@override final  String message;

@override
String toString() {
  return 'GenerateProjectState.error(materials: $materials, imagePath: $imagePath, message: $message)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ErrorImpl&&const DeepCollectionEquality().equals(other._materials, _materials)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_materials),imagePath,message);

/// Create a copy of GenerateProjectState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);








}


abstract class Error implements GenerateProjectState {
  const factory Error({final  List<Material> materials, final  String? imagePath, required final  String message}) = _$ErrorImpl;
  

  

@override List<Material> get materials;@override String? get imagePath; String get message;
/// Create a copy of GenerateProjectState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith => throw _privateConstructorUsedError;

}
