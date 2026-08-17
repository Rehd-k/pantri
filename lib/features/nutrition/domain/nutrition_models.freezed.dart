// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nutrition_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AllergyOption {

 String get id; String get name; String get slug; bool get isActive; int get sortOrder;
/// Create a copy of AllergyOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AllergyOptionCopyWith<AllergyOption> get copyWith => _$AllergyOptionCopyWithImpl<AllergyOption>(this as AllergyOption, _$identity);

  /// Serializes this AllergyOption to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AllergyOption&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,isActive,sortOrder);

@override
String toString() {
  return 'AllergyOption(id: $id, name: $name, slug: $slug, isActive: $isActive, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class $AllergyOptionCopyWith<$Res>  {
  factory $AllergyOptionCopyWith(AllergyOption value, $Res Function(AllergyOption) _then) = _$AllergyOptionCopyWithImpl;
@useResult
$Res call({
 String id, String name, String slug, bool isActive, int sortOrder
});




}
/// @nodoc
class _$AllergyOptionCopyWithImpl<$Res>
    implements $AllergyOptionCopyWith<$Res> {
  _$AllergyOptionCopyWithImpl(this._self, this._then);

  final AllergyOption _self;
  final $Res Function(AllergyOption) _then;

/// Create a copy of AllergyOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? slug = null,Object? isActive = null,Object? sortOrder = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [AllergyOption].
extension AllergyOptionPatterns on AllergyOption {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AllergyOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AllergyOption() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AllergyOption value)  $default,){
final _that = this;
switch (_that) {
case _AllergyOption():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AllergyOption value)?  $default,){
final _that = this;
switch (_that) {
case _AllergyOption() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String slug,  bool isActive,  int sortOrder)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AllergyOption() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.isActive,_that.sortOrder);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String slug,  bool isActive,  int sortOrder)  $default,) {final _that = this;
switch (_that) {
case _AllergyOption():
return $default(_that.id,_that.name,_that.slug,_that.isActive,_that.sortOrder);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String slug,  bool isActive,  int sortOrder)?  $default,) {final _that = this;
switch (_that) {
case _AllergyOption() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.isActive,_that.sortOrder);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AllergyOption implements AllergyOption {
  const _AllergyOption({required this.id, required this.name, required this.slug, required this.isActive, required this.sortOrder});
  factory _AllergyOption.fromJson(Map<String, dynamic> json) => _$AllergyOptionFromJson(json);

@override final  String id;
@override final  String name;
@override final  String slug;
@override final  bool isActive;
@override final  int sortOrder;

/// Create a copy of AllergyOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AllergyOptionCopyWith<_AllergyOption> get copyWith => __$AllergyOptionCopyWithImpl<_AllergyOption>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AllergyOptionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AllergyOption&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,isActive,sortOrder);

@override
String toString() {
  return 'AllergyOption(id: $id, name: $name, slug: $slug, isActive: $isActive, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class _$AllergyOptionCopyWith<$Res> implements $AllergyOptionCopyWith<$Res> {
  factory _$AllergyOptionCopyWith(_AllergyOption value, $Res Function(_AllergyOption) _then) = __$AllergyOptionCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String slug, bool isActive, int sortOrder
});




}
/// @nodoc
class __$AllergyOptionCopyWithImpl<$Res>
    implements _$AllergyOptionCopyWith<$Res> {
  __$AllergyOptionCopyWithImpl(this._self, this._then);

  final _AllergyOption _self;
  final $Res Function(_AllergyOption) _then;

/// Create a copy of AllergyOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? slug = null,Object? isActive = null,Object? sortOrder = null,}) {
  return _then(_AllergyOption(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$GoalOption {

 String get id; String get name; String get slug; String get description; String get iconKey; bool get isActive; int get sortOrder;
/// Create a copy of GoalOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GoalOptionCopyWith<GoalOption> get copyWith => _$GoalOptionCopyWithImpl<GoalOption>(this as GoalOption, _$identity);

  /// Serializes this GoalOption to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GoalOption&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.description, description) || other.description == description)&&(identical(other.iconKey, iconKey) || other.iconKey == iconKey)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,description,iconKey,isActive,sortOrder);

@override
String toString() {
  return 'GoalOption(id: $id, name: $name, slug: $slug, description: $description, iconKey: $iconKey, isActive: $isActive, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class $GoalOptionCopyWith<$Res>  {
  factory $GoalOptionCopyWith(GoalOption value, $Res Function(GoalOption) _then) = _$GoalOptionCopyWithImpl;
@useResult
$Res call({
 String id, String name, String slug, String description, String iconKey, bool isActive, int sortOrder
});




}
/// @nodoc
class _$GoalOptionCopyWithImpl<$Res>
    implements $GoalOptionCopyWith<$Res> {
  _$GoalOptionCopyWithImpl(this._self, this._then);

  final GoalOption _self;
  final $Res Function(GoalOption) _then;

/// Create a copy of GoalOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? slug = null,Object? description = null,Object? iconKey = null,Object? isActive = null,Object? sortOrder = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,iconKey: null == iconKey ? _self.iconKey : iconKey // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [GoalOption].
extension GoalOptionPatterns on GoalOption {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GoalOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GoalOption() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GoalOption value)  $default,){
final _that = this;
switch (_that) {
case _GoalOption():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GoalOption value)?  $default,){
final _that = this;
switch (_that) {
case _GoalOption() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String slug,  String description,  String iconKey,  bool isActive,  int sortOrder)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GoalOption() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.description,_that.iconKey,_that.isActive,_that.sortOrder);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String slug,  String description,  String iconKey,  bool isActive,  int sortOrder)  $default,) {final _that = this;
switch (_that) {
case _GoalOption():
return $default(_that.id,_that.name,_that.slug,_that.description,_that.iconKey,_that.isActive,_that.sortOrder);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String slug,  String description,  String iconKey,  bool isActive,  int sortOrder)?  $default,) {final _that = this;
switch (_that) {
case _GoalOption() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.description,_that.iconKey,_that.isActive,_that.sortOrder);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GoalOption implements GoalOption {
  const _GoalOption({required this.id, required this.name, required this.slug, required this.description, required this.iconKey, required this.isActive, required this.sortOrder});
  factory _GoalOption.fromJson(Map<String, dynamic> json) => _$GoalOptionFromJson(json);

@override final  String id;
@override final  String name;
@override final  String slug;
@override final  String description;
@override final  String iconKey;
@override final  bool isActive;
@override final  int sortOrder;

/// Create a copy of GoalOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GoalOptionCopyWith<_GoalOption> get copyWith => __$GoalOptionCopyWithImpl<_GoalOption>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GoalOptionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GoalOption&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.description, description) || other.description == description)&&(identical(other.iconKey, iconKey) || other.iconKey == iconKey)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,description,iconKey,isActive,sortOrder);

@override
String toString() {
  return 'GoalOption(id: $id, name: $name, slug: $slug, description: $description, iconKey: $iconKey, isActive: $isActive, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class _$GoalOptionCopyWith<$Res> implements $GoalOptionCopyWith<$Res> {
  factory _$GoalOptionCopyWith(_GoalOption value, $Res Function(_GoalOption) _then) = __$GoalOptionCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String slug, String description, String iconKey, bool isActive, int sortOrder
});




}
/// @nodoc
class __$GoalOptionCopyWithImpl<$Res>
    implements _$GoalOptionCopyWith<$Res> {
  __$GoalOptionCopyWithImpl(this._self, this._then);

  final _GoalOption _self;
  final $Res Function(_GoalOption) _then;

/// Create a copy of GoalOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? slug = null,Object? description = null,Object? iconKey = null,Object? isActive = null,Object? sortOrder = null,}) {
  return _then(_GoalOption(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,iconKey: null == iconKey ? _self.iconKey : iconKey // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$NutritionCatalog {

 List<AllergyOption> get allergies; List<GoalOption> get goals;
/// Create a copy of NutritionCatalog
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NutritionCatalogCopyWith<NutritionCatalog> get copyWith => _$NutritionCatalogCopyWithImpl<NutritionCatalog>(this as NutritionCatalog, _$identity);

  /// Serializes this NutritionCatalog to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NutritionCatalog&&const DeepCollectionEquality().equals(other.allergies, allergies)&&const DeepCollectionEquality().equals(other.goals, goals));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(allergies),const DeepCollectionEquality().hash(goals));

@override
String toString() {
  return 'NutritionCatalog(allergies: $allergies, goals: $goals)';
}


}

/// @nodoc
abstract mixin class $NutritionCatalogCopyWith<$Res>  {
  factory $NutritionCatalogCopyWith(NutritionCatalog value, $Res Function(NutritionCatalog) _then) = _$NutritionCatalogCopyWithImpl;
@useResult
$Res call({
 List<AllergyOption> allergies, List<GoalOption> goals
});




}
/// @nodoc
class _$NutritionCatalogCopyWithImpl<$Res>
    implements $NutritionCatalogCopyWith<$Res> {
  _$NutritionCatalogCopyWithImpl(this._self, this._then);

  final NutritionCatalog _self;
  final $Res Function(NutritionCatalog) _then;

/// Create a copy of NutritionCatalog
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? allergies = null,Object? goals = null,}) {
  return _then(_self.copyWith(
allergies: null == allergies ? _self.allergies : allergies // ignore: cast_nullable_to_non_nullable
as List<AllergyOption>,goals: null == goals ? _self.goals : goals // ignore: cast_nullable_to_non_nullable
as List<GoalOption>,
  ));
}

}


/// Adds pattern-matching-related methods to [NutritionCatalog].
extension NutritionCatalogPatterns on NutritionCatalog {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NutritionCatalog value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NutritionCatalog() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NutritionCatalog value)  $default,){
final _that = this;
switch (_that) {
case _NutritionCatalog():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NutritionCatalog value)?  $default,){
final _that = this;
switch (_that) {
case _NutritionCatalog() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<AllergyOption> allergies,  List<GoalOption> goals)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NutritionCatalog() when $default != null:
return $default(_that.allergies,_that.goals);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<AllergyOption> allergies,  List<GoalOption> goals)  $default,) {final _that = this;
switch (_that) {
case _NutritionCatalog():
return $default(_that.allergies,_that.goals);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<AllergyOption> allergies,  List<GoalOption> goals)?  $default,) {final _that = this;
switch (_that) {
case _NutritionCatalog() when $default != null:
return $default(_that.allergies,_that.goals);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NutritionCatalog implements NutritionCatalog {
  const _NutritionCatalog({required final  List<AllergyOption> allergies, required final  List<GoalOption> goals}): _allergies = allergies,_goals = goals;
  factory _NutritionCatalog.fromJson(Map<String, dynamic> json) => _$NutritionCatalogFromJson(json);

 final  List<AllergyOption> _allergies;
@override List<AllergyOption> get allergies {
  if (_allergies is EqualUnmodifiableListView) return _allergies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_allergies);
}

 final  List<GoalOption> _goals;
@override List<GoalOption> get goals {
  if (_goals is EqualUnmodifiableListView) return _goals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_goals);
}


/// Create a copy of NutritionCatalog
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NutritionCatalogCopyWith<_NutritionCatalog> get copyWith => __$NutritionCatalogCopyWithImpl<_NutritionCatalog>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NutritionCatalogToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NutritionCatalog&&const DeepCollectionEquality().equals(other._allergies, _allergies)&&const DeepCollectionEquality().equals(other._goals, _goals));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_allergies),const DeepCollectionEquality().hash(_goals));

@override
String toString() {
  return 'NutritionCatalog(allergies: $allergies, goals: $goals)';
}


}

/// @nodoc
abstract mixin class _$NutritionCatalogCopyWith<$Res> implements $NutritionCatalogCopyWith<$Res> {
  factory _$NutritionCatalogCopyWith(_NutritionCatalog value, $Res Function(_NutritionCatalog) _then) = __$NutritionCatalogCopyWithImpl;
@override @useResult
$Res call({
 List<AllergyOption> allergies, List<GoalOption> goals
});




}
/// @nodoc
class __$NutritionCatalogCopyWithImpl<$Res>
    implements _$NutritionCatalogCopyWith<$Res> {
  __$NutritionCatalogCopyWithImpl(this._self, this._then);

  final _NutritionCatalog _self;
  final $Res Function(_NutritionCatalog) _then;

/// Create a copy of NutritionCatalog
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? allergies = null,Object? goals = null,}) {
  return _then(_NutritionCatalog(
allergies: null == allergies ? _self._allergies : allergies // ignore: cast_nullable_to_non_nullable
as List<AllergyOption>,goals: null == goals ? _self._goals : goals // ignore: cast_nullable_to_non_nullable
as List<GoalOption>,
  ));
}


}


/// @nodoc
mixin _$HealthProfileAllergy {

 String get id; String? get allergyId; String? get allergyName; String? get customLabel;
/// Create a copy of HealthProfileAllergy
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HealthProfileAllergyCopyWith<HealthProfileAllergy> get copyWith => _$HealthProfileAllergyCopyWithImpl<HealthProfileAllergy>(this as HealthProfileAllergy, _$identity);

  /// Serializes this HealthProfileAllergy to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HealthProfileAllergy&&(identical(other.id, id) || other.id == id)&&(identical(other.allergyId, allergyId) || other.allergyId == allergyId)&&(identical(other.allergyName, allergyName) || other.allergyName == allergyName)&&(identical(other.customLabel, customLabel) || other.customLabel == customLabel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,allergyId,allergyName,customLabel);

@override
String toString() {
  return 'HealthProfileAllergy(id: $id, allergyId: $allergyId, allergyName: $allergyName, customLabel: $customLabel)';
}


}

/// @nodoc
abstract mixin class $HealthProfileAllergyCopyWith<$Res>  {
  factory $HealthProfileAllergyCopyWith(HealthProfileAllergy value, $Res Function(HealthProfileAllergy) _then) = _$HealthProfileAllergyCopyWithImpl;
@useResult
$Res call({
 String id, String? allergyId, String? allergyName, String? customLabel
});




}
/// @nodoc
class _$HealthProfileAllergyCopyWithImpl<$Res>
    implements $HealthProfileAllergyCopyWith<$Res> {
  _$HealthProfileAllergyCopyWithImpl(this._self, this._then);

  final HealthProfileAllergy _self;
  final $Res Function(HealthProfileAllergy) _then;

/// Create a copy of HealthProfileAllergy
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? allergyId = freezed,Object? allergyName = freezed,Object? customLabel = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,allergyId: freezed == allergyId ? _self.allergyId : allergyId // ignore: cast_nullable_to_non_nullable
as String?,allergyName: freezed == allergyName ? _self.allergyName : allergyName // ignore: cast_nullable_to_non_nullable
as String?,customLabel: freezed == customLabel ? _self.customLabel : customLabel // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [HealthProfileAllergy].
extension HealthProfileAllergyPatterns on HealthProfileAllergy {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HealthProfileAllergy value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HealthProfileAllergy() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HealthProfileAllergy value)  $default,){
final _that = this;
switch (_that) {
case _HealthProfileAllergy():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HealthProfileAllergy value)?  $default,){
final _that = this;
switch (_that) {
case _HealthProfileAllergy() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? allergyId,  String? allergyName,  String? customLabel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HealthProfileAllergy() when $default != null:
return $default(_that.id,_that.allergyId,_that.allergyName,_that.customLabel);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? allergyId,  String? allergyName,  String? customLabel)  $default,) {final _that = this;
switch (_that) {
case _HealthProfileAllergy():
return $default(_that.id,_that.allergyId,_that.allergyName,_that.customLabel);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? allergyId,  String? allergyName,  String? customLabel)?  $default,) {final _that = this;
switch (_that) {
case _HealthProfileAllergy() when $default != null:
return $default(_that.id,_that.allergyId,_that.allergyName,_that.customLabel);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HealthProfileAllergy implements HealthProfileAllergy {
  const _HealthProfileAllergy({required this.id, this.allergyId, this.allergyName, this.customLabel});
  factory _HealthProfileAllergy.fromJson(Map<String, dynamic> json) => _$HealthProfileAllergyFromJson(json);

@override final  String id;
@override final  String? allergyId;
@override final  String? allergyName;
@override final  String? customLabel;

/// Create a copy of HealthProfileAllergy
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HealthProfileAllergyCopyWith<_HealthProfileAllergy> get copyWith => __$HealthProfileAllergyCopyWithImpl<_HealthProfileAllergy>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HealthProfileAllergyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HealthProfileAllergy&&(identical(other.id, id) || other.id == id)&&(identical(other.allergyId, allergyId) || other.allergyId == allergyId)&&(identical(other.allergyName, allergyName) || other.allergyName == allergyName)&&(identical(other.customLabel, customLabel) || other.customLabel == customLabel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,allergyId,allergyName,customLabel);

@override
String toString() {
  return 'HealthProfileAllergy(id: $id, allergyId: $allergyId, allergyName: $allergyName, customLabel: $customLabel)';
}


}

/// @nodoc
abstract mixin class _$HealthProfileAllergyCopyWith<$Res> implements $HealthProfileAllergyCopyWith<$Res> {
  factory _$HealthProfileAllergyCopyWith(_HealthProfileAllergy value, $Res Function(_HealthProfileAllergy) _then) = __$HealthProfileAllergyCopyWithImpl;
@override @useResult
$Res call({
 String id, String? allergyId, String? allergyName, String? customLabel
});




}
/// @nodoc
class __$HealthProfileAllergyCopyWithImpl<$Res>
    implements _$HealthProfileAllergyCopyWith<$Res> {
  __$HealthProfileAllergyCopyWithImpl(this._self, this._then);

  final _HealthProfileAllergy _self;
  final $Res Function(_HealthProfileAllergy) _then;

/// Create a copy of HealthProfileAllergy
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? allergyId = freezed,Object? allergyName = freezed,Object? customLabel = freezed,}) {
  return _then(_HealthProfileAllergy(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,allergyId: freezed == allergyId ? _self.allergyId : allergyId // ignore: cast_nullable_to_non_nullable
as String?,allergyName: freezed == allergyName ? _self.allergyName : allergyName // ignore: cast_nullable_to_non_nullable
as String?,customLabel: freezed == customLabel ? _self.customLabel : customLabel // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$HealthProfileGoal {

 String get id; String? get goalId; String? get goalName; String? get customLabel;
/// Create a copy of HealthProfileGoal
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HealthProfileGoalCopyWith<HealthProfileGoal> get copyWith => _$HealthProfileGoalCopyWithImpl<HealthProfileGoal>(this as HealthProfileGoal, _$identity);

  /// Serializes this HealthProfileGoal to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HealthProfileGoal&&(identical(other.id, id) || other.id == id)&&(identical(other.goalId, goalId) || other.goalId == goalId)&&(identical(other.goalName, goalName) || other.goalName == goalName)&&(identical(other.customLabel, customLabel) || other.customLabel == customLabel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,goalId,goalName,customLabel);

@override
String toString() {
  return 'HealthProfileGoal(id: $id, goalId: $goalId, goalName: $goalName, customLabel: $customLabel)';
}


}

/// @nodoc
abstract mixin class $HealthProfileGoalCopyWith<$Res>  {
  factory $HealthProfileGoalCopyWith(HealthProfileGoal value, $Res Function(HealthProfileGoal) _then) = _$HealthProfileGoalCopyWithImpl;
@useResult
$Res call({
 String id, String? goalId, String? goalName, String? customLabel
});




}
/// @nodoc
class _$HealthProfileGoalCopyWithImpl<$Res>
    implements $HealthProfileGoalCopyWith<$Res> {
  _$HealthProfileGoalCopyWithImpl(this._self, this._then);

  final HealthProfileGoal _self;
  final $Res Function(HealthProfileGoal) _then;

/// Create a copy of HealthProfileGoal
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? goalId = freezed,Object? goalName = freezed,Object? customLabel = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,goalId: freezed == goalId ? _self.goalId : goalId // ignore: cast_nullable_to_non_nullable
as String?,goalName: freezed == goalName ? _self.goalName : goalName // ignore: cast_nullable_to_non_nullable
as String?,customLabel: freezed == customLabel ? _self.customLabel : customLabel // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [HealthProfileGoal].
extension HealthProfileGoalPatterns on HealthProfileGoal {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HealthProfileGoal value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HealthProfileGoal() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HealthProfileGoal value)  $default,){
final _that = this;
switch (_that) {
case _HealthProfileGoal():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HealthProfileGoal value)?  $default,){
final _that = this;
switch (_that) {
case _HealthProfileGoal() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? goalId,  String? goalName,  String? customLabel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HealthProfileGoal() when $default != null:
return $default(_that.id,_that.goalId,_that.goalName,_that.customLabel);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? goalId,  String? goalName,  String? customLabel)  $default,) {final _that = this;
switch (_that) {
case _HealthProfileGoal():
return $default(_that.id,_that.goalId,_that.goalName,_that.customLabel);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? goalId,  String? goalName,  String? customLabel)?  $default,) {final _that = this;
switch (_that) {
case _HealthProfileGoal() when $default != null:
return $default(_that.id,_that.goalId,_that.goalName,_that.customLabel);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HealthProfileGoal implements HealthProfileGoal {
  const _HealthProfileGoal({required this.id, this.goalId, this.goalName, this.customLabel});
  factory _HealthProfileGoal.fromJson(Map<String, dynamic> json) => _$HealthProfileGoalFromJson(json);

@override final  String id;
@override final  String? goalId;
@override final  String? goalName;
@override final  String? customLabel;

/// Create a copy of HealthProfileGoal
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HealthProfileGoalCopyWith<_HealthProfileGoal> get copyWith => __$HealthProfileGoalCopyWithImpl<_HealthProfileGoal>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HealthProfileGoalToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HealthProfileGoal&&(identical(other.id, id) || other.id == id)&&(identical(other.goalId, goalId) || other.goalId == goalId)&&(identical(other.goalName, goalName) || other.goalName == goalName)&&(identical(other.customLabel, customLabel) || other.customLabel == customLabel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,goalId,goalName,customLabel);

@override
String toString() {
  return 'HealthProfileGoal(id: $id, goalId: $goalId, goalName: $goalName, customLabel: $customLabel)';
}


}

/// @nodoc
abstract mixin class _$HealthProfileGoalCopyWith<$Res> implements $HealthProfileGoalCopyWith<$Res> {
  factory _$HealthProfileGoalCopyWith(_HealthProfileGoal value, $Res Function(_HealthProfileGoal) _then) = __$HealthProfileGoalCopyWithImpl;
@override @useResult
$Res call({
 String id, String? goalId, String? goalName, String? customLabel
});




}
/// @nodoc
class __$HealthProfileGoalCopyWithImpl<$Res>
    implements _$HealthProfileGoalCopyWith<$Res> {
  __$HealthProfileGoalCopyWithImpl(this._self, this._then);

  final _HealthProfileGoal _self;
  final $Res Function(_HealthProfileGoal) _then;

/// Create a copy of HealthProfileGoal
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? goalId = freezed,Object? goalName = freezed,Object? customLabel = freezed,}) {
  return _then(_HealthProfileGoal(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,goalId: freezed == goalId ? _self.goalId : goalId // ignore: cast_nullable_to_non_nullable
as String?,goalName: freezed == goalName ? _self.goalName : goalName // ignore: cast_nullable_to_non_nullable
as String?,customLabel: freezed == customLabel ? _self.customLabel : customLabel // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$HealthProfile {

 String get id; String get employeeId; int get age; String get gender; int get heightCm; int get weightKg; String get lifestyle; String get activityLevel; int get targetEnergyKcal; int get targetProteinMg; int get targetCarbsMg; int get targetFatMg; int get targetFiberMg; int get targetSugarMg; int get targetSodiumMg; int get targetIronUg; List<HealthProfileAllergy> get allergies; List<HealthProfileGoal> get goals; String get createdAt; String get updatedAt;
/// Create a copy of HealthProfile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HealthProfileCopyWith<HealthProfile> get copyWith => _$HealthProfileCopyWithImpl<HealthProfile>(this as HealthProfile, _$identity);

  /// Serializes this HealthProfile to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HealthProfile&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.heightCm, heightCm) || other.heightCm == heightCm)&&(identical(other.weightKg, weightKg) || other.weightKg == weightKg)&&(identical(other.lifestyle, lifestyle) || other.lifestyle == lifestyle)&&(identical(other.activityLevel, activityLevel) || other.activityLevel == activityLevel)&&(identical(other.targetEnergyKcal, targetEnergyKcal) || other.targetEnergyKcal == targetEnergyKcal)&&(identical(other.targetProteinMg, targetProteinMg) || other.targetProteinMg == targetProteinMg)&&(identical(other.targetCarbsMg, targetCarbsMg) || other.targetCarbsMg == targetCarbsMg)&&(identical(other.targetFatMg, targetFatMg) || other.targetFatMg == targetFatMg)&&(identical(other.targetFiberMg, targetFiberMg) || other.targetFiberMg == targetFiberMg)&&(identical(other.targetSugarMg, targetSugarMg) || other.targetSugarMg == targetSugarMg)&&(identical(other.targetSodiumMg, targetSodiumMg) || other.targetSodiumMg == targetSodiumMg)&&(identical(other.targetIronUg, targetIronUg) || other.targetIronUg == targetIronUg)&&const DeepCollectionEquality().equals(other.allergies, allergies)&&const DeepCollectionEquality().equals(other.goals, goals)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,employeeId,age,gender,heightCm,weightKg,lifestyle,activityLevel,targetEnergyKcal,targetProteinMg,targetCarbsMg,targetFatMg,targetFiberMg,targetSugarMg,targetSodiumMg,targetIronUg,const DeepCollectionEquality().hash(allergies),const DeepCollectionEquality().hash(goals),createdAt,updatedAt]);

@override
String toString() {
  return 'HealthProfile(id: $id, employeeId: $employeeId, age: $age, gender: $gender, heightCm: $heightCm, weightKg: $weightKg, lifestyle: $lifestyle, activityLevel: $activityLevel, targetEnergyKcal: $targetEnergyKcal, targetProteinMg: $targetProteinMg, targetCarbsMg: $targetCarbsMg, targetFatMg: $targetFatMg, targetFiberMg: $targetFiberMg, targetSugarMg: $targetSugarMg, targetSodiumMg: $targetSodiumMg, targetIronUg: $targetIronUg, allergies: $allergies, goals: $goals, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $HealthProfileCopyWith<$Res>  {
  factory $HealthProfileCopyWith(HealthProfile value, $Res Function(HealthProfile) _then) = _$HealthProfileCopyWithImpl;
@useResult
$Res call({
 String id, String employeeId, int age, String gender, int heightCm, int weightKg, String lifestyle, String activityLevel, int targetEnergyKcal, int targetProteinMg, int targetCarbsMg, int targetFatMg, int targetFiberMg, int targetSugarMg, int targetSodiumMg, int targetIronUg, List<HealthProfileAllergy> allergies, List<HealthProfileGoal> goals, String createdAt, String updatedAt
});




}
/// @nodoc
class _$HealthProfileCopyWithImpl<$Res>
    implements $HealthProfileCopyWith<$Res> {
  _$HealthProfileCopyWithImpl(this._self, this._then);

  final HealthProfile _self;
  final $Res Function(HealthProfile) _then;

/// Create a copy of HealthProfile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? employeeId = null,Object? age = null,Object? gender = null,Object? heightCm = null,Object? weightKg = null,Object? lifestyle = null,Object? activityLevel = null,Object? targetEnergyKcal = null,Object? targetProteinMg = null,Object? targetCarbsMg = null,Object? targetFatMg = null,Object? targetFiberMg = null,Object? targetSugarMg = null,Object? targetSodiumMg = null,Object? targetIronUg = null,Object? allergies = null,Object? goals = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,heightCm: null == heightCm ? _self.heightCm : heightCm // ignore: cast_nullable_to_non_nullable
as int,weightKg: null == weightKg ? _self.weightKg : weightKg // ignore: cast_nullable_to_non_nullable
as int,lifestyle: null == lifestyle ? _self.lifestyle : lifestyle // ignore: cast_nullable_to_non_nullable
as String,activityLevel: null == activityLevel ? _self.activityLevel : activityLevel // ignore: cast_nullable_to_non_nullable
as String,targetEnergyKcal: null == targetEnergyKcal ? _self.targetEnergyKcal : targetEnergyKcal // ignore: cast_nullable_to_non_nullable
as int,targetProteinMg: null == targetProteinMg ? _self.targetProteinMg : targetProteinMg // ignore: cast_nullable_to_non_nullable
as int,targetCarbsMg: null == targetCarbsMg ? _self.targetCarbsMg : targetCarbsMg // ignore: cast_nullable_to_non_nullable
as int,targetFatMg: null == targetFatMg ? _self.targetFatMg : targetFatMg // ignore: cast_nullable_to_non_nullable
as int,targetFiberMg: null == targetFiberMg ? _self.targetFiberMg : targetFiberMg // ignore: cast_nullable_to_non_nullable
as int,targetSugarMg: null == targetSugarMg ? _self.targetSugarMg : targetSugarMg // ignore: cast_nullable_to_non_nullable
as int,targetSodiumMg: null == targetSodiumMg ? _self.targetSodiumMg : targetSodiumMg // ignore: cast_nullable_to_non_nullable
as int,targetIronUg: null == targetIronUg ? _self.targetIronUg : targetIronUg // ignore: cast_nullable_to_non_nullable
as int,allergies: null == allergies ? _self.allergies : allergies // ignore: cast_nullable_to_non_nullable
as List<HealthProfileAllergy>,goals: null == goals ? _self.goals : goals // ignore: cast_nullable_to_non_nullable
as List<HealthProfileGoal>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [HealthProfile].
extension HealthProfilePatterns on HealthProfile {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HealthProfile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HealthProfile() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HealthProfile value)  $default,){
final _that = this;
switch (_that) {
case _HealthProfile():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HealthProfile value)?  $default,){
final _that = this;
switch (_that) {
case _HealthProfile() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String employeeId,  int age,  String gender,  int heightCm,  int weightKg,  String lifestyle,  String activityLevel,  int targetEnergyKcal,  int targetProteinMg,  int targetCarbsMg,  int targetFatMg,  int targetFiberMg,  int targetSugarMg,  int targetSodiumMg,  int targetIronUg,  List<HealthProfileAllergy> allergies,  List<HealthProfileGoal> goals,  String createdAt,  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HealthProfile() when $default != null:
return $default(_that.id,_that.employeeId,_that.age,_that.gender,_that.heightCm,_that.weightKg,_that.lifestyle,_that.activityLevel,_that.targetEnergyKcal,_that.targetProteinMg,_that.targetCarbsMg,_that.targetFatMg,_that.targetFiberMg,_that.targetSugarMg,_that.targetSodiumMg,_that.targetIronUg,_that.allergies,_that.goals,_that.createdAt,_that.updatedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String employeeId,  int age,  String gender,  int heightCm,  int weightKg,  String lifestyle,  String activityLevel,  int targetEnergyKcal,  int targetProteinMg,  int targetCarbsMg,  int targetFatMg,  int targetFiberMg,  int targetSugarMg,  int targetSodiumMg,  int targetIronUg,  List<HealthProfileAllergy> allergies,  List<HealthProfileGoal> goals,  String createdAt,  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _HealthProfile():
return $default(_that.id,_that.employeeId,_that.age,_that.gender,_that.heightCm,_that.weightKg,_that.lifestyle,_that.activityLevel,_that.targetEnergyKcal,_that.targetProteinMg,_that.targetCarbsMg,_that.targetFatMg,_that.targetFiberMg,_that.targetSugarMg,_that.targetSodiumMg,_that.targetIronUg,_that.allergies,_that.goals,_that.createdAt,_that.updatedAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String employeeId,  int age,  String gender,  int heightCm,  int weightKg,  String lifestyle,  String activityLevel,  int targetEnergyKcal,  int targetProteinMg,  int targetCarbsMg,  int targetFatMg,  int targetFiberMg,  int targetSugarMg,  int targetSodiumMg,  int targetIronUg,  List<HealthProfileAllergy> allergies,  List<HealthProfileGoal> goals,  String createdAt,  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _HealthProfile() when $default != null:
return $default(_that.id,_that.employeeId,_that.age,_that.gender,_that.heightCm,_that.weightKg,_that.lifestyle,_that.activityLevel,_that.targetEnergyKcal,_that.targetProteinMg,_that.targetCarbsMg,_that.targetFatMg,_that.targetFiberMg,_that.targetSugarMg,_that.targetSodiumMg,_that.targetIronUg,_that.allergies,_that.goals,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HealthProfile implements HealthProfile {
  const _HealthProfile({required this.id, required this.employeeId, required this.age, required this.gender, required this.heightCm, required this.weightKg, required this.lifestyle, required this.activityLevel, this.targetEnergyKcal = 0, this.targetProteinMg = 0, this.targetCarbsMg = 0, this.targetFatMg = 0, this.targetFiberMg = 0, this.targetSugarMg = 0, this.targetSodiumMg = 0, this.targetIronUg = 0, required final  List<HealthProfileAllergy> allergies, required final  List<HealthProfileGoal> goals, required this.createdAt, required this.updatedAt}): _allergies = allergies,_goals = goals;
  factory _HealthProfile.fromJson(Map<String, dynamic> json) => _$HealthProfileFromJson(json);

@override final  String id;
@override final  String employeeId;
@override final  int age;
@override final  String gender;
@override final  int heightCm;
@override final  int weightKg;
@override final  String lifestyle;
@override final  String activityLevel;
@override@JsonKey() final  int targetEnergyKcal;
@override@JsonKey() final  int targetProteinMg;
@override@JsonKey() final  int targetCarbsMg;
@override@JsonKey() final  int targetFatMg;
@override@JsonKey() final  int targetFiberMg;
@override@JsonKey() final  int targetSugarMg;
@override@JsonKey() final  int targetSodiumMg;
@override@JsonKey() final  int targetIronUg;
 final  List<HealthProfileAllergy> _allergies;
@override List<HealthProfileAllergy> get allergies {
  if (_allergies is EqualUnmodifiableListView) return _allergies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_allergies);
}

 final  List<HealthProfileGoal> _goals;
@override List<HealthProfileGoal> get goals {
  if (_goals is EqualUnmodifiableListView) return _goals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_goals);
}

@override final  String createdAt;
@override final  String updatedAt;

/// Create a copy of HealthProfile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HealthProfileCopyWith<_HealthProfile> get copyWith => __$HealthProfileCopyWithImpl<_HealthProfile>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HealthProfileToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HealthProfile&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.heightCm, heightCm) || other.heightCm == heightCm)&&(identical(other.weightKg, weightKg) || other.weightKg == weightKg)&&(identical(other.lifestyle, lifestyle) || other.lifestyle == lifestyle)&&(identical(other.activityLevel, activityLevel) || other.activityLevel == activityLevel)&&(identical(other.targetEnergyKcal, targetEnergyKcal) || other.targetEnergyKcal == targetEnergyKcal)&&(identical(other.targetProteinMg, targetProteinMg) || other.targetProteinMg == targetProteinMg)&&(identical(other.targetCarbsMg, targetCarbsMg) || other.targetCarbsMg == targetCarbsMg)&&(identical(other.targetFatMg, targetFatMg) || other.targetFatMg == targetFatMg)&&(identical(other.targetFiberMg, targetFiberMg) || other.targetFiberMg == targetFiberMg)&&(identical(other.targetSugarMg, targetSugarMg) || other.targetSugarMg == targetSugarMg)&&(identical(other.targetSodiumMg, targetSodiumMg) || other.targetSodiumMg == targetSodiumMg)&&(identical(other.targetIronUg, targetIronUg) || other.targetIronUg == targetIronUg)&&const DeepCollectionEquality().equals(other._allergies, _allergies)&&const DeepCollectionEquality().equals(other._goals, _goals)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,employeeId,age,gender,heightCm,weightKg,lifestyle,activityLevel,targetEnergyKcal,targetProteinMg,targetCarbsMg,targetFatMg,targetFiberMg,targetSugarMg,targetSodiumMg,targetIronUg,const DeepCollectionEquality().hash(_allergies),const DeepCollectionEquality().hash(_goals),createdAt,updatedAt]);

@override
String toString() {
  return 'HealthProfile(id: $id, employeeId: $employeeId, age: $age, gender: $gender, heightCm: $heightCm, weightKg: $weightKg, lifestyle: $lifestyle, activityLevel: $activityLevel, targetEnergyKcal: $targetEnergyKcal, targetProteinMg: $targetProteinMg, targetCarbsMg: $targetCarbsMg, targetFatMg: $targetFatMg, targetFiberMg: $targetFiberMg, targetSugarMg: $targetSugarMg, targetSodiumMg: $targetSodiumMg, targetIronUg: $targetIronUg, allergies: $allergies, goals: $goals, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$HealthProfileCopyWith<$Res> implements $HealthProfileCopyWith<$Res> {
  factory _$HealthProfileCopyWith(_HealthProfile value, $Res Function(_HealthProfile) _then) = __$HealthProfileCopyWithImpl;
@override @useResult
$Res call({
 String id, String employeeId, int age, String gender, int heightCm, int weightKg, String lifestyle, String activityLevel, int targetEnergyKcal, int targetProteinMg, int targetCarbsMg, int targetFatMg, int targetFiberMg, int targetSugarMg, int targetSodiumMg, int targetIronUg, List<HealthProfileAllergy> allergies, List<HealthProfileGoal> goals, String createdAt, String updatedAt
});




}
/// @nodoc
class __$HealthProfileCopyWithImpl<$Res>
    implements _$HealthProfileCopyWith<$Res> {
  __$HealthProfileCopyWithImpl(this._self, this._then);

  final _HealthProfile _self;
  final $Res Function(_HealthProfile) _then;

/// Create a copy of HealthProfile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? employeeId = null,Object? age = null,Object? gender = null,Object? heightCm = null,Object? weightKg = null,Object? lifestyle = null,Object? activityLevel = null,Object? targetEnergyKcal = null,Object? targetProteinMg = null,Object? targetCarbsMg = null,Object? targetFatMg = null,Object? targetFiberMg = null,Object? targetSugarMg = null,Object? targetSodiumMg = null,Object? targetIronUg = null,Object? allergies = null,Object? goals = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_HealthProfile(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,heightCm: null == heightCm ? _self.heightCm : heightCm // ignore: cast_nullable_to_non_nullable
as int,weightKg: null == weightKg ? _self.weightKg : weightKg // ignore: cast_nullable_to_non_nullable
as int,lifestyle: null == lifestyle ? _self.lifestyle : lifestyle // ignore: cast_nullable_to_non_nullable
as String,activityLevel: null == activityLevel ? _self.activityLevel : activityLevel // ignore: cast_nullable_to_non_nullable
as String,targetEnergyKcal: null == targetEnergyKcal ? _self.targetEnergyKcal : targetEnergyKcal // ignore: cast_nullable_to_non_nullable
as int,targetProteinMg: null == targetProteinMg ? _self.targetProteinMg : targetProteinMg // ignore: cast_nullable_to_non_nullable
as int,targetCarbsMg: null == targetCarbsMg ? _self.targetCarbsMg : targetCarbsMg // ignore: cast_nullable_to_non_nullable
as int,targetFatMg: null == targetFatMg ? _self.targetFatMg : targetFatMg // ignore: cast_nullable_to_non_nullable
as int,targetFiberMg: null == targetFiberMg ? _self.targetFiberMg : targetFiberMg // ignore: cast_nullable_to_non_nullable
as int,targetSugarMg: null == targetSugarMg ? _self.targetSugarMg : targetSugarMg // ignore: cast_nullable_to_non_nullable
as int,targetSodiumMg: null == targetSodiumMg ? _self.targetSodiumMg : targetSodiumMg // ignore: cast_nullable_to_non_nullable
as int,targetIronUg: null == targetIronUg ? _self.targetIronUg : targetIronUg // ignore: cast_nullable_to_non_nullable
as int,allergies: null == allergies ? _self._allergies : allergies // ignore: cast_nullable_to_non_nullable
as List<HealthProfileAllergy>,goals: null == goals ? _self._goals : goals // ignore: cast_nullable_to_non_nullable
as List<HealthProfileGoal>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$UpsertHealthProfileRequest {

 int get age; String get gender; int get heightCm; int get weightKg; String get lifestyle; String get activityLevel; List<AllergySelectionRequest> get allergies; List<GoalSelectionRequest> get goals;
/// Create a copy of UpsertHealthProfileRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpsertHealthProfileRequestCopyWith<UpsertHealthProfileRequest> get copyWith => _$UpsertHealthProfileRequestCopyWithImpl<UpsertHealthProfileRequest>(this as UpsertHealthProfileRequest, _$identity);

  /// Serializes this UpsertHealthProfileRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpsertHealthProfileRequest&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.heightCm, heightCm) || other.heightCm == heightCm)&&(identical(other.weightKg, weightKg) || other.weightKg == weightKg)&&(identical(other.lifestyle, lifestyle) || other.lifestyle == lifestyle)&&(identical(other.activityLevel, activityLevel) || other.activityLevel == activityLevel)&&const DeepCollectionEquality().equals(other.allergies, allergies)&&const DeepCollectionEquality().equals(other.goals, goals));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,age,gender,heightCm,weightKg,lifestyle,activityLevel,const DeepCollectionEquality().hash(allergies),const DeepCollectionEquality().hash(goals));

@override
String toString() {
  return 'UpsertHealthProfileRequest(age: $age, gender: $gender, heightCm: $heightCm, weightKg: $weightKg, lifestyle: $lifestyle, activityLevel: $activityLevel, allergies: $allergies, goals: $goals)';
}


}

/// @nodoc
abstract mixin class $UpsertHealthProfileRequestCopyWith<$Res>  {
  factory $UpsertHealthProfileRequestCopyWith(UpsertHealthProfileRequest value, $Res Function(UpsertHealthProfileRequest) _then) = _$UpsertHealthProfileRequestCopyWithImpl;
@useResult
$Res call({
 int age, String gender, int heightCm, int weightKg, String lifestyle, String activityLevel, List<AllergySelectionRequest> allergies, List<GoalSelectionRequest> goals
});




}
/// @nodoc
class _$UpsertHealthProfileRequestCopyWithImpl<$Res>
    implements $UpsertHealthProfileRequestCopyWith<$Res> {
  _$UpsertHealthProfileRequestCopyWithImpl(this._self, this._then);

  final UpsertHealthProfileRequest _self;
  final $Res Function(UpsertHealthProfileRequest) _then;

/// Create a copy of UpsertHealthProfileRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? age = null,Object? gender = null,Object? heightCm = null,Object? weightKg = null,Object? lifestyle = null,Object? activityLevel = null,Object? allergies = null,Object? goals = null,}) {
  return _then(_self.copyWith(
age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,heightCm: null == heightCm ? _self.heightCm : heightCm // ignore: cast_nullable_to_non_nullable
as int,weightKg: null == weightKg ? _self.weightKg : weightKg // ignore: cast_nullable_to_non_nullable
as int,lifestyle: null == lifestyle ? _self.lifestyle : lifestyle // ignore: cast_nullable_to_non_nullable
as String,activityLevel: null == activityLevel ? _self.activityLevel : activityLevel // ignore: cast_nullable_to_non_nullable
as String,allergies: null == allergies ? _self.allergies : allergies // ignore: cast_nullable_to_non_nullable
as List<AllergySelectionRequest>,goals: null == goals ? _self.goals : goals // ignore: cast_nullable_to_non_nullable
as List<GoalSelectionRequest>,
  ));
}

}


/// Adds pattern-matching-related methods to [UpsertHealthProfileRequest].
extension UpsertHealthProfileRequestPatterns on UpsertHealthProfileRequest {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpsertHealthProfileRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpsertHealthProfileRequest() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpsertHealthProfileRequest value)  $default,){
final _that = this;
switch (_that) {
case _UpsertHealthProfileRequest():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpsertHealthProfileRequest value)?  $default,){
final _that = this;
switch (_that) {
case _UpsertHealthProfileRequest() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int age,  String gender,  int heightCm,  int weightKg,  String lifestyle,  String activityLevel,  List<AllergySelectionRequest> allergies,  List<GoalSelectionRequest> goals)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpsertHealthProfileRequest() when $default != null:
return $default(_that.age,_that.gender,_that.heightCm,_that.weightKg,_that.lifestyle,_that.activityLevel,_that.allergies,_that.goals);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int age,  String gender,  int heightCm,  int weightKg,  String lifestyle,  String activityLevel,  List<AllergySelectionRequest> allergies,  List<GoalSelectionRequest> goals)  $default,) {final _that = this;
switch (_that) {
case _UpsertHealthProfileRequest():
return $default(_that.age,_that.gender,_that.heightCm,_that.weightKg,_that.lifestyle,_that.activityLevel,_that.allergies,_that.goals);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int age,  String gender,  int heightCm,  int weightKg,  String lifestyle,  String activityLevel,  List<AllergySelectionRequest> allergies,  List<GoalSelectionRequest> goals)?  $default,) {final _that = this;
switch (_that) {
case _UpsertHealthProfileRequest() when $default != null:
return $default(_that.age,_that.gender,_that.heightCm,_that.weightKg,_that.lifestyle,_that.activityLevel,_that.allergies,_that.goals);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpsertHealthProfileRequest implements UpsertHealthProfileRequest {
  const _UpsertHealthProfileRequest({required this.age, required this.gender, required this.heightCm, required this.weightKg, required this.lifestyle, required this.activityLevel, required final  List<AllergySelectionRequest> allergies, required final  List<GoalSelectionRequest> goals}): _allergies = allergies,_goals = goals;
  factory _UpsertHealthProfileRequest.fromJson(Map<String, dynamic> json) => _$UpsertHealthProfileRequestFromJson(json);

@override final  int age;
@override final  String gender;
@override final  int heightCm;
@override final  int weightKg;
@override final  String lifestyle;
@override final  String activityLevel;
 final  List<AllergySelectionRequest> _allergies;
@override List<AllergySelectionRequest> get allergies {
  if (_allergies is EqualUnmodifiableListView) return _allergies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_allergies);
}

 final  List<GoalSelectionRequest> _goals;
@override List<GoalSelectionRequest> get goals {
  if (_goals is EqualUnmodifiableListView) return _goals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_goals);
}


/// Create a copy of UpsertHealthProfileRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpsertHealthProfileRequestCopyWith<_UpsertHealthProfileRequest> get copyWith => __$UpsertHealthProfileRequestCopyWithImpl<_UpsertHealthProfileRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpsertHealthProfileRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpsertHealthProfileRequest&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.heightCm, heightCm) || other.heightCm == heightCm)&&(identical(other.weightKg, weightKg) || other.weightKg == weightKg)&&(identical(other.lifestyle, lifestyle) || other.lifestyle == lifestyle)&&(identical(other.activityLevel, activityLevel) || other.activityLevel == activityLevel)&&const DeepCollectionEquality().equals(other._allergies, _allergies)&&const DeepCollectionEquality().equals(other._goals, _goals));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,age,gender,heightCm,weightKg,lifestyle,activityLevel,const DeepCollectionEquality().hash(_allergies),const DeepCollectionEquality().hash(_goals));

@override
String toString() {
  return 'UpsertHealthProfileRequest(age: $age, gender: $gender, heightCm: $heightCm, weightKg: $weightKg, lifestyle: $lifestyle, activityLevel: $activityLevel, allergies: $allergies, goals: $goals)';
}


}

/// @nodoc
abstract mixin class _$UpsertHealthProfileRequestCopyWith<$Res> implements $UpsertHealthProfileRequestCopyWith<$Res> {
  factory _$UpsertHealthProfileRequestCopyWith(_UpsertHealthProfileRequest value, $Res Function(_UpsertHealthProfileRequest) _then) = __$UpsertHealthProfileRequestCopyWithImpl;
@override @useResult
$Res call({
 int age, String gender, int heightCm, int weightKg, String lifestyle, String activityLevel, List<AllergySelectionRequest> allergies, List<GoalSelectionRequest> goals
});




}
/// @nodoc
class __$UpsertHealthProfileRequestCopyWithImpl<$Res>
    implements _$UpsertHealthProfileRequestCopyWith<$Res> {
  __$UpsertHealthProfileRequestCopyWithImpl(this._self, this._then);

  final _UpsertHealthProfileRequest _self;
  final $Res Function(_UpsertHealthProfileRequest) _then;

/// Create a copy of UpsertHealthProfileRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? age = null,Object? gender = null,Object? heightCm = null,Object? weightKg = null,Object? lifestyle = null,Object? activityLevel = null,Object? allergies = null,Object? goals = null,}) {
  return _then(_UpsertHealthProfileRequest(
age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,heightCm: null == heightCm ? _self.heightCm : heightCm // ignore: cast_nullable_to_non_nullable
as int,weightKg: null == weightKg ? _self.weightKg : weightKg // ignore: cast_nullable_to_non_nullable
as int,lifestyle: null == lifestyle ? _self.lifestyle : lifestyle // ignore: cast_nullable_to_non_nullable
as String,activityLevel: null == activityLevel ? _self.activityLevel : activityLevel // ignore: cast_nullable_to_non_nullable
as String,allergies: null == allergies ? _self._allergies : allergies // ignore: cast_nullable_to_non_nullable
as List<AllergySelectionRequest>,goals: null == goals ? _self._goals : goals // ignore: cast_nullable_to_non_nullable
as List<GoalSelectionRequest>,
  ));
}


}


/// @nodoc
mixin _$AllergySelectionRequest {

 String? get allergyId; String? get customLabel;
/// Create a copy of AllergySelectionRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AllergySelectionRequestCopyWith<AllergySelectionRequest> get copyWith => _$AllergySelectionRequestCopyWithImpl<AllergySelectionRequest>(this as AllergySelectionRequest, _$identity);

  /// Serializes this AllergySelectionRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AllergySelectionRequest&&(identical(other.allergyId, allergyId) || other.allergyId == allergyId)&&(identical(other.customLabel, customLabel) || other.customLabel == customLabel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,allergyId,customLabel);

@override
String toString() {
  return 'AllergySelectionRequest(allergyId: $allergyId, customLabel: $customLabel)';
}


}

/// @nodoc
abstract mixin class $AllergySelectionRequestCopyWith<$Res>  {
  factory $AllergySelectionRequestCopyWith(AllergySelectionRequest value, $Res Function(AllergySelectionRequest) _then) = _$AllergySelectionRequestCopyWithImpl;
@useResult
$Res call({
 String? allergyId, String? customLabel
});




}
/// @nodoc
class _$AllergySelectionRequestCopyWithImpl<$Res>
    implements $AllergySelectionRequestCopyWith<$Res> {
  _$AllergySelectionRequestCopyWithImpl(this._self, this._then);

  final AllergySelectionRequest _self;
  final $Res Function(AllergySelectionRequest) _then;

/// Create a copy of AllergySelectionRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? allergyId = freezed,Object? customLabel = freezed,}) {
  return _then(_self.copyWith(
allergyId: freezed == allergyId ? _self.allergyId : allergyId // ignore: cast_nullable_to_non_nullable
as String?,customLabel: freezed == customLabel ? _self.customLabel : customLabel // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AllergySelectionRequest].
extension AllergySelectionRequestPatterns on AllergySelectionRequest {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AllergySelectionRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AllergySelectionRequest() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AllergySelectionRequest value)  $default,){
final _that = this;
switch (_that) {
case _AllergySelectionRequest():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AllergySelectionRequest value)?  $default,){
final _that = this;
switch (_that) {
case _AllergySelectionRequest() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? allergyId,  String? customLabel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AllergySelectionRequest() when $default != null:
return $default(_that.allergyId,_that.customLabel);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? allergyId,  String? customLabel)  $default,) {final _that = this;
switch (_that) {
case _AllergySelectionRequest():
return $default(_that.allergyId,_that.customLabel);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? allergyId,  String? customLabel)?  $default,) {final _that = this;
switch (_that) {
case _AllergySelectionRequest() when $default != null:
return $default(_that.allergyId,_that.customLabel);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AllergySelectionRequest implements AllergySelectionRequest {
  const _AllergySelectionRequest({this.allergyId, this.customLabel});
  factory _AllergySelectionRequest.fromJson(Map<String, dynamic> json) => _$AllergySelectionRequestFromJson(json);

@override final  String? allergyId;
@override final  String? customLabel;

/// Create a copy of AllergySelectionRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AllergySelectionRequestCopyWith<_AllergySelectionRequest> get copyWith => __$AllergySelectionRequestCopyWithImpl<_AllergySelectionRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AllergySelectionRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AllergySelectionRequest&&(identical(other.allergyId, allergyId) || other.allergyId == allergyId)&&(identical(other.customLabel, customLabel) || other.customLabel == customLabel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,allergyId,customLabel);

@override
String toString() {
  return 'AllergySelectionRequest(allergyId: $allergyId, customLabel: $customLabel)';
}


}

/// @nodoc
abstract mixin class _$AllergySelectionRequestCopyWith<$Res> implements $AllergySelectionRequestCopyWith<$Res> {
  factory _$AllergySelectionRequestCopyWith(_AllergySelectionRequest value, $Res Function(_AllergySelectionRequest) _then) = __$AllergySelectionRequestCopyWithImpl;
@override @useResult
$Res call({
 String? allergyId, String? customLabel
});




}
/// @nodoc
class __$AllergySelectionRequestCopyWithImpl<$Res>
    implements _$AllergySelectionRequestCopyWith<$Res> {
  __$AllergySelectionRequestCopyWithImpl(this._self, this._then);

  final _AllergySelectionRequest _self;
  final $Res Function(_AllergySelectionRequest) _then;

/// Create a copy of AllergySelectionRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? allergyId = freezed,Object? customLabel = freezed,}) {
  return _then(_AllergySelectionRequest(
allergyId: freezed == allergyId ? _self.allergyId : allergyId // ignore: cast_nullable_to_non_nullable
as String?,customLabel: freezed == customLabel ? _self.customLabel : customLabel // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$GoalSelectionRequest {

 String? get goalId; String? get customLabel;
/// Create a copy of GoalSelectionRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GoalSelectionRequestCopyWith<GoalSelectionRequest> get copyWith => _$GoalSelectionRequestCopyWithImpl<GoalSelectionRequest>(this as GoalSelectionRequest, _$identity);

  /// Serializes this GoalSelectionRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GoalSelectionRequest&&(identical(other.goalId, goalId) || other.goalId == goalId)&&(identical(other.customLabel, customLabel) || other.customLabel == customLabel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,goalId,customLabel);

@override
String toString() {
  return 'GoalSelectionRequest(goalId: $goalId, customLabel: $customLabel)';
}


}

/// @nodoc
abstract mixin class $GoalSelectionRequestCopyWith<$Res>  {
  factory $GoalSelectionRequestCopyWith(GoalSelectionRequest value, $Res Function(GoalSelectionRequest) _then) = _$GoalSelectionRequestCopyWithImpl;
@useResult
$Res call({
 String? goalId, String? customLabel
});




}
/// @nodoc
class _$GoalSelectionRequestCopyWithImpl<$Res>
    implements $GoalSelectionRequestCopyWith<$Res> {
  _$GoalSelectionRequestCopyWithImpl(this._self, this._then);

  final GoalSelectionRequest _self;
  final $Res Function(GoalSelectionRequest) _then;

/// Create a copy of GoalSelectionRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? goalId = freezed,Object? customLabel = freezed,}) {
  return _then(_self.copyWith(
goalId: freezed == goalId ? _self.goalId : goalId // ignore: cast_nullable_to_non_nullable
as String?,customLabel: freezed == customLabel ? _self.customLabel : customLabel // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GoalSelectionRequest].
extension GoalSelectionRequestPatterns on GoalSelectionRequest {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GoalSelectionRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GoalSelectionRequest() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GoalSelectionRequest value)  $default,){
final _that = this;
switch (_that) {
case _GoalSelectionRequest():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GoalSelectionRequest value)?  $default,){
final _that = this;
switch (_that) {
case _GoalSelectionRequest() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? goalId,  String? customLabel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GoalSelectionRequest() when $default != null:
return $default(_that.goalId,_that.customLabel);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? goalId,  String? customLabel)  $default,) {final _that = this;
switch (_that) {
case _GoalSelectionRequest():
return $default(_that.goalId,_that.customLabel);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? goalId,  String? customLabel)?  $default,) {final _that = this;
switch (_that) {
case _GoalSelectionRequest() when $default != null:
return $default(_that.goalId,_that.customLabel);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GoalSelectionRequest implements GoalSelectionRequest {
  const _GoalSelectionRequest({this.goalId, this.customLabel});
  factory _GoalSelectionRequest.fromJson(Map<String, dynamic> json) => _$GoalSelectionRequestFromJson(json);

@override final  String? goalId;
@override final  String? customLabel;

/// Create a copy of GoalSelectionRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GoalSelectionRequestCopyWith<_GoalSelectionRequest> get copyWith => __$GoalSelectionRequestCopyWithImpl<_GoalSelectionRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GoalSelectionRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GoalSelectionRequest&&(identical(other.goalId, goalId) || other.goalId == goalId)&&(identical(other.customLabel, customLabel) || other.customLabel == customLabel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,goalId,customLabel);

@override
String toString() {
  return 'GoalSelectionRequest(goalId: $goalId, customLabel: $customLabel)';
}


}

/// @nodoc
abstract mixin class _$GoalSelectionRequestCopyWith<$Res> implements $GoalSelectionRequestCopyWith<$Res> {
  factory _$GoalSelectionRequestCopyWith(_GoalSelectionRequest value, $Res Function(_GoalSelectionRequest) _then) = __$GoalSelectionRequestCopyWithImpl;
@override @useResult
$Res call({
 String? goalId, String? customLabel
});




}
/// @nodoc
class __$GoalSelectionRequestCopyWithImpl<$Res>
    implements _$GoalSelectionRequestCopyWith<$Res> {
  __$GoalSelectionRequestCopyWithImpl(this._self, this._then);

  final _GoalSelectionRequest _self;
  final $Res Function(_GoalSelectionRequest) _then;

/// Create a copy of GoalSelectionRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? goalId = freezed,Object? customLabel = freezed,}) {
  return _then(_GoalSelectionRequest(
goalId: freezed == goalId ? _self.goalId : goalId // ignore: cast_nullable_to_non_nullable
as String?,customLabel: freezed == customLabel ? _self.customLabel : customLabel // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$MealPlanSummary {

 String get id; String get employeeId; String get employeeName; String get employerName; String get status; String get title; String? get startsOn; String? get endsOn; String? get activatedAt; String? get packageId; String? get failureReason; String? get adminNote; String? get reviewedAt; String get createdAt; String get updatedAt;
/// Create a copy of MealPlanSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MealPlanSummaryCopyWith<MealPlanSummary> get copyWith => _$MealPlanSummaryCopyWithImpl<MealPlanSummary>(this as MealPlanSummary, _$identity);

  /// Serializes this MealPlanSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MealPlanSummary&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.employeeName, employeeName) || other.employeeName == employeeName)&&(identical(other.employerName, employerName) || other.employerName == employerName)&&(identical(other.status, status) || other.status == status)&&(identical(other.title, title) || other.title == title)&&(identical(other.startsOn, startsOn) || other.startsOn == startsOn)&&(identical(other.endsOn, endsOn) || other.endsOn == endsOn)&&(identical(other.activatedAt, activatedAt) || other.activatedAt == activatedAt)&&(identical(other.packageId, packageId) || other.packageId == packageId)&&(identical(other.failureReason, failureReason) || other.failureReason == failureReason)&&(identical(other.adminNote, adminNote) || other.adminNote == adminNote)&&(identical(other.reviewedAt, reviewedAt) || other.reviewedAt == reviewedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,employeeId,employeeName,employerName,status,title,startsOn,endsOn,activatedAt,packageId,failureReason,adminNote,reviewedAt,createdAt,updatedAt);

@override
String toString() {
  return 'MealPlanSummary(id: $id, employeeId: $employeeId, employeeName: $employeeName, employerName: $employerName, status: $status, title: $title, startsOn: $startsOn, endsOn: $endsOn, activatedAt: $activatedAt, packageId: $packageId, failureReason: $failureReason, adminNote: $adminNote, reviewedAt: $reviewedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $MealPlanSummaryCopyWith<$Res>  {
  factory $MealPlanSummaryCopyWith(MealPlanSummary value, $Res Function(MealPlanSummary) _then) = _$MealPlanSummaryCopyWithImpl;
@useResult
$Res call({
 String id, String employeeId, String employeeName, String employerName, String status, String title, String? startsOn, String? endsOn, String? activatedAt, String? packageId, String? failureReason, String? adminNote, String? reviewedAt, String createdAt, String updatedAt
});




}
/// @nodoc
class _$MealPlanSummaryCopyWithImpl<$Res>
    implements $MealPlanSummaryCopyWith<$Res> {
  _$MealPlanSummaryCopyWithImpl(this._self, this._then);

  final MealPlanSummary _self;
  final $Res Function(MealPlanSummary) _then;

/// Create a copy of MealPlanSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? employeeId = null,Object? employeeName = null,Object? employerName = null,Object? status = null,Object? title = null,Object? startsOn = freezed,Object? endsOn = freezed,Object? activatedAt = freezed,Object? packageId = freezed,Object? failureReason = freezed,Object? adminNote = freezed,Object? reviewedAt = freezed,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,employeeName: null == employeeName ? _self.employeeName : employeeName // ignore: cast_nullable_to_non_nullable
as String,employerName: null == employerName ? _self.employerName : employerName // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,startsOn: freezed == startsOn ? _self.startsOn : startsOn // ignore: cast_nullable_to_non_nullable
as String?,endsOn: freezed == endsOn ? _self.endsOn : endsOn // ignore: cast_nullable_to_non_nullable
as String?,activatedAt: freezed == activatedAt ? _self.activatedAt : activatedAt // ignore: cast_nullable_to_non_nullable
as String?,packageId: freezed == packageId ? _self.packageId : packageId // ignore: cast_nullable_to_non_nullable
as String?,failureReason: freezed == failureReason ? _self.failureReason : failureReason // ignore: cast_nullable_to_non_nullable
as String?,adminNote: freezed == adminNote ? _self.adminNote : adminNote // ignore: cast_nullable_to_non_nullable
as String?,reviewedAt: freezed == reviewedAt ? _self.reviewedAt : reviewedAt // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MealPlanSummary].
extension MealPlanSummaryPatterns on MealPlanSummary {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MealPlanSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MealPlanSummary() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MealPlanSummary value)  $default,){
final _that = this;
switch (_that) {
case _MealPlanSummary():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MealPlanSummary value)?  $default,){
final _that = this;
switch (_that) {
case _MealPlanSummary() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String employeeId,  String employeeName,  String employerName,  String status,  String title,  String? startsOn,  String? endsOn,  String? activatedAt,  String? packageId,  String? failureReason,  String? adminNote,  String? reviewedAt,  String createdAt,  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MealPlanSummary() when $default != null:
return $default(_that.id,_that.employeeId,_that.employeeName,_that.employerName,_that.status,_that.title,_that.startsOn,_that.endsOn,_that.activatedAt,_that.packageId,_that.failureReason,_that.adminNote,_that.reviewedAt,_that.createdAt,_that.updatedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String employeeId,  String employeeName,  String employerName,  String status,  String title,  String? startsOn,  String? endsOn,  String? activatedAt,  String? packageId,  String? failureReason,  String? adminNote,  String? reviewedAt,  String createdAt,  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _MealPlanSummary():
return $default(_that.id,_that.employeeId,_that.employeeName,_that.employerName,_that.status,_that.title,_that.startsOn,_that.endsOn,_that.activatedAt,_that.packageId,_that.failureReason,_that.adminNote,_that.reviewedAt,_that.createdAt,_that.updatedAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String employeeId,  String employeeName,  String employerName,  String status,  String title,  String? startsOn,  String? endsOn,  String? activatedAt,  String? packageId,  String? failureReason,  String? adminNote,  String? reviewedAt,  String createdAt,  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _MealPlanSummary() when $default != null:
return $default(_that.id,_that.employeeId,_that.employeeName,_that.employerName,_that.status,_that.title,_that.startsOn,_that.endsOn,_that.activatedAt,_that.packageId,_that.failureReason,_that.adminNote,_that.reviewedAt,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MealPlanSummary implements MealPlanSummary {
  const _MealPlanSummary({required this.id, required this.employeeId, required this.employeeName, required this.employerName, required this.status, required this.title, this.startsOn, this.endsOn, this.activatedAt, this.packageId, this.failureReason, this.adminNote, this.reviewedAt, required this.createdAt, required this.updatedAt});
  factory _MealPlanSummary.fromJson(Map<String, dynamic> json) => _$MealPlanSummaryFromJson(json);

@override final  String id;
@override final  String employeeId;
@override final  String employeeName;
@override final  String employerName;
@override final  String status;
@override final  String title;
@override final  String? startsOn;
@override final  String? endsOn;
@override final  String? activatedAt;
@override final  String? packageId;
@override final  String? failureReason;
@override final  String? adminNote;
@override final  String? reviewedAt;
@override final  String createdAt;
@override final  String updatedAt;

/// Create a copy of MealPlanSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MealPlanSummaryCopyWith<_MealPlanSummary> get copyWith => __$MealPlanSummaryCopyWithImpl<_MealPlanSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MealPlanSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MealPlanSummary&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.employeeName, employeeName) || other.employeeName == employeeName)&&(identical(other.employerName, employerName) || other.employerName == employerName)&&(identical(other.status, status) || other.status == status)&&(identical(other.title, title) || other.title == title)&&(identical(other.startsOn, startsOn) || other.startsOn == startsOn)&&(identical(other.endsOn, endsOn) || other.endsOn == endsOn)&&(identical(other.activatedAt, activatedAt) || other.activatedAt == activatedAt)&&(identical(other.packageId, packageId) || other.packageId == packageId)&&(identical(other.failureReason, failureReason) || other.failureReason == failureReason)&&(identical(other.adminNote, adminNote) || other.adminNote == adminNote)&&(identical(other.reviewedAt, reviewedAt) || other.reviewedAt == reviewedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,employeeId,employeeName,employerName,status,title,startsOn,endsOn,activatedAt,packageId,failureReason,adminNote,reviewedAt,createdAt,updatedAt);

@override
String toString() {
  return 'MealPlanSummary(id: $id, employeeId: $employeeId, employeeName: $employeeName, employerName: $employerName, status: $status, title: $title, startsOn: $startsOn, endsOn: $endsOn, activatedAt: $activatedAt, packageId: $packageId, failureReason: $failureReason, adminNote: $adminNote, reviewedAt: $reviewedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$MealPlanSummaryCopyWith<$Res> implements $MealPlanSummaryCopyWith<$Res> {
  factory _$MealPlanSummaryCopyWith(_MealPlanSummary value, $Res Function(_MealPlanSummary) _then) = __$MealPlanSummaryCopyWithImpl;
@override @useResult
$Res call({
 String id, String employeeId, String employeeName, String employerName, String status, String title, String? startsOn, String? endsOn, String? activatedAt, String? packageId, String? failureReason, String? adminNote, String? reviewedAt, String createdAt, String updatedAt
});




}
/// @nodoc
class __$MealPlanSummaryCopyWithImpl<$Res>
    implements _$MealPlanSummaryCopyWith<$Res> {
  __$MealPlanSummaryCopyWithImpl(this._self, this._then);

  final _MealPlanSummary _self;
  final $Res Function(_MealPlanSummary) _then;

/// Create a copy of MealPlanSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? employeeId = null,Object? employeeName = null,Object? employerName = null,Object? status = null,Object? title = null,Object? startsOn = freezed,Object? endsOn = freezed,Object? activatedAt = freezed,Object? packageId = freezed,Object? failureReason = freezed,Object? adminNote = freezed,Object? reviewedAt = freezed,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_MealPlanSummary(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,employeeName: null == employeeName ? _self.employeeName : employeeName // ignore: cast_nullable_to_non_nullable
as String,employerName: null == employerName ? _self.employerName : employerName // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,startsOn: freezed == startsOn ? _self.startsOn : startsOn // ignore: cast_nullable_to_non_nullable
as String?,endsOn: freezed == endsOn ? _self.endsOn : endsOn // ignore: cast_nullable_to_non_nullable
as String?,activatedAt: freezed == activatedAt ? _self.activatedAt : activatedAt // ignore: cast_nullable_to_non_nullable
as String?,packageId: freezed == packageId ? _self.packageId : packageId // ignore: cast_nullable_to_non_nullable
as String?,failureReason: freezed == failureReason ? _self.failureReason : failureReason // ignore: cast_nullable_to_non_nullable
as String?,adminNote: freezed == adminNote ? _self.adminNote : adminNote // ignore: cast_nullable_to_non_nullable
as String?,reviewedAt: freezed == reviewedAt ? _self.reviewedAt : reviewedAt // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$MealPlanItem {

 String get id; String get mealSlot; String get title; String get rationale; String get requestedProductName; String? get productId; String? get productName; String? get productImageUrl; String? get origin; Map<String, String> get nutritionFacts; List<String> get tags; String get matchType; int get quantity; int get quantityCanonical; String? get measureUnitId; String? get measureUnitLabel; String? get recipeId; RecipeDetail? get recipe; int get sortOrder;
/// Create a copy of MealPlanItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MealPlanItemCopyWith<MealPlanItem> get copyWith => _$MealPlanItemCopyWithImpl<MealPlanItem>(this as MealPlanItem, _$identity);

  /// Serializes this MealPlanItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MealPlanItem&&(identical(other.id, id) || other.id == id)&&(identical(other.mealSlot, mealSlot) || other.mealSlot == mealSlot)&&(identical(other.title, title) || other.title == title)&&(identical(other.rationale, rationale) || other.rationale == rationale)&&(identical(other.requestedProductName, requestedProductName) || other.requestedProductName == requestedProductName)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.productImageUrl, productImageUrl) || other.productImageUrl == productImageUrl)&&(identical(other.origin, origin) || other.origin == origin)&&const DeepCollectionEquality().equals(other.nutritionFacts, nutritionFacts)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.matchType, matchType) || other.matchType == matchType)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.quantityCanonical, quantityCanonical) || other.quantityCanonical == quantityCanonical)&&(identical(other.measureUnitId, measureUnitId) || other.measureUnitId == measureUnitId)&&(identical(other.measureUnitLabel, measureUnitLabel) || other.measureUnitLabel == measureUnitLabel)&&(identical(other.recipeId, recipeId) || other.recipeId == recipeId)&&(identical(other.recipe, recipe) || other.recipe == recipe)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,mealSlot,title,rationale,requestedProductName,productId,productName,productImageUrl,origin,const DeepCollectionEquality().hash(nutritionFacts),const DeepCollectionEquality().hash(tags),matchType,quantity,quantityCanonical,measureUnitId,measureUnitLabel,recipeId,recipe,sortOrder]);

@override
String toString() {
  return 'MealPlanItem(id: $id, mealSlot: $mealSlot, title: $title, rationale: $rationale, requestedProductName: $requestedProductName, productId: $productId, productName: $productName, productImageUrl: $productImageUrl, origin: $origin, nutritionFacts: $nutritionFacts, tags: $tags, matchType: $matchType, quantity: $quantity, quantityCanonical: $quantityCanonical, measureUnitId: $measureUnitId, measureUnitLabel: $measureUnitLabel, recipeId: $recipeId, recipe: $recipe, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class $MealPlanItemCopyWith<$Res>  {
  factory $MealPlanItemCopyWith(MealPlanItem value, $Res Function(MealPlanItem) _then) = _$MealPlanItemCopyWithImpl;
@useResult
$Res call({
 String id, String mealSlot, String title, String rationale, String requestedProductName, String? productId, String? productName, String? productImageUrl, String? origin, Map<String, String> nutritionFacts, List<String> tags, String matchType, int quantity, int quantityCanonical, String? measureUnitId, String? measureUnitLabel, String? recipeId, RecipeDetail? recipe, int sortOrder
});


$RecipeDetailCopyWith<$Res>? get recipe;

}
/// @nodoc
class _$MealPlanItemCopyWithImpl<$Res>
    implements $MealPlanItemCopyWith<$Res> {
  _$MealPlanItemCopyWithImpl(this._self, this._then);

  final MealPlanItem _self;
  final $Res Function(MealPlanItem) _then;

/// Create a copy of MealPlanItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? mealSlot = null,Object? title = null,Object? rationale = null,Object? requestedProductName = null,Object? productId = freezed,Object? productName = freezed,Object? productImageUrl = freezed,Object? origin = freezed,Object? nutritionFacts = null,Object? tags = null,Object? matchType = null,Object? quantity = null,Object? quantityCanonical = null,Object? measureUnitId = freezed,Object? measureUnitLabel = freezed,Object? recipeId = freezed,Object? recipe = freezed,Object? sortOrder = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,mealSlot: null == mealSlot ? _self.mealSlot : mealSlot // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,rationale: null == rationale ? _self.rationale : rationale // ignore: cast_nullable_to_non_nullable
as String,requestedProductName: null == requestedProductName ? _self.requestedProductName : requestedProductName // ignore: cast_nullable_to_non_nullable
as String,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String?,productName: freezed == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String?,productImageUrl: freezed == productImageUrl ? _self.productImageUrl : productImageUrl // ignore: cast_nullable_to_non_nullable
as String?,origin: freezed == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as String?,nutritionFacts: null == nutritionFacts ? _self.nutritionFacts : nutritionFacts // ignore: cast_nullable_to_non_nullable
as Map<String, String>,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,matchType: null == matchType ? _self.matchType : matchType // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,quantityCanonical: null == quantityCanonical ? _self.quantityCanonical : quantityCanonical // ignore: cast_nullable_to_non_nullable
as int,measureUnitId: freezed == measureUnitId ? _self.measureUnitId : measureUnitId // ignore: cast_nullable_to_non_nullable
as String?,measureUnitLabel: freezed == measureUnitLabel ? _self.measureUnitLabel : measureUnitLabel // ignore: cast_nullable_to_non_nullable
as String?,recipeId: freezed == recipeId ? _self.recipeId : recipeId // ignore: cast_nullable_to_non_nullable
as String?,recipe: freezed == recipe ? _self.recipe : recipe // ignore: cast_nullable_to_non_nullable
as RecipeDetail?,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of MealPlanItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RecipeDetailCopyWith<$Res>? get recipe {
    if (_self.recipe == null) {
    return null;
  }

  return $RecipeDetailCopyWith<$Res>(_self.recipe!, (value) {
    return _then(_self.copyWith(recipe: value));
  });
}
}


/// Adds pattern-matching-related methods to [MealPlanItem].
extension MealPlanItemPatterns on MealPlanItem {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MealPlanItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MealPlanItem() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MealPlanItem value)  $default,){
final _that = this;
switch (_that) {
case _MealPlanItem():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MealPlanItem value)?  $default,){
final _that = this;
switch (_that) {
case _MealPlanItem() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String mealSlot,  String title,  String rationale,  String requestedProductName,  String? productId,  String? productName,  String? productImageUrl,  String? origin,  Map<String, String> nutritionFacts,  List<String> tags,  String matchType,  int quantity,  int quantityCanonical,  String? measureUnitId,  String? measureUnitLabel,  String? recipeId,  RecipeDetail? recipe,  int sortOrder)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MealPlanItem() when $default != null:
return $default(_that.id,_that.mealSlot,_that.title,_that.rationale,_that.requestedProductName,_that.productId,_that.productName,_that.productImageUrl,_that.origin,_that.nutritionFacts,_that.tags,_that.matchType,_that.quantity,_that.quantityCanonical,_that.measureUnitId,_that.measureUnitLabel,_that.recipeId,_that.recipe,_that.sortOrder);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String mealSlot,  String title,  String rationale,  String requestedProductName,  String? productId,  String? productName,  String? productImageUrl,  String? origin,  Map<String, String> nutritionFacts,  List<String> tags,  String matchType,  int quantity,  int quantityCanonical,  String? measureUnitId,  String? measureUnitLabel,  String? recipeId,  RecipeDetail? recipe,  int sortOrder)  $default,) {final _that = this;
switch (_that) {
case _MealPlanItem():
return $default(_that.id,_that.mealSlot,_that.title,_that.rationale,_that.requestedProductName,_that.productId,_that.productName,_that.productImageUrl,_that.origin,_that.nutritionFacts,_that.tags,_that.matchType,_that.quantity,_that.quantityCanonical,_that.measureUnitId,_that.measureUnitLabel,_that.recipeId,_that.recipe,_that.sortOrder);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String mealSlot,  String title,  String rationale,  String requestedProductName,  String? productId,  String? productName,  String? productImageUrl,  String? origin,  Map<String, String> nutritionFacts,  List<String> tags,  String matchType,  int quantity,  int quantityCanonical,  String? measureUnitId,  String? measureUnitLabel,  String? recipeId,  RecipeDetail? recipe,  int sortOrder)?  $default,) {final _that = this;
switch (_that) {
case _MealPlanItem() when $default != null:
return $default(_that.id,_that.mealSlot,_that.title,_that.rationale,_that.requestedProductName,_that.productId,_that.productName,_that.productImageUrl,_that.origin,_that.nutritionFacts,_that.tags,_that.matchType,_that.quantity,_that.quantityCanonical,_that.measureUnitId,_that.measureUnitLabel,_that.recipeId,_that.recipe,_that.sortOrder);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MealPlanItem implements MealPlanItem {
  const _MealPlanItem({required this.id, required this.mealSlot, required this.title, required this.rationale, required this.requestedProductName, this.productId, this.productName, this.productImageUrl, this.origin, final  Map<String, String> nutritionFacts = const <String, String>{}, final  List<String> tags = const <String>[], required this.matchType, required this.quantity, this.quantityCanonical = 0, this.measureUnitId, this.measureUnitLabel, this.recipeId, this.recipe, required this.sortOrder}): _nutritionFacts = nutritionFacts,_tags = tags;
  factory _MealPlanItem.fromJson(Map<String, dynamic> json) => _$MealPlanItemFromJson(json);

@override final  String id;
@override final  String mealSlot;
@override final  String title;
@override final  String rationale;
@override final  String requestedProductName;
@override final  String? productId;
@override final  String? productName;
@override final  String? productImageUrl;
@override final  String? origin;
 final  Map<String, String> _nutritionFacts;
@override@JsonKey() Map<String, String> get nutritionFacts {
  if (_nutritionFacts is EqualUnmodifiableMapView) return _nutritionFacts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_nutritionFacts);
}

 final  List<String> _tags;
@override@JsonKey() List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

@override final  String matchType;
@override final  int quantity;
@override@JsonKey() final  int quantityCanonical;
@override final  String? measureUnitId;
@override final  String? measureUnitLabel;
@override final  String? recipeId;
@override final  RecipeDetail? recipe;
@override final  int sortOrder;

/// Create a copy of MealPlanItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MealPlanItemCopyWith<_MealPlanItem> get copyWith => __$MealPlanItemCopyWithImpl<_MealPlanItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MealPlanItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MealPlanItem&&(identical(other.id, id) || other.id == id)&&(identical(other.mealSlot, mealSlot) || other.mealSlot == mealSlot)&&(identical(other.title, title) || other.title == title)&&(identical(other.rationale, rationale) || other.rationale == rationale)&&(identical(other.requestedProductName, requestedProductName) || other.requestedProductName == requestedProductName)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.productImageUrl, productImageUrl) || other.productImageUrl == productImageUrl)&&(identical(other.origin, origin) || other.origin == origin)&&const DeepCollectionEquality().equals(other._nutritionFacts, _nutritionFacts)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.matchType, matchType) || other.matchType == matchType)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.quantityCanonical, quantityCanonical) || other.quantityCanonical == quantityCanonical)&&(identical(other.measureUnitId, measureUnitId) || other.measureUnitId == measureUnitId)&&(identical(other.measureUnitLabel, measureUnitLabel) || other.measureUnitLabel == measureUnitLabel)&&(identical(other.recipeId, recipeId) || other.recipeId == recipeId)&&(identical(other.recipe, recipe) || other.recipe == recipe)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,mealSlot,title,rationale,requestedProductName,productId,productName,productImageUrl,origin,const DeepCollectionEquality().hash(_nutritionFacts),const DeepCollectionEquality().hash(_tags),matchType,quantity,quantityCanonical,measureUnitId,measureUnitLabel,recipeId,recipe,sortOrder]);

@override
String toString() {
  return 'MealPlanItem(id: $id, mealSlot: $mealSlot, title: $title, rationale: $rationale, requestedProductName: $requestedProductName, productId: $productId, productName: $productName, productImageUrl: $productImageUrl, origin: $origin, nutritionFacts: $nutritionFacts, tags: $tags, matchType: $matchType, quantity: $quantity, quantityCanonical: $quantityCanonical, measureUnitId: $measureUnitId, measureUnitLabel: $measureUnitLabel, recipeId: $recipeId, recipe: $recipe, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class _$MealPlanItemCopyWith<$Res> implements $MealPlanItemCopyWith<$Res> {
  factory _$MealPlanItemCopyWith(_MealPlanItem value, $Res Function(_MealPlanItem) _then) = __$MealPlanItemCopyWithImpl;
@override @useResult
$Res call({
 String id, String mealSlot, String title, String rationale, String requestedProductName, String? productId, String? productName, String? productImageUrl, String? origin, Map<String, String> nutritionFacts, List<String> tags, String matchType, int quantity, int quantityCanonical, String? measureUnitId, String? measureUnitLabel, String? recipeId, RecipeDetail? recipe, int sortOrder
});


@override $RecipeDetailCopyWith<$Res>? get recipe;

}
/// @nodoc
class __$MealPlanItemCopyWithImpl<$Res>
    implements _$MealPlanItemCopyWith<$Res> {
  __$MealPlanItemCopyWithImpl(this._self, this._then);

  final _MealPlanItem _self;
  final $Res Function(_MealPlanItem) _then;

/// Create a copy of MealPlanItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? mealSlot = null,Object? title = null,Object? rationale = null,Object? requestedProductName = null,Object? productId = freezed,Object? productName = freezed,Object? productImageUrl = freezed,Object? origin = freezed,Object? nutritionFacts = null,Object? tags = null,Object? matchType = null,Object? quantity = null,Object? quantityCanonical = null,Object? measureUnitId = freezed,Object? measureUnitLabel = freezed,Object? recipeId = freezed,Object? recipe = freezed,Object? sortOrder = null,}) {
  return _then(_MealPlanItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,mealSlot: null == mealSlot ? _self.mealSlot : mealSlot // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,rationale: null == rationale ? _self.rationale : rationale // ignore: cast_nullable_to_non_nullable
as String,requestedProductName: null == requestedProductName ? _self.requestedProductName : requestedProductName // ignore: cast_nullable_to_non_nullable
as String,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String?,productName: freezed == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String?,productImageUrl: freezed == productImageUrl ? _self.productImageUrl : productImageUrl // ignore: cast_nullable_to_non_nullable
as String?,origin: freezed == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as String?,nutritionFacts: null == nutritionFacts ? _self._nutritionFacts : nutritionFacts // ignore: cast_nullable_to_non_nullable
as Map<String, String>,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,matchType: null == matchType ? _self.matchType : matchType // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,quantityCanonical: null == quantityCanonical ? _self.quantityCanonical : quantityCanonical // ignore: cast_nullable_to_non_nullable
as int,measureUnitId: freezed == measureUnitId ? _self.measureUnitId : measureUnitId // ignore: cast_nullable_to_non_nullable
as String?,measureUnitLabel: freezed == measureUnitLabel ? _self.measureUnitLabel : measureUnitLabel // ignore: cast_nullable_to_non_nullable
as String?,recipeId: freezed == recipeId ? _self.recipeId : recipeId // ignore: cast_nullable_to_non_nullable
as String?,recipe: freezed == recipe ? _self.recipe : recipe // ignore: cast_nullable_to_non_nullable
as RecipeDetail?,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of MealPlanItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RecipeDetailCopyWith<$Res>? get recipe {
    if (_self.recipe == null) {
    return null;
  }

  return $RecipeDetailCopyWith<$Res>(_self.recipe!, (value) {
    return _then(_self.copyWith(recipe: value));
  });
}
}


/// @nodoc
mixin _$MealPlanDay {

 String get id; int get dayIndex; String get label; String? get planDate; List<MealPlanItem> get items;
/// Create a copy of MealPlanDay
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MealPlanDayCopyWith<MealPlanDay> get copyWith => _$MealPlanDayCopyWithImpl<MealPlanDay>(this as MealPlanDay, _$identity);

  /// Serializes this MealPlanDay to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MealPlanDay&&(identical(other.id, id) || other.id == id)&&(identical(other.dayIndex, dayIndex) || other.dayIndex == dayIndex)&&(identical(other.label, label) || other.label == label)&&(identical(other.planDate, planDate) || other.planDate == planDate)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,dayIndex,label,planDate,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'MealPlanDay(id: $id, dayIndex: $dayIndex, label: $label, planDate: $planDate, items: $items)';
}


}

/// @nodoc
abstract mixin class $MealPlanDayCopyWith<$Res>  {
  factory $MealPlanDayCopyWith(MealPlanDay value, $Res Function(MealPlanDay) _then) = _$MealPlanDayCopyWithImpl;
@useResult
$Res call({
 String id, int dayIndex, String label, String? planDate, List<MealPlanItem> items
});




}
/// @nodoc
class _$MealPlanDayCopyWithImpl<$Res>
    implements $MealPlanDayCopyWith<$Res> {
  _$MealPlanDayCopyWithImpl(this._self, this._then);

  final MealPlanDay _self;
  final $Res Function(MealPlanDay) _then;

/// Create a copy of MealPlanDay
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? dayIndex = null,Object? label = null,Object? planDate = freezed,Object? items = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,dayIndex: null == dayIndex ? _self.dayIndex : dayIndex // ignore: cast_nullable_to_non_nullable
as int,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,planDate: freezed == planDate ? _self.planDate : planDate // ignore: cast_nullable_to_non_nullable
as String?,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<MealPlanItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [MealPlanDay].
extension MealPlanDayPatterns on MealPlanDay {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MealPlanDay value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MealPlanDay() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MealPlanDay value)  $default,){
final _that = this;
switch (_that) {
case _MealPlanDay():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MealPlanDay value)?  $default,){
final _that = this;
switch (_that) {
case _MealPlanDay() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  int dayIndex,  String label,  String? planDate,  List<MealPlanItem> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MealPlanDay() when $default != null:
return $default(_that.id,_that.dayIndex,_that.label,_that.planDate,_that.items);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  int dayIndex,  String label,  String? planDate,  List<MealPlanItem> items)  $default,) {final _that = this;
switch (_that) {
case _MealPlanDay():
return $default(_that.id,_that.dayIndex,_that.label,_that.planDate,_that.items);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  int dayIndex,  String label,  String? planDate,  List<MealPlanItem> items)?  $default,) {final _that = this;
switch (_that) {
case _MealPlanDay() when $default != null:
return $default(_that.id,_that.dayIndex,_that.label,_that.planDate,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MealPlanDay implements MealPlanDay {
  const _MealPlanDay({required this.id, required this.dayIndex, required this.label, this.planDate, required final  List<MealPlanItem> items}): _items = items;
  factory _MealPlanDay.fromJson(Map<String, dynamic> json) => _$MealPlanDayFromJson(json);

@override final  String id;
@override final  int dayIndex;
@override final  String label;
@override final  String? planDate;
 final  List<MealPlanItem> _items;
@override List<MealPlanItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of MealPlanDay
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MealPlanDayCopyWith<_MealPlanDay> get copyWith => __$MealPlanDayCopyWithImpl<_MealPlanDay>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MealPlanDayToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MealPlanDay&&(identical(other.id, id) || other.id == id)&&(identical(other.dayIndex, dayIndex) || other.dayIndex == dayIndex)&&(identical(other.label, label) || other.label == label)&&(identical(other.planDate, planDate) || other.planDate == planDate)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,dayIndex,label,planDate,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'MealPlanDay(id: $id, dayIndex: $dayIndex, label: $label, planDate: $planDate, items: $items)';
}


}

/// @nodoc
abstract mixin class _$MealPlanDayCopyWith<$Res> implements $MealPlanDayCopyWith<$Res> {
  factory _$MealPlanDayCopyWith(_MealPlanDay value, $Res Function(_MealPlanDay) _then) = __$MealPlanDayCopyWithImpl;
@override @useResult
$Res call({
 String id, int dayIndex, String label, String? planDate, List<MealPlanItem> items
});




}
/// @nodoc
class __$MealPlanDayCopyWithImpl<$Res>
    implements _$MealPlanDayCopyWith<$Res> {
  __$MealPlanDayCopyWithImpl(this._self, this._then);

  final _MealPlanDay _self;
  final $Res Function(_MealPlanDay) _then;

/// Create a copy of MealPlanDay
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? dayIndex = null,Object? label = null,Object? planDate = freezed,Object? items = null,}) {
  return _then(_MealPlanDay(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,dayIndex: null == dayIndex ? _self.dayIndex : dayIndex // ignore: cast_nullable_to_non_nullable
as int,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,planDate: freezed == planDate ? _self.planDate : planDate // ignore: cast_nullable_to_non_nullable
as String?,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<MealPlanItem>,
  ));
}


}


/// @nodoc
mixin _$MealPlanProfileSnapshot {

 int get age; String get gender; int get heightCm; int get weightKg; String get lifestyle; String get activityLevel; List<String> get allergies; List<String> get goals;
/// Create a copy of MealPlanProfileSnapshot
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MealPlanProfileSnapshotCopyWith<MealPlanProfileSnapshot> get copyWith => _$MealPlanProfileSnapshotCopyWithImpl<MealPlanProfileSnapshot>(this as MealPlanProfileSnapshot, _$identity);

  /// Serializes this MealPlanProfileSnapshot to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MealPlanProfileSnapshot&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.heightCm, heightCm) || other.heightCm == heightCm)&&(identical(other.weightKg, weightKg) || other.weightKg == weightKg)&&(identical(other.lifestyle, lifestyle) || other.lifestyle == lifestyle)&&(identical(other.activityLevel, activityLevel) || other.activityLevel == activityLevel)&&const DeepCollectionEquality().equals(other.allergies, allergies)&&const DeepCollectionEquality().equals(other.goals, goals));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,age,gender,heightCm,weightKg,lifestyle,activityLevel,const DeepCollectionEquality().hash(allergies),const DeepCollectionEquality().hash(goals));

@override
String toString() {
  return 'MealPlanProfileSnapshot(age: $age, gender: $gender, heightCm: $heightCm, weightKg: $weightKg, lifestyle: $lifestyle, activityLevel: $activityLevel, allergies: $allergies, goals: $goals)';
}


}

/// @nodoc
abstract mixin class $MealPlanProfileSnapshotCopyWith<$Res>  {
  factory $MealPlanProfileSnapshotCopyWith(MealPlanProfileSnapshot value, $Res Function(MealPlanProfileSnapshot) _then) = _$MealPlanProfileSnapshotCopyWithImpl;
@useResult
$Res call({
 int age, String gender, int heightCm, int weightKg, String lifestyle, String activityLevel, List<String> allergies, List<String> goals
});




}
/// @nodoc
class _$MealPlanProfileSnapshotCopyWithImpl<$Res>
    implements $MealPlanProfileSnapshotCopyWith<$Res> {
  _$MealPlanProfileSnapshotCopyWithImpl(this._self, this._then);

  final MealPlanProfileSnapshot _self;
  final $Res Function(MealPlanProfileSnapshot) _then;

/// Create a copy of MealPlanProfileSnapshot
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? age = null,Object? gender = null,Object? heightCm = null,Object? weightKg = null,Object? lifestyle = null,Object? activityLevel = null,Object? allergies = null,Object? goals = null,}) {
  return _then(_self.copyWith(
age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,heightCm: null == heightCm ? _self.heightCm : heightCm // ignore: cast_nullable_to_non_nullable
as int,weightKg: null == weightKg ? _self.weightKg : weightKg // ignore: cast_nullable_to_non_nullable
as int,lifestyle: null == lifestyle ? _self.lifestyle : lifestyle // ignore: cast_nullable_to_non_nullable
as String,activityLevel: null == activityLevel ? _self.activityLevel : activityLevel // ignore: cast_nullable_to_non_nullable
as String,allergies: null == allergies ? _self.allergies : allergies // ignore: cast_nullable_to_non_nullable
as List<String>,goals: null == goals ? _self.goals : goals // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [MealPlanProfileSnapshot].
extension MealPlanProfileSnapshotPatterns on MealPlanProfileSnapshot {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MealPlanProfileSnapshot value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MealPlanProfileSnapshot() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MealPlanProfileSnapshot value)  $default,){
final _that = this;
switch (_that) {
case _MealPlanProfileSnapshot():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MealPlanProfileSnapshot value)?  $default,){
final _that = this;
switch (_that) {
case _MealPlanProfileSnapshot() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int age,  String gender,  int heightCm,  int weightKg,  String lifestyle,  String activityLevel,  List<String> allergies,  List<String> goals)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MealPlanProfileSnapshot() when $default != null:
return $default(_that.age,_that.gender,_that.heightCm,_that.weightKg,_that.lifestyle,_that.activityLevel,_that.allergies,_that.goals);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int age,  String gender,  int heightCm,  int weightKg,  String lifestyle,  String activityLevel,  List<String> allergies,  List<String> goals)  $default,) {final _that = this;
switch (_that) {
case _MealPlanProfileSnapshot():
return $default(_that.age,_that.gender,_that.heightCm,_that.weightKg,_that.lifestyle,_that.activityLevel,_that.allergies,_that.goals);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int age,  String gender,  int heightCm,  int weightKg,  String lifestyle,  String activityLevel,  List<String> allergies,  List<String> goals)?  $default,) {final _that = this;
switch (_that) {
case _MealPlanProfileSnapshot() when $default != null:
return $default(_that.age,_that.gender,_that.heightCm,_that.weightKg,_that.lifestyle,_that.activityLevel,_that.allergies,_that.goals);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MealPlanProfileSnapshot implements MealPlanProfileSnapshot {
  const _MealPlanProfileSnapshot({required this.age, required this.gender, required this.heightCm, required this.weightKg, required this.lifestyle, required this.activityLevel, required final  List<String> allergies, required final  List<String> goals}): _allergies = allergies,_goals = goals;
  factory _MealPlanProfileSnapshot.fromJson(Map<String, dynamic> json) => _$MealPlanProfileSnapshotFromJson(json);

@override final  int age;
@override final  String gender;
@override final  int heightCm;
@override final  int weightKg;
@override final  String lifestyle;
@override final  String activityLevel;
 final  List<String> _allergies;
@override List<String> get allergies {
  if (_allergies is EqualUnmodifiableListView) return _allergies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_allergies);
}

 final  List<String> _goals;
@override List<String> get goals {
  if (_goals is EqualUnmodifiableListView) return _goals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_goals);
}


/// Create a copy of MealPlanProfileSnapshot
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MealPlanProfileSnapshotCopyWith<_MealPlanProfileSnapshot> get copyWith => __$MealPlanProfileSnapshotCopyWithImpl<_MealPlanProfileSnapshot>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MealPlanProfileSnapshotToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MealPlanProfileSnapshot&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.heightCm, heightCm) || other.heightCm == heightCm)&&(identical(other.weightKg, weightKg) || other.weightKg == weightKg)&&(identical(other.lifestyle, lifestyle) || other.lifestyle == lifestyle)&&(identical(other.activityLevel, activityLevel) || other.activityLevel == activityLevel)&&const DeepCollectionEquality().equals(other._allergies, _allergies)&&const DeepCollectionEquality().equals(other._goals, _goals));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,age,gender,heightCm,weightKg,lifestyle,activityLevel,const DeepCollectionEquality().hash(_allergies),const DeepCollectionEquality().hash(_goals));

@override
String toString() {
  return 'MealPlanProfileSnapshot(age: $age, gender: $gender, heightCm: $heightCm, weightKg: $weightKg, lifestyle: $lifestyle, activityLevel: $activityLevel, allergies: $allergies, goals: $goals)';
}


}

/// @nodoc
abstract mixin class _$MealPlanProfileSnapshotCopyWith<$Res> implements $MealPlanProfileSnapshotCopyWith<$Res> {
  factory _$MealPlanProfileSnapshotCopyWith(_MealPlanProfileSnapshot value, $Res Function(_MealPlanProfileSnapshot) _then) = __$MealPlanProfileSnapshotCopyWithImpl;
@override @useResult
$Res call({
 int age, String gender, int heightCm, int weightKg, String lifestyle, String activityLevel, List<String> allergies, List<String> goals
});




}
/// @nodoc
class __$MealPlanProfileSnapshotCopyWithImpl<$Res>
    implements _$MealPlanProfileSnapshotCopyWith<$Res> {
  __$MealPlanProfileSnapshotCopyWithImpl(this._self, this._then);

  final _MealPlanProfileSnapshot _self;
  final $Res Function(_MealPlanProfileSnapshot) _then;

/// Create a copy of MealPlanProfileSnapshot
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? age = null,Object? gender = null,Object? heightCm = null,Object? weightKg = null,Object? lifestyle = null,Object? activityLevel = null,Object? allergies = null,Object? goals = null,}) {
  return _then(_MealPlanProfileSnapshot(
age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,heightCm: null == heightCm ? _self.heightCm : heightCm // ignore: cast_nullable_to_non_nullable
as int,weightKg: null == weightKg ? _self.weightKg : weightKg // ignore: cast_nullable_to_non_nullable
as int,lifestyle: null == lifestyle ? _self.lifestyle : lifestyle // ignore: cast_nullable_to_non_nullable
as String,activityLevel: null == activityLevel ? _self.activityLevel : activityLevel // ignore: cast_nullable_to_non_nullable
as String,allergies: null == allergies ? _self._allergies : allergies // ignore: cast_nullable_to_non_nullable
as List<String>,goals: null == goals ? _self._goals : goals // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$MealPlanDetail {

 String get id; String get employeeId; String get employeeName; String get employerName; String get status; String get title; String? get startsOn; String? get endsOn; String? get activatedAt; String? get packageId; String? get failureReason; String? get adminNote; String? get reviewedAt; String get createdAt; String get updatedAt; List<MealPlanDay> get days; MealPlanProfileSnapshot? get profile;
/// Create a copy of MealPlanDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MealPlanDetailCopyWith<MealPlanDetail> get copyWith => _$MealPlanDetailCopyWithImpl<MealPlanDetail>(this as MealPlanDetail, _$identity);

  /// Serializes this MealPlanDetail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MealPlanDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.employeeName, employeeName) || other.employeeName == employeeName)&&(identical(other.employerName, employerName) || other.employerName == employerName)&&(identical(other.status, status) || other.status == status)&&(identical(other.title, title) || other.title == title)&&(identical(other.startsOn, startsOn) || other.startsOn == startsOn)&&(identical(other.endsOn, endsOn) || other.endsOn == endsOn)&&(identical(other.activatedAt, activatedAt) || other.activatedAt == activatedAt)&&(identical(other.packageId, packageId) || other.packageId == packageId)&&(identical(other.failureReason, failureReason) || other.failureReason == failureReason)&&(identical(other.adminNote, adminNote) || other.adminNote == adminNote)&&(identical(other.reviewedAt, reviewedAt) || other.reviewedAt == reviewedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other.days, days)&&(identical(other.profile, profile) || other.profile == profile));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,employeeId,employeeName,employerName,status,title,startsOn,endsOn,activatedAt,packageId,failureReason,adminNote,reviewedAt,createdAt,updatedAt,const DeepCollectionEquality().hash(days),profile);

@override
String toString() {
  return 'MealPlanDetail(id: $id, employeeId: $employeeId, employeeName: $employeeName, employerName: $employerName, status: $status, title: $title, startsOn: $startsOn, endsOn: $endsOn, activatedAt: $activatedAt, packageId: $packageId, failureReason: $failureReason, adminNote: $adminNote, reviewedAt: $reviewedAt, createdAt: $createdAt, updatedAt: $updatedAt, days: $days, profile: $profile)';
}


}

/// @nodoc
abstract mixin class $MealPlanDetailCopyWith<$Res>  {
  factory $MealPlanDetailCopyWith(MealPlanDetail value, $Res Function(MealPlanDetail) _then) = _$MealPlanDetailCopyWithImpl;
@useResult
$Res call({
 String id, String employeeId, String employeeName, String employerName, String status, String title, String? startsOn, String? endsOn, String? activatedAt, String? packageId, String? failureReason, String? adminNote, String? reviewedAt, String createdAt, String updatedAt, List<MealPlanDay> days, MealPlanProfileSnapshot? profile
});


$MealPlanProfileSnapshotCopyWith<$Res>? get profile;

}
/// @nodoc
class _$MealPlanDetailCopyWithImpl<$Res>
    implements $MealPlanDetailCopyWith<$Res> {
  _$MealPlanDetailCopyWithImpl(this._self, this._then);

  final MealPlanDetail _self;
  final $Res Function(MealPlanDetail) _then;

/// Create a copy of MealPlanDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? employeeId = null,Object? employeeName = null,Object? employerName = null,Object? status = null,Object? title = null,Object? startsOn = freezed,Object? endsOn = freezed,Object? activatedAt = freezed,Object? packageId = freezed,Object? failureReason = freezed,Object? adminNote = freezed,Object? reviewedAt = freezed,Object? createdAt = null,Object? updatedAt = null,Object? days = null,Object? profile = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,employeeName: null == employeeName ? _self.employeeName : employeeName // ignore: cast_nullable_to_non_nullable
as String,employerName: null == employerName ? _self.employerName : employerName // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,startsOn: freezed == startsOn ? _self.startsOn : startsOn // ignore: cast_nullable_to_non_nullable
as String?,endsOn: freezed == endsOn ? _self.endsOn : endsOn // ignore: cast_nullable_to_non_nullable
as String?,activatedAt: freezed == activatedAt ? _self.activatedAt : activatedAt // ignore: cast_nullable_to_non_nullable
as String?,packageId: freezed == packageId ? _self.packageId : packageId // ignore: cast_nullable_to_non_nullable
as String?,failureReason: freezed == failureReason ? _self.failureReason : failureReason // ignore: cast_nullable_to_non_nullable
as String?,adminNote: freezed == adminNote ? _self.adminNote : adminNote // ignore: cast_nullable_to_non_nullable
as String?,reviewedAt: freezed == reviewedAt ? _self.reviewedAt : reviewedAt // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,days: null == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as List<MealPlanDay>,profile: freezed == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as MealPlanProfileSnapshot?,
  ));
}
/// Create a copy of MealPlanDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MealPlanProfileSnapshotCopyWith<$Res>? get profile {
    if (_self.profile == null) {
    return null;
  }

  return $MealPlanProfileSnapshotCopyWith<$Res>(_self.profile!, (value) {
    return _then(_self.copyWith(profile: value));
  });
}
}


/// Adds pattern-matching-related methods to [MealPlanDetail].
extension MealPlanDetailPatterns on MealPlanDetail {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MealPlanDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MealPlanDetail() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MealPlanDetail value)  $default,){
final _that = this;
switch (_that) {
case _MealPlanDetail():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MealPlanDetail value)?  $default,){
final _that = this;
switch (_that) {
case _MealPlanDetail() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String employeeId,  String employeeName,  String employerName,  String status,  String title,  String? startsOn,  String? endsOn,  String? activatedAt,  String? packageId,  String? failureReason,  String? adminNote,  String? reviewedAt,  String createdAt,  String updatedAt,  List<MealPlanDay> days,  MealPlanProfileSnapshot? profile)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MealPlanDetail() when $default != null:
return $default(_that.id,_that.employeeId,_that.employeeName,_that.employerName,_that.status,_that.title,_that.startsOn,_that.endsOn,_that.activatedAt,_that.packageId,_that.failureReason,_that.adminNote,_that.reviewedAt,_that.createdAt,_that.updatedAt,_that.days,_that.profile);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String employeeId,  String employeeName,  String employerName,  String status,  String title,  String? startsOn,  String? endsOn,  String? activatedAt,  String? packageId,  String? failureReason,  String? adminNote,  String? reviewedAt,  String createdAt,  String updatedAt,  List<MealPlanDay> days,  MealPlanProfileSnapshot? profile)  $default,) {final _that = this;
switch (_that) {
case _MealPlanDetail():
return $default(_that.id,_that.employeeId,_that.employeeName,_that.employerName,_that.status,_that.title,_that.startsOn,_that.endsOn,_that.activatedAt,_that.packageId,_that.failureReason,_that.adminNote,_that.reviewedAt,_that.createdAt,_that.updatedAt,_that.days,_that.profile);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String employeeId,  String employeeName,  String employerName,  String status,  String title,  String? startsOn,  String? endsOn,  String? activatedAt,  String? packageId,  String? failureReason,  String? adminNote,  String? reviewedAt,  String createdAt,  String updatedAt,  List<MealPlanDay> days,  MealPlanProfileSnapshot? profile)?  $default,) {final _that = this;
switch (_that) {
case _MealPlanDetail() when $default != null:
return $default(_that.id,_that.employeeId,_that.employeeName,_that.employerName,_that.status,_that.title,_that.startsOn,_that.endsOn,_that.activatedAt,_that.packageId,_that.failureReason,_that.adminNote,_that.reviewedAt,_that.createdAt,_that.updatedAt,_that.days,_that.profile);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MealPlanDetail implements MealPlanDetail {
  const _MealPlanDetail({required this.id, required this.employeeId, required this.employeeName, required this.employerName, required this.status, required this.title, this.startsOn, this.endsOn, this.activatedAt, this.packageId, this.failureReason, this.adminNote, this.reviewedAt, required this.createdAt, required this.updatedAt, required final  List<MealPlanDay> days, this.profile}): _days = days;
  factory _MealPlanDetail.fromJson(Map<String, dynamic> json) => _$MealPlanDetailFromJson(json);

@override final  String id;
@override final  String employeeId;
@override final  String employeeName;
@override final  String employerName;
@override final  String status;
@override final  String title;
@override final  String? startsOn;
@override final  String? endsOn;
@override final  String? activatedAt;
@override final  String? packageId;
@override final  String? failureReason;
@override final  String? adminNote;
@override final  String? reviewedAt;
@override final  String createdAt;
@override final  String updatedAt;
 final  List<MealPlanDay> _days;
@override List<MealPlanDay> get days {
  if (_days is EqualUnmodifiableListView) return _days;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_days);
}

@override final  MealPlanProfileSnapshot? profile;

/// Create a copy of MealPlanDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MealPlanDetailCopyWith<_MealPlanDetail> get copyWith => __$MealPlanDetailCopyWithImpl<_MealPlanDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MealPlanDetailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MealPlanDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.employeeName, employeeName) || other.employeeName == employeeName)&&(identical(other.employerName, employerName) || other.employerName == employerName)&&(identical(other.status, status) || other.status == status)&&(identical(other.title, title) || other.title == title)&&(identical(other.startsOn, startsOn) || other.startsOn == startsOn)&&(identical(other.endsOn, endsOn) || other.endsOn == endsOn)&&(identical(other.activatedAt, activatedAt) || other.activatedAt == activatedAt)&&(identical(other.packageId, packageId) || other.packageId == packageId)&&(identical(other.failureReason, failureReason) || other.failureReason == failureReason)&&(identical(other.adminNote, adminNote) || other.adminNote == adminNote)&&(identical(other.reviewedAt, reviewedAt) || other.reviewedAt == reviewedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other._days, _days)&&(identical(other.profile, profile) || other.profile == profile));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,employeeId,employeeName,employerName,status,title,startsOn,endsOn,activatedAt,packageId,failureReason,adminNote,reviewedAt,createdAt,updatedAt,const DeepCollectionEquality().hash(_days),profile);

@override
String toString() {
  return 'MealPlanDetail(id: $id, employeeId: $employeeId, employeeName: $employeeName, employerName: $employerName, status: $status, title: $title, startsOn: $startsOn, endsOn: $endsOn, activatedAt: $activatedAt, packageId: $packageId, failureReason: $failureReason, adminNote: $adminNote, reviewedAt: $reviewedAt, createdAt: $createdAt, updatedAt: $updatedAt, days: $days, profile: $profile)';
}


}

/// @nodoc
abstract mixin class _$MealPlanDetailCopyWith<$Res> implements $MealPlanDetailCopyWith<$Res> {
  factory _$MealPlanDetailCopyWith(_MealPlanDetail value, $Res Function(_MealPlanDetail) _then) = __$MealPlanDetailCopyWithImpl;
@override @useResult
$Res call({
 String id, String employeeId, String employeeName, String employerName, String status, String title, String? startsOn, String? endsOn, String? activatedAt, String? packageId, String? failureReason, String? adminNote, String? reviewedAt, String createdAt, String updatedAt, List<MealPlanDay> days, MealPlanProfileSnapshot? profile
});


@override $MealPlanProfileSnapshotCopyWith<$Res>? get profile;

}
/// @nodoc
class __$MealPlanDetailCopyWithImpl<$Res>
    implements _$MealPlanDetailCopyWith<$Res> {
  __$MealPlanDetailCopyWithImpl(this._self, this._then);

  final _MealPlanDetail _self;
  final $Res Function(_MealPlanDetail) _then;

/// Create a copy of MealPlanDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? employeeId = null,Object? employeeName = null,Object? employerName = null,Object? status = null,Object? title = null,Object? startsOn = freezed,Object? endsOn = freezed,Object? activatedAt = freezed,Object? packageId = freezed,Object? failureReason = freezed,Object? adminNote = freezed,Object? reviewedAt = freezed,Object? createdAt = null,Object? updatedAt = null,Object? days = null,Object? profile = freezed,}) {
  return _then(_MealPlanDetail(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,employeeName: null == employeeName ? _self.employeeName : employeeName // ignore: cast_nullable_to_non_nullable
as String,employerName: null == employerName ? _self.employerName : employerName // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,startsOn: freezed == startsOn ? _self.startsOn : startsOn // ignore: cast_nullable_to_non_nullable
as String?,endsOn: freezed == endsOn ? _self.endsOn : endsOn // ignore: cast_nullable_to_non_nullable
as String?,activatedAt: freezed == activatedAt ? _self.activatedAt : activatedAt // ignore: cast_nullable_to_non_nullable
as String?,packageId: freezed == packageId ? _self.packageId : packageId // ignore: cast_nullable_to_non_nullable
as String?,failureReason: freezed == failureReason ? _self.failureReason : failureReason // ignore: cast_nullable_to_non_nullable
as String?,adminNote: freezed == adminNote ? _self.adminNote : adminNote // ignore: cast_nullable_to_non_nullable
as String?,reviewedAt: freezed == reviewedAt ? _self.reviewedAt : reviewedAt // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,days: null == days ? _self._days : days // ignore: cast_nullable_to_non_nullable
as List<MealPlanDay>,profile: freezed == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as MealPlanProfileSnapshot?,
  ));
}

/// Create a copy of MealPlanDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MealPlanProfileSnapshotCopyWith<$Res>? get profile {
    if (_self.profile == null) {
    return null;
  }

  return $MealPlanProfileSnapshotCopyWith<$Res>(_self.profile!, (value) {
    return _then(_self.copyWith(profile: value));
  });
}
}


/// @nodoc
mixin _$RecipeIngredient {

 String get id; String get productId; String get productName; String get productImageUrl; String? get measureUnitId; String? get measureUnitLabel; int get quantity; int get quantityCanonical; int get haveCanonical; bool get isShort; int get sortOrder;
/// Create a copy of RecipeIngredient
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecipeIngredientCopyWith<RecipeIngredient> get copyWith => _$RecipeIngredientCopyWithImpl<RecipeIngredient>(this as RecipeIngredient, _$identity);

  /// Serializes this RecipeIngredient to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecipeIngredient&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.productImageUrl, productImageUrl) || other.productImageUrl == productImageUrl)&&(identical(other.measureUnitId, measureUnitId) || other.measureUnitId == measureUnitId)&&(identical(other.measureUnitLabel, measureUnitLabel) || other.measureUnitLabel == measureUnitLabel)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.quantityCanonical, quantityCanonical) || other.quantityCanonical == quantityCanonical)&&(identical(other.haveCanonical, haveCanonical) || other.haveCanonical == haveCanonical)&&(identical(other.isShort, isShort) || other.isShort == isShort)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,productName,productImageUrl,measureUnitId,measureUnitLabel,quantity,quantityCanonical,haveCanonical,isShort,sortOrder);

@override
String toString() {
  return 'RecipeIngredient(id: $id, productId: $productId, productName: $productName, productImageUrl: $productImageUrl, measureUnitId: $measureUnitId, measureUnitLabel: $measureUnitLabel, quantity: $quantity, quantityCanonical: $quantityCanonical, haveCanonical: $haveCanonical, isShort: $isShort, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class $RecipeIngredientCopyWith<$Res>  {
  factory $RecipeIngredientCopyWith(RecipeIngredient value, $Res Function(RecipeIngredient) _then) = _$RecipeIngredientCopyWithImpl;
@useResult
$Res call({
 String id, String productId, String productName, String productImageUrl, String? measureUnitId, String? measureUnitLabel, int quantity, int quantityCanonical, int haveCanonical, bool isShort, int sortOrder
});




}
/// @nodoc
class _$RecipeIngredientCopyWithImpl<$Res>
    implements $RecipeIngredientCopyWith<$Res> {
  _$RecipeIngredientCopyWithImpl(this._self, this._then);

  final RecipeIngredient _self;
  final $Res Function(RecipeIngredient) _then;

/// Create a copy of RecipeIngredient
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? productId = null,Object? productName = null,Object? productImageUrl = null,Object? measureUnitId = freezed,Object? measureUnitLabel = freezed,Object? quantity = null,Object? quantityCanonical = null,Object? haveCanonical = null,Object? isShort = null,Object? sortOrder = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,productImageUrl: null == productImageUrl ? _self.productImageUrl : productImageUrl // ignore: cast_nullable_to_non_nullable
as String,measureUnitId: freezed == measureUnitId ? _self.measureUnitId : measureUnitId // ignore: cast_nullable_to_non_nullable
as String?,measureUnitLabel: freezed == measureUnitLabel ? _self.measureUnitLabel : measureUnitLabel // ignore: cast_nullable_to_non_nullable
as String?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,quantityCanonical: null == quantityCanonical ? _self.quantityCanonical : quantityCanonical // ignore: cast_nullable_to_non_nullable
as int,haveCanonical: null == haveCanonical ? _self.haveCanonical : haveCanonical // ignore: cast_nullable_to_non_nullable
as int,isShort: null == isShort ? _self.isShort : isShort // ignore: cast_nullable_to_non_nullable
as bool,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [RecipeIngredient].
extension RecipeIngredientPatterns on RecipeIngredient {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecipeIngredient value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecipeIngredient() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecipeIngredient value)  $default,){
final _that = this;
switch (_that) {
case _RecipeIngredient():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecipeIngredient value)?  $default,){
final _that = this;
switch (_that) {
case _RecipeIngredient() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String productId,  String productName,  String productImageUrl,  String? measureUnitId,  String? measureUnitLabel,  int quantity,  int quantityCanonical,  int haveCanonical,  bool isShort,  int sortOrder)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecipeIngredient() when $default != null:
return $default(_that.id,_that.productId,_that.productName,_that.productImageUrl,_that.measureUnitId,_that.measureUnitLabel,_that.quantity,_that.quantityCanonical,_that.haveCanonical,_that.isShort,_that.sortOrder);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String productId,  String productName,  String productImageUrl,  String? measureUnitId,  String? measureUnitLabel,  int quantity,  int quantityCanonical,  int haveCanonical,  bool isShort,  int sortOrder)  $default,) {final _that = this;
switch (_that) {
case _RecipeIngredient():
return $default(_that.id,_that.productId,_that.productName,_that.productImageUrl,_that.measureUnitId,_that.measureUnitLabel,_that.quantity,_that.quantityCanonical,_that.haveCanonical,_that.isShort,_that.sortOrder);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String productId,  String productName,  String productImageUrl,  String? measureUnitId,  String? measureUnitLabel,  int quantity,  int quantityCanonical,  int haveCanonical,  bool isShort,  int sortOrder)?  $default,) {final _that = this;
switch (_that) {
case _RecipeIngredient() when $default != null:
return $default(_that.id,_that.productId,_that.productName,_that.productImageUrl,_that.measureUnitId,_that.measureUnitLabel,_that.quantity,_that.quantityCanonical,_that.haveCanonical,_that.isShort,_that.sortOrder);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecipeIngredient implements RecipeIngredient {
  const _RecipeIngredient({required this.id, required this.productId, required this.productName, required this.productImageUrl, this.measureUnitId, this.measureUnitLabel, required this.quantity, required this.quantityCanonical, this.haveCanonical = 0, this.isShort = false, required this.sortOrder});
  factory _RecipeIngredient.fromJson(Map<String, dynamic> json) => _$RecipeIngredientFromJson(json);

@override final  String id;
@override final  String productId;
@override final  String productName;
@override final  String productImageUrl;
@override final  String? measureUnitId;
@override final  String? measureUnitLabel;
@override final  int quantity;
@override final  int quantityCanonical;
@override@JsonKey() final  int haveCanonical;
@override@JsonKey() final  bool isShort;
@override final  int sortOrder;

/// Create a copy of RecipeIngredient
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecipeIngredientCopyWith<_RecipeIngredient> get copyWith => __$RecipeIngredientCopyWithImpl<_RecipeIngredient>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecipeIngredientToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecipeIngredient&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.productImageUrl, productImageUrl) || other.productImageUrl == productImageUrl)&&(identical(other.measureUnitId, measureUnitId) || other.measureUnitId == measureUnitId)&&(identical(other.measureUnitLabel, measureUnitLabel) || other.measureUnitLabel == measureUnitLabel)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.quantityCanonical, quantityCanonical) || other.quantityCanonical == quantityCanonical)&&(identical(other.haveCanonical, haveCanonical) || other.haveCanonical == haveCanonical)&&(identical(other.isShort, isShort) || other.isShort == isShort)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,productName,productImageUrl,measureUnitId,measureUnitLabel,quantity,quantityCanonical,haveCanonical,isShort,sortOrder);

@override
String toString() {
  return 'RecipeIngredient(id: $id, productId: $productId, productName: $productName, productImageUrl: $productImageUrl, measureUnitId: $measureUnitId, measureUnitLabel: $measureUnitLabel, quantity: $quantity, quantityCanonical: $quantityCanonical, haveCanonical: $haveCanonical, isShort: $isShort, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class _$RecipeIngredientCopyWith<$Res> implements $RecipeIngredientCopyWith<$Res> {
  factory _$RecipeIngredientCopyWith(_RecipeIngredient value, $Res Function(_RecipeIngredient) _then) = __$RecipeIngredientCopyWithImpl;
@override @useResult
$Res call({
 String id, String productId, String productName, String productImageUrl, String? measureUnitId, String? measureUnitLabel, int quantity, int quantityCanonical, int haveCanonical, bool isShort, int sortOrder
});




}
/// @nodoc
class __$RecipeIngredientCopyWithImpl<$Res>
    implements _$RecipeIngredientCopyWith<$Res> {
  __$RecipeIngredientCopyWithImpl(this._self, this._then);

  final _RecipeIngredient _self;
  final $Res Function(_RecipeIngredient) _then;

/// Create a copy of RecipeIngredient
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? productId = null,Object? productName = null,Object? productImageUrl = null,Object? measureUnitId = freezed,Object? measureUnitLabel = freezed,Object? quantity = null,Object? quantityCanonical = null,Object? haveCanonical = null,Object? isShort = null,Object? sortOrder = null,}) {
  return _then(_RecipeIngredient(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,productImageUrl: null == productImageUrl ? _self.productImageUrl : productImageUrl // ignore: cast_nullable_to_non_nullable
as String,measureUnitId: freezed == measureUnitId ? _self.measureUnitId : measureUnitId // ignore: cast_nullable_to_non_nullable
as String?,measureUnitLabel: freezed == measureUnitLabel ? _self.measureUnitLabel : measureUnitLabel // ignore: cast_nullable_to_non_nullable
as String?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,quantityCanonical: null == quantityCanonical ? _self.quantityCanonical : quantityCanonical // ignore: cast_nullable_to_non_nullable
as int,haveCanonical: null == haveCanonical ? _self.haveCanonical : haveCanonical // ignore: cast_nullable_to_non_nullable
as int,isShort: null == isShort ? _self.isShort : isShort // ignore: cast_nullable_to_non_nullable
as bool,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$RecipeDetail {

 String get id; String get employeeId; String get title; String get mealSlot; String get instructions; String get rationale; String get source; String get cookability; CanonicalNutrition get nutrition; List<RecipeIngredient> get ingredients; String get createdAt; String get updatedAt;
/// Create a copy of RecipeDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecipeDetailCopyWith<RecipeDetail> get copyWith => _$RecipeDetailCopyWithImpl<RecipeDetail>(this as RecipeDetail, _$identity);

  /// Serializes this RecipeDetail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecipeDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.title, title) || other.title == title)&&(identical(other.mealSlot, mealSlot) || other.mealSlot == mealSlot)&&(identical(other.instructions, instructions) || other.instructions == instructions)&&(identical(other.rationale, rationale) || other.rationale == rationale)&&(identical(other.source, source) || other.source == source)&&(identical(other.cookability, cookability) || other.cookability == cookability)&&(identical(other.nutrition, nutrition) || other.nutrition == nutrition)&&const DeepCollectionEquality().equals(other.ingredients, ingredients)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,employeeId,title,mealSlot,instructions,rationale,source,cookability,nutrition,const DeepCollectionEquality().hash(ingredients),createdAt,updatedAt);

@override
String toString() {
  return 'RecipeDetail(id: $id, employeeId: $employeeId, title: $title, mealSlot: $mealSlot, instructions: $instructions, rationale: $rationale, source: $source, cookability: $cookability, nutrition: $nutrition, ingredients: $ingredients, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $RecipeDetailCopyWith<$Res>  {
  factory $RecipeDetailCopyWith(RecipeDetail value, $Res Function(RecipeDetail) _then) = _$RecipeDetailCopyWithImpl;
@useResult
$Res call({
 String id, String employeeId, String title, String mealSlot, String instructions, String rationale, String source, String cookability, CanonicalNutrition nutrition, List<RecipeIngredient> ingredients, String createdAt, String updatedAt
});


$CanonicalNutritionCopyWith<$Res> get nutrition;

}
/// @nodoc
class _$RecipeDetailCopyWithImpl<$Res>
    implements $RecipeDetailCopyWith<$Res> {
  _$RecipeDetailCopyWithImpl(this._self, this._then);

  final RecipeDetail _self;
  final $Res Function(RecipeDetail) _then;

/// Create a copy of RecipeDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? employeeId = null,Object? title = null,Object? mealSlot = null,Object? instructions = null,Object? rationale = null,Object? source = null,Object? cookability = null,Object? nutrition = null,Object? ingredients = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,mealSlot: null == mealSlot ? _self.mealSlot : mealSlot // ignore: cast_nullable_to_non_nullable
as String,instructions: null == instructions ? _self.instructions : instructions // ignore: cast_nullable_to_non_nullable
as String,rationale: null == rationale ? _self.rationale : rationale // ignore: cast_nullable_to_non_nullable
as String,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,cookability: null == cookability ? _self.cookability : cookability // ignore: cast_nullable_to_non_nullable
as String,nutrition: null == nutrition ? _self.nutrition : nutrition // ignore: cast_nullable_to_non_nullable
as CanonicalNutrition,ingredients: null == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as List<RecipeIngredient>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of RecipeDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CanonicalNutritionCopyWith<$Res> get nutrition {
  
  return $CanonicalNutritionCopyWith<$Res>(_self.nutrition, (value) {
    return _then(_self.copyWith(nutrition: value));
  });
}
}


/// Adds pattern-matching-related methods to [RecipeDetail].
extension RecipeDetailPatterns on RecipeDetail {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecipeDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecipeDetail() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecipeDetail value)  $default,){
final _that = this;
switch (_that) {
case _RecipeDetail():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecipeDetail value)?  $default,){
final _that = this;
switch (_that) {
case _RecipeDetail() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String employeeId,  String title,  String mealSlot,  String instructions,  String rationale,  String source,  String cookability,  CanonicalNutrition nutrition,  List<RecipeIngredient> ingredients,  String createdAt,  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecipeDetail() when $default != null:
return $default(_that.id,_that.employeeId,_that.title,_that.mealSlot,_that.instructions,_that.rationale,_that.source,_that.cookability,_that.nutrition,_that.ingredients,_that.createdAt,_that.updatedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String employeeId,  String title,  String mealSlot,  String instructions,  String rationale,  String source,  String cookability,  CanonicalNutrition nutrition,  List<RecipeIngredient> ingredients,  String createdAt,  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _RecipeDetail():
return $default(_that.id,_that.employeeId,_that.title,_that.mealSlot,_that.instructions,_that.rationale,_that.source,_that.cookability,_that.nutrition,_that.ingredients,_that.createdAt,_that.updatedAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String employeeId,  String title,  String mealSlot,  String instructions,  String rationale,  String source,  String cookability,  CanonicalNutrition nutrition,  List<RecipeIngredient> ingredients,  String createdAt,  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _RecipeDetail() when $default != null:
return $default(_that.id,_that.employeeId,_that.title,_that.mealSlot,_that.instructions,_that.rationale,_that.source,_that.cookability,_that.nutrition,_that.ingredients,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecipeDetail implements RecipeDetail {
  const _RecipeDetail({required this.id, required this.employeeId, required this.title, required this.mealSlot, this.instructions = '', this.rationale = '', this.source = 'AI', this.cookability = 'partial', this.nutrition = const CanonicalNutrition(), final  List<RecipeIngredient> ingredients = const <RecipeIngredient>[], required this.createdAt, required this.updatedAt}): _ingredients = ingredients;
  factory _RecipeDetail.fromJson(Map<String, dynamic> json) => _$RecipeDetailFromJson(json);

@override final  String id;
@override final  String employeeId;
@override final  String title;
@override final  String mealSlot;
@override@JsonKey() final  String instructions;
@override@JsonKey() final  String rationale;
@override@JsonKey() final  String source;
@override@JsonKey() final  String cookability;
@override@JsonKey() final  CanonicalNutrition nutrition;
 final  List<RecipeIngredient> _ingredients;
@override@JsonKey() List<RecipeIngredient> get ingredients {
  if (_ingredients is EqualUnmodifiableListView) return _ingredients;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ingredients);
}

@override final  String createdAt;
@override final  String updatedAt;

/// Create a copy of RecipeDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecipeDetailCopyWith<_RecipeDetail> get copyWith => __$RecipeDetailCopyWithImpl<_RecipeDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecipeDetailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecipeDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.title, title) || other.title == title)&&(identical(other.mealSlot, mealSlot) || other.mealSlot == mealSlot)&&(identical(other.instructions, instructions) || other.instructions == instructions)&&(identical(other.rationale, rationale) || other.rationale == rationale)&&(identical(other.source, source) || other.source == source)&&(identical(other.cookability, cookability) || other.cookability == cookability)&&(identical(other.nutrition, nutrition) || other.nutrition == nutrition)&&const DeepCollectionEquality().equals(other._ingredients, _ingredients)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,employeeId,title,mealSlot,instructions,rationale,source,cookability,nutrition,const DeepCollectionEquality().hash(_ingredients),createdAt,updatedAt);

@override
String toString() {
  return 'RecipeDetail(id: $id, employeeId: $employeeId, title: $title, mealSlot: $mealSlot, instructions: $instructions, rationale: $rationale, source: $source, cookability: $cookability, nutrition: $nutrition, ingredients: $ingredients, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$RecipeDetailCopyWith<$Res> implements $RecipeDetailCopyWith<$Res> {
  factory _$RecipeDetailCopyWith(_RecipeDetail value, $Res Function(_RecipeDetail) _then) = __$RecipeDetailCopyWithImpl;
@override @useResult
$Res call({
 String id, String employeeId, String title, String mealSlot, String instructions, String rationale, String source, String cookability, CanonicalNutrition nutrition, List<RecipeIngredient> ingredients, String createdAt, String updatedAt
});


@override $CanonicalNutritionCopyWith<$Res> get nutrition;

}
/// @nodoc
class __$RecipeDetailCopyWithImpl<$Res>
    implements _$RecipeDetailCopyWith<$Res> {
  __$RecipeDetailCopyWithImpl(this._self, this._then);

  final _RecipeDetail _self;
  final $Res Function(_RecipeDetail) _then;

/// Create a copy of RecipeDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? employeeId = null,Object? title = null,Object? mealSlot = null,Object? instructions = null,Object? rationale = null,Object? source = null,Object? cookability = null,Object? nutrition = null,Object? ingredients = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_RecipeDetail(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,mealSlot: null == mealSlot ? _self.mealSlot : mealSlot // ignore: cast_nullable_to_non_nullable
as String,instructions: null == instructions ? _self.instructions : instructions // ignore: cast_nullable_to_non_nullable
as String,rationale: null == rationale ? _self.rationale : rationale // ignore: cast_nullable_to_non_nullable
as String,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,cookability: null == cookability ? _self.cookability : cookability // ignore: cast_nullable_to_non_nullable
as String,nutrition: null == nutrition ? _self.nutrition : nutrition // ignore: cast_nullable_to_non_nullable
as CanonicalNutrition,ingredients: null == ingredients ? _self._ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as List<RecipeIngredient>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of RecipeDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CanonicalNutritionCopyWith<$Res> get nutrition {
  
  return $CanonicalNutritionCopyWith<$Res>(_self.nutrition, (value) {
    return _then(_self.copyWith(nutrition: value));
  });
}
}


/// @nodoc
mixin _$RestockAlert {

 String get id; String get employeeId; String get stockId; String get productId; String get productName; String get productImageUrl; String get status; int get quantityCanonical; String? get suggestedPackId; String? get suggestedPackLabel; String get createdAt; String get updatedAt;
/// Create a copy of RestockAlert
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RestockAlertCopyWith<RestockAlert> get copyWith => _$RestockAlertCopyWithImpl<RestockAlert>(this as RestockAlert, _$identity);

  /// Serializes this RestockAlert to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RestockAlert&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.stockId, stockId) || other.stockId == stockId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.productImageUrl, productImageUrl) || other.productImageUrl == productImageUrl)&&(identical(other.status, status) || other.status == status)&&(identical(other.quantityCanonical, quantityCanonical) || other.quantityCanonical == quantityCanonical)&&(identical(other.suggestedPackId, suggestedPackId) || other.suggestedPackId == suggestedPackId)&&(identical(other.suggestedPackLabel, suggestedPackLabel) || other.suggestedPackLabel == suggestedPackLabel)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,employeeId,stockId,productId,productName,productImageUrl,status,quantityCanonical,suggestedPackId,suggestedPackLabel,createdAt,updatedAt);

@override
String toString() {
  return 'RestockAlert(id: $id, employeeId: $employeeId, stockId: $stockId, productId: $productId, productName: $productName, productImageUrl: $productImageUrl, status: $status, quantityCanonical: $quantityCanonical, suggestedPackId: $suggestedPackId, suggestedPackLabel: $suggestedPackLabel, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $RestockAlertCopyWith<$Res>  {
  factory $RestockAlertCopyWith(RestockAlert value, $Res Function(RestockAlert) _then) = _$RestockAlertCopyWithImpl;
@useResult
$Res call({
 String id, String employeeId, String stockId, String productId, String productName, String productImageUrl, String status, int quantityCanonical, String? suggestedPackId, String? suggestedPackLabel, String createdAt, String updatedAt
});




}
/// @nodoc
class _$RestockAlertCopyWithImpl<$Res>
    implements $RestockAlertCopyWith<$Res> {
  _$RestockAlertCopyWithImpl(this._self, this._then);

  final RestockAlert _self;
  final $Res Function(RestockAlert) _then;

/// Create a copy of RestockAlert
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? employeeId = null,Object? stockId = null,Object? productId = null,Object? productName = null,Object? productImageUrl = null,Object? status = null,Object? quantityCanonical = null,Object? suggestedPackId = freezed,Object? suggestedPackLabel = freezed,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,stockId: null == stockId ? _self.stockId : stockId // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,productImageUrl: null == productImageUrl ? _self.productImageUrl : productImageUrl // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,quantityCanonical: null == quantityCanonical ? _self.quantityCanonical : quantityCanonical // ignore: cast_nullable_to_non_nullable
as int,suggestedPackId: freezed == suggestedPackId ? _self.suggestedPackId : suggestedPackId // ignore: cast_nullable_to_non_nullable
as String?,suggestedPackLabel: freezed == suggestedPackLabel ? _self.suggestedPackLabel : suggestedPackLabel // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RestockAlert].
extension RestockAlertPatterns on RestockAlert {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RestockAlert value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RestockAlert() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RestockAlert value)  $default,){
final _that = this;
switch (_that) {
case _RestockAlert():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RestockAlert value)?  $default,){
final _that = this;
switch (_that) {
case _RestockAlert() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String employeeId,  String stockId,  String productId,  String productName,  String productImageUrl,  String status,  int quantityCanonical,  String? suggestedPackId,  String? suggestedPackLabel,  String createdAt,  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RestockAlert() when $default != null:
return $default(_that.id,_that.employeeId,_that.stockId,_that.productId,_that.productName,_that.productImageUrl,_that.status,_that.quantityCanonical,_that.suggestedPackId,_that.suggestedPackLabel,_that.createdAt,_that.updatedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String employeeId,  String stockId,  String productId,  String productName,  String productImageUrl,  String status,  int quantityCanonical,  String? suggestedPackId,  String? suggestedPackLabel,  String createdAt,  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _RestockAlert():
return $default(_that.id,_that.employeeId,_that.stockId,_that.productId,_that.productName,_that.productImageUrl,_that.status,_that.quantityCanonical,_that.suggestedPackId,_that.suggestedPackLabel,_that.createdAt,_that.updatedAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String employeeId,  String stockId,  String productId,  String productName,  String productImageUrl,  String status,  int quantityCanonical,  String? suggestedPackId,  String? suggestedPackLabel,  String createdAt,  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _RestockAlert() when $default != null:
return $default(_that.id,_that.employeeId,_that.stockId,_that.productId,_that.productName,_that.productImageUrl,_that.status,_that.quantityCanonical,_that.suggestedPackId,_that.suggestedPackLabel,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RestockAlert implements RestockAlert {
  const _RestockAlert({required this.id, required this.employeeId, required this.stockId, required this.productId, required this.productName, required this.productImageUrl, required this.status, required this.quantityCanonical, this.suggestedPackId, this.suggestedPackLabel, required this.createdAt, required this.updatedAt});
  factory _RestockAlert.fromJson(Map<String, dynamic> json) => _$RestockAlertFromJson(json);

@override final  String id;
@override final  String employeeId;
@override final  String stockId;
@override final  String productId;
@override final  String productName;
@override final  String productImageUrl;
@override final  String status;
@override final  int quantityCanonical;
@override final  String? suggestedPackId;
@override final  String? suggestedPackLabel;
@override final  String createdAt;
@override final  String updatedAt;

/// Create a copy of RestockAlert
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RestockAlertCopyWith<_RestockAlert> get copyWith => __$RestockAlertCopyWithImpl<_RestockAlert>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RestockAlertToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RestockAlert&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.stockId, stockId) || other.stockId == stockId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.productImageUrl, productImageUrl) || other.productImageUrl == productImageUrl)&&(identical(other.status, status) || other.status == status)&&(identical(other.quantityCanonical, quantityCanonical) || other.quantityCanonical == quantityCanonical)&&(identical(other.suggestedPackId, suggestedPackId) || other.suggestedPackId == suggestedPackId)&&(identical(other.suggestedPackLabel, suggestedPackLabel) || other.suggestedPackLabel == suggestedPackLabel)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,employeeId,stockId,productId,productName,productImageUrl,status,quantityCanonical,suggestedPackId,suggestedPackLabel,createdAt,updatedAt);

@override
String toString() {
  return 'RestockAlert(id: $id, employeeId: $employeeId, stockId: $stockId, productId: $productId, productName: $productName, productImageUrl: $productImageUrl, status: $status, quantityCanonical: $quantityCanonical, suggestedPackId: $suggestedPackId, suggestedPackLabel: $suggestedPackLabel, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$RestockAlertCopyWith<$Res> implements $RestockAlertCopyWith<$Res> {
  factory _$RestockAlertCopyWith(_RestockAlert value, $Res Function(_RestockAlert) _then) = __$RestockAlertCopyWithImpl;
@override @useResult
$Res call({
 String id, String employeeId, String stockId, String productId, String productName, String productImageUrl, String status, int quantityCanonical, String? suggestedPackId, String? suggestedPackLabel, String createdAt, String updatedAt
});




}
/// @nodoc
class __$RestockAlertCopyWithImpl<$Res>
    implements _$RestockAlertCopyWith<$Res> {
  __$RestockAlertCopyWithImpl(this._self, this._then);

  final _RestockAlert _self;
  final $Res Function(_RestockAlert) _then;

/// Create a copy of RestockAlert
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? employeeId = null,Object? stockId = null,Object? productId = null,Object? productName = null,Object? productImageUrl = null,Object? status = null,Object? quantityCanonical = null,Object? suggestedPackId = freezed,Object? suggestedPackLabel = freezed,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_RestockAlert(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,stockId: null == stockId ? _self.stockId : stockId // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,productImageUrl: null == productImageUrl ? _self.productImageUrl : productImageUrl // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,quantityCanonical: null == quantityCanonical ? _self.quantityCanonical : quantityCanonical // ignore: cast_nullable_to_non_nullable
as int,suggestedPackId: freezed == suggestedPackId ? _self.suggestedPackId : suggestedPackId // ignore: cast_nullable_to_non_nullable
as String?,suggestedPackLabel: freezed == suggestedPackLabel ? _self.suggestedPackLabel : suggestedPackLabel // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$HouseholdStockProduct {

 String get id; String get name; String get imageUrl; String get slug;
/// Create a copy of HouseholdStockProduct
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HouseholdStockProductCopyWith<HouseholdStockProduct> get copyWith => _$HouseholdStockProductCopyWithImpl<HouseholdStockProduct>(this as HouseholdStockProduct, _$identity);

  /// Serializes this HouseholdStockProduct to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HouseholdStockProduct&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.slug, slug) || other.slug == slug));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,imageUrl,slug);

@override
String toString() {
  return 'HouseholdStockProduct(id: $id, name: $name, imageUrl: $imageUrl, slug: $slug)';
}


}

/// @nodoc
abstract mixin class $HouseholdStockProductCopyWith<$Res>  {
  factory $HouseholdStockProductCopyWith(HouseholdStockProduct value, $Res Function(HouseholdStockProduct) _then) = _$HouseholdStockProductCopyWithImpl;
@useResult
$Res call({
 String id, String name, String imageUrl, String slug
});




}
/// @nodoc
class _$HouseholdStockProductCopyWithImpl<$Res>
    implements $HouseholdStockProductCopyWith<$Res> {
  _$HouseholdStockProductCopyWithImpl(this._self, this._then);

  final HouseholdStockProduct _self;
  final $Res Function(HouseholdStockProduct) _then;

/// Create a copy of HouseholdStockProduct
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? imageUrl = null,Object? slug = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [HouseholdStockProduct].
extension HouseholdStockProductPatterns on HouseholdStockProduct {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HouseholdStockProduct value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HouseholdStockProduct() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HouseholdStockProduct value)  $default,){
final _that = this;
switch (_that) {
case _HouseholdStockProduct():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HouseholdStockProduct value)?  $default,){
final _that = this;
switch (_that) {
case _HouseholdStockProduct() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String imageUrl,  String slug)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HouseholdStockProduct() when $default != null:
return $default(_that.id,_that.name,_that.imageUrl,_that.slug);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String imageUrl,  String slug)  $default,) {final _that = this;
switch (_that) {
case _HouseholdStockProduct():
return $default(_that.id,_that.name,_that.imageUrl,_that.slug);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String imageUrl,  String slug)?  $default,) {final _that = this;
switch (_that) {
case _HouseholdStockProduct() when $default != null:
return $default(_that.id,_that.name,_that.imageUrl,_that.slug);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HouseholdStockProduct implements HouseholdStockProduct {
  const _HouseholdStockProduct({required this.id, required this.name, required this.imageUrl, required this.slug});
  factory _HouseholdStockProduct.fromJson(Map<String, dynamic> json) => _$HouseholdStockProductFromJson(json);

@override final  String id;
@override final  String name;
@override final  String imageUrl;
@override final  String slug;

/// Create a copy of HouseholdStockProduct
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HouseholdStockProductCopyWith<_HouseholdStockProduct> get copyWith => __$HouseholdStockProductCopyWithImpl<_HouseholdStockProduct>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HouseholdStockProductToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HouseholdStockProduct&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.slug, slug) || other.slug == slug));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,imageUrl,slug);

@override
String toString() {
  return 'HouseholdStockProduct(id: $id, name: $name, imageUrl: $imageUrl, slug: $slug)';
}


}

/// @nodoc
abstract mixin class _$HouseholdStockProductCopyWith<$Res> implements $HouseholdStockProductCopyWith<$Res> {
  factory _$HouseholdStockProductCopyWith(_HouseholdStockProduct value, $Res Function(_HouseholdStockProduct) _then) = __$HouseholdStockProductCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String imageUrl, String slug
});




}
/// @nodoc
class __$HouseholdStockProductCopyWithImpl<$Res>
    implements _$HouseholdStockProductCopyWith<$Res> {
  __$HouseholdStockProductCopyWithImpl(this._self, this._then);

  final _HouseholdStockProduct _self;
  final $Res Function(_HouseholdStockProduct) _then;

/// Create a copy of HouseholdStockProduct
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? imageUrl = null,Object? slug = null,}) {
  return _then(_HouseholdStockProduct(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$HouseholdStockItem {

 String get id; String get employeeId; String get productId; HouseholdStockProduct get product; int get quantityCanonical; int get restockThresholdCanonical; String get displayQuantity; String get displayUnit; bool get isLow; bool get isEmpty; String get dimension; String get createdAt; String get updatedAt;
/// Create a copy of HouseholdStockItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HouseholdStockItemCopyWith<HouseholdStockItem> get copyWith => _$HouseholdStockItemCopyWithImpl<HouseholdStockItem>(this as HouseholdStockItem, _$identity);

  /// Serializes this HouseholdStockItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HouseholdStockItem&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.product, product) || other.product == product)&&(identical(other.quantityCanonical, quantityCanonical) || other.quantityCanonical == quantityCanonical)&&(identical(other.restockThresholdCanonical, restockThresholdCanonical) || other.restockThresholdCanonical == restockThresholdCanonical)&&(identical(other.displayQuantity, displayQuantity) || other.displayQuantity == displayQuantity)&&(identical(other.displayUnit, displayUnit) || other.displayUnit == displayUnit)&&(identical(other.isLow, isLow) || other.isLow == isLow)&&(identical(other.isEmpty, isEmpty) || other.isEmpty == isEmpty)&&(identical(other.dimension, dimension) || other.dimension == dimension)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,employeeId,productId,product,quantityCanonical,restockThresholdCanonical,displayQuantity,displayUnit,isLow,isEmpty,dimension,createdAt,updatedAt);

@override
String toString() {
  return 'HouseholdStockItem(id: $id, employeeId: $employeeId, productId: $productId, product: $product, quantityCanonical: $quantityCanonical, restockThresholdCanonical: $restockThresholdCanonical, displayQuantity: $displayQuantity, displayUnit: $displayUnit, isLow: $isLow, isEmpty: $isEmpty, dimension: $dimension, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $HouseholdStockItemCopyWith<$Res>  {
  factory $HouseholdStockItemCopyWith(HouseholdStockItem value, $Res Function(HouseholdStockItem) _then) = _$HouseholdStockItemCopyWithImpl;
@useResult
$Res call({
 String id, String employeeId, String productId, HouseholdStockProduct product, int quantityCanonical, int restockThresholdCanonical, String displayQuantity, String displayUnit, bool isLow, bool isEmpty, String dimension, String createdAt, String updatedAt
});


$HouseholdStockProductCopyWith<$Res> get product;

}
/// @nodoc
class _$HouseholdStockItemCopyWithImpl<$Res>
    implements $HouseholdStockItemCopyWith<$Res> {
  _$HouseholdStockItemCopyWithImpl(this._self, this._then);

  final HouseholdStockItem _self;
  final $Res Function(HouseholdStockItem) _then;

/// Create a copy of HouseholdStockItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? employeeId = null,Object? productId = null,Object? product = null,Object? quantityCanonical = null,Object? restockThresholdCanonical = null,Object? displayQuantity = null,Object? displayUnit = null,Object? isLow = null,Object? isEmpty = null,Object? dimension = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as HouseholdStockProduct,quantityCanonical: null == quantityCanonical ? _self.quantityCanonical : quantityCanonical // ignore: cast_nullable_to_non_nullable
as int,restockThresholdCanonical: null == restockThresholdCanonical ? _self.restockThresholdCanonical : restockThresholdCanonical // ignore: cast_nullable_to_non_nullable
as int,displayQuantity: null == displayQuantity ? _self.displayQuantity : displayQuantity // ignore: cast_nullable_to_non_nullable
as String,displayUnit: null == displayUnit ? _self.displayUnit : displayUnit // ignore: cast_nullable_to_non_nullable
as String,isLow: null == isLow ? _self.isLow : isLow // ignore: cast_nullable_to_non_nullable
as bool,isEmpty: null == isEmpty ? _self.isEmpty : isEmpty // ignore: cast_nullable_to_non_nullable
as bool,dimension: null == dimension ? _self.dimension : dimension // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of HouseholdStockItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HouseholdStockProductCopyWith<$Res> get product {
  
  return $HouseholdStockProductCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// Adds pattern-matching-related methods to [HouseholdStockItem].
extension HouseholdStockItemPatterns on HouseholdStockItem {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HouseholdStockItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HouseholdStockItem() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HouseholdStockItem value)  $default,){
final _that = this;
switch (_that) {
case _HouseholdStockItem():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HouseholdStockItem value)?  $default,){
final _that = this;
switch (_that) {
case _HouseholdStockItem() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String employeeId,  String productId,  HouseholdStockProduct product,  int quantityCanonical,  int restockThresholdCanonical,  String displayQuantity,  String displayUnit,  bool isLow,  bool isEmpty,  String dimension,  String createdAt,  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HouseholdStockItem() when $default != null:
return $default(_that.id,_that.employeeId,_that.productId,_that.product,_that.quantityCanonical,_that.restockThresholdCanonical,_that.displayQuantity,_that.displayUnit,_that.isLow,_that.isEmpty,_that.dimension,_that.createdAt,_that.updatedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String employeeId,  String productId,  HouseholdStockProduct product,  int quantityCanonical,  int restockThresholdCanonical,  String displayQuantity,  String displayUnit,  bool isLow,  bool isEmpty,  String dimension,  String createdAt,  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _HouseholdStockItem():
return $default(_that.id,_that.employeeId,_that.productId,_that.product,_that.quantityCanonical,_that.restockThresholdCanonical,_that.displayQuantity,_that.displayUnit,_that.isLow,_that.isEmpty,_that.dimension,_that.createdAt,_that.updatedAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String employeeId,  String productId,  HouseholdStockProduct product,  int quantityCanonical,  int restockThresholdCanonical,  String displayQuantity,  String displayUnit,  bool isLow,  bool isEmpty,  String dimension,  String createdAt,  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _HouseholdStockItem() when $default != null:
return $default(_that.id,_that.employeeId,_that.productId,_that.product,_that.quantityCanonical,_that.restockThresholdCanonical,_that.displayQuantity,_that.displayUnit,_that.isLow,_that.isEmpty,_that.dimension,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HouseholdStockItem implements HouseholdStockItem {
  const _HouseholdStockItem({required this.id, required this.employeeId, required this.productId, required this.product, required this.quantityCanonical, this.restockThresholdCanonical = 0, required this.displayQuantity, required this.displayUnit, this.isLow = false, this.isEmpty = false, this.dimension = 'MASS', required this.createdAt, required this.updatedAt});
  factory _HouseholdStockItem.fromJson(Map<String, dynamic> json) => _$HouseholdStockItemFromJson(json);

@override final  String id;
@override final  String employeeId;
@override final  String productId;
@override final  HouseholdStockProduct product;
@override final  int quantityCanonical;
@override@JsonKey() final  int restockThresholdCanonical;
@override final  String displayQuantity;
@override final  String displayUnit;
@override@JsonKey() final  bool isLow;
@override@JsonKey() final  bool isEmpty;
@override@JsonKey() final  String dimension;
@override final  String createdAt;
@override final  String updatedAt;

/// Create a copy of HouseholdStockItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HouseholdStockItemCopyWith<_HouseholdStockItem> get copyWith => __$HouseholdStockItemCopyWithImpl<_HouseholdStockItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HouseholdStockItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HouseholdStockItem&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.product, product) || other.product == product)&&(identical(other.quantityCanonical, quantityCanonical) || other.quantityCanonical == quantityCanonical)&&(identical(other.restockThresholdCanonical, restockThresholdCanonical) || other.restockThresholdCanonical == restockThresholdCanonical)&&(identical(other.displayQuantity, displayQuantity) || other.displayQuantity == displayQuantity)&&(identical(other.displayUnit, displayUnit) || other.displayUnit == displayUnit)&&(identical(other.isLow, isLow) || other.isLow == isLow)&&(identical(other.isEmpty, isEmpty) || other.isEmpty == isEmpty)&&(identical(other.dimension, dimension) || other.dimension == dimension)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,employeeId,productId,product,quantityCanonical,restockThresholdCanonical,displayQuantity,displayUnit,isLow,isEmpty,dimension,createdAt,updatedAt);

@override
String toString() {
  return 'HouseholdStockItem(id: $id, employeeId: $employeeId, productId: $productId, product: $product, quantityCanonical: $quantityCanonical, restockThresholdCanonical: $restockThresholdCanonical, displayQuantity: $displayQuantity, displayUnit: $displayUnit, isLow: $isLow, isEmpty: $isEmpty, dimension: $dimension, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$HouseholdStockItemCopyWith<$Res> implements $HouseholdStockItemCopyWith<$Res> {
  factory _$HouseholdStockItemCopyWith(_HouseholdStockItem value, $Res Function(_HouseholdStockItem) _then) = __$HouseholdStockItemCopyWithImpl;
@override @useResult
$Res call({
 String id, String employeeId, String productId, HouseholdStockProduct product, int quantityCanonical, int restockThresholdCanonical, String displayQuantity, String displayUnit, bool isLow, bool isEmpty, String dimension, String createdAt, String updatedAt
});


@override $HouseholdStockProductCopyWith<$Res> get product;

}
/// @nodoc
class __$HouseholdStockItemCopyWithImpl<$Res>
    implements _$HouseholdStockItemCopyWith<$Res> {
  __$HouseholdStockItemCopyWithImpl(this._self, this._then);

  final _HouseholdStockItem _self;
  final $Res Function(_HouseholdStockItem) _then;

/// Create a copy of HouseholdStockItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? employeeId = null,Object? productId = null,Object? product = null,Object? quantityCanonical = null,Object? restockThresholdCanonical = null,Object? displayQuantity = null,Object? displayUnit = null,Object? isLow = null,Object? isEmpty = null,Object? dimension = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_HouseholdStockItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as HouseholdStockProduct,quantityCanonical: null == quantityCanonical ? _self.quantityCanonical : quantityCanonical // ignore: cast_nullable_to_non_nullable
as int,restockThresholdCanonical: null == restockThresholdCanonical ? _self.restockThresholdCanonical : restockThresholdCanonical // ignore: cast_nullable_to_non_nullable
as int,displayQuantity: null == displayQuantity ? _self.displayQuantity : displayQuantity // ignore: cast_nullable_to_non_nullable
as String,displayUnit: null == displayUnit ? _self.displayUnit : displayUnit // ignore: cast_nullable_to_non_nullable
as String,isLow: null == isLow ? _self.isLow : isLow // ignore: cast_nullable_to_non_nullable
as bool,isEmpty: null == isEmpty ? _self.isEmpty : isEmpty // ignore: cast_nullable_to_non_nullable
as bool,dimension: null == dimension ? _self.dimension : dimension // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of HouseholdStockItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HouseholdStockProductCopyWith<$Res> get product {
  
  return $HouseholdStockProductCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// @nodoc
mixin _$CookMealResult {

 RecipeDetail get recipe; CanonicalNutrition get nutrition; String get cookedAt; List<RestockAlert> get restockAlerts; List<HouseholdStockItem> get updatedStock;
/// Create a copy of CookMealResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CookMealResultCopyWith<CookMealResult> get copyWith => _$CookMealResultCopyWithImpl<CookMealResult>(this as CookMealResult, _$identity);

  /// Serializes this CookMealResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CookMealResult&&(identical(other.recipe, recipe) || other.recipe == recipe)&&(identical(other.nutrition, nutrition) || other.nutrition == nutrition)&&(identical(other.cookedAt, cookedAt) || other.cookedAt == cookedAt)&&const DeepCollectionEquality().equals(other.restockAlerts, restockAlerts)&&const DeepCollectionEquality().equals(other.updatedStock, updatedStock));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,recipe,nutrition,cookedAt,const DeepCollectionEquality().hash(restockAlerts),const DeepCollectionEquality().hash(updatedStock));

@override
String toString() {
  return 'CookMealResult(recipe: $recipe, nutrition: $nutrition, cookedAt: $cookedAt, restockAlerts: $restockAlerts, updatedStock: $updatedStock)';
}


}

/// @nodoc
abstract mixin class $CookMealResultCopyWith<$Res>  {
  factory $CookMealResultCopyWith(CookMealResult value, $Res Function(CookMealResult) _then) = _$CookMealResultCopyWithImpl;
@useResult
$Res call({
 RecipeDetail recipe, CanonicalNutrition nutrition, String cookedAt, List<RestockAlert> restockAlerts, List<HouseholdStockItem> updatedStock
});


$RecipeDetailCopyWith<$Res> get recipe;$CanonicalNutritionCopyWith<$Res> get nutrition;

}
/// @nodoc
class _$CookMealResultCopyWithImpl<$Res>
    implements $CookMealResultCopyWith<$Res> {
  _$CookMealResultCopyWithImpl(this._self, this._then);

  final CookMealResult _self;
  final $Res Function(CookMealResult) _then;

/// Create a copy of CookMealResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? recipe = null,Object? nutrition = null,Object? cookedAt = null,Object? restockAlerts = null,Object? updatedStock = null,}) {
  return _then(_self.copyWith(
recipe: null == recipe ? _self.recipe : recipe // ignore: cast_nullable_to_non_nullable
as RecipeDetail,nutrition: null == nutrition ? _self.nutrition : nutrition // ignore: cast_nullable_to_non_nullable
as CanonicalNutrition,cookedAt: null == cookedAt ? _self.cookedAt : cookedAt // ignore: cast_nullable_to_non_nullable
as String,restockAlerts: null == restockAlerts ? _self.restockAlerts : restockAlerts // ignore: cast_nullable_to_non_nullable
as List<RestockAlert>,updatedStock: null == updatedStock ? _self.updatedStock : updatedStock // ignore: cast_nullable_to_non_nullable
as List<HouseholdStockItem>,
  ));
}
/// Create a copy of CookMealResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RecipeDetailCopyWith<$Res> get recipe {
  
  return $RecipeDetailCopyWith<$Res>(_self.recipe, (value) {
    return _then(_self.copyWith(recipe: value));
  });
}/// Create a copy of CookMealResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CanonicalNutritionCopyWith<$Res> get nutrition {
  
  return $CanonicalNutritionCopyWith<$Res>(_self.nutrition, (value) {
    return _then(_self.copyWith(nutrition: value));
  });
}
}


/// Adds pattern-matching-related methods to [CookMealResult].
extension CookMealResultPatterns on CookMealResult {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CookMealResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CookMealResult() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CookMealResult value)  $default,){
final _that = this;
switch (_that) {
case _CookMealResult():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CookMealResult value)?  $default,){
final _that = this;
switch (_that) {
case _CookMealResult() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RecipeDetail recipe,  CanonicalNutrition nutrition,  String cookedAt,  List<RestockAlert> restockAlerts,  List<HouseholdStockItem> updatedStock)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CookMealResult() when $default != null:
return $default(_that.recipe,_that.nutrition,_that.cookedAt,_that.restockAlerts,_that.updatedStock);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RecipeDetail recipe,  CanonicalNutrition nutrition,  String cookedAt,  List<RestockAlert> restockAlerts,  List<HouseholdStockItem> updatedStock)  $default,) {final _that = this;
switch (_that) {
case _CookMealResult():
return $default(_that.recipe,_that.nutrition,_that.cookedAt,_that.restockAlerts,_that.updatedStock);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RecipeDetail recipe,  CanonicalNutrition nutrition,  String cookedAt,  List<RestockAlert> restockAlerts,  List<HouseholdStockItem> updatedStock)?  $default,) {final _that = this;
switch (_that) {
case _CookMealResult() when $default != null:
return $default(_that.recipe,_that.nutrition,_that.cookedAt,_that.restockAlerts,_that.updatedStock);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CookMealResult implements CookMealResult {
  const _CookMealResult({required this.recipe, this.nutrition = const CanonicalNutrition(), required this.cookedAt, final  List<RestockAlert> restockAlerts = const <RestockAlert>[], final  List<HouseholdStockItem> updatedStock = const <HouseholdStockItem>[]}): _restockAlerts = restockAlerts,_updatedStock = updatedStock;
  factory _CookMealResult.fromJson(Map<String, dynamic> json) => _$CookMealResultFromJson(json);

@override final  RecipeDetail recipe;
@override@JsonKey() final  CanonicalNutrition nutrition;
@override final  String cookedAt;
 final  List<RestockAlert> _restockAlerts;
@override@JsonKey() List<RestockAlert> get restockAlerts {
  if (_restockAlerts is EqualUnmodifiableListView) return _restockAlerts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_restockAlerts);
}

 final  List<HouseholdStockItem> _updatedStock;
@override@JsonKey() List<HouseholdStockItem> get updatedStock {
  if (_updatedStock is EqualUnmodifiableListView) return _updatedStock;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_updatedStock);
}


/// Create a copy of CookMealResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CookMealResultCopyWith<_CookMealResult> get copyWith => __$CookMealResultCopyWithImpl<_CookMealResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CookMealResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CookMealResult&&(identical(other.recipe, recipe) || other.recipe == recipe)&&(identical(other.nutrition, nutrition) || other.nutrition == nutrition)&&(identical(other.cookedAt, cookedAt) || other.cookedAt == cookedAt)&&const DeepCollectionEquality().equals(other._restockAlerts, _restockAlerts)&&const DeepCollectionEquality().equals(other._updatedStock, _updatedStock));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,recipe,nutrition,cookedAt,const DeepCollectionEquality().hash(_restockAlerts),const DeepCollectionEquality().hash(_updatedStock));

@override
String toString() {
  return 'CookMealResult(recipe: $recipe, nutrition: $nutrition, cookedAt: $cookedAt, restockAlerts: $restockAlerts, updatedStock: $updatedStock)';
}


}

/// @nodoc
abstract mixin class _$CookMealResultCopyWith<$Res> implements $CookMealResultCopyWith<$Res> {
  factory _$CookMealResultCopyWith(_CookMealResult value, $Res Function(_CookMealResult) _then) = __$CookMealResultCopyWithImpl;
@override @useResult
$Res call({
 RecipeDetail recipe, CanonicalNutrition nutrition, String cookedAt, List<RestockAlert> restockAlerts, List<HouseholdStockItem> updatedStock
});


@override $RecipeDetailCopyWith<$Res> get recipe;@override $CanonicalNutritionCopyWith<$Res> get nutrition;

}
/// @nodoc
class __$CookMealResultCopyWithImpl<$Res>
    implements _$CookMealResultCopyWith<$Res> {
  __$CookMealResultCopyWithImpl(this._self, this._then);

  final _CookMealResult _self;
  final $Res Function(_CookMealResult) _then;

/// Create a copy of CookMealResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? recipe = null,Object? nutrition = null,Object? cookedAt = null,Object? restockAlerts = null,Object? updatedStock = null,}) {
  return _then(_CookMealResult(
recipe: null == recipe ? _self.recipe : recipe // ignore: cast_nullable_to_non_nullable
as RecipeDetail,nutrition: null == nutrition ? _self.nutrition : nutrition // ignore: cast_nullable_to_non_nullable
as CanonicalNutrition,cookedAt: null == cookedAt ? _self.cookedAt : cookedAt // ignore: cast_nullable_to_non_nullable
as String,restockAlerts: null == restockAlerts ? _self._restockAlerts : restockAlerts // ignore: cast_nullable_to_non_nullable
as List<RestockAlert>,updatedStock: null == updatedStock ? _self._updatedStock : updatedStock // ignore: cast_nullable_to_non_nullable
as List<HouseholdStockItem>,
  ));
}

/// Create a copy of CookMealResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RecipeDetailCopyWith<$Res> get recipe {
  
  return $RecipeDetailCopyWith<$Res>(_self.recipe, (value) {
    return _then(_self.copyWith(recipe: value));
  });
}/// Create a copy of CookMealResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CanonicalNutritionCopyWith<$Res> get nutrition {
  
  return $CanonicalNutritionCopyWith<$Res>(_self.nutrition, (value) {
    return _then(_self.copyWith(nutrition: value));
  });
}
}


/// @nodoc
mixin _$NutrientProgress {

 int get consumed; int get target; int get percent;
/// Create a copy of NutrientProgress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NutrientProgressCopyWith<NutrientProgress> get copyWith => _$NutrientProgressCopyWithImpl<NutrientProgress>(this as NutrientProgress, _$identity);

  /// Serializes this NutrientProgress to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NutrientProgress&&(identical(other.consumed, consumed) || other.consumed == consumed)&&(identical(other.target, target) || other.target == target)&&(identical(other.percent, percent) || other.percent == percent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,consumed,target,percent);

@override
String toString() {
  return 'NutrientProgress(consumed: $consumed, target: $target, percent: $percent)';
}


}

/// @nodoc
abstract mixin class $NutrientProgressCopyWith<$Res>  {
  factory $NutrientProgressCopyWith(NutrientProgress value, $Res Function(NutrientProgress) _then) = _$NutrientProgressCopyWithImpl;
@useResult
$Res call({
 int consumed, int target, int percent
});




}
/// @nodoc
class _$NutrientProgressCopyWithImpl<$Res>
    implements $NutrientProgressCopyWith<$Res> {
  _$NutrientProgressCopyWithImpl(this._self, this._then);

  final NutrientProgress _self;
  final $Res Function(NutrientProgress) _then;

/// Create a copy of NutrientProgress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? consumed = null,Object? target = null,Object? percent = null,}) {
  return _then(_self.copyWith(
consumed: null == consumed ? _self.consumed : consumed // ignore: cast_nullable_to_non_nullable
as int,target: null == target ? _self.target : target // ignore: cast_nullable_to_non_nullable
as int,percent: null == percent ? _self.percent : percent // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [NutrientProgress].
extension NutrientProgressPatterns on NutrientProgress {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NutrientProgress value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NutrientProgress() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NutrientProgress value)  $default,){
final _that = this;
switch (_that) {
case _NutrientProgress():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NutrientProgress value)?  $default,){
final _that = this;
switch (_that) {
case _NutrientProgress() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int consumed,  int target,  int percent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NutrientProgress() when $default != null:
return $default(_that.consumed,_that.target,_that.percent);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int consumed,  int target,  int percent)  $default,) {final _that = this;
switch (_that) {
case _NutrientProgress():
return $default(_that.consumed,_that.target,_that.percent);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int consumed,  int target,  int percent)?  $default,) {final _that = this;
switch (_that) {
case _NutrientProgress() when $default != null:
return $default(_that.consumed,_that.target,_that.percent);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NutrientProgress implements NutrientProgress {
  const _NutrientProgress({this.consumed = 0, this.target = 0, this.percent = 0});
  factory _NutrientProgress.fromJson(Map<String, dynamic> json) => _$NutrientProgressFromJson(json);

@override@JsonKey() final  int consumed;
@override@JsonKey() final  int target;
@override@JsonKey() final  int percent;

/// Create a copy of NutrientProgress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NutrientProgressCopyWith<_NutrientProgress> get copyWith => __$NutrientProgressCopyWithImpl<_NutrientProgress>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NutrientProgressToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NutrientProgress&&(identical(other.consumed, consumed) || other.consumed == consumed)&&(identical(other.target, target) || other.target == target)&&(identical(other.percent, percent) || other.percent == percent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,consumed,target,percent);

@override
String toString() {
  return 'NutrientProgress(consumed: $consumed, target: $target, percent: $percent)';
}


}

/// @nodoc
abstract mixin class _$NutrientProgressCopyWith<$Res> implements $NutrientProgressCopyWith<$Res> {
  factory _$NutrientProgressCopyWith(_NutrientProgress value, $Res Function(_NutrientProgress) _then) = __$NutrientProgressCopyWithImpl;
@override @useResult
$Res call({
 int consumed, int target, int percent
});




}
/// @nodoc
class __$NutrientProgressCopyWithImpl<$Res>
    implements _$NutrientProgressCopyWith<$Res> {
  __$NutrientProgressCopyWithImpl(this._self, this._then);

  final _NutrientProgress _self;
  final $Res Function(_NutrientProgress) _then;

/// Create a copy of NutrientProgress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? consumed = null,Object? target = null,Object? percent = null,}) {
  return _then(_NutrientProgress(
consumed: null == consumed ? _self.consumed : consumed // ignore: cast_nullable_to_non_nullable
as int,target: null == target ? _self.target : target // ignore: cast_nullable_to_non_nullable
as int,percent: null == percent ? _self.percent : percent // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$NutritionProgressTotals {

 NutrientProgress get energyKcal; NutrientProgress get proteinMg; NutrientProgress get carbsMg; NutrientProgress get fatMg; NutrientProgress get fiberMg; NutrientProgress get sugarMg; NutrientProgress get sodiumMg; NutrientProgress get ironUg;
/// Create a copy of NutritionProgressTotals
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NutritionProgressTotalsCopyWith<NutritionProgressTotals> get copyWith => _$NutritionProgressTotalsCopyWithImpl<NutritionProgressTotals>(this as NutritionProgressTotals, _$identity);

  /// Serializes this NutritionProgressTotals to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NutritionProgressTotals&&(identical(other.energyKcal, energyKcal) || other.energyKcal == energyKcal)&&(identical(other.proteinMg, proteinMg) || other.proteinMg == proteinMg)&&(identical(other.carbsMg, carbsMg) || other.carbsMg == carbsMg)&&(identical(other.fatMg, fatMg) || other.fatMg == fatMg)&&(identical(other.fiberMg, fiberMg) || other.fiberMg == fiberMg)&&(identical(other.sugarMg, sugarMg) || other.sugarMg == sugarMg)&&(identical(other.sodiumMg, sodiumMg) || other.sodiumMg == sodiumMg)&&(identical(other.ironUg, ironUg) || other.ironUg == ironUg));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,energyKcal,proteinMg,carbsMg,fatMg,fiberMg,sugarMg,sodiumMg,ironUg);

@override
String toString() {
  return 'NutritionProgressTotals(energyKcal: $energyKcal, proteinMg: $proteinMg, carbsMg: $carbsMg, fatMg: $fatMg, fiberMg: $fiberMg, sugarMg: $sugarMg, sodiumMg: $sodiumMg, ironUg: $ironUg)';
}


}

/// @nodoc
abstract mixin class $NutritionProgressTotalsCopyWith<$Res>  {
  factory $NutritionProgressTotalsCopyWith(NutritionProgressTotals value, $Res Function(NutritionProgressTotals) _then) = _$NutritionProgressTotalsCopyWithImpl;
@useResult
$Res call({
 NutrientProgress energyKcal, NutrientProgress proteinMg, NutrientProgress carbsMg, NutrientProgress fatMg, NutrientProgress fiberMg, NutrientProgress sugarMg, NutrientProgress sodiumMg, NutrientProgress ironUg
});


$NutrientProgressCopyWith<$Res> get energyKcal;$NutrientProgressCopyWith<$Res> get proteinMg;$NutrientProgressCopyWith<$Res> get carbsMg;$NutrientProgressCopyWith<$Res> get fatMg;$NutrientProgressCopyWith<$Res> get fiberMg;$NutrientProgressCopyWith<$Res> get sugarMg;$NutrientProgressCopyWith<$Res> get sodiumMg;$NutrientProgressCopyWith<$Res> get ironUg;

}
/// @nodoc
class _$NutritionProgressTotalsCopyWithImpl<$Res>
    implements $NutritionProgressTotalsCopyWith<$Res> {
  _$NutritionProgressTotalsCopyWithImpl(this._self, this._then);

  final NutritionProgressTotals _self;
  final $Res Function(NutritionProgressTotals) _then;

/// Create a copy of NutritionProgressTotals
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? energyKcal = null,Object? proteinMg = null,Object? carbsMg = null,Object? fatMg = null,Object? fiberMg = null,Object? sugarMg = null,Object? sodiumMg = null,Object? ironUg = null,}) {
  return _then(_self.copyWith(
energyKcal: null == energyKcal ? _self.energyKcal : energyKcal // ignore: cast_nullable_to_non_nullable
as NutrientProgress,proteinMg: null == proteinMg ? _self.proteinMg : proteinMg // ignore: cast_nullable_to_non_nullable
as NutrientProgress,carbsMg: null == carbsMg ? _self.carbsMg : carbsMg // ignore: cast_nullable_to_non_nullable
as NutrientProgress,fatMg: null == fatMg ? _self.fatMg : fatMg // ignore: cast_nullable_to_non_nullable
as NutrientProgress,fiberMg: null == fiberMg ? _self.fiberMg : fiberMg // ignore: cast_nullable_to_non_nullable
as NutrientProgress,sugarMg: null == sugarMg ? _self.sugarMg : sugarMg // ignore: cast_nullable_to_non_nullable
as NutrientProgress,sodiumMg: null == sodiumMg ? _self.sodiumMg : sodiumMg // ignore: cast_nullable_to_non_nullable
as NutrientProgress,ironUg: null == ironUg ? _self.ironUg : ironUg // ignore: cast_nullable_to_non_nullable
as NutrientProgress,
  ));
}
/// Create a copy of NutritionProgressTotals
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientProgressCopyWith<$Res> get energyKcal {
  
  return $NutrientProgressCopyWith<$Res>(_self.energyKcal, (value) {
    return _then(_self.copyWith(energyKcal: value));
  });
}/// Create a copy of NutritionProgressTotals
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientProgressCopyWith<$Res> get proteinMg {
  
  return $NutrientProgressCopyWith<$Res>(_self.proteinMg, (value) {
    return _then(_self.copyWith(proteinMg: value));
  });
}/// Create a copy of NutritionProgressTotals
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientProgressCopyWith<$Res> get carbsMg {
  
  return $NutrientProgressCopyWith<$Res>(_self.carbsMg, (value) {
    return _then(_self.copyWith(carbsMg: value));
  });
}/// Create a copy of NutritionProgressTotals
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientProgressCopyWith<$Res> get fatMg {
  
  return $NutrientProgressCopyWith<$Res>(_self.fatMg, (value) {
    return _then(_self.copyWith(fatMg: value));
  });
}/// Create a copy of NutritionProgressTotals
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientProgressCopyWith<$Res> get fiberMg {
  
  return $NutrientProgressCopyWith<$Res>(_self.fiberMg, (value) {
    return _then(_self.copyWith(fiberMg: value));
  });
}/// Create a copy of NutritionProgressTotals
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientProgressCopyWith<$Res> get sugarMg {
  
  return $NutrientProgressCopyWith<$Res>(_self.sugarMg, (value) {
    return _then(_self.copyWith(sugarMg: value));
  });
}/// Create a copy of NutritionProgressTotals
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientProgressCopyWith<$Res> get sodiumMg {
  
  return $NutrientProgressCopyWith<$Res>(_self.sodiumMg, (value) {
    return _then(_self.copyWith(sodiumMg: value));
  });
}/// Create a copy of NutritionProgressTotals
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientProgressCopyWith<$Res> get ironUg {
  
  return $NutrientProgressCopyWith<$Res>(_self.ironUg, (value) {
    return _then(_self.copyWith(ironUg: value));
  });
}
}


/// Adds pattern-matching-related methods to [NutritionProgressTotals].
extension NutritionProgressTotalsPatterns on NutritionProgressTotals {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NutritionProgressTotals value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NutritionProgressTotals() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NutritionProgressTotals value)  $default,){
final _that = this;
switch (_that) {
case _NutritionProgressTotals():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NutritionProgressTotals value)?  $default,){
final _that = this;
switch (_that) {
case _NutritionProgressTotals() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( NutrientProgress energyKcal,  NutrientProgress proteinMg,  NutrientProgress carbsMg,  NutrientProgress fatMg,  NutrientProgress fiberMg,  NutrientProgress sugarMg,  NutrientProgress sodiumMg,  NutrientProgress ironUg)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NutritionProgressTotals() when $default != null:
return $default(_that.energyKcal,_that.proteinMg,_that.carbsMg,_that.fatMg,_that.fiberMg,_that.sugarMg,_that.sodiumMg,_that.ironUg);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( NutrientProgress energyKcal,  NutrientProgress proteinMg,  NutrientProgress carbsMg,  NutrientProgress fatMg,  NutrientProgress fiberMg,  NutrientProgress sugarMg,  NutrientProgress sodiumMg,  NutrientProgress ironUg)  $default,) {final _that = this;
switch (_that) {
case _NutritionProgressTotals():
return $default(_that.energyKcal,_that.proteinMg,_that.carbsMg,_that.fatMg,_that.fiberMg,_that.sugarMg,_that.sodiumMg,_that.ironUg);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( NutrientProgress energyKcal,  NutrientProgress proteinMg,  NutrientProgress carbsMg,  NutrientProgress fatMg,  NutrientProgress fiberMg,  NutrientProgress sugarMg,  NutrientProgress sodiumMg,  NutrientProgress ironUg)?  $default,) {final _that = this;
switch (_that) {
case _NutritionProgressTotals() when $default != null:
return $default(_that.energyKcal,_that.proteinMg,_that.carbsMg,_that.fatMg,_that.fiberMg,_that.sugarMg,_that.sodiumMg,_that.ironUg);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NutritionProgressTotals implements NutritionProgressTotals {
  const _NutritionProgressTotals({this.energyKcal = const NutrientProgress(), this.proteinMg = const NutrientProgress(), this.carbsMg = const NutrientProgress(), this.fatMg = const NutrientProgress(), this.fiberMg = const NutrientProgress(), this.sugarMg = const NutrientProgress(), this.sodiumMg = const NutrientProgress(), this.ironUg = const NutrientProgress()});
  factory _NutritionProgressTotals.fromJson(Map<String, dynamic> json) => _$NutritionProgressTotalsFromJson(json);

@override@JsonKey() final  NutrientProgress energyKcal;
@override@JsonKey() final  NutrientProgress proteinMg;
@override@JsonKey() final  NutrientProgress carbsMg;
@override@JsonKey() final  NutrientProgress fatMg;
@override@JsonKey() final  NutrientProgress fiberMg;
@override@JsonKey() final  NutrientProgress sugarMg;
@override@JsonKey() final  NutrientProgress sodiumMg;
@override@JsonKey() final  NutrientProgress ironUg;

/// Create a copy of NutritionProgressTotals
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NutritionProgressTotalsCopyWith<_NutritionProgressTotals> get copyWith => __$NutritionProgressTotalsCopyWithImpl<_NutritionProgressTotals>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NutritionProgressTotalsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NutritionProgressTotals&&(identical(other.energyKcal, energyKcal) || other.energyKcal == energyKcal)&&(identical(other.proteinMg, proteinMg) || other.proteinMg == proteinMg)&&(identical(other.carbsMg, carbsMg) || other.carbsMg == carbsMg)&&(identical(other.fatMg, fatMg) || other.fatMg == fatMg)&&(identical(other.fiberMg, fiberMg) || other.fiberMg == fiberMg)&&(identical(other.sugarMg, sugarMg) || other.sugarMg == sugarMg)&&(identical(other.sodiumMg, sodiumMg) || other.sodiumMg == sodiumMg)&&(identical(other.ironUg, ironUg) || other.ironUg == ironUg));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,energyKcal,proteinMg,carbsMg,fatMg,fiberMg,sugarMg,sodiumMg,ironUg);

@override
String toString() {
  return 'NutritionProgressTotals(energyKcal: $energyKcal, proteinMg: $proteinMg, carbsMg: $carbsMg, fatMg: $fatMg, fiberMg: $fiberMg, sugarMg: $sugarMg, sodiumMg: $sodiumMg, ironUg: $ironUg)';
}


}

/// @nodoc
abstract mixin class _$NutritionProgressTotalsCopyWith<$Res> implements $NutritionProgressTotalsCopyWith<$Res> {
  factory _$NutritionProgressTotalsCopyWith(_NutritionProgressTotals value, $Res Function(_NutritionProgressTotals) _then) = __$NutritionProgressTotalsCopyWithImpl;
@override @useResult
$Res call({
 NutrientProgress energyKcal, NutrientProgress proteinMg, NutrientProgress carbsMg, NutrientProgress fatMg, NutrientProgress fiberMg, NutrientProgress sugarMg, NutrientProgress sodiumMg, NutrientProgress ironUg
});


@override $NutrientProgressCopyWith<$Res> get energyKcal;@override $NutrientProgressCopyWith<$Res> get proteinMg;@override $NutrientProgressCopyWith<$Res> get carbsMg;@override $NutrientProgressCopyWith<$Res> get fatMg;@override $NutrientProgressCopyWith<$Res> get fiberMg;@override $NutrientProgressCopyWith<$Res> get sugarMg;@override $NutrientProgressCopyWith<$Res> get sodiumMg;@override $NutrientProgressCopyWith<$Res> get ironUg;

}
/// @nodoc
class __$NutritionProgressTotalsCopyWithImpl<$Res>
    implements _$NutritionProgressTotalsCopyWith<$Res> {
  __$NutritionProgressTotalsCopyWithImpl(this._self, this._then);

  final _NutritionProgressTotals _self;
  final $Res Function(_NutritionProgressTotals) _then;

/// Create a copy of NutritionProgressTotals
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? energyKcal = null,Object? proteinMg = null,Object? carbsMg = null,Object? fatMg = null,Object? fiberMg = null,Object? sugarMg = null,Object? sodiumMg = null,Object? ironUg = null,}) {
  return _then(_NutritionProgressTotals(
energyKcal: null == energyKcal ? _self.energyKcal : energyKcal // ignore: cast_nullable_to_non_nullable
as NutrientProgress,proteinMg: null == proteinMg ? _self.proteinMg : proteinMg // ignore: cast_nullable_to_non_nullable
as NutrientProgress,carbsMg: null == carbsMg ? _self.carbsMg : carbsMg // ignore: cast_nullable_to_non_nullable
as NutrientProgress,fatMg: null == fatMg ? _self.fatMg : fatMg // ignore: cast_nullable_to_non_nullable
as NutrientProgress,fiberMg: null == fiberMg ? _self.fiberMg : fiberMg // ignore: cast_nullable_to_non_nullable
as NutrientProgress,sugarMg: null == sugarMg ? _self.sugarMg : sugarMg // ignore: cast_nullable_to_non_nullable
as NutrientProgress,sodiumMg: null == sodiumMg ? _self.sodiumMg : sodiumMg // ignore: cast_nullable_to_non_nullable
as NutrientProgress,ironUg: null == ironUg ? _self.ironUg : ironUg // ignore: cast_nullable_to_non_nullable
as NutrientProgress,
  ));
}

/// Create a copy of NutritionProgressTotals
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientProgressCopyWith<$Res> get energyKcal {
  
  return $NutrientProgressCopyWith<$Res>(_self.energyKcal, (value) {
    return _then(_self.copyWith(energyKcal: value));
  });
}/// Create a copy of NutritionProgressTotals
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientProgressCopyWith<$Res> get proteinMg {
  
  return $NutrientProgressCopyWith<$Res>(_self.proteinMg, (value) {
    return _then(_self.copyWith(proteinMg: value));
  });
}/// Create a copy of NutritionProgressTotals
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientProgressCopyWith<$Res> get carbsMg {
  
  return $NutrientProgressCopyWith<$Res>(_self.carbsMg, (value) {
    return _then(_self.copyWith(carbsMg: value));
  });
}/// Create a copy of NutritionProgressTotals
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientProgressCopyWith<$Res> get fatMg {
  
  return $NutrientProgressCopyWith<$Res>(_self.fatMg, (value) {
    return _then(_self.copyWith(fatMg: value));
  });
}/// Create a copy of NutritionProgressTotals
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientProgressCopyWith<$Res> get fiberMg {
  
  return $NutrientProgressCopyWith<$Res>(_self.fiberMg, (value) {
    return _then(_self.copyWith(fiberMg: value));
  });
}/// Create a copy of NutritionProgressTotals
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientProgressCopyWith<$Res> get sugarMg {
  
  return $NutrientProgressCopyWith<$Res>(_self.sugarMg, (value) {
    return _then(_self.copyWith(sugarMg: value));
  });
}/// Create a copy of NutritionProgressTotals
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientProgressCopyWith<$Res> get sodiumMg {
  
  return $NutrientProgressCopyWith<$Res>(_self.sodiumMg, (value) {
    return _then(_self.copyWith(sodiumMg: value));
  });
}/// Create a copy of NutritionProgressTotals
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientProgressCopyWith<$Res> get ironUg {
  
  return $NutrientProgressCopyWith<$Res>(_self.ironUg, (value) {
    return _then(_self.copyWith(ironUg: value));
  });
}
}


/// @nodoc
mixin _$NutritionProgressDay {

 String get day; CanonicalNutrition get consumed; int get cookedCount;
/// Create a copy of NutritionProgressDay
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NutritionProgressDayCopyWith<NutritionProgressDay> get copyWith => _$NutritionProgressDayCopyWithImpl<NutritionProgressDay>(this as NutritionProgressDay, _$identity);

  /// Serializes this NutritionProgressDay to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NutritionProgressDay&&(identical(other.day, day) || other.day == day)&&(identical(other.consumed, consumed) || other.consumed == consumed)&&(identical(other.cookedCount, cookedCount) || other.cookedCount == cookedCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,day,consumed,cookedCount);

@override
String toString() {
  return 'NutritionProgressDay(day: $day, consumed: $consumed, cookedCount: $cookedCount)';
}


}

/// @nodoc
abstract mixin class $NutritionProgressDayCopyWith<$Res>  {
  factory $NutritionProgressDayCopyWith(NutritionProgressDay value, $Res Function(NutritionProgressDay) _then) = _$NutritionProgressDayCopyWithImpl;
@useResult
$Res call({
 String day, CanonicalNutrition consumed, int cookedCount
});


$CanonicalNutritionCopyWith<$Res> get consumed;

}
/// @nodoc
class _$NutritionProgressDayCopyWithImpl<$Res>
    implements $NutritionProgressDayCopyWith<$Res> {
  _$NutritionProgressDayCopyWithImpl(this._self, this._then);

  final NutritionProgressDay _self;
  final $Res Function(NutritionProgressDay) _then;

/// Create a copy of NutritionProgressDay
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? day = null,Object? consumed = null,Object? cookedCount = null,}) {
  return _then(_self.copyWith(
day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String,consumed: null == consumed ? _self.consumed : consumed // ignore: cast_nullable_to_non_nullable
as CanonicalNutrition,cookedCount: null == cookedCount ? _self.cookedCount : cookedCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of NutritionProgressDay
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CanonicalNutritionCopyWith<$Res> get consumed {
  
  return $CanonicalNutritionCopyWith<$Res>(_self.consumed, (value) {
    return _then(_self.copyWith(consumed: value));
  });
}
}


/// Adds pattern-matching-related methods to [NutritionProgressDay].
extension NutritionProgressDayPatterns on NutritionProgressDay {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NutritionProgressDay value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NutritionProgressDay() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NutritionProgressDay value)  $default,){
final _that = this;
switch (_that) {
case _NutritionProgressDay():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NutritionProgressDay value)?  $default,){
final _that = this;
switch (_that) {
case _NutritionProgressDay() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String day,  CanonicalNutrition consumed,  int cookedCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NutritionProgressDay() when $default != null:
return $default(_that.day,_that.consumed,_that.cookedCount);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String day,  CanonicalNutrition consumed,  int cookedCount)  $default,) {final _that = this;
switch (_that) {
case _NutritionProgressDay():
return $default(_that.day,_that.consumed,_that.cookedCount);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String day,  CanonicalNutrition consumed,  int cookedCount)?  $default,) {final _that = this;
switch (_that) {
case _NutritionProgressDay() when $default != null:
return $default(_that.day,_that.consumed,_that.cookedCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NutritionProgressDay implements NutritionProgressDay {
  const _NutritionProgressDay({required this.day, this.consumed = const CanonicalNutrition(), this.cookedCount = 0});
  factory _NutritionProgressDay.fromJson(Map<String, dynamic> json) => _$NutritionProgressDayFromJson(json);

@override final  String day;
@override@JsonKey() final  CanonicalNutrition consumed;
@override@JsonKey() final  int cookedCount;

/// Create a copy of NutritionProgressDay
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NutritionProgressDayCopyWith<_NutritionProgressDay> get copyWith => __$NutritionProgressDayCopyWithImpl<_NutritionProgressDay>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NutritionProgressDayToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NutritionProgressDay&&(identical(other.day, day) || other.day == day)&&(identical(other.consumed, consumed) || other.consumed == consumed)&&(identical(other.cookedCount, cookedCount) || other.cookedCount == cookedCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,day,consumed,cookedCount);

@override
String toString() {
  return 'NutritionProgressDay(day: $day, consumed: $consumed, cookedCount: $cookedCount)';
}


}

/// @nodoc
abstract mixin class _$NutritionProgressDayCopyWith<$Res> implements $NutritionProgressDayCopyWith<$Res> {
  factory _$NutritionProgressDayCopyWith(_NutritionProgressDay value, $Res Function(_NutritionProgressDay) _then) = __$NutritionProgressDayCopyWithImpl;
@override @useResult
$Res call({
 String day, CanonicalNutrition consumed, int cookedCount
});


@override $CanonicalNutritionCopyWith<$Res> get consumed;

}
/// @nodoc
class __$NutritionProgressDayCopyWithImpl<$Res>
    implements _$NutritionProgressDayCopyWith<$Res> {
  __$NutritionProgressDayCopyWithImpl(this._self, this._then);

  final _NutritionProgressDay _self;
  final $Res Function(_NutritionProgressDay) _then;

/// Create a copy of NutritionProgressDay
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? day = null,Object? consumed = null,Object? cookedCount = null,}) {
  return _then(_NutritionProgressDay(
day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String,consumed: null == consumed ? _self.consumed : consumed // ignore: cast_nullable_to_non_nullable
as CanonicalNutrition,cookedCount: null == cookedCount ? _self.cookedCount : cookedCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of NutritionProgressDay
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CanonicalNutritionCopyWith<$Res> get consumed {
  
  return $CanonicalNutritionCopyWith<$Res>(_self.consumed, (value) {
    return _then(_self.copyWith(consumed: value));
  });
}
}


/// @nodoc
mixin _$CookedMealSummary {

 String get id; String get recipeId; String get title; String get mealSlot; String get cookedAt; CanonicalNutrition get nutrition;
/// Create a copy of CookedMealSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CookedMealSummaryCopyWith<CookedMealSummary> get copyWith => _$CookedMealSummaryCopyWithImpl<CookedMealSummary>(this as CookedMealSummary, _$identity);

  /// Serializes this CookedMealSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CookedMealSummary&&(identical(other.id, id) || other.id == id)&&(identical(other.recipeId, recipeId) || other.recipeId == recipeId)&&(identical(other.title, title) || other.title == title)&&(identical(other.mealSlot, mealSlot) || other.mealSlot == mealSlot)&&(identical(other.cookedAt, cookedAt) || other.cookedAt == cookedAt)&&(identical(other.nutrition, nutrition) || other.nutrition == nutrition));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,recipeId,title,mealSlot,cookedAt,nutrition);

@override
String toString() {
  return 'CookedMealSummary(id: $id, recipeId: $recipeId, title: $title, mealSlot: $mealSlot, cookedAt: $cookedAt, nutrition: $nutrition)';
}


}

/// @nodoc
abstract mixin class $CookedMealSummaryCopyWith<$Res>  {
  factory $CookedMealSummaryCopyWith(CookedMealSummary value, $Res Function(CookedMealSummary) _then) = _$CookedMealSummaryCopyWithImpl;
@useResult
$Res call({
 String id, String recipeId, String title, String mealSlot, String cookedAt, CanonicalNutrition nutrition
});


$CanonicalNutritionCopyWith<$Res> get nutrition;

}
/// @nodoc
class _$CookedMealSummaryCopyWithImpl<$Res>
    implements $CookedMealSummaryCopyWith<$Res> {
  _$CookedMealSummaryCopyWithImpl(this._self, this._then);

  final CookedMealSummary _self;
  final $Res Function(CookedMealSummary) _then;

/// Create a copy of CookedMealSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? recipeId = null,Object? title = null,Object? mealSlot = null,Object? cookedAt = null,Object? nutrition = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,recipeId: null == recipeId ? _self.recipeId : recipeId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,mealSlot: null == mealSlot ? _self.mealSlot : mealSlot // ignore: cast_nullable_to_non_nullable
as String,cookedAt: null == cookedAt ? _self.cookedAt : cookedAt // ignore: cast_nullable_to_non_nullable
as String,nutrition: null == nutrition ? _self.nutrition : nutrition // ignore: cast_nullable_to_non_nullable
as CanonicalNutrition,
  ));
}
/// Create a copy of CookedMealSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CanonicalNutritionCopyWith<$Res> get nutrition {
  
  return $CanonicalNutritionCopyWith<$Res>(_self.nutrition, (value) {
    return _then(_self.copyWith(nutrition: value));
  });
}
}


/// Adds pattern-matching-related methods to [CookedMealSummary].
extension CookedMealSummaryPatterns on CookedMealSummary {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CookedMealSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CookedMealSummary() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CookedMealSummary value)  $default,){
final _that = this;
switch (_that) {
case _CookedMealSummary():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CookedMealSummary value)?  $default,){
final _that = this;
switch (_that) {
case _CookedMealSummary() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String recipeId,  String title,  String mealSlot,  String cookedAt,  CanonicalNutrition nutrition)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CookedMealSummary() when $default != null:
return $default(_that.id,_that.recipeId,_that.title,_that.mealSlot,_that.cookedAt,_that.nutrition);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String recipeId,  String title,  String mealSlot,  String cookedAt,  CanonicalNutrition nutrition)  $default,) {final _that = this;
switch (_that) {
case _CookedMealSummary():
return $default(_that.id,_that.recipeId,_that.title,_that.mealSlot,_that.cookedAt,_that.nutrition);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String recipeId,  String title,  String mealSlot,  String cookedAt,  CanonicalNutrition nutrition)?  $default,) {final _that = this;
switch (_that) {
case _CookedMealSummary() when $default != null:
return $default(_that.id,_that.recipeId,_that.title,_that.mealSlot,_that.cookedAt,_that.nutrition);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CookedMealSummary implements CookedMealSummary {
  const _CookedMealSummary({required this.id, required this.recipeId, required this.title, required this.mealSlot, required this.cookedAt, this.nutrition = const CanonicalNutrition()});
  factory _CookedMealSummary.fromJson(Map<String, dynamic> json) => _$CookedMealSummaryFromJson(json);

@override final  String id;
@override final  String recipeId;
@override final  String title;
@override final  String mealSlot;
@override final  String cookedAt;
@override@JsonKey() final  CanonicalNutrition nutrition;

/// Create a copy of CookedMealSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CookedMealSummaryCopyWith<_CookedMealSummary> get copyWith => __$CookedMealSummaryCopyWithImpl<_CookedMealSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CookedMealSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CookedMealSummary&&(identical(other.id, id) || other.id == id)&&(identical(other.recipeId, recipeId) || other.recipeId == recipeId)&&(identical(other.title, title) || other.title == title)&&(identical(other.mealSlot, mealSlot) || other.mealSlot == mealSlot)&&(identical(other.cookedAt, cookedAt) || other.cookedAt == cookedAt)&&(identical(other.nutrition, nutrition) || other.nutrition == nutrition));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,recipeId,title,mealSlot,cookedAt,nutrition);

@override
String toString() {
  return 'CookedMealSummary(id: $id, recipeId: $recipeId, title: $title, mealSlot: $mealSlot, cookedAt: $cookedAt, nutrition: $nutrition)';
}


}

/// @nodoc
abstract mixin class _$CookedMealSummaryCopyWith<$Res> implements $CookedMealSummaryCopyWith<$Res> {
  factory _$CookedMealSummaryCopyWith(_CookedMealSummary value, $Res Function(_CookedMealSummary) _then) = __$CookedMealSummaryCopyWithImpl;
@override @useResult
$Res call({
 String id, String recipeId, String title, String mealSlot, String cookedAt, CanonicalNutrition nutrition
});


@override $CanonicalNutritionCopyWith<$Res> get nutrition;

}
/// @nodoc
class __$CookedMealSummaryCopyWithImpl<$Res>
    implements _$CookedMealSummaryCopyWith<$Res> {
  __$CookedMealSummaryCopyWithImpl(this._self, this._then);

  final _CookedMealSummary _self;
  final $Res Function(_CookedMealSummary) _then;

/// Create a copy of CookedMealSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? recipeId = null,Object? title = null,Object? mealSlot = null,Object? cookedAt = null,Object? nutrition = null,}) {
  return _then(_CookedMealSummary(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,recipeId: null == recipeId ? _self.recipeId : recipeId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,mealSlot: null == mealSlot ? _self.mealSlot : mealSlot // ignore: cast_nullable_to_non_nullable
as String,cookedAt: null == cookedAt ? _self.cookedAt : cookedAt // ignore: cast_nullable_to_non_nullable
as String,nutrition: null == nutrition ? _self.nutrition : nutrition // ignore: cast_nullable_to_non_nullable
as CanonicalNutrition,
  ));
}

/// Create a copy of CookedMealSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CanonicalNutritionCopyWith<$Res> get nutrition {
  
  return $CanonicalNutritionCopyWith<$Res>(_self.nutrition, (value) {
    return _then(_self.copyWith(nutrition: value));
  });
}
}


/// @nodoc
mixin _$NutritionProgressReport {

 String get from; String get to; CanonicalNutrition get targets; CanonicalNutrition get consumed; NutritionProgressTotals get totals; List<NutritionProgressDay> get days; List<CookedMealSummary> get meals;
/// Create a copy of NutritionProgressReport
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NutritionProgressReportCopyWith<NutritionProgressReport> get copyWith => _$NutritionProgressReportCopyWithImpl<NutritionProgressReport>(this as NutritionProgressReport, _$identity);

  /// Serializes this NutritionProgressReport to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NutritionProgressReport&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to)&&(identical(other.targets, targets) || other.targets == targets)&&(identical(other.consumed, consumed) || other.consumed == consumed)&&(identical(other.totals, totals) || other.totals == totals)&&const DeepCollectionEquality().equals(other.days, days)&&const DeepCollectionEquality().equals(other.meals, meals));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,from,to,targets,consumed,totals,const DeepCollectionEquality().hash(days),const DeepCollectionEquality().hash(meals));

@override
String toString() {
  return 'NutritionProgressReport(from: $from, to: $to, targets: $targets, consumed: $consumed, totals: $totals, days: $days, meals: $meals)';
}


}

/// @nodoc
abstract mixin class $NutritionProgressReportCopyWith<$Res>  {
  factory $NutritionProgressReportCopyWith(NutritionProgressReport value, $Res Function(NutritionProgressReport) _then) = _$NutritionProgressReportCopyWithImpl;
@useResult
$Res call({
 String from, String to, CanonicalNutrition targets, CanonicalNutrition consumed, NutritionProgressTotals totals, List<NutritionProgressDay> days, List<CookedMealSummary> meals
});


$CanonicalNutritionCopyWith<$Res> get targets;$CanonicalNutritionCopyWith<$Res> get consumed;$NutritionProgressTotalsCopyWith<$Res> get totals;

}
/// @nodoc
class _$NutritionProgressReportCopyWithImpl<$Res>
    implements $NutritionProgressReportCopyWith<$Res> {
  _$NutritionProgressReportCopyWithImpl(this._self, this._then);

  final NutritionProgressReport _self;
  final $Res Function(NutritionProgressReport) _then;

/// Create a copy of NutritionProgressReport
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? from = null,Object? to = null,Object? targets = null,Object? consumed = null,Object? totals = null,Object? days = null,Object? meals = null,}) {
  return _then(_self.copyWith(
from: null == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as String,to: null == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as String,targets: null == targets ? _self.targets : targets // ignore: cast_nullable_to_non_nullable
as CanonicalNutrition,consumed: null == consumed ? _self.consumed : consumed // ignore: cast_nullable_to_non_nullable
as CanonicalNutrition,totals: null == totals ? _self.totals : totals // ignore: cast_nullable_to_non_nullable
as NutritionProgressTotals,days: null == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as List<NutritionProgressDay>,meals: null == meals ? _self.meals : meals // ignore: cast_nullable_to_non_nullable
as List<CookedMealSummary>,
  ));
}
/// Create a copy of NutritionProgressReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CanonicalNutritionCopyWith<$Res> get targets {
  
  return $CanonicalNutritionCopyWith<$Res>(_self.targets, (value) {
    return _then(_self.copyWith(targets: value));
  });
}/// Create a copy of NutritionProgressReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CanonicalNutritionCopyWith<$Res> get consumed {
  
  return $CanonicalNutritionCopyWith<$Res>(_self.consumed, (value) {
    return _then(_self.copyWith(consumed: value));
  });
}/// Create a copy of NutritionProgressReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutritionProgressTotalsCopyWith<$Res> get totals {
  
  return $NutritionProgressTotalsCopyWith<$Res>(_self.totals, (value) {
    return _then(_self.copyWith(totals: value));
  });
}
}


/// Adds pattern-matching-related methods to [NutritionProgressReport].
extension NutritionProgressReportPatterns on NutritionProgressReport {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NutritionProgressReport value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NutritionProgressReport() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NutritionProgressReport value)  $default,){
final _that = this;
switch (_that) {
case _NutritionProgressReport():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NutritionProgressReport value)?  $default,){
final _that = this;
switch (_that) {
case _NutritionProgressReport() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String from,  String to,  CanonicalNutrition targets,  CanonicalNutrition consumed,  NutritionProgressTotals totals,  List<NutritionProgressDay> days,  List<CookedMealSummary> meals)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NutritionProgressReport() when $default != null:
return $default(_that.from,_that.to,_that.targets,_that.consumed,_that.totals,_that.days,_that.meals);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String from,  String to,  CanonicalNutrition targets,  CanonicalNutrition consumed,  NutritionProgressTotals totals,  List<NutritionProgressDay> days,  List<CookedMealSummary> meals)  $default,) {final _that = this;
switch (_that) {
case _NutritionProgressReport():
return $default(_that.from,_that.to,_that.targets,_that.consumed,_that.totals,_that.days,_that.meals);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String from,  String to,  CanonicalNutrition targets,  CanonicalNutrition consumed,  NutritionProgressTotals totals,  List<NutritionProgressDay> days,  List<CookedMealSummary> meals)?  $default,) {final _that = this;
switch (_that) {
case _NutritionProgressReport() when $default != null:
return $default(_that.from,_that.to,_that.targets,_that.consumed,_that.totals,_that.days,_that.meals);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NutritionProgressReport implements NutritionProgressReport {
  const _NutritionProgressReport({required this.from, required this.to, this.targets = const CanonicalNutrition(), this.consumed = const CanonicalNutrition(), this.totals = const NutritionProgressTotals(), final  List<NutritionProgressDay> days = const <NutritionProgressDay>[], final  List<CookedMealSummary> meals = const <CookedMealSummary>[]}): _days = days,_meals = meals;
  factory _NutritionProgressReport.fromJson(Map<String, dynamic> json) => _$NutritionProgressReportFromJson(json);

@override final  String from;
@override final  String to;
@override@JsonKey() final  CanonicalNutrition targets;
@override@JsonKey() final  CanonicalNutrition consumed;
@override@JsonKey() final  NutritionProgressTotals totals;
 final  List<NutritionProgressDay> _days;
@override@JsonKey() List<NutritionProgressDay> get days {
  if (_days is EqualUnmodifiableListView) return _days;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_days);
}

 final  List<CookedMealSummary> _meals;
@override@JsonKey() List<CookedMealSummary> get meals {
  if (_meals is EqualUnmodifiableListView) return _meals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_meals);
}


/// Create a copy of NutritionProgressReport
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NutritionProgressReportCopyWith<_NutritionProgressReport> get copyWith => __$NutritionProgressReportCopyWithImpl<_NutritionProgressReport>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NutritionProgressReportToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NutritionProgressReport&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to)&&(identical(other.targets, targets) || other.targets == targets)&&(identical(other.consumed, consumed) || other.consumed == consumed)&&(identical(other.totals, totals) || other.totals == totals)&&const DeepCollectionEquality().equals(other._days, _days)&&const DeepCollectionEquality().equals(other._meals, _meals));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,from,to,targets,consumed,totals,const DeepCollectionEquality().hash(_days),const DeepCollectionEquality().hash(_meals));

@override
String toString() {
  return 'NutritionProgressReport(from: $from, to: $to, targets: $targets, consumed: $consumed, totals: $totals, days: $days, meals: $meals)';
}


}

/// @nodoc
abstract mixin class _$NutritionProgressReportCopyWith<$Res> implements $NutritionProgressReportCopyWith<$Res> {
  factory _$NutritionProgressReportCopyWith(_NutritionProgressReport value, $Res Function(_NutritionProgressReport) _then) = __$NutritionProgressReportCopyWithImpl;
@override @useResult
$Res call({
 String from, String to, CanonicalNutrition targets, CanonicalNutrition consumed, NutritionProgressTotals totals, List<NutritionProgressDay> days, List<CookedMealSummary> meals
});


@override $CanonicalNutritionCopyWith<$Res> get targets;@override $CanonicalNutritionCopyWith<$Res> get consumed;@override $NutritionProgressTotalsCopyWith<$Res> get totals;

}
/// @nodoc
class __$NutritionProgressReportCopyWithImpl<$Res>
    implements _$NutritionProgressReportCopyWith<$Res> {
  __$NutritionProgressReportCopyWithImpl(this._self, this._then);

  final _NutritionProgressReport _self;
  final $Res Function(_NutritionProgressReport) _then;

/// Create a copy of NutritionProgressReport
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? from = null,Object? to = null,Object? targets = null,Object? consumed = null,Object? totals = null,Object? days = null,Object? meals = null,}) {
  return _then(_NutritionProgressReport(
from: null == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as String,to: null == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as String,targets: null == targets ? _self.targets : targets // ignore: cast_nullable_to_non_nullable
as CanonicalNutrition,consumed: null == consumed ? _self.consumed : consumed // ignore: cast_nullable_to_non_nullable
as CanonicalNutrition,totals: null == totals ? _self.totals : totals // ignore: cast_nullable_to_non_nullable
as NutritionProgressTotals,days: null == days ? _self._days : days // ignore: cast_nullable_to_non_nullable
as List<NutritionProgressDay>,meals: null == meals ? _self._meals : meals // ignore: cast_nullable_to_non_nullable
as List<CookedMealSummary>,
  ));
}

/// Create a copy of NutritionProgressReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CanonicalNutritionCopyWith<$Res> get targets {
  
  return $CanonicalNutritionCopyWith<$Res>(_self.targets, (value) {
    return _then(_self.copyWith(targets: value));
  });
}/// Create a copy of NutritionProgressReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CanonicalNutritionCopyWith<$Res> get consumed {
  
  return $CanonicalNutritionCopyWith<$Res>(_self.consumed, (value) {
    return _then(_self.copyWith(consumed: value));
  });
}/// Create a copy of NutritionProgressReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutritionProgressTotalsCopyWith<$Res> get totals {
  
  return $NutritionProgressTotalsCopyWith<$Res>(_self.totals, (value) {
    return _then(_self.copyWith(totals: value));
  });
}
}

// dart format on
