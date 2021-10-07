// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'file_upload_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FileUploadStateTearOff {
  const _$FileUploadStateTearOff();

  _Empty empty() {
    return const _Empty();
  }

  _Picking picking() {
    return const _Picking();
  }

  _Picked picked(FilePickerResult result) {
    return _Picked(
      result,
    );
  }
}

/// @nodoc
const $FileUploadState = _$FileUploadStateTearOff();

/// @nodoc
mixin _$FileUploadState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() picking,
    required TResult Function(FilePickerResult result) picked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? picking,
    TResult Function(FilePickerResult result)? picked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? picking,
    TResult Function(FilePickerResult result)? picked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_Picking value) picking,
    required TResult Function(_Picked value) picked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Picking value)? picking,
    TResult Function(_Picked value)? picked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Picking value)? picking,
    TResult Function(_Picked value)? picked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileUploadStateCopyWith<$Res> {
  factory $FileUploadStateCopyWith(
          FileUploadState value, $Res Function(FileUploadState) then) =
      _$FileUploadStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FileUploadStateCopyWithImpl<$Res>
    implements $FileUploadStateCopyWith<$Res> {
  _$FileUploadStateCopyWithImpl(this._value, this._then);

  final FileUploadState _value;
  // ignore: unused_field
  final $Res Function(FileUploadState) _then;
}

/// @nodoc
abstract class _$EmptyCopyWith<$Res> {
  factory _$EmptyCopyWith(_Empty value, $Res Function(_Empty) then) =
      __$EmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$EmptyCopyWithImpl<$Res> extends _$FileUploadStateCopyWithImpl<$Res>
    implements _$EmptyCopyWith<$Res> {
  __$EmptyCopyWithImpl(_Empty _value, $Res Function(_Empty) _then)
      : super(_value, (v) => _then(v as _Empty));

  @override
  _Empty get _value => super._value as _Empty;
}

/// @nodoc

class _$_Empty implements _Empty {
  const _$_Empty();

  @override
  String toString() {
    return 'FileUploadState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Empty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() picking,
    required TResult Function(FilePickerResult result) picked,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? picking,
    TResult Function(FilePickerResult result)? picked,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? picking,
    TResult Function(FilePickerResult result)? picked,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_Picking value) picking,
    required TResult Function(_Picked value) picked,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Picking value)? picking,
    TResult Function(_Picked value)? picked,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Picking value)? picking,
    TResult Function(_Picked value)? picked,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements FileUploadState {
  const factory _Empty() = _$_Empty;
}

/// @nodoc
abstract class _$PickingCopyWith<$Res> {
  factory _$PickingCopyWith(_Picking value, $Res Function(_Picking) then) =
      __$PickingCopyWithImpl<$Res>;
}

/// @nodoc
class __$PickingCopyWithImpl<$Res> extends _$FileUploadStateCopyWithImpl<$Res>
    implements _$PickingCopyWith<$Res> {
  __$PickingCopyWithImpl(_Picking _value, $Res Function(_Picking) _then)
      : super(_value, (v) => _then(v as _Picking));

  @override
  _Picking get _value => super._value as _Picking;
}

/// @nodoc

class _$_Picking implements _Picking {
  const _$_Picking();

  @override
  String toString() {
    return 'FileUploadState.picking()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Picking);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() picking,
    required TResult Function(FilePickerResult result) picked,
  }) {
    return picking();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? picking,
    TResult Function(FilePickerResult result)? picked,
  }) {
    return picking?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? picking,
    TResult Function(FilePickerResult result)? picked,
    required TResult orElse(),
  }) {
    if (picking != null) {
      return picking();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_Picking value) picking,
    required TResult Function(_Picked value) picked,
  }) {
    return picking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Picking value)? picking,
    TResult Function(_Picked value)? picked,
  }) {
    return picking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Picking value)? picking,
    TResult Function(_Picked value)? picked,
    required TResult orElse(),
  }) {
    if (picking != null) {
      return picking(this);
    }
    return orElse();
  }
}

abstract class _Picking implements FileUploadState {
  const factory _Picking() = _$_Picking;
}

/// @nodoc
abstract class _$PickedCopyWith<$Res> {
  factory _$PickedCopyWith(_Picked value, $Res Function(_Picked) then) =
      __$PickedCopyWithImpl<$Res>;
  $Res call({FilePickerResult result});
}

/// @nodoc
class __$PickedCopyWithImpl<$Res> extends _$FileUploadStateCopyWithImpl<$Res>
    implements _$PickedCopyWith<$Res> {
  __$PickedCopyWithImpl(_Picked _value, $Res Function(_Picked) _then)
      : super(_value, (v) => _then(v as _Picked));

  @override
  _Picked get _value => super._value as _Picked;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_Picked(
      result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as FilePickerResult,
    ));
  }
}

/// @nodoc

class _$_Picked implements _Picked {
  const _$_Picked(this.result);

  @override
  final FilePickerResult result;

  @override
  String toString() {
    return 'FileUploadState.picked(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Picked &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(result);

  @JsonKey(ignore: true)
  @override
  _$PickedCopyWith<_Picked> get copyWith =>
      __$PickedCopyWithImpl<_Picked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() picking,
    required TResult Function(FilePickerResult result) picked,
  }) {
    return picked(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? picking,
    TResult Function(FilePickerResult result)? picked,
  }) {
    return picked?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? picking,
    TResult Function(FilePickerResult result)? picked,
    required TResult orElse(),
  }) {
    if (picked != null) {
      return picked(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_Picking value) picking,
    required TResult Function(_Picked value) picked,
  }) {
    return picked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Picking value)? picking,
    TResult Function(_Picked value)? picked,
  }) {
    return picked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Picking value)? picking,
    TResult Function(_Picked value)? picked,
    required TResult orElse(),
  }) {
    if (picked != null) {
      return picked(this);
    }
    return orElse();
  }
}

abstract class _Picked implements FileUploadState {
  const factory _Picked(FilePickerResult result) = _$_Picked;

  FilePickerResult get result => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PickedCopyWith<_Picked> get copyWith => throw _privateConstructorUsedError;
}
