// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'moralis_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MoralisEventTearOff {
  const _$MoralisEventTearOff();

  Authenticate authenticate() {
    return const Authenticate();
  }

  Refresh refresh() {
    return const Refresh();
  }

  Logout logout() {
    return const Logout();
  }
}

/// @nodoc
const $MoralisEvent = _$MoralisEventTearOff();

/// @nodoc
mixin _$MoralisEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticate,
    required TResult Function() refresh,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authenticate,
    TResult Function()? refresh,
    TResult Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticate,
    TResult Function()? refresh,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authenticate value) authenticate,
    required TResult Function(Refresh value) refresh,
    required TResult Function(Logout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Authenticate value)? authenticate,
    TResult Function(Refresh value)? refresh,
    TResult Function(Logout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authenticate value)? authenticate,
    TResult Function(Refresh value)? refresh,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoralisEventCopyWith<$Res> {
  factory $MoralisEventCopyWith(
          MoralisEvent value, $Res Function(MoralisEvent) then) =
      _$MoralisEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MoralisEventCopyWithImpl<$Res> implements $MoralisEventCopyWith<$Res> {
  _$MoralisEventCopyWithImpl(this._value, this._then);

  final MoralisEvent _value;
  // ignore: unused_field
  final $Res Function(MoralisEvent) _then;
}

/// @nodoc
abstract class $AuthenticateCopyWith<$Res> {
  factory $AuthenticateCopyWith(
          Authenticate value, $Res Function(Authenticate) then) =
      _$AuthenticateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticateCopyWithImpl<$Res> extends _$MoralisEventCopyWithImpl<$Res>
    implements $AuthenticateCopyWith<$Res> {
  _$AuthenticateCopyWithImpl(
      Authenticate _value, $Res Function(Authenticate) _then)
      : super(_value, (v) => _then(v as Authenticate));

  @override
  Authenticate get _value => super._value as Authenticate;
}

/// @nodoc

class _$Authenticate implements Authenticate {
  const _$Authenticate();

  @override
  String toString() {
    return 'MoralisEvent.authenticate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Authenticate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticate,
    required TResult Function() refresh,
    required TResult Function() logout,
  }) {
    return authenticate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authenticate,
    TResult Function()? refresh,
    TResult Function()? logout,
  }) {
    return authenticate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticate,
    TResult Function()? refresh,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (authenticate != null) {
      return authenticate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authenticate value) authenticate,
    required TResult Function(Refresh value) refresh,
    required TResult Function(Logout value) logout,
  }) {
    return authenticate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Authenticate value)? authenticate,
    TResult Function(Refresh value)? refresh,
    TResult Function(Logout value)? logout,
  }) {
    return authenticate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authenticate value)? authenticate,
    TResult Function(Refresh value)? refresh,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (authenticate != null) {
      return authenticate(this);
    }
    return orElse();
  }
}

abstract class Authenticate implements MoralisEvent {
  const factory Authenticate() = _$Authenticate;
}

/// @nodoc
abstract class $RefreshCopyWith<$Res> {
  factory $RefreshCopyWith(Refresh value, $Res Function(Refresh) then) =
      _$RefreshCopyWithImpl<$Res>;
}

/// @nodoc
class _$RefreshCopyWithImpl<$Res> extends _$MoralisEventCopyWithImpl<$Res>
    implements $RefreshCopyWith<$Res> {
  _$RefreshCopyWithImpl(Refresh _value, $Res Function(Refresh) _then)
      : super(_value, (v) => _then(v as Refresh));

  @override
  Refresh get _value => super._value as Refresh;
}

/// @nodoc

class _$Refresh implements Refresh {
  const _$Refresh();

  @override
  String toString() {
    return 'MoralisEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Refresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticate,
    required TResult Function() refresh,
    required TResult Function() logout,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authenticate,
    TResult Function()? refresh,
    TResult Function()? logout,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticate,
    TResult Function()? refresh,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authenticate value) authenticate,
    required TResult Function(Refresh value) refresh,
    required TResult Function(Logout value) logout,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Authenticate value)? authenticate,
    TResult Function(Refresh value)? refresh,
    TResult Function(Logout value)? logout,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authenticate value)? authenticate,
    TResult Function(Refresh value)? refresh,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class Refresh implements MoralisEvent {
  const factory Refresh() = _$Refresh;
}

/// @nodoc
abstract class $LogoutCopyWith<$Res> {
  factory $LogoutCopyWith(Logout value, $Res Function(Logout) then) =
      _$LogoutCopyWithImpl<$Res>;
}

/// @nodoc
class _$LogoutCopyWithImpl<$Res> extends _$MoralisEventCopyWithImpl<$Res>
    implements $LogoutCopyWith<$Res> {
  _$LogoutCopyWithImpl(Logout _value, $Res Function(Logout) _then)
      : super(_value, (v) => _then(v as Logout));

  @override
  Logout get _value => super._value as Logout;
}

/// @nodoc

class _$Logout implements Logout {
  const _$Logout();

  @override
  String toString() {
    return 'MoralisEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Logout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticate,
    required TResult Function() refresh,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authenticate,
    TResult Function()? refresh,
    TResult Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticate,
    TResult Function()? refresh,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authenticate value) authenticate,
    required TResult Function(Refresh value) refresh,
    required TResult Function(Logout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Authenticate value)? authenticate,
    TResult Function(Refresh value)? refresh,
    TResult Function(Logout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authenticate value)? authenticate,
    TResult Function(Refresh value)? refresh,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class Logout implements MoralisEvent {
  const factory Logout() = _$Logout;
}

/// @nodoc
class _$MoralisStateTearOff {
  const _$MoralisStateTearOff();

  Unauthenticated unauthenticated() {
    return const Unauthenticated();
  }

  Authenticated authenticated() {
    return const Authenticated();
  }
}

/// @nodoc
const $MoralisState = _$MoralisStateTearOff();

/// @nodoc
mixin _$MoralisState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function() authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Authenticated value) authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoralisStateCopyWith<$Res> {
  factory $MoralisStateCopyWith(
          MoralisState value, $Res Function(MoralisState) then) =
      _$MoralisStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MoralisStateCopyWithImpl<$Res> implements $MoralisStateCopyWith<$Res> {
  _$MoralisStateCopyWithImpl(this._value, this._then);

  final MoralisState _value;
  // ignore: unused_field
  final $Res Function(MoralisState) _then;
}

/// @nodoc
abstract class $UnauthenticatedCopyWith<$Res> {
  factory $UnauthenticatedCopyWith(
          Unauthenticated value, $Res Function(Unauthenticated) then) =
      _$UnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnauthenticatedCopyWithImpl<$Res>
    extends _$MoralisStateCopyWithImpl<$Res>
    implements $UnauthenticatedCopyWith<$Res> {
  _$UnauthenticatedCopyWithImpl(
      Unauthenticated _value, $Res Function(Unauthenticated) _then)
      : super(_value, (v) => _then(v as Unauthenticated));

  @override
  Unauthenticated get _value => super._value as Unauthenticated;
}

/// @nodoc

class _$Unauthenticated implements Unauthenticated {
  const _$Unauthenticated();

  @override
  String toString() {
    return 'MoralisState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function() authenticated,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticated,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Authenticated value) authenticated,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class Unauthenticated implements MoralisState {
  const factory Unauthenticated() = _$Unauthenticated;
}

/// @nodoc
abstract class $AuthenticatedCopyWith<$Res> {
  factory $AuthenticatedCopyWith(
          Authenticated value, $Res Function(Authenticated) then) =
      _$AuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticatedCopyWithImpl<$Res> extends _$MoralisStateCopyWithImpl<$Res>
    implements $AuthenticatedCopyWith<$Res> {
  _$AuthenticatedCopyWithImpl(
      Authenticated _value, $Res Function(Authenticated) _then)
      : super(_value, (v) => _then(v as Authenticated));

  @override
  Authenticated get _value => super._value as Authenticated;
}

/// @nodoc

class _$Authenticated implements Authenticated {
  const _$Authenticated();

  @override
  String toString() {
    return 'MoralisState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Authenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function() authenticated,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticated,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Authenticated value) authenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements MoralisState {
  const factory Authenticated() = _$Authenticated;
}
