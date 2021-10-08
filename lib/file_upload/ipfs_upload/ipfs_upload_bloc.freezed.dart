// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ipfs_upload_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$IpfsUploadEventTearOff {
  const _$IpfsUploadEventTearOff();

  _UploadFile uploadFile(FilePickerResult file) {
    return _UploadFile(
      file,
    );
  }

  _RefreshFiles refreshFiles() {
    return const _RefreshFiles();
  }

  _DeleteHash deleteHash(String hash) {
    return _DeleteHash(
      hash,
    );
  }
}

/// @nodoc
const $IpfsUploadEvent = _$IpfsUploadEventTearOff();

/// @nodoc
mixin _$IpfsUploadEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FilePickerResult file) uploadFile,
    required TResult Function() refreshFiles,
    required TResult Function(String hash) deleteHash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FilePickerResult file)? uploadFile,
    TResult Function()? refreshFiles,
    TResult Function(String hash)? deleteHash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FilePickerResult file)? uploadFile,
    TResult Function()? refreshFiles,
    TResult Function(String hash)? deleteHash,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadFile value) uploadFile,
    required TResult Function(_RefreshFiles value) refreshFiles,
    required TResult Function(_DeleteHash value) deleteHash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UploadFile value)? uploadFile,
    TResult Function(_RefreshFiles value)? refreshFiles,
    TResult Function(_DeleteHash value)? deleteHash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadFile value)? uploadFile,
    TResult Function(_RefreshFiles value)? refreshFiles,
    TResult Function(_DeleteHash value)? deleteHash,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IpfsUploadEventCopyWith<$Res> {
  factory $IpfsUploadEventCopyWith(
          IpfsUploadEvent value, $Res Function(IpfsUploadEvent) then) =
      _$IpfsUploadEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$IpfsUploadEventCopyWithImpl<$Res>
    implements $IpfsUploadEventCopyWith<$Res> {
  _$IpfsUploadEventCopyWithImpl(this._value, this._then);

  final IpfsUploadEvent _value;
  // ignore: unused_field
  final $Res Function(IpfsUploadEvent) _then;
}

/// @nodoc
abstract class _$UploadFileCopyWith<$Res> {
  factory _$UploadFileCopyWith(
          _UploadFile value, $Res Function(_UploadFile) then) =
      __$UploadFileCopyWithImpl<$Res>;
  $Res call({FilePickerResult file});
}

/// @nodoc
class __$UploadFileCopyWithImpl<$Res>
    extends _$IpfsUploadEventCopyWithImpl<$Res>
    implements _$UploadFileCopyWith<$Res> {
  __$UploadFileCopyWithImpl(
      _UploadFile _value, $Res Function(_UploadFile) _then)
      : super(_value, (v) => _then(v as _UploadFile));

  @override
  _UploadFile get _value => super._value as _UploadFile;

  @override
  $Res call({
    Object? file = freezed,
  }) {
    return _then(_UploadFile(
      file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as FilePickerResult,
    ));
  }
}

/// @nodoc

class _$_UploadFile implements _UploadFile {
  const _$_UploadFile(this.file);

  @override
  final FilePickerResult file;

  @override
  String toString() {
    return 'IpfsUploadEvent.uploadFile(file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UploadFile &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(file);

  @JsonKey(ignore: true)
  @override
  _$UploadFileCopyWith<_UploadFile> get copyWith =>
      __$UploadFileCopyWithImpl<_UploadFile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FilePickerResult file) uploadFile,
    required TResult Function() refreshFiles,
    required TResult Function(String hash) deleteHash,
  }) {
    return uploadFile(file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FilePickerResult file)? uploadFile,
    TResult Function()? refreshFiles,
    TResult Function(String hash)? deleteHash,
  }) {
    return uploadFile?.call(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FilePickerResult file)? uploadFile,
    TResult Function()? refreshFiles,
    TResult Function(String hash)? deleteHash,
    required TResult orElse(),
  }) {
    if (uploadFile != null) {
      return uploadFile(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadFile value) uploadFile,
    required TResult Function(_RefreshFiles value) refreshFiles,
    required TResult Function(_DeleteHash value) deleteHash,
  }) {
    return uploadFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UploadFile value)? uploadFile,
    TResult Function(_RefreshFiles value)? refreshFiles,
    TResult Function(_DeleteHash value)? deleteHash,
  }) {
    return uploadFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadFile value)? uploadFile,
    TResult Function(_RefreshFiles value)? refreshFiles,
    TResult Function(_DeleteHash value)? deleteHash,
    required TResult orElse(),
  }) {
    if (uploadFile != null) {
      return uploadFile(this);
    }
    return orElse();
  }
}

abstract class _UploadFile implements IpfsUploadEvent {
  const factory _UploadFile(FilePickerResult file) = _$_UploadFile;

  FilePickerResult get file => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UploadFileCopyWith<_UploadFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RefreshFilesCopyWith<$Res> {
  factory _$RefreshFilesCopyWith(
          _RefreshFiles value, $Res Function(_RefreshFiles) then) =
      __$RefreshFilesCopyWithImpl<$Res>;
}

/// @nodoc
class __$RefreshFilesCopyWithImpl<$Res>
    extends _$IpfsUploadEventCopyWithImpl<$Res>
    implements _$RefreshFilesCopyWith<$Res> {
  __$RefreshFilesCopyWithImpl(
      _RefreshFiles _value, $Res Function(_RefreshFiles) _then)
      : super(_value, (v) => _then(v as _RefreshFiles));

  @override
  _RefreshFiles get _value => super._value as _RefreshFiles;
}

/// @nodoc

class _$_RefreshFiles implements _RefreshFiles {
  const _$_RefreshFiles();

  @override
  String toString() {
    return 'IpfsUploadEvent.refreshFiles()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RefreshFiles);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FilePickerResult file) uploadFile,
    required TResult Function() refreshFiles,
    required TResult Function(String hash) deleteHash,
  }) {
    return refreshFiles();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FilePickerResult file)? uploadFile,
    TResult Function()? refreshFiles,
    TResult Function(String hash)? deleteHash,
  }) {
    return refreshFiles?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FilePickerResult file)? uploadFile,
    TResult Function()? refreshFiles,
    TResult Function(String hash)? deleteHash,
    required TResult orElse(),
  }) {
    if (refreshFiles != null) {
      return refreshFiles();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadFile value) uploadFile,
    required TResult Function(_RefreshFiles value) refreshFiles,
    required TResult Function(_DeleteHash value) deleteHash,
  }) {
    return refreshFiles(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UploadFile value)? uploadFile,
    TResult Function(_RefreshFiles value)? refreshFiles,
    TResult Function(_DeleteHash value)? deleteHash,
  }) {
    return refreshFiles?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadFile value)? uploadFile,
    TResult Function(_RefreshFiles value)? refreshFiles,
    TResult Function(_DeleteHash value)? deleteHash,
    required TResult orElse(),
  }) {
    if (refreshFiles != null) {
      return refreshFiles(this);
    }
    return orElse();
  }
}

abstract class _RefreshFiles implements IpfsUploadEvent {
  const factory _RefreshFiles() = _$_RefreshFiles;
}

/// @nodoc
abstract class _$DeleteHashCopyWith<$Res> {
  factory _$DeleteHashCopyWith(
          _DeleteHash value, $Res Function(_DeleteHash) then) =
      __$DeleteHashCopyWithImpl<$Res>;
  $Res call({String hash});
}

/// @nodoc
class __$DeleteHashCopyWithImpl<$Res>
    extends _$IpfsUploadEventCopyWithImpl<$Res>
    implements _$DeleteHashCopyWith<$Res> {
  __$DeleteHashCopyWithImpl(
      _DeleteHash _value, $Res Function(_DeleteHash) _then)
      : super(_value, (v) => _then(v as _DeleteHash));

  @override
  _DeleteHash get _value => super._value as _DeleteHash;

  @override
  $Res call({
    Object? hash = freezed,
  }) {
    return _then(_DeleteHash(
      hash == freezed
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DeleteHash implements _DeleteHash {
  const _$_DeleteHash(this.hash);

  @override
  final String hash;

  @override
  String toString() {
    return 'IpfsUploadEvent.deleteHash(hash: $hash)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteHash &&
            (identical(other.hash, hash) ||
                const DeepCollectionEquality().equals(other.hash, hash)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(hash);

  @JsonKey(ignore: true)
  @override
  _$DeleteHashCopyWith<_DeleteHash> get copyWith =>
      __$DeleteHashCopyWithImpl<_DeleteHash>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FilePickerResult file) uploadFile,
    required TResult Function() refreshFiles,
    required TResult Function(String hash) deleteHash,
  }) {
    return deleteHash(hash);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FilePickerResult file)? uploadFile,
    TResult Function()? refreshFiles,
    TResult Function(String hash)? deleteHash,
  }) {
    return deleteHash?.call(hash);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FilePickerResult file)? uploadFile,
    TResult Function()? refreshFiles,
    TResult Function(String hash)? deleteHash,
    required TResult orElse(),
  }) {
    if (deleteHash != null) {
      return deleteHash(hash);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadFile value) uploadFile,
    required TResult Function(_RefreshFiles value) refreshFiles,
    required TResult Function(_DeleteHash value) deleteHash,
  }) {
    return deleteHash(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UploadFile value)? uploadFile,
    TResult Function(_RefreshFiles value)? refreshFiles,
    TResult Function(_DeleteHash value)? deleteHash,
  }) {
    return deleteHash?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadFile value)? uploadFile,
    TResult Function(_RefreshFiles value)? refreshFiles,
    TResult Function(_DeleteHash value)? deleteHash,
    required TResult orElse(),
  }) {
    if (deleteHash != null) {
      return deleteHash(this);
    }
    return orElse();
  }
}

abstract class _DeleteHash implements IpfsUploadEvent {
  const factory _DeleteHash(String hash) = _$_DeleteHash;

  String get hash => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeleteHashCopyWith<_DeleteHash> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$IpfsUploadStateTearOff {
  const _$IpfsUploadStateTearOff();

  _Files files(List<IpfsData> files) {
    return _Files(
      files,
    );
  }

  _Loading loading() {
    return const _Loading();
  }

  _Error error(Object obj) {
    return _Error(
      obj,
    );
  }
}

/// @nodoc
const $IpfsUploadState = _$IpfsUploadStateTearOff();

/// @nodoc
mixin _$IpfsUploadState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<IpfsData> files) files,
    required TResult Function() loading,
    required TResult Function(Object obj) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<IpfsData> files)? files,
    TResult Function()? loading,
    TResult Function(Object obj)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<IpfsData> files)? files,
    TResult Function()? loading,
    TResult Function(Object obj)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Files value) files,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Files value)? files,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Files value)? files,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IpfsUploadStateCopyWith<$Res> {
  factory $IpfsUploadStateCopyWith(
          IpfsUploadState value, $Res Function(IpfsUploadState) then) =
      _$IpfsUploadStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$IpfsUploadStateCopyWithImpl<$Res>
    implements $IpfsUploadStateCopyWith<$Res> {
  _$IpfsUploadStateCopyWithImpl(this._value, this._then);

  final IpfsUploadState _value;
  // ignore: unused_field
  final $Res Function(IpfsUploadState) _then;
}

/// @nodoc
abstract class _$FilesCopyWith<$Res> {
  factory _$FilesCopyWith(_Files value, $Res Function(_Files) then) =
      __$FilesCopyWithImpl<$Res>;
  $Res call({List<IpfsData> files});
}

/// @nodoc
class __$FilesCopyWithImpl<$Res> extends _$IpfsUploadStateCopyWithImpl<$Res>
    implements _$FilesCopyWith<$Res> {
  __$FilesCopyWithImpl(_Files _value, $Res Function(_Files) _then)
      : super(_value, (v) => _then(v as _Files));

  @override
  _Files get _value => super._value as _Files;

  @override
  $Res call({
    Object? files = freezed,
  }) {
    return _then(_Files(
      files == freezed
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<IpfsData>,
    ));
  }
}

/// @nodoc

class _$_Files implements _Files {
  const _$_Files(this.files);

  @override
  final List<IpfsData> files;

  @override
  String toString() {
    return 'IpfsUploadState.files(files: $files)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Files &&
            (identical(other.files, files) ||
                const DeepCollectionEquality().equals(other.files, files)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(files);

  @JsonKey(ignore: true)
  @override
  _$FilesCopyWith<_Files> get copyWith =>
      __$FilesCopyWithImpl<_Files>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<IpfsData> files) files,
    required TResult Function() loading,
    required TResult Function(Object obj) error,
  }) {
    return files(this.files);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<IpfsData> files)? files,
    TResult Function()? loading,
    TResult Function(Object obj)? error,
  }) {
    return files?.call(this.files);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<IpfsData> files)? files,
    TResult Function()? loading,
    TResult Function(Object obj)? error,
    required TResult orElse(),
  }) {
    if (files != null) {
      return files(this.files);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Files value) files,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return files(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Files value)? files,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
  }) {
    return files?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Files value)? files,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (files != null) {
      return files(this);
    }
    return orElse();
  }
}

abstract class _Files implements IpfsUploadState {
  const factory _Files(List<IpfsData> files) = _$_Files;

  List<IpfsData> get files => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FilesCopyWith<_Files> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$IpfsUploadStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'IpfsUploadState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<IpfsData> files) files,
    required TResult Function() loading,
    required TResult Function(Object obj) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<IpfsData> files)? files,
    TResult Function()? loading,
    TResult Function(Object obj)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<IpfsData> files)? files,
    TResult Function()? loading,
    TResult Function(Object obj)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Files value) files,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Files value)? files,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Files value)? files,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements IpfsUploadState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({Object obj});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$IpfsUploadStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? obj = freezed,
  }) {
    return _then(_Error(
      obj == freezed
          ? _value.obj
          : obj // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.obj);

  @override
  final Object obj;

  @override
  String toString() {
    return 'IpfsUploadState.error(obj: $obj)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.obj, obj) ||
                const DeepCollectionEquality().equals(other.obj, obj)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(obj);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<IpfsData> files) files,
    required TResult Function() loading,
    required TResult Function(Object obj) error,
  }) {
    return error(obj);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<IpfsData> files)? files,
    TResult Function()? loading,
    TResult Function(Object obj)? error,
  }) {
    return error?.call(obj);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<IpfsData> files)? files,
    TResult Function()? loading,
    TResult Function(Object obj)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(obj);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Files value) files,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Files value)? files,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Files value)? files,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements IpfsUploadState {
  const factory _Error(Object obj) = _$_Error;

  Object get obj => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}
