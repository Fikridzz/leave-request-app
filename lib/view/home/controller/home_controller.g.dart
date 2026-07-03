// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getEmployeeFormHash() => r'df82bd9118e22ecaf86e333aea7401b8ec0444ba';

/// See also [getEmployeeForm].
@ProviderFor(getEmployeeForm)
final getEmployeeFormProvider =
    AutoDisposeFutureProvider<List<EmployeeForm>>.internal(
      getEmployeeForm,
      name: r'getEmployeeFormProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$getEmployeeFormHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetEmployeeFormRef = AutoDisposeFutureProviderRef<List<EmployeeForm>>;
String _$getEmployeeFormStatusHash() =>
    r'fe44bcbfc5c3266a26fc88506c6a472e92fa6b20';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [getEmployeeFormStatus].
@ProviderFor(getEmployeeFormStatus)
const getEmployeeFormStatusProvider = GetEmployeeFormStatusFamily();

/// See also [getEmployeeFormStatus].
class GetEmployeeFormStatusFamily
    extends Family<AsyncValue<List<EmployeeForm>>> {
  /// See also [getEmployeeFormStatus].
  const GetEmployeeFormStatusFamily();

  /// See also [getEmployeeFormStatus].
  GetEmployeeFormStatusProvider call(String status) {
    return GetEmployeeFormStatusProvider(status);
  }

  @override
  GetEmployeeFormStatusProvider getProviderOverride(
    covariant GetEmployeeFormStatusProvider provider,
  ) {
    return call(provider.status);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getEmployeeFormStatusProvider';
}

/// See also [getEmployeeFormStatus].
class GetEmployeeFormStatusProvider
    extends AutoDisposeFutureProvider<List<EmployeeForm>> {
  /// See also [getEmployeeFormStatus].
  GetEmployeeFormStatusProvider(String status)
    : this._internal(
        (ref) => getEmployeeFormStatus(ref as GetEmployeeFormStatusRef, status),
        from: getEmployeeFormStatusProvider,
        name: r'getEmployeeFormStatusProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$getEmployeeFormStatusHash,
        dependencies: GetEmployeeFormStatusFamily._dependencies,
        allTransitiveDependencies:
            GetEmployeeFormStatusFamily._allTransitiveDependencies,
        status: status,
      );

  GetEmployeeFormStatusProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.status,
  }) : super.internal();

  final String status;

  @override
  Override overrideWith(
    FutureOr<List<EmployeeForm>> Function(GetEmployeeFormStatusRef provider)
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetEmployeeFormStatusProvider._internal(
        (ref) => create(ref as GetEmployeeFormStatusRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        status: status,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<EmployeeForm>> createElement() {
    return _GetEmployeeFormStatusProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetEmployeeFormStatusProvider && other.status == status;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, status.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetEmployeeFormStatusRef
    on AutoDisposeFutureProviderRef<List<EmployeeForm>> {
  /// The parameter `status` of this provider.
  String get status;
}

class _GetEmployeeFormStatusProviderElement
    extends AutoDisposeFutureProviderElement<List<EmployeeForm>>
    with GetEmployeeFormStatusRef {
  _GetEmployeeFormStatusProviderElement(super.provider);

  @override
  String get status => (origin as GetEmployeeFormStatusProvider).status;
}

String _$profileControllerHash() => r'a0efbdb853fd0167d69f75f1a628eb8e909ae33a';

/// See also [ProfileController].
@ProviderFor(ProfileController)
final profileControllerProvider =
    AutoDisposeAsyncNotifierProvider<ProfileController, void>.internal(
      ProfileController.new,
      name: r'profileControllerProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$profileControllerHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$ProfileController = AutoDisposeAsyncNotifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
