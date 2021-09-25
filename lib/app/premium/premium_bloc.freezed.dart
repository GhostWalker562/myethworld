// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'premium_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PremiumEventTearOff {
  const _$PremiumEventTearOff();

  UpgradeAccount upgradeAccount(String token, Connected account) {
    return UpgradeAccount(
      token,
      account,
    );
  }

  DowngradeAccount downgradeAccount(String token, Connected account) {
    return DowngradeAccount(
      token,
      account,
    );
  }

  CheckAccount checkAccount(Connected account) {
    return CheckAccount(
      account,
    );
  }
}

/// @nodoc
const $PremiumEvent = _$PremiumEventTearOff();

/// @nodoc
mixin _$PremiumEvent {
  Connected get account => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token, Connected account) upgradeAccount,
    required TResult Function(String token, Connected account) downgradeAccount,
    required TResult Function(Connected account) checkAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token, Connected account)? upgradeAccount,
    TResult Function(String token, Connected account)? downgradeAccount,
    TResult Function(Connected account)? checkAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token, Connected account)? upgradeAccount,
    TResult Function(String token, Connected account)? downgradeAccount,
    TResult Function(Connected account)? checkAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpgradeAccount value) upgradeAccount,
    required TResult Function(DowngradeAccount value) downgradeAccount,
    required TResult Function(CheckAccount value) checkAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpgradeAccount value)? upgradeAccount,
    TResult Function(DowngradeAccount value)? downgradeAccount,
    TResult Function(CheckAccount value)? checkAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpgradeAccount value)? upgradeAccount,
    TResult Function(DowngradeAccount value)? downgradeAccount,
    TResult Function(CheckAccount value)? checkAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PremiumEventCopyWith<PremiumEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PremiumEventCopyWith<$Res> {
  factory $PremiumEventCopyWith(
          PremiumEvent value, $Res Function(PremiumEvent) then) =
      _$PremiumEventCopyWithImpl<$Res>;
  $Res call({Connected account});
}

/// @nodoc
class _$PremiumEventCopyWithImpl<$Res> implements $PremiumEventCopyWith<$Res> {
  _$PremiumEventCopyWithImpl(this._value, this._then);

  final PremiumEvent _value;
  // ignore: unused_field
  final $Res Function(PremiumEvent) _then;

  @override
  $Res call({
    Object? account = freezed,
  }) {
    return _then(_value.copyWith(
      account: account == freezed
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Connected,
    ));
  }
}

/// @nodoc
abstract class $UpgradeAccountCopyWith<$Res>
    implements $PremiumEventCopyWith<$Res> {
  factory $UpgradeAccountCopyWith(
          UpgradeAccount value, $Res Function(UpgradeAccount) then) =
      _$UpgradeAccountCopyWithImpl<$Res>;
  @override
  $Res call({String token, Connected account});
}

/// @nodoc
class _$UpgradeAccountCopyWithImpl<$Res>
    extends _$PremiumEventCopyWithImpl<$Res>
    implements $UpgradeAccountCopyWith<$Res> {
  _$UpgradeAccountCopyWithImpl(
      UpgradeAccount _value, $Res Function(UpgradeAccount) _then)
      : super(_value, (v) => _then(v as UpgradeAccount));

  @override
  UpgradeAccount get _value => super._value as UpgradeAccount;

  @override
  $Res call({
    Object? token = freezed,
    Object? account = freezed,
  }) {
    return _then(UpgradeAccount(
      token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      account == freezed
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Connected,
    ));
  }
}

/// @nodoc

class _$UpgradeAccount implements UpgradeAccount {
  const _$UpgradeAccount(this.token, this.account);

  @override
  final String token;
  @override
  final Connected account;

  @override
  String toString() {
    return 'PremiumEvent.upgradeAccount(token: $token, account: $account)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpgradeAccount &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.account, account) ||
                const DeepCollectionEquality().equals(other.account, account)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(account);

  @JsonKey(ignore: true)
  @override
  $UpgradeAccountCopyWith<UpgradeAccount> get copyWith =>
      _$UpgradeAccountCopyWithImpl<UpgradeAccount>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token, Connected account) upgradeAccount,
    required TResult Function(String token, Connected account) downgradeAccount,
    required TResult Function(Connected account) checkAccount,
  }) {
    return upgradeAccount(token, account);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token, Connected account)? upgradeAccount,
    TResult Function(String token, Connected account)? downgradeAccount,
    TResult Function(Connected account)? checkAccount,
  }) {
    return upgradeAccount?.call(token, account);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token, Connected account)? upgradeAccount,
    TResult Function(String token, Connected account)? downgradeAccount,
    TResult Function(Connected account)? checkAccount,
    required TResult orElse(),
  }) {
    if (upgradeAccount != null) {
      return upgradeAccount(token, account);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpgradeAccount value) upgradeAccount,
    required TResult Function(DowngradeAccount value) downgradeAccount,
    required TResult Function(CheckAccount value) checkAccount,
  }) {
    return upgradeAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpgradeAccount value)? upgradeAccount,
    TResult Function(DowngradeAccount value)? downgradeAccount,
    TResult Function(CheckAccount value)? checkAccount,
  }) {
    return upgradeAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpgradeAccount value)? upgradeAccount,
    TResult Function(DowngradeAccount value)? downgradeAccount,
    TResult Function(CheckAccount value)? checkAccount,
    required TResult orElse(),
  }) {
    if (upgradeAccount != null) {
      return upgradeAccount(this);
    }
    return orElse();
  }
}

abstract class UpgradeAccount implements PremiumEvent {
  const factory UpgradeAccount(String token, Connected account) =
      _$UpgradeAccount;

  String get token => throw _privateConstructorUsedError;
  @override
  Connected get account => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $UpgradeAccountCopyWith<UpgradeAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DowngradeAccountCopyWith<$Res>
    implements $PremiumEventCopyWith<$Res> {
  factory $DowngradeAccountCopyWith(
          DowngradeAccount value, $Res Function(DowngradeAccount) then) =
      _$DowngradeAccountCopyWithImpl<$Res>;
  @override
  $Res call({String token, Connected account});
}

/// @nodoc
class _$DowngradeAccountCopyWithImpl<$Res>
    extends _$PremiumEventCopyWithImpl<$Res>
    implements $DowngradeAccountCopyWith<$Res> {
  _$DowngradeAccountCopyWithImpl(
      DowngradeAccount _value, $Res Function(DowngradeAccount) _then)
      : super(_value, (v) => _then(v as DowngradeAccount));

  @override
  DowngradeAccount get _value => super._value as DowngradeAccount;

  @override
  $Res call({
    Object? token = freezed,
    Object? account = freezed,
  }) {
    return _then(DowngradeAccount(
      token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      account == freezed
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Connected,
    ));
  }
}

/// @nodoc

class _$DowngradeAccount implements DowngradeAccount {
  const _$DowngradeAccount(this.token, this.account);

  @override
  final String token;
  @override
  final Connected account;

  @override
  String toString() {
    return 'PremiumEvent.downgradeAccount(token: $token, account: $account)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DowngradeAccount &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.account, account) ||
                const DeepCollectionEquality().equals(other.account, account)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(account);

  @JsonKey(ignore: true)
  @override
  $DowngradeAccountCopyWith<DowngradeAccount> get copyWith =>
      _$DowngradeAccountCopyWithImpl<DowngradeAccount>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token, Connected account) upgradeAccount,
    required TResult Function(String token, Connected account) downgradeAccount,
    required TResult Function(Connected account) checkAccount,
  }) {
    return downgradeAccount(token, account);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token, Connected account)? upgradeAccount,
    TResult Function(String token, Connected account)? downgradeAccount,
    TResult Function(Connected account)? checkAccount,
  }) {
    return downgradeAccount?.call(token, account);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token, Connected account)? upgradeAccount,
    TResult Function(String token, Connected account)? downgradeAccount,
    TResult Function(Connected account)? checkAccount,
    required TResult orElse(),
  }) {
    if (downgradeAccount != null) {
      return downgradeAccount(token, account);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpgradeAccount value) upgradeAccount,
    required TResult Function(DowngradeAccount value) downgradeAccount,
    required TResult Function(CheckAccount value) checkAccount,
  }) {
    return downgradeAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpgradeAccount value)? upgradeAccount,
    TResult Function(DowngradeAccount value)? downgradeAccount,
    TResult Function(CheckAccount value)? checkAccount,
  }) {
    return downgradeAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpgradeAccount value)? upgradeAccount,
    TResult Function(DowngradeAccount value)? downgradeAccount,
    TResult Function(CheckAccount value)? checkAccount,
    required TResult orElse(),
  }) {
    if (downgradeAccount != null) {
      return downgradeAccount(this);
    }
    return orElse();
  }
}

abstract class DowngradeAccount implements PremiumEvent {
  const factory DowngradeAccount(String token, Connected account) =
      _$DowngradeAccount;

  String get token => throw _privateConstructorUsedError;
  @override
  Connected get account => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $DowngradeAccountCopyWith<DowngradeAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckAccountCopyWith<$Res>
    implements $PremiumEventCopyWith<$Res> {
  factory $CheckAccountCopyWith(
          CheckAccount value, $Res Function(CheckAccount) then) =
      _$CheckAccountCopyWithImpl<$Res>;
  @override
  $Res call({Connected account});
}

/// @nodoc
class _$CheckAccountCopyWithImpl<$Res> extends _$PremiumEventCopyWithImpl<$Res>
    implements $CheckAccountCopyWith<$Res> {
  _$CheckAccountCopyWithImpl(
      CheckAccount _value, $Res Function(CheckAccount) _then)
      : super(_value, (v) => _then(v as CheckAccount));

  @override
  CheckAccount get _value => super._value as CheckAccount;

  @override
  $Res call({
    Object? account = freezed,
  }) {
    return _then(CheckAccount(
      account == freezed
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Connected,
    ));
  }
}

/// @nodoc

class _$CheckAccount implements CheckAccount {
  const _$CheckAccount(this.account);

  @override
  final Connected account;

  @override
  String toString() {
    return 'PremiumEvent.checkAccount(account: $account)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CheckAccount &&
            (identical(other.account, account) ||
                const DeepCollectionEquality().equals(other.account, account)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(account);

  @JsonKey(ignore: true)
  @override
  $CheckAccountCopyWith<CheckAccount> get copyWith =>
      _$CheckAccountCopyWithImpl<CheckAccount>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token, Connected account) upgradeAccount,
    required TResult Function(String token, Connected account) downgradeAccount,
    required TResult Function(Connected account) checkAccount,
  }) {
    return checkAccount(account);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token, Connected account)? upgradeAccount,
    TResult Function(String token, Connected account)? downgradeAccount,
    TResult Function(Connected account)? checkAccount,
  }) {
    return checkAccount?.call(account);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token, Connected account)? upgradeAccount,
    TResult Function(String token, Connected account)? downgradeAccount,
    TResult Function(Connected account)? checkAccount,
    required TResult orElse(),
  }) {
    if (checkAccount != null) {
      return checkAccount(account);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpgradeAccount value) upgradeAccount,
    required TResult Function(DowngradeAccount value) downgradeAccount,
    required TResult Function(CheckAccount value) checkAccount,
  }) {
    return checkAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpgradeAccount value)? upgradeAccount,
    TResult Function(DowngradeAccount value)? downgradeAccount,
    TResult Function(CheckAccount value)? checkAccount,
  }) {
    return checkAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpgradeAccount value)? upgradeAccount,
    TResult Function(DowngradeAccount value)? downgradeAccount,
    TResult Function(CheckAccount value)? checkAccount,
    required TResult orElse(),
  }) {
    if (checkAccount != null) {
      return checkAccount(this);
    }
    return orElse();
  }
}

abstract class CheckAccount implements PremiumEvent {
  const factory CheckAccount(Connected account) = _$CheckAccount;

  @override
  Connected get account => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $CheckAccountCopyWith<CheckAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PremiumStateTearOff {
  const _$PremiumStateTearOff();

  Premium premium() {
    return const Premium();
  }

  Basic basic() {
    return const Basic();
  }

  Pending pending() {
    return const Pending();
  }

  Upgrading upgrade() {
    return const Upgrading();
  }

  Downgrading downgrade() {
    return const Downgrading();
  }

  Cancel cancel() {
    return const Cancel();
  }
}

/// @nodoc
const $PremiumState = _$PremiumStateTearOff();

/// @nodoc
mixin _$PremiumState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() premium,
    required TResult Function() basic,
    required TResult Function() pending,
    required TResult Function() upgrade,
    required TResult Function() downgrade,
    required TResult Function() cancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? premium,
    TResult Function()? basic,
    TResult Function()? pending,
    TResult Function()? upgrade,
    TResult Function()? downgrade,
    TResult Function()? cancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? premium,
    TResult Function()? basic,
    TResult Function()? pending,
    TResult Function()? upgrade,
    TResult Function()? downgrade,
    TResult Function()? cancel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Premium value) premium,
    required TResult Function(Basic value) basic,
    required TResult Function(Pending value) pending,
    required TResult Function(Upgrading value) upgrade,
    required TResult Function(Downgrading value) downgrade,
    required TResult Function(Cancel value) cancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Premium value)? premium,
    TResult Function(Basic value)? basic,
    TResult Function(Pending value)? pending,
    TResult Function(Upgrading value)? upgrade,
    TResult Function(Downgrading value)? downgrade,
    TResult Function(Cancel value)? cancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Premium value)? premium,
    TResult Function(Basic value)? basic,
    TResult Function(Pending value)? pending,
    TResult Function(Upgrading value)? upgrade,
    TResult Function(Downgrading value)? downgrade,
    TResult Function(Cancel value)? cancel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PremiumStateCopyWith<$Res> {
  factory $PremiumStateCopyWith(
          PremiumState value, $Res Function(PremiumState) then) =
      _$PremiumStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PremiumStateCopyWithImpl<$Res> implements $PremiumStateCopyWith<$Res> {
  _$PremiumStateCopyWithImpl(this._value, this._then);

  final PremiumState _value;
  // ignore: unused_field
  final $Res Function(PremiumState) _then;
}

/// @nodoc
abstract class $PremiumCopyWith<$Res> {
  factory $PremiumCopyWith(Premium value, $Res Function(Premium) then) =
      _$PremiumCopyWithImpl<$Res>;
}

/// @nodoc
class _$PremiumCopyWithImpl<$Res> extends _$PremiumStateCopyWithImpl<$Res>
    implements $PremiumCopyWith<$Res> {
  _$PremiumCopyWithImpl(Premium _value, $Res Function(Premium) _then)
      : super(_value, (v) => _then(v as Premium));

  @override
  Premium get _value => super._value as Premium;
}

/// @nodoc

class _$Premium implements Premium {
  const _$Premium();

  @override
  String toString() {
    return 'PremiumState.premium()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Premium);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() premium,
    required TResult Function() basic,
    required TResult Function() pending,
    required TResult Function() upgrade,
    required TResult Function() downgrade,
    required TResult Function() cancel,
  }) {
    return premium();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? premium,
    TResult Function()? basic,
    TResult Function()? pending,
    TResult Function()? upgrade,
    TResult Function()? downgrade,
    TResult Function()? cancel,
  }) {
    return premium?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? premium,
    TResult Function()? basic,
    TResult Function()? pending,
    TResult Function()? upgrade,
    TResult Function()? downgrade,
    TResult Function()? cancel,
    required TResult orElse(),
  }) {
    if (premium != null) {
      return premium();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Premium value) premium,
    required TResult Function(Basic value) basic,
    required TResult Function(Pending value) pending,
    required TResult Function(Upgrading value) upgrade,
    required TResult Function(Downgrading value) downgrade,
    required TResult Function(Cancel value) cancel,
  }) {
    return premium(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Premium value)? premium,
    TResult Function(Basic value)? basic,
    TResult Function(Pending value)? pending,
    TResult Function(Upgrading value)? upgrade,
    TResult Function(Downgrading value)? downgrade,
    TResult Function(Cancel value)? cancel,
  }) {
    return premium?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Premium value)? premium,
    TResult Function(Basic value)? basic,
    TResult Function(Pending value)? pending,
    TResult Function(Upgrading value)? upgrade,
    TResult Function(Downgrading value)? downgrade,
    TResult Function(Cancel value)? cancel,
    required TResult orElse(),
  }) {
    if (premium != null) {
      return premium(this);
    }
    return orElse();
  }
}

abstract class Premium implements PremiumState {
  const factory Premium() = _$Premium;
}

/// @nodoc
abstract class $BasicCopyWith<$Res> {
  factory $BasicCopyWith(Basic value, $Res Function(Basic) then) =
      _$BasicCopyWithImpl<$Res>;
}

/// @nodoc
class _$BasicCopyWithImpl<$Res> extends _$PremiumStateCopyWithImpl<$Res>
    implements $BasicCopyWith<$Res> {
  _$BasicCopyWithImpl(Basic _value, $Res Function(Basic) _then)
      : super(_value, (v) => _then(v as Basic));

  @override
  Basic get _value => super._value as Basic;
}

/// @nodoc

class _$Basic implements Basic {
  const _$Basic();

  @override
  String toString() {
    return 'PremiumState.basic()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Basic);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() premium,
    required TResult Function() basic,
    required TResult Function() pending,
    required TResult Function() upgrade,
    required TResult Function() downgrade,
    required TResult Function() cancel,
  }) {
    return basic();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? premium,
    TResult Function()? basic,
    TResult Function()? pending,
    TResult Function()? upgrade,
    TResult Function()? downgrade,
    TResult Function()? cancel,
  }) {
    return basic?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? premium,
    TResult Function()? basic,
    TResult Function()? pending,
    TResult Function()? upgrade,
    TResult Function()? downgrade,
    TResult Function()? cancel,
    required TResult orElse(),
  }) {
    if (basic != null) {
      return basic();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Premium value) premium,
    required TResult Function(Basic value) basic,
    required TResult Function(Pending value) pending,
    required TResult Function(Upgrading value) upgrade,
    required TResult Function(Downgrading value) downgrade,
    required TResult Function(Cancel value) cancel,
  }) {
    return basic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Premium value)? premium,
    TResult Function(Basic value)? basic,
    TResult Function(Pending value)? pending,
    TResult Function(Upgrading value)? upgrade,
    TResult Function(Downgrading value)? downgrade,
    TResult Function(Cancel value)? cancel,
  }) {
    return basic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Premium value)? premium,
    TResult Function(Basic value)? basic,
    TResult Function(Pending value)? pending,
    TResult Function(Upgrading value)? upgrade,
    TResult Function(Downgrading value)? downgrade,
    TResult Function(Cancel value)? cancel,
    required TResult orElse(),
  }) {
    if (basic != null) {
      return basic(this);
    }
    return orElse();
  }
}

abstract class Basic implements PremiumState {
  const factory Basic() = _$Basic;
}

/// @nodoc
abstract class $PendingCopyWith<$Res> {
  factory $PendingCopyWith(Pending value, $Res Function(Pending) then) =
      _$PendingCopyWithImpl<$Res>;
}

/// @nodoc
class _$PendingCopyWithImpl<$Res> extends _$PremiumStateCopyWithImpl<$Res>
    implements $PendingCopyWith<$Res> {
  _$PendingCopyWithImpl(Pending _value, $Res Function(Pending) _then)
      : super(_value, (v) => _then(v as Pending));

  @override
  Pending get _value => super._value as Pending;
}

/// @nodoc

class _$Pending implements Pending {
  const _$Pending();

  @override
  String toString() {
    return 'PremiumState.pending()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Pending);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() premium,
    required TResult Function() basic,
    required TResult Function() pending,
    required TResult Function() upgrade,
    required TResult Function() downgrade,
    required TResult Function() cancel,
  }) {
    return pending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? premium,
    TResult Function()? basic,
    TResult Function()? pending,
    TResult Function()? upgrade,
    TResult Function()? downgrade,
    TResult Function()? cancel,
  }) {
    return pending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? premium,
    TResult Function()? basic,
    TResult Function()? pending,
    TResult Function()? upgrade,
    TResult Function()? downgrade,
    TResult Function()? cancel,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Premium value) premium,
    required TResult Function(Basic value) basic,
    required TResult Function(Pending value) pending,
    required TResult Function(Upgrading value) upgrade,
    required TResult Function(Downgrading value) downgrade,
    required TResult Function(Cancel value) cancel,
  }) {
    return pending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Premium value)? premium,
    TResult Function(Basic value)? basic,
    TResult Function(Pending value)? pending,
    TResult Function(Upgrading value)? upgrade,
    TResult Function(Downgrading value)? downgrade,
    TResult Function(Cancel value)? cancel,
  }) {
    return pending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Premium value)? premium,
    TResult Function(Basic value)? basic,
    TResult Function(Pending value)? pending,
    TResult Function(Upgrading value)? upgrade,
    TResult Function(Downgrading value)? downgrade,
    TResult Function(Cancel value)? cancel,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(this);
    }
    return orElse();
  }
}

abstract class Pending implements PremiumState {
  const factory Pending() = _$Pending;
}

/// @nodoc
abstract class $UpgradingCopyWith<$Res> {
  factory $UpgradingCopyWith(Upgrading value, $Res Function(Upgrading) then) =
      _$UpgradingCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpgradingCopyWithImpl<$Res> extends _$PremiumStateCopyWithImpl<$Res>
    implements $UpgradingCopyWith<$Res> {
  _$UpgradingCopyWithImpl(Upgrading _value, $Res Function(Upgrading) _then)
      : super(_value, (v) => _then(v as Upgrading));

  @override
  Upgrading get _value => super._value as Upgrading;
}

/// @nodoc

class _$Upgrading implements Upgrading {
  const _$Upgrading();

  @override
  String toString() {
    return 'PremiumState.upgrade()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Upgrading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() premium,
    required TResult Function() basic,
    required TResult Function() pending,
    required TResult Function() upgrade,
    required TResult Function() downgrade,
    required TResult Function() cancel,
  }) {
    return upgrade();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? premium,
    TResult Function()? basic,
    TResult Function()? pending,
    TResult Function()? upgrade,
    TResult Function()? downgrade,
    TResult Function()? cancel,
  }) {
    return upgrade?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? premium,
    TResult Function()? basic,
    TResult Function()? pending,
    TResult Function()? upgrade,
    TResult Function()? downgrade,
    TResult Function()? cancel,
    required TResult orElse(),
  }) {
    if (upgrade != null) {
      return upgrade();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Premium value) premium,
    required TResult Function(Basic value) basic,
    required TResult Function(Pending value) pending,
    required TResult Function(Upgrading value) upgrade,
    required TResult Function(Downgrading value) downgrade,
    required TResult Function(Cancel value) cancel,
  }) {
    return upgrade(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Premium value)? premium,
    TResult Function(Basic value)? basic,
    TResult Function(Pending value)? pending,
    TResult Function(Upgrading value)? upgrade,
    TResult Function(Downgrading value)? downgrade,
    TResult Function(Cancel value)? cancel,
  }) {
    return upgrade?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Premium value)? premium,
    TResult Function(Basic value)? basic,
    TResult Function(Pending value)? pending,
    TResult Function(Upgrading value)? upgrade,
    TResult Function(Downgrading value)? downgrade,
    TResult Function(Cancel value)? cancel,
    required TResult orElse(),
  }) {
    if (upgrade != null) {
      return upgrade(this);
    }
    return orElse();
  }
}

abstract class Upgrading implements PremiumState {
  const factory Upgrading() = _$Upgrading;
}

/// @nodoc
abstract class $DowngradingCopyWith<$Res> {
  factory $DowngradingCopyWith(
          Downgrading value, $Res Function(Downgrading) then) =
      _$DowngradingCopyWithImpl<$Res>;
}

/// @nodoc
class _$DowngradingCopyWithImpl<$Res> extends _$PremiumStateCopyWithImpl<$Res>
    implements $DowngradingCopyWith<$Res> {
  _$DowngradingCopyWithImpl(
      Downgrading _value, $Res Function(Downgrading) _then)
      : super(_value, (v) => _then(v as Downgrading));

  @override
  Downgrading get _value => super._value as Downgrading;
}

/// @nodoc

class _$Downgrading implements Downgrading {
  const _$Downgrading();

  @override
  String toString() {
    return 'PremiumState.downgrade()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Downgrading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() premium,
    required TResult Function() basic,
    required TResult Function() pending,
    required TResult Function() upgrade,
    required TResult Function() downgrade,
    required TResult Function() cancel,
  }) {
    return downgrade();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? premium,
    TResult Function()? basic,
    TResult Function()? pending,
    TResult Function()? upgrade,
    TResult Function()? downgrade,
    TResult Function()? cancel,
  }) {
    return downgrade?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? premium,
    TResult Function()? basic,
    TResult Function()? pending,
    TResult Function()? upgrade,
    TResult Function()? downgrade,
    TResult Function()? cancel,
    required TResult orElse(),
  }) {
    if (downgrade != null) {
      return downgrade();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Premium value) premium,
    required TResult Function(Basic value) basic,
    required TResult Function(Pending value) pending,
    required TResult Function(Upgrading value) upgrade,
    required TResult Function(Downgrading value) downgrade,
    required TResult Function(Cancel value) cancel,
  }) {
    return downgrade(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Premium value)? premium,
    TResult Function(Basic value)? basic,
    TResult Function(Pending value)? pending,
    TResult Function(Upgrading value)? upgrade,
    TResult Function(Downgrading value)? downgrade,
    TResult Function(Cancel value)? cancel,
  }) {
    return downgrade?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Premium value)? premium,
    TResult Function(Basic value)? basic,
    TResult Function(Pending value)? pending,
    TResult Function(Upgrading value)? upgrade,
    TResult Function(Downgrading value)? downgrade,
    TResult Function(Cancel value)? cancel,
    required TResult orElse(),
  }) {
    if (downgrade != null) {
      return downgrade(this);
    }
    return orElse();
  }
}

abstract class Downgrading implements PremiumState {
  const factory Downgrading() = _$Downgrading;
}

/// @nodoc
abstract class $CancelCopyWith<$Res> {
  factory $CancelCopyWith(Cancel value, $Res Function(Cancel) then) =
      _$CancelCopyWithImpl<$Res>;
}

/// @nodoc
class _$CancelCopyWithImpl<$Res> extends _$PremiumStateCopyWithImpl<$Res>
    implements $CancelCopyWith<$Res> {
  _$CancelCopyWithImpl(Cancel _value, $Res Function(Cancel) _then)
      : super(_value, (v) => _then(v as Cancel));

  @override
  Cancel get _value => super._value as Cancel;
}

/// @nodoc

class _$Cancel implements Cancel {
  const _$Cancel();

  @override
  String toString() {
    return 'PremiumState.cancel()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Cancel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() premium,
    required TResult Function() basic,
    required TResult Function() pending,
    required TResult Function() upgrade,
    required TResult Function() downgrade,
    required TResult Function() cancel,
  }) {
    return cancel();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? premium,
    TResult Function()? basic,
    TResult Function()? pending,
    TResult Function()? upgrade,
    TResult Function()? downgrade,
    TResult Function()? cancel,
  }) {
    return cancel?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? premium,
    TResult Function()? basic,
    TResult Function()? pending,
    TResult Function()? upgrade,
    TResult Function()? downgrade,
    TResult Function()? cancel,
    required TResult orElse(),
  }) {
    if (cancel != null) {
      return cancel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Premium value) premium,
    required TResult Function(Basic value) basic,
    required TResult Function(Pending value) pending,
    required TResult Function(Upgrading value) upgrade,
    required TResult Function(Downgrading value) downgrade,
    required TResult Function(Cancel value) cancel,
  }) {
    return cancel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Premium value)? premium,
    TResult Function(Basic value)? basic,
    TResult Function(Pending value)? pending,
    TResult Function(Upgrading value)? upgrade,
    TResult Function(Downgrading value)? downgrade,
    TResult Function(Cancel value)? cancel,
  }) {
    return cancel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Premium value)? premium,
    TResult Function(Basic value)? basic,
    TResult Function(Pending value)? pending,
    TResult Function(Upgrading value)? upgrade,
    TResult Function(Downgrading value)? downgrade,
    TResult Function(Cancel value)? cancel,
    required TResult orElse(),
  }) {
    if (cancel != null) {
      return cancel(this);
    }
    return orElse();
  }
}

abstract class Cancel implements PremiumState {
  const factory Cancel() = _$Cancel;
}
