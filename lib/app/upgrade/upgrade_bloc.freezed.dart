// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'upgrade_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UpgradeEventTearOff {
  const _$UpgradeEventTearOff();

  UpgradeAccount upgradeAccount(String token, String account,
      [bool testing = false]) {
    return UpgradeAccount(
      token,
      account,
      testing,
    );
  }

  DowngradeAccount downgradeAccount(String token, String account,
      [bool testing = false]) {
    return DowngradeAccount(
      token,
      account,
      testing,
    );
  }

  CheckAccount checkAccount(String account, [bool testing = false]) {
    return CheckAccount(
      account,
      testing,
    );
  }
}

/// @nodoc
const $UpgradeEvent = _$UpgradeEventTearOff();

/// @nodoc
mixin _$UpgradeEvent {
  String get account => throw _privateConstructorUsedError;
  bool get testing => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token, String account, bool testing)
        upgradeAccount,
    required TResult Function(String token, String account, bool testing)
        downgradeAccount,
    required TResult Function(String account, bool testing) checkAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token, String account, bool testing)?
        upgradeAccount,
    TResult Function(String token, String account, bool testing)?
        downgradeAccount,
    TResult Function(String account, bool testing)? checkAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token, String account, bool testing)?
        upgradeAccount,
    TResult Function(String token, String account, bool testing)?
        downgradeAccount,
    TResult Function(String account, bool testing)? checkAccount,
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
  $UpgradeEventCopyWith<UpgradeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpgradeEventCopyWith<$Res> {
  factory $UpgradeEventCopyWith(
          UpgradeEvent value, $Res Function(UpgradeEvent) then) =
      _$UpgradeEventCopyWithImpl<$Res>;
  $Res call({String account, bool testing});
}

/// @nodoc
class _$UpgradeEventCopyWithImpl<$Res> implements $UpgradeEventCopyWith<$Res> {
  _$UpgradeEventCopyWithImpl(this._value, this._then);

  final UpgradeEvent _value;
  // ignore: unused_field
  final $Res Function(UpgradeEvent) _then;

  @override
  $Res call({
    Object? account = freezed,
    Object? testing = freezed,
  }) {
    return _then(_value.copyWith(
      account: account == freezed
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
      testing: testing == freezed
          ? _value.testing
          : testing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class $UpgradeAccountCopyWith<$Res>
    implements $UpgradeEventCopyWith<$Res> {
  factory $UpgradeAccountCopyWith(
          UpgradeAccount value, $Res Function(UpgradeAccount) then) =
      _$UpgradeAccountCopyWithImpl<$Res>;
  @override
  $Res call({String token, String account, bool testing});
}

/// @nodoc
class _$UpgradeAccountCopyWithImpl<$Res>
    extends _$UpgradeEventCopyWithImpl<$Res>
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
    Object? testing = freezed,
  }) {
    return _then(UpgradeAccount(
      token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      account == freezed
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
      testing == freezed
          ? _value.testing
          : testing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UpgradeAccount implements UpgradeAccount {
  const _$UpgradeAccount(this.token, this.account, [this.testing = false]);

  @override
  final String token;
  @override
  final String account;
  @JsonKey(defaultValue: false)
  @override
  final bool testing;

  @override
  String toString() {
    return 'UpgradeEvent.upgradeAccount(token: $token, account: $account, testing: $testing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpgradeAccount &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.account, account) ||
                const DeepCollectionEquality()
                    .equals(other.account, account)) &&
            (identical(other.testing, testing) ||
                const DeepCollectionEquality().equals(other.testing, testing)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(account) ^
      const DeepCollectionEquality().hash(testing);

  @JsonKey(ignore: true)
  @override
  $UpgradeAccountCopyWith<UpgradeAccount> get copyWith =>
      _$UpgradeAccountCopyWithImpl<UpgradeAccount>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token, String account, bool testing)
        upgradeAccount,
    required TResult Function(String token, String account, bool testing)
        downgradeAccount,
    required TResult Function(String account, bool testing) checkAccount,
  }) {
    return upgradeAccount(token, account, testing);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token, String account, bool testing)?
        upgradeAccount,
    TResult Function(String token, String account, bool testing)?
        downgradeAccount,
    TResult Function(String account, bool testing)? checkAccount,
  }) {
    return upgradeAccount?.call(token, account, testing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token, String account, bool testing)?
        upgradeAccount,
    TResult Function(String token, String account, bool testing)?
        downgradeAccount,
    TResult Function(String account, bool testing)? checkAccount,
    required TResult orElse(),
  }) {
    if (upgradeAccount != null) {
      return upgradeAccount(token, account, testing);
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

abstract class UpgradeAccount implements UpgradeEvent {
  const factory UpgradeAccount(String token, String account, [bool testing]) =
      _$UpgradeAccount;

  String get token => throw _privateConstructorUsedError;
  @override
  String get account => throw _privateConstructorUsedError;
  @override
  bool get testing => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $UpgradeAccountCopyWith<UpgradeAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DowngradeAccountCopyWith<$Res>
    implements $UpgradeEventCopyWith<$Res> {
  factory $DowngradeAccountCopyWith(
          DowngradeAccount value, $Res Function(DowngradeAccount) then) =
      _$DowngradeAccountCopyWithImpl<$Res>;
  @override
  $Res call({String token, String account, bool testing});
}

/// @nodoc
class _$DowngradeAccountCopyWithImpl<$Res>
    extends _$UpgradeEventCopyWithImpl<$Res>
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
    Object? testing = freezed,
  }) {
    return _then(DowngradeAccount(
      token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      account == freezed
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
      testing == freezed
          ? _value.testing
          : testing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DowngradeAccount implements DowngradeAccount {
  const _$DowngradeAccount(this.token, this.account, [this.testing = false]);

  @override
  final String token;
  @override
  final String account;
  @JsonKey(defaultValue: false)
  @override
  final bool testing;

  @override
  String toString() {
    return 'UpgradeEvent.downgradeAccount(token: $token, account: $account, testing: $testing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DowngradeAccount &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.account, account) ||
                const DeepCollectionEquality()
                    .equals(other.account, account)) &&
            (identical(other.testing, testing) ||
                const DeepCollectionEquality().equals(other.testing, testing)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(account) ^
      const DeepCollectionEquality().hash(testing);

  @JsonKey(ignore: true)
  @override
  $DowngradeAccountCopyWith<DowngradeAccount> get copyWith =>
      _$DowngradeAccountCopyWithImpl<DowngradeAccount>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token, String account, bool testing)
        upgradeAccount,
    required TResult Function(String token, String account, bool testing)
        downgradeAccount,
    required TResult Function(String account, bool testing) checkAccount,
  }) {
    return downgradeAccount(token, account, testing);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token, String account, bool testing)?
        upgradeAccount,
    TResult Function(String token, String account, bool testing)?
        downgradeAccount,
    TResult Function(String account, bool testing)? checkAccount,
  }) {
    return downgradeAccount?.call(token, account, testing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token, String account, bool testing)?
        upgradeAccount,
    TResult Function(String token, String account, bool testing)?
        downgradeAccount,
    TResult Function(String account, bool testing)? checkAccount,
    required TResult orElse(),
  }) {
    if (downgradeAccount != null) {
      return downgradeAccount(token, account, testing);
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

abstract class DowngradeAccount implements UpgradeEvent {
  const factory DowngradeAccount(String token, String account, [bool testing]) =
      _$DowngradeAccount;

  String get token => throw _privateConstructorUsedError;
  @override
  String get account => throw _privateConstructorUsedError;
  @override
  bool get testing => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $DowngradeAccountCopyWith<DowngradeAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckAccountCopyWith<$Res>
    implements $UpgradeEventCopyWith<$Res> {
  factory $CheckAccountCopyWith(
          CheckAccount value, $Res Function(CheckAccount) then) =
      _$CheckAccountCopyWithImpl<$Res>;
  @override
  $Res call({String account, bool testing});
}

/// @nodoc
class _$CheckAccountCopyWithImpl<$Res> extends _$UpgradeEventCopyWithImpl<$Res>
    implements $CheckAccountCopyWith<$Res> {
  _$CheckAccountCopyWithImpl(
      CheckAccount _value, $Res Function(CheckAccount) _then)
      : super(_value, (v) => _then(v as CheckAccount));

  @override
  CheckAccount get _value => super._value as CheckAccount;

  @override
  $Res call({
    Object? account = freezed,
    Object? testing = freezed,
  }) {
    return _then(CheckAccount(
      account == freezed
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
      testing == freezed
          ? _value.testing
          : testing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CheckAccount implements CheckAccount {
  const _$CheckAccount(this.account, [this.testing = false]);

  @override
  final String account;
  @JsonKey(defaultValue: false)
  @override
  final bool testing;

  @override
  String toString() {
    return 'UpgradeEvent.checkAccount(account: $account, testing: $testing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CheckAccount &&
            (identical(other.account, account) ||
                const DeepCollectionEquality()
                    .equals(other.account, account)) &&
            (identical(other.testing, testing) ||
                const DeepCollectionEquality().equals(other.testing, testing)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(account) ^
      const DeepCollectionEquality().hash(testing);

  @JsonKey(ignore: true)
  @override
  $CheckAccountCopyWith<CheckAccount> get copyWith =>
      _$CheckAccountCopyWithImpl<CheckAccount>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token, String account, bool testing)
        upgradeAccount,
    required TResult Function(String token, String account, bool testing)
        downgradeAccount,
    required TResult Function(String account, bool testing) checkAccount,
  }) {
    return checkAccount(account, testing);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token, String account, bool testing)?
        upgradeAccount,
    TResult Function(String token, String account, bool testing)?
        downgradeAccount,
    TResult Function(String account, bool testing)? checkAccount,
  }) {
    return checkAccount?.call(account, testing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token, String account, bool testing)?
        upgradeAccount,
    TResult Function(String token, String account, bool testing)?
        downgradeAccount,
    TResult Function(String account, bool testing)? checkAccount,
    required TResult orElse(),
  }) {
    if (checkAccount != null) {
      return checkAccount(account, testing);
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

abstract class CheckAccount implements UpgradeEvent {
  const factory CheckAccount(String account, [bool testing]) = _$CheckAccount;

  @override
  String get account => throw _privateConstructorUsedError;
  @override
  bool get testing => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $CheckAccountCopyWith<CheckAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$UpgradeStateTearOff {
  const _$UpgradeStateTearOff();

  Premium premium(SuperfluidUser user) {
    return Premium(
      user,
    );
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
}

/// @nodoc
const $UpgradeState = _$UpgradeStateTearOff();

/// @nodoc
mixin _$UpgradeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SuperfluidUser user) premium,
    required TResult Function() basic,
    required TResult Function() pending,
    required TResult Function() upgrade,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SuperfluidUser user)? premium,
    TResult Function()? basic,
    TResult Function()? pending,
    TResult Function()? upgrade,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SuperfluidUser user)? premium,
    TResult Function()? basic,
    TResult Function()? pending,
    TResult Function()? upgrade,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Premium value) premium,
    required TResult Function(Basic value) basic,
    required TResult Function(Pending value) pending,
    required TResult Function(Upgrading value) upgrade,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Premium value)? premium,
    TResult Function(Basic value)? basic,
    TResult Function(Pending value)? pending,
    TResult Function(Upgrading value)? upgrade,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Premium value)? premium,
    TResult Function(Basic value)? basic,
    TResult Function(Pending value)? pending,
    TResult Function(Upgrading value)? upgrade,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpgradeStateCopyWith<$Res> {
  factory $UpgradeStateCopyWith(
          UpgradeState value, $Res Function(UpgradeState) then) =
      _$UpgradeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpgradeStateCopyWithImpl<$Res> implements $UpgradeStateCopyWith<$Res> {
  _$UpgradeStateCopyWithImpl(this._value, this._then);

  final UpgradeState _value;
  // ignore: unused_field
  final $Res Function(UpgradeState) _then;
}

/// @nodoc
abstract class $PremiumCopyWith<$Res> {
  factory $PremiumCopyWith(Premium value, $Res Function(Premium) then) =
      _$PremiumCopyWithImpl<$Res>;
  $Res call({SuperfluidUser user});

  $SuperfluidUserCopyWith<$Res> get user;
}

/// @nodoc
class _$PremiumCopyWithImpl<$Res> extends _$UpgradeStateCopyWithImpl<$Res>
    implements $PremiumCopyWith<$Res> {
  _$PremiumCopyWithImpl(Premium _value, $Res Function(Premium) _then)
      : super(_value, (v) => _then(v as Premium));

  @override
  Premium get _value => super._value as Premium;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(Premium(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as SuperfluidUser,
    ));
  }

  @override
  $SuperfluidUserCopyWith<$Res> get user {
    return $SuperfluidUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$Premium implements Premium {
  const _$Premium(this.user);

  @override
  final SuperfluidUser user;

  @override
  String toString() {
    return 'UpgradeState.premium(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Premium &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $PremiumCopyWith<Premium> get copyWith =>
      _$PremiumCopyWithImpl<Premium>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SuperfluidUser user) premium,
    required TResult Function() basic,
    required TResult Function() pending,
    required TResult Function() upgrade,
  }) {
    return premium(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SuperfluidUser user)? premium,
    TResult Function()? basic,
    TResult Function()? pending,
    TResult Function()? upgrade,
  }) {
    return premium?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SuperfluidUser user)? premium,
    TResult Function()? basic,
    TResult Function()? pending,
    TResult Function()? upgrade,
    required TResult orElse(),
  }) {
    if (premium != null) {
      return premium(user);
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
    required TResult orElse(),
  }) {
    if (premium != null) {
      return premium(this);
    }
    return orElse();
  }
}

abstract class Premium implements UpgradeState {
  const factory Premium(SuperfluidUser user) = _$Premium;

  SuperfluidUser get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PremiumCopyWith<Premium> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasicCopyWith<$Res> {
  factory $BasicCopyWith(Basic value, $Res Function(Basic) then) =
      _$BasicCopyWithImpl<$Res>;
}

/// @nodoc
class _$BasicCopyWithImpl<$Res> extends _$UpgradeStateCopyWithImpl<$Res>
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
    return 'UpgradeState.basic()';
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
    required TResult Function(SuperfluidUser user) premium,
    required TResult Function() basic,
    required TResult Function() pending,
    required TResult Function() upgrade,
  }) {
    return basic();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SuperfluidUser user)? premium,
    TResult Function()? basic,
    TResult Function()? pending,
    TResult Function()? upgrade,
  }) {
    return basic?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SuperfluidUser user)? premium,
    TResult Function()? basic,
    TResult Function()? pending,
    TResult Function()? upgrade,
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
    required TResult orElse(),
  }) {
    if (basic != null) {
      return basic(this);
    }
    return orElse();
  }
}

abstract class Basic implements UpgradeState {
  const factory Basic() = _$Basic;
}

/// @nodoc
abstract class $PendingCopyWith<$Res> {
  factory $PendingCopyWith(Pending value, $Res Function(Pending) then) =
      _$PendingCopyWithImpl<$Res>;
}

/// @nodoc
class _$PendingCopyWithImpl<$Res> extends _$UpgradeStateCopyWithImpl<$Res>
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
    return 'UpgradeState.pending()';
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
    required TResult Function(SuperfluidUser user) premium,
    required TResult Function() basic,
    required TResult Function() pending,
    required TResult Function() upgrade,
  }) {
    return pending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SuperfluidUser user)? premium,
    TResult Function()? basic,
    TResult Function()? pending,
    TResult Function()? upgrade,
  }) {
    return pending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SuperfluidUser user)? premium,
    TResult Function()? basic,
    TResult Function()? pending,
    TResult Function()? upgrade,
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
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(this);
    }
    return orElse();
  }
}

abstract class Pending implements UpgradeState {
  const factory Pending() = _$Pending;
}

/// @nodoc
abstract class $UpgradingCopyWith<$Res> {
  factory $UpgradingCopyWith(Upgrading value, $Res Function(Upgrading) then) =
      _$UpgradingCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpgradingCopyWithImpl<$Res> extends _$UpgradeStateCopyWithImpl<$Res>
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
    return 'UpgradeState.upgrade()';
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
    required TResult Function(SuperfluidUser user) premium,
    required TResult Function() basic,
    required TResult Function() pending,
    required TResult Function() upgrade,
  }) {
    return upgrade();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SuperfluidUser user)? premium,
    TResult Function()? basic,
    TResult Function()? pending,
    TResult Function()? upgrade,
  }) {
    return upgrade?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SuperfluidUser user)? premium,
    TResult Function()? basic,
    TResult Function()? pending,
    TResult Function()? upgrade,
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
    required TResult orElse(),
  }) {
    if (upgrade != null) {
      return upgrade(this);
    }
    return orElse();
  }
}

abstract class Upgrading implements UpgradeState {
  const factory Upgrading() = _$Upgrading;
}
