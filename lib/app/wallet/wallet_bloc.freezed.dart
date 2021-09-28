// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wallet_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WalletEventTearOff {
  const _$WalletEventTearOff();

  Connect connect() {
    return const Connect();
  }

  Disconnect disconnect() {
    return const Disconnect();
  }

  Clear clear() {
    return const Clear();
  }

  CheckSupported checkSupported() {
    return const CheckSupported();
  }
}

/// @nodoc
const $WalletEvent = _$WalletEventTearOff();

/// @nodoc
mixin _$WalletEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connect,
    required TResult Function() disconnect,
    required TResult Function() clear,
    required TResult Function() checkSupported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function()? clear,
    TResult Function()? checkSupported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function()? clear,
    TResult Function()? checkSupported,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
    required TResult Function(Clear value) clear,
    required TResult Function(CheckSupported value) checkSupported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(Clear value)? clear,
    TResult Function(CheckSupported value)? checkSupported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(Clear value)? clear,
    TResult Function(CheckSupported value)? checkSupported,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletEventCopyWith<$Res> {
  factory $WalletEventCopyWith(
          WalletEvent value, $Res Function(WalletEvent) then) =
      _$WalletEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WalletEventCopyWithImpl<$Res> implements $WalletEventCopyWith<$Res> {
  _$WalletEventCopyWithImpl(this._value, this._then);

  final WalletEvent _value;
  // ignore: unused_field
  final $Res Function(WalletEvent) _then;
}

/// @nodoc
abstract class $ConnectCopyWith<$Res> {
  factory $ConnectCopyWith(Connect value, $Res Function(Connect) then) =
      _$ConnectCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConnectCopyWithImpl<$Res> extends _$WalletEventCopyWithImpl<$Res>
    implements $ConnectCopyWith<$Res> {
  _$ConnectCopyWithImpl(Connect _value, $Res Function(Connect) _then)
      : super(_value, (v) => _then(v as Connect));

  @override
  Connect get _value => super._value as Connect;
}

/// @nodoc

class _$Connect implements Connect {
  const _$Connect();

  @override
  String toString() {
    return 'WalletEvent.connect()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Connect);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connect,
    required TResult Function() disconnect,
    required TResult Function() clear,
    required TResult Function() checkSupported,
  }) {
    return connect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function()? clear,
    TResult Function()? checkSupported,
  }) {
    return connect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function()? clear,
    TResult Function()? checkSupported,
    required TResult orElse(),
  }) {
    if (connect != null) {
      return connect();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
    required TResult Function(Clear value) clear,
    required TResult Function(CheckSupported value) checkSupported,
  }) {
    return connect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(Clear value)? clear,
    TResult Function(CheckSupported value)? checkSupported,
  }) {
    return connect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(Clear value)? clear,
    TResult Function(CheckSupported value)? checkSupported,
    required TResult orElse(),
  }) {
    if (connect != null) {
      return connect(this);
    }
    return orElse();
  }
}

abstract class Connect implements WalletEvent {
  const factory Connect() = _$Connect;
}

/// @nodoc
abstract class $DisconnectCopyWith<$Res> {
  factory $DisconnectCopyWith(
          Disconnect value, $Res Function(Disconnect) then) =
      _$DisconnectCopyWithImpl<$Res>;
}

/// @nodoc
class _$DisconnectCopyWithImpl<$Res> extends _$WalletEventCopyWithImpl<$Res>
    implements $DisconnectCopyWith<$Res> {
  _$DisconnectCopyWithImpl(Disconnect _value, $Res Function(Disconnect) _then)
      : super(_value, (v) => _then(v as Disconnect));

  @override
  Disconnect get _value => super._value as Disconnect;
}

/// @nodoc

class _$Disconnect implements Disconnect {
  const _$Disconnect();

  @override
  String toString() {
    return 'WalletEvent.disconnect()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Disconnect);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connect,
    required TResult Function() disconnect,
    required TResult Function() clear,
    required TResult Function() checkSupported,
  }) {
    return disconnect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function()? clear,
    TResult Function()? checkSupported,
  }) {
    return disconnect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function()? clear,
    TResult Function()? checkSupported,
    required TResult orElse(),
  }) {
    if (disconnect != null) {
      return disconnect();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
    required TResult Function(Clear value) clear,
    required TResult Function(CheckSupported value) checkSupported,
  }) {
    return disconnect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(Clear value)? clear,
    TResult Function(CheckSupported value)? checkSupported,
  }) {
    return disconnect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(Clear value)? clear,
    TResult Function(CheckSupported value)? checkSupported,
    required TResult orElse(),
  }) {
    if (disconnect != null) {
      return disconnect(this);
    }
    return orElse();
  }
}

abstract class Disconnect implements WalletEvent {
  const factory Disconnect() = _$Disconnect;
}

/// @nodoc
abstract class $ClearCopyWith<$Res> {
  factory $ClearCopyWith(Clear value, $Res Function(Clear) then) =
      _$ClearCopyWithImpl<$Res>;
}

/// @nodoc
class _$ClearCopyWithImpl<$Res> extends _$WalletEventCopyWithImpl<$Res>
    implements $ClearCopyWith<$Res> {
  _$ClearCopyWithImpl(Clear _value, $Res Function(Clear) _then)
      : super(_value, (v) => _then(v as Clear));

  @override
  Clear get _value => super._value as Clear;
}

/// @nodoc

class _$Clear implements Clear {
  const _$Clear();

  @override
  String toString() {
    return 'WalletEvent.clear()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Clear);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connect,
    required TResult Function() disconnect,
    required TResult Function() clear,
    required TResult Function() checkSupported,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function()? clear,
    TResult Function()? checkSupported,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function()? clear,
    TResult Function()? checkSupported,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
    required TResult Function(Clear value) clear,
    required TResult Function(CheckSupported value) checkSupported,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(Clear value)? clear,
    TResult Function(CheckSupported value)? checkSupported,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(Clear value)? clear,
    TResult Function(CheckSupported value)? checkSupported,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class Clear implements WalletEvent {
  const factory Clear() = _$Clear;
}

/// @nodoc
abstract class $CheckSupportedCopyWith<$Res> {
  factory $CheckSupportedCopyWith(
          CheckSupported value, $Res Function(CheckSupported) then) =
      _$CheckSupportedCopyWithImpl<$Res>;
}

/// @nodoc
class _$CheckSupportedCopyWithImpl<$Res> extends _$WalletEventCopyWithImpl<$Res>
    implements $CheckSupportedCopyWith<$Res> {
  _$CheckSupportedCopyWithImpl(
      CheckSupported _value, $Res Function(CheckSupported) _then)
      : super(_value, (v) => _then(v as CheckSupported));

  @override
  CheckSupported get _value => super._value as CheckSupported;
}

/// @nodoc

class _$CheckSupported implements CheckSupported {
  const _$CheckSupported();

  @override
  String toString() {
    return 'WalletEvent.checkSupported()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CheckSupported);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connect,
    required TResult Function() disconnect,
    required TResult Function() clear,
    required TResult Function() checkSupported,
  }) {
    return checkSupported();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function()? clear,
    TResult Function()? checkSupported,
  }) {
    return checkSupported?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function()? clear,
    TResult Function()? checkSupported,
    required TResult orElse(),
  }) {
    if (checkSupported != null) {
      return checkSupported();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
    required TResult Function(Clear value) clear,
    required TResult Function(CheckSupported value) checkSupported,
  }) {
    return checkSupported(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(Clear value)? clear,
    TResult Function(CheckSupported value)? checkSupported,
  }) {
    return checkSupported?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    TResult Function(Clear value)? clear,
    TResult Function(CheckSupported value)? checkSupported,
    required TResult orElse(),
  }) {
    if (checkSupported != null) {
      return checkSupported(this);
    }
    return orElse();
  }
}

abstract class CheckSupported implements WalletEvent {
  const factory CheckSupported() = _$CheckSupported;
}

/// @nodoc
class _$WalletStateTearOff {
  const _$WalletStateTearOff();

  Connected connected(String address, int chainId) {
    return Connected(
      address,
      chainId,
    );
  }

  _Unconnected unconnected() {
    return const _Unconnected();
  }

  Unsupported unsupported() {
    return const Unsupported();
  }
}

/// @nodoc
const $WalletState = _$WalletStateTearOff();

/// @nodoc
mixin _$WalletState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String address, int chainId) connected,
    required TResult Function() unconnected,
    required TResult Function() unsupported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String address, int chainId)? connected,
    TResult Function()? unconnected,
    TResult Function()? unsupported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address, int chainId)? connected,
    TResult Function()? unconnected,
    TResult Function()? unsupported,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Connected value) connected,
    required TResult Function(_Unconnected value) unconnected,
    required TResult Function(Unsupported value) unsupported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Connected value)? connected,
    TResult Function(_Unconnected value)? unconnected,
    TResult Function(Unsupported value)? unsupported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connected value)? connected,
    TResult Function(_Unconnected value)? unconnected,
    TResult Function(Unsupported value)? unsupported,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletStateCopyWith<$Res> {
  factory $WalletStateCopyWith(
          WalletState value, $Res Function(WalletState) then) =
      _$WalletStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WalletStateCopyWithImpl<$Res> implements $WalletStateCopyWith<$Res> {
  _$WalletStateCopyWithImpl(this._value, this._then);

  final WalletState _value;
  // ignore: unused_field
  final $Res Function(WalletState) _then;
}

/// @nodoc
abstract class $ConnectedCopyWith<$Res> {
  factory $ConnectedCopyWith(Connected value, $Res Function(Connected) then) =
      _$ConnectedCopyWithImpl<$Res>;
  $Res call({String address, int chainId});
}

/// @nodoc
class _$ConnectedCopyWithImpl<$Res> extends _$WalletStateCopyWithImpl<$Res>
    implements $ConnectedCopyWith<$Res> {
  _$ConnectedCopyWithImpl(Connected _value, $Res Function(Connected) _then)
      : super(_value, (v) => _then(v as Connected));

  @override
  Connected get _value => super._value as Connected;

  @override
  $Res call({
    Object? address = freezed,
    Object? chainId = freezed,
  }) {
    return _then(Connected(
      address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      chainId == freezed
          ? _value.chainId
          : chainId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Connected implements Connected {
  const _$Connected(this.address, this.chainId);

  @override
  final String address;
  @override
  final int chainId;

  @override
  String toString() {
    return 'WalletState.connected(address: $address, chainId: $chainId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Connected &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.chainId, chainId) ||
                const DeepCollectionEquality().equals(other.chainId, chainId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(chainId);

  @JsonKey(ignore: true)
  @override
  $ConnectedCopyWith<Connected> get copyWith =>
      _$ConnectedCopyWithImpl<Connected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String address, int chainId) connected,
    required TResult Function() unconnected,
    required TResult Function() unsupported,
  }) {
    return connected(address, chainId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String address, int chainId)? connected,
    TResult Function()? unconnected,
    TResult Function()? unsupported,
  }) {
    return connected?.call(address, chainId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address, int chainId)? connected,
    TResult Function()? unconnected,
    TResult Function()? unsupported,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(address, chainId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Connected value) connected,
    required TResult Function(_Unconnected value) unconnected,
    required TResult Function(Unsupported value) unsupported,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Connected value)? connected,
    TResult Function(_Unconnected value)? unconnected,
    TResult Function(Unsupported value)? unsupported,
  }) {
    return connected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connected value)? connected,
    TResult Function(_Unconnected value)? unconnected,
    TResult Function(Unsupported value)? unsupported,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class Connected implements WalletState {
  const factory Connected(String address, int chainId) = _$Connected;

  String get address => throw _privateConstructorUsedError;
  int get chainId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConnectedCopyWith<Connected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnconnectedCopyWith<$Res> {
  factory _$UnconnectedCopyWith(
          _Unconnected value, $Res Function(_Unconnected) then) =
      __$UnconnectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnconnectedCopyWithImpl<$Res> extends _$WalletStateCopyWithImpl<$Res>
    implements _$UnconnectedCopyWith<$Res> {
  __$UnconnectedCopyWithImpl(
      _Unconnected _value, $Res Function(_Unconnected) _then)
      : super(_value, (v) => _then(v as _Unconnected));

  @override
  _Unconnected get _value => super._value as _Unconnected;
}

/// @nodoc

class _$_Unconnected implements _Unconnected {
  const _$_Unconnected();

  @override
  String toString() {
    return 'WalletState.unconnected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unconnected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String address, int chainId) connected,
    required TResult Function() unconnected,
    required TResult Function() unsupported,
  }) {
    return unconnected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String address, int chainId)? connected,
    TResult Function()? unconnected,
    TResult Function()? unsupported,
  }) {
    return unconnected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address, int chainId)? connected,
    TResult Function()? unconnected,
    TResult Function()? unsupported,
    required TResult orElse(),
  }) {
    if (unconnected != null) {
      return unconnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Connected value) connected,
    required TResult Function(_Unconnected value) unconnected,
    required TResult Function(Unsupported value) unsupported,
  }) {
    return unconnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Connected value)? connected,
    TResult Function(_Unconnected value)? unconnected,
    TResult Function(Unsupported value)? unsupported,
  }) {
    return unconnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connected value)? connected,
    TResult Function(_Unconnected value)? unconnected,
    TResult Function(Unsupported value)? unsupported,
    required TResult orElse(),
  }) {
    if (unconnected != null) {
      return unconnected(this);
    }
    return orElse();
  }
}

abstract class _Unconnected implements WalletState {
  const factory _Unconnected() = _$_Unconnected;
}

/// @nodoc
abstract class $UnsupportedCopyWith<$Res> {
  factory $UnsupportedCopyWith(
          Unsupported value, $Res Function(Unsupported) then) =
      _$UnsupportedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnsupportedCopyWithImpl<$Res> extends _$WalletStateCopyWithImpl<$Res>
    implements $UnsupportedCopyWith<$Res> {
  _$UnsupportedCopyWithImpl(
      Unsupported _value, $Res Function(Unsupported) _then)
      : super(_value, (v) => _then(v as Unsupported));

  @override
  Unsupported get _value => super._value as Unsupported;
}

/// @nodoc

class _$Unsupported implements Unsupported {
  const _$Unsupported();

  @override
  String toString() {
    return 'WalletState.unsupported()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Unsupported);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String address, int chainId) connected,
    required TResult Function() unconnected,
    required TResult Function() unsupported,
  }) {
    return unsupported();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String address, int chainId)? connected,
    TResult Function()? unconnected,
    TResult Function()? unsupported,
  }) {
    return unsupported?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address, int chainId)? connected,
    TResult Function()? unconnected,
    TResult Function()? unsupported,
    required TResult orElse(),
  }) {
    if (unsupported != null) {
      return unsupported();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Connected value) connected,
    required TResult Function(_Unconnected value) unconnected,
    required TResult Function(Unsupported value) unsupported,
  }) {
    return unsupported(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Connected value)? connected,
    TResult Function(_Unconnected value)? unconnected,
    TResult Function(Unsupported value)? unsupported,
  }) {
    return unsupported?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connected value)? connected,
    TResult Function(_Unconnected value)? unconnected,
    TResult Function(Unsupported value)? unsupported,
    required TResult orElse(),
  }) {
    if (unsupported != null) {
      return unsupported(this);
    }
    return orElse();
  }
}

abstract class Unsupported implements WalletState {
  const factory Unsupported() = _$Unsupported;
}
