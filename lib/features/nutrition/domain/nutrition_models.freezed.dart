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

 String get id; String get employeeId; int get age; String get gender; int get heightCm; int get weightKg; String get lifestyle; String get activityLevel; List<HealthProfileAllergy> get allergies; List<HealthProfileGoal> get goals; String get createdAt; String get updatedAt;
/// Create a copy of HealthProfile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HealthProfileCopyWith<HealthProfile> get copyWith => _$HealthProfileCopyWithImpl<HealthProfile>(this as HealthProfile, _$identity);

  /// Serializes this HealthProfile to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HealthProfile&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.heightCm, heightCm) || other.heightCm == heightCm)&&(identical(other.weightKg, weightKg) || other.weightKg == weightKg)&&(identical(other.lifestyle, lifestyle) || other.lifestyle == lifestyle)&&(identical(other.activityLevel, activityLevel) || other.activityLevel == activityLevel)&&const DeepCollectionEquality().equals(other.allergies, allergies)&&const DeepCollectionEquality().equals(other.goals, goals)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,employeeId,age,gender,heightCm,weightKg,lifestyle,activityLevel,const DeepCollectionEquality().hash(allergies),const DeepCollectionEquality().hash(goals),createdAt,updatedAt);

@override
String toString() {
  return 'HealthProfile(id: $id, employeeId: $employeeId, age: $age, gender: $gender, heightCm: $heightCm, weightKg: $weightKg, lifestyle: $lifestyle, activityLevel: $activityLevel, allergies: $allergies, goals: $goals, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $HealthProfileCopyWith<$Res>  {
  factory $HealthProfileCopyWith(HealthProfile value, $Res Function(HealthProfile) _then) = _$HealthProfileCopyWithImpl;
@useResult
$Res call({
 String id, String employeeId, int age, String gender, int heightCm, int weightKg, String lifestyle, String activityLevel, List<HealthProfileAllergy> allergies, List<HealthProfileGoal> goals, String createdAt, String updatedAt
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? employeeId = null,Object? age = null,Object? gender = null,Object? heightCm = null,Object? weightKg = null,Object? lifestyle = null,Object? activityLevel = null,Object? allergies = null,Object? goals = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,heightCm: null == heightCm ? _self.heightCm : heightCm // ignore: cast_nullable_to_non_nullable
as int,weightKg: null == weightKg ? _self.weightKg : weightKg // ignore: cast_nullable_to_non_nullable
as int,lifestyle: null == lifestyle ? _self.lifestyle : lifestyle // ignore: cast_nullable_to_non_nullable
as String,activityLevel: null == activityLevel ? _self.activityLevel : activityLevel // ignore: cast_nullable_to_non_nullable
as String,allergies: null == allergies ? _self.allergies : allergies // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String employeeId,  int age,  String gender,  int heightCm,  int weightKg,  String lifestyle,  String activityLevel,  List<HealthProfileAllergy> allergies,  List<HealthProfileGoal> goals,  String createdAt,  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HealthProfile() when $default != null:
return $default(_that.id,_that.employeeId,_that.age,_that.gender,_that.heightCm,_that.weightKg,_that.lifestyle,_that.activityLevel,_that.allergies,_that.goals,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String employeeId,  int age,  String gender,  int heightCm,  int weightKg,  String lifestyle,  String activityLevel,  List<HealthProfileAllergy> allergies,  List<HealthProfileGoal> goals,  String createdAt,  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _HealthProfile():
return $default(_that.id,_that.employeeId,_that.age,_that.gender,_that.heightCm,_that.weightKg,_that.lifestyle,_that.activityLevel,_that.allergies,_that.goals,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String employeeId,  int age,  String gender,  int heightCm,  int weightKg,  String lifestyle,  String activityLevel,  List<HealthProfileAllergy> allergies,  List<HealthProfileGoal> goals,  String createdAt,  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _HealthProfile() when $default != null:
return $default(_that.id,_that.employeeId,_that.age,_that.gender,_that.heightCm,_that.weightKg,_that.lifestyle,_that.activityLevel,_that.allergies,_that.goals,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HealthProfile implements HealthProfile {
  const _HealthProfile({required this.id, required this.employeeId, required this.age, required this.gender, required this.heightCm, required this.weightKg, required this.lifestyle, required this.activityLevel, required final  List<HealthProfileAllergy> allergies, required final  List<HealthProfileGoal> goals, required this.createdAt, required this.updatedAt}): _allergies = allergies,_goals = goals;
  factory _HealthProfile.fromJson(Map<String, dynamic> json) => _$HealthProfileFromJson(json);

@override final  String id;
@override final  String employeeId;
@override final  int age;
@override final  String gender;
@override final  int heightCm;
@override final  int weightKg;
@override final  String lifestyle;
@override final  String activityLevel;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HealthProfile&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.heightCm, heightCm) || other.heightCm == heightCm)&&(identical(other.weightKg, weightKg) || other.weightKg == weightKg)&&(identical(other.lifestyle, lifestyle) || other.lifestyle == lifestyle)&&(identical(other.activityLevel, activityLevel) || other.activityLevel == activityLevel)&&const DeepCollectionEquality().equals(other._allergies, _allergies)&&const DeepCollectionEquality().equals(other._goals, _goals)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,employeeId,age,gender,heightCm,weightKg,lifestyle,activityLevel,const DeepCollectionEquality().hash(_allergies),const DeepCollectionEquality().hash(_goals),createdAt,updatedAt);

@override
String toString() {
  return 'HealthProfile(id: $id, employeeId: $employeeId, age: $age, gender: $gender, heightCm: $heightCm, weightKg: $weightKg, lifestyle: $lifestyle, activityLevel: $activityLevel, allergies: $allergies, goals: $goals, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$HealthProfileCopyWith<$Res> implements $HealthProfileCopyWith<$Res> {
  factory _$HealthProfileCopyWith(_HealthProfile value, $Res Function(_HealthProfile) _then) = __$HealthProfileCopyWithImpl;
@override @useResult
$Res call({
 String id, String employeeId, int age, String gender, int heightCm, int weightKg, String lifestyle, String activityLevel, List<HealthProfileAllergy> allergies, List<HealthProfileGoal> goals, String createdAt, String updatedAt
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? employeeId = null,Object? age = null,Object? gender = null,Object? heightCm = null,Object? weightKg = null,Object? lifestyle = null,Object? activityLevel = null,Object? allergies = null,Object? goals = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_HealthProfile(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,heightCm: null == heightCm ? _self.heightCm : heightCm // ignore: cast_nullable_to_non_nullable
as int,weightKg: null == weightKg ? _self.weightKg : weightKg // ignore: cast_nullable_to_non_nullable
as int,lifestyle: null == lifestyle ? _self.lifestyle : lifestyle // ignore: cast_nullable_to_non_nullable
as String,activityLevel: null == activityLevel ? _self.activityLevel : activityLevel // ignore: cast_nullable_to_non_nullable
as String,allergies: null == allergies ? _self._allergies : allergies // ignore: cast_nullable_to_non_nullable
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

 String get id; String get employeeId; String get employeeName; String get employerName; String get status; String get title; String? get packageId; String? get failureReason; String? get adminNote; String? get reviewedAt; String get createdAt; String get updatedAt;
/// Create a copy of MealPlanSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MealPlanSummaryCopyWith<MealPlanSummary> get copyWith => _$MealPlanSummaryCopyWithImpl<MealPlanSummary>(this as MealPlanSummary, _$identity);

  /// Serializes this MealPlanSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MealPlanSummary&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.employeeName, employeeName) || other.employeeName == employeeName)&&(identical(other.employerName, employerName) || other.employerName == employerName)&&(identical(other.status, status) || other.status == status)&&(identical(other.title, title) || other.title == title)&&(identical(other.packageId, packageId) || other.packageId == packageId)&&(identical(other.failureReason, failureReason) || other.failureReason == failureReason)&&(identical(other.adminNote, adminNote) || other.adminNote == adminNote)&&(identical(other.reviewedAt, reviewedAt) || other.reviewedAt == reviewedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,employeeId,employeeName,employerName,status,title,packageId,failureReason,adminNote,reviewedAt,createdAt,updatedAt);

@override
String toString() {
  return 'MealPlanSummary(id: $id, employeeId: $employeeId, employeeName: $employeeName, employerName: $employerName, status: $status, title: $title, packageId: $packageId, failureReason: $failureReason, adminNote: $adminNote, reviewedAt: $reviewedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $MealPlanSummaryCopyWith<$Res>  {
  factory $MealPlanSummaryCopyWith(MealPlanSummary value, $Res Function(MealPlanSummary) _then) = _$MealPlanSummaryCopyWithImpl;
@useResult
$Res call({
 String id, String employeeId, String employeeName, String employerName, String status, String title, String? packageId, String? failureReason, String? adminNote, String? reviewedAt, String createdAt, String updatedAt
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? employeeId = null,Object? employeeName = null,Object? employerName = null,Object? status = null,Object? title = null,Object? packageId = freezed,Object? failureReason = freezed,Object? adminNote = freezed,Object? reviewedAt = freezed,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,employeeName: null == employeeName ? _self.employeeName : employeeName // ignore: cast_nullable_to_non_nullable
as String,employerName: null == employerName ? _self.employerName : employerName // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,packageId: freezed == packageId ? _self.packageId : packageId // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String employeeId,  String employeeName,  String employerName,  String status,  String title,  String? packageId,  String? failureReason,  String? adminNote,  String? reviewedAt,  String createdAt,  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MealPlanSummary() when $default != null:
return $default(_that.id,_that.employeeId,_that.employeeName,_that.employerName,_that.status,_that.title,_that.packageId,_that.failureReason,_that.adminNote,_that.reviewedAt,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String employeeId,  String employeeName,  String employerName,  String status,  String title,  String? packageId,  String? failureReason,  String? adminNote,  String? reviewedAt,  String createdAt,  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _MealPlanSummary():
return $default(_that.id,_that.employeeId,_that.employeeName,_that.employerName,_that.status,_that.title,_that.packageId,_that.failureReason,_that.adminNote,_that.reviewedAt,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String employeeId,  String employeeName,  String employerName,  String status,  String title,  String? packageId,  String? failureReason,  String? adminNote,  String? reviewedAt,  String createdAt,  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _MealPlanSummary() when $default != null:
return $default(_that.id,_that.employeeId,_that.employeeName,_that.employerName,_that.status,_that.title,_that.packageId,_that.failureReason,_that.adminNote,_that.reviewedAt,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MealPlanSummary implements MealPlanSummary {
  const _MealPlanSummary({required this.id, required this.employeeId, required this.employeeName, required this.employerName, required this.status, required this.title, this.packageId, this.failureReason, this.adminNote, this.reviewedAt, required this.createdAt, required this.updatedAt});
  factory _MealPlanSummary.fromJson(Map<String, dynamic> json) => _$MealPlanSummaryFromJson(json);

@override final  String id;
@override final  String employeeId;
@override final  String employeeName;
@override final  String employerName;
@override final  String status;
@override final  String title;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MealPlanSummary&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.employeeName, employeeName) || other.employeeName == employeeName)&&(identical(other.employerName, employerName) || other.employerName == employerName)&&(identical(other.status, status) || other.status == status)&&(identical(other.title, title) || other.title == title)&&(identical(other.packageId, packageId) || other.packageId == packageId)&&(identical(other.failureReason, failureReason) || other.failureReason == failureReason)&&(identical(other.adminNote, adminNote) || other.adminNote == adminNote)&&(identical(other.reviewedAt, reviewedAt) || other.reviewedAt == reviewedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,employeeId,employeeName,employerName,status,title,packageId,failureReason,adminNote,reviewedAt,createdAt,updatedAt);

@override
String toString() {
  return 'MealPlanSummary(id: $id, employeeId: $employeeId, employeeName: $employeeName, employerName: $employerName, status: $status, title: $title, packageId: $packageId, failureReason: $failureReason, adminNote: $adminNote, reviewedAt: $reviewedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$MealPlanSummaryCopyWith<$Res> implements $MealPlanSummaryCopyWith<$Res> {
  factory _$MealPlanSummaryCopyWith(_MealPlanSummary value, $Res Function(_MealPlanSummary) _then) = __$MealPlanSummaryCopyWithImpl;
@override @useResult
$Res call({
 String id, String employeeId, String employeeName, String employerName, String status, String title, String? packageId, String? failureReason, String? adminNote, String? reviewedAt, String createdAt, String updatedAt
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? employeeId = null,Object? employeeName = null,Object? employerName = null,Object? status = null,Object? title = null,Object? packageId = freezed,Object? failureReason = freezed,Object? adminNote = freezed,Object? reviewedAt = freezed,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_MealPlanSummary(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,employeeName: null == employeeName ? _self.employeeName : employeeName // ignore: cast_nullable_to_non_nullable
as String,employerName: null == employerName ? _self.employerName : employerName // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,packageId: freezed == packageId ? _self.packageId : packageId // ignore: cast_nullable_to_non_nullable
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

 String get id; String get mealSlot; String get title; String get rationale; String get requestedProductName; String? get productId; String? get productName; String? get productImageUrl; String? get origin; Map<String, String> get nutritionFacts; List<String> get tags; String get matchType; int get quantity; int get sortOrder;
/// Create a copy of MealPlanItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MealPlanItemCopyWith<MealPlanItem> get copyWith => _$MealPlanItemCopyWithImpl<MealPlanItem>(this as MealPlanItem, _$identity);

  /// Serializes this MealPlanItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MealPlanItem&&(identical(other.id, id) || other.id == id)&&(identical(other.mealSlot, mealSlot) || other.mealSlot == mealSlot)&&(identical(other.title, title) || other.title == title)&&(identical(other.rationale, rationale) || other.rationale == rationale)&&(identical(other.requestedProductName, requestedProductName) || other.requestedProductName == requestedProductName)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.productImageUrl, productImageUrl) || other.productImageUrl == productImageUrl)&&(identical(other.origin, origin) || other.origin == origin)&&const DeepCollectionEquality().equals(other.nutritionFacts, nutritionFacts)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.matchType, matchType) || other.matchType == matchType)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,mealSlot,title,rationale,requestedProductName,productId,productName,productImageUrl,origin,const DeepCollectionEquality().hash(nutritionFacts),const DeepCollectionEquality().hash(tags),matchType,quantity,sortOrder);

@override
String toString() {
  return 'MealPlanItem(id: $id, mealSlot: $mealSlot, title: $title, rationale: $rationale, requestedProductName: $requestedProductName, productId: $productId, productName: $productName, productImageUrl: $productImageUrl, origin: $origin, nutritionFacts: $nutritionFacts, tags: $tags, matchType: $matchType, quantity: $quantity, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class $MealPlanItemCopyWith<$Res>  {
  factory $MealPlanItemCopyWith(MealPlanItem value, $Res Function(MealPlanItem) _then) = _$MealPlanItemCopyWithImpl;
@useResult
$Res call({
 String id, String mealSlot, String title, String rationale, String requestedProductName, String? productId, String? productName, String? productImageUrl, String? origin, Map<String, String> nutritionFacts, List<String> tags, String matchType, int quantity, int sortOrder
});




}
/// @nodoc
class _$MealPlanItemCopyWithImpl<$Res>
    implements $MealPlanItemCopyWith<$Res> {
  _$MealPlanItemCopyWithImpl(this._self, this._then);

  final MealPlanItem _self;
  final $Res Function(MealPlanItem) _then;

/// Create a copy of MealPlanItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? mealSlot = null,Object? title = null,Object? rationale = null,Object? requestedProductName = null,Object? productId = freezed,Object? productName = freezed,Object? productImageUrl = freezed,Object? origin = freezed,Object? nutritionFacts = null,Object? tags = null,Object? matchType = null,Object? quantity = null,Object? sortOrder = null,}) {
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
as int,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,
  ));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String mealSlot,  String title,  String rationale,  String requestedProductName,  String? productId,  String? productName,  String? productImageUrl,  String? origin,  Map<String, String> nutritionFacts,  List<String> tags,  String matchType,  int quantity,  int sortOrder)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MealPlanItem() when $default != null:
return $default(_that.id,_that.mealSlot,_that.title,_that.rationale,_that.requestedProductName,_that.productId,_that.productName,_that.productImageUrl,_that.origin,_that.nutritionFacts,_that.tags,_that.matchType,_that.quantity,_that.sortOrder);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String mealSlot,  String title,  String rationale,  String requestedProductName,  String? productId,  String? productName,  String? productImageUrl,  String? origin,  Map<String, String> nutritionFacts,  List<String> tags,  String matchType,  int quantity,  int sortOrder)  $default,) {final _that = this;
switch (_that) {
case _MealPlanItem():
return $default(_that.id,_that.mealSlot,_that.title,_that.rationale,_that.requestedProductName,_that.productId,_that.productName,_that.productImageUrl,_that.origin,_that.nutritionFacts,_that.tags,_that.matchType,_that.quantity,_that.sortOrder);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String mealSlot,  String title,  String rationale,  String requestedProductName,  String? productId,  String? productName,  String? productImageUrl,  String? origin,  Map<String, String> nutritionFacts,  List<String> tags,  String matchType,  int quantity,  int sortOrder)?  $default,) {final _that = this;
switch (_that) {
case _MealPlanItem() when $default != null:
return $default(_that.id,_that.mealSlot,_that.title,_that.rationale,_that.requestedProductName,_that.productId,_that.productName,_that.productImageUrl,_that.origin,_that.nutritionFacts,_that.tags,_that.matchType,_that.quantity,_that.sortOrder);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MealPlanItem implements MealPlanItem {
  const _MealPlanItem({required this.id, required this.mealSlot, required this.title, required this.rationale, required this.requestedProductName, this.productId, this.productName, this.productImageUrl, this.origin, final  Map<String, String> nutritionFacts = const <String, String>{}, final  List<String> tags = const <String>[], required this.matchType, required this.quantity, required this.sortOrder}): _nutritionFacts = nutritionFacts,_tags = tags;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MealPlanItem&&(identical(other.id, id) || other.id == id)&&(identical(other.mealSlot, mealSlot) || other.mealSlot == mealSlot)&&(identical(other.title, title) || other.title == title)&&(identical(other.rationale, rationale) || other.rationale == rationale)&&(identical(other.requestedProductName, requestedProductName) || other.requestedProductName == requestedProductName)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.productImageUrl, productImageUrl) || other.productImageUrl == productImageUrl)&&(identical(other.origin, origin) || other.origin == origin)&&const DeepCollectionEquality().equals(other._nutritionFacts, _nutritionFacts)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.matchType, matchType) || other.matchType == matchType)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,mealSlot,title,rationale,requestedProductName,productId,productName,productImageUrl,origin,const DeepCollectionEquality().hash(_nutritionFacts),const DeepCollectionEquality().hash(_tags),matchType,quantity,sortOrder);

@override
String toString() {
  return 'MealPlanItem(id: $id, mealSlot: $mealSlot, title: $title, rationale: $rationale, requestedProductName: $requestedProductName, productId: $productId, productName: $productName, productImageUrl: $productImageUrl, origin: $origin, nutritionFacts: $nutritionFacts, tags: $tags, matchType: $matchType, quantity: $quantity, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class _$MealPlanItemCopyWith<$Res> implements $MealPlanItemCopyWith<$Res> {
  factory _$MealPlanItemCopyWith(_MealPlanItem value, $Res Function(_MealPlanItem) _then) = __$MealPlanItemCopyWithImpl;
@override @useResult
$Res call({
 String id, String mealSlot, String title, String rationale, String requestedProductName, String? productId, String? productName, String? productImageUrl, String? origin, Map<String, String> nutritionFacts, List<String> tags, String matchType, int quantity, int sortOrder
});




}
/// @nodoc
class __$MealPlanItemCopyWithImpl<$Res>
    implements _$MealPlanItemCopyWith<$Res> {
  __$MealPlanItemCopyWithImpl(this._self, this._then);

  final _MealPlanItem _self;
  final $Res Function(_MealPlanItem) _then;

/// Create a copy of MealPlanItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? mealSlot = null,Object? title = null,Object? rationale = null,Object? requestedProductName = null,Object? productId = freezed,Object? productName = freezed,Object? productImageUrl = freezed,Object? origin = freezed,Object? nutritionFacts = null,Object? tags = null,Object? matchType = null,Object? quantity = null,Object? sortOrder = null,}) {
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
as int,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$MealPlanDay {

 String get id; int get dayIndex; String get label; List<MealPlanItem> get items;
/// Create a copy of MealPlanDay
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MealPlanDayCopyWith<MealPlanDay> get copyWith => _$MealPlanDayCopyWithImpl<MealPlanDay>(this as MealPlanDay, _$identity);

  /// Serializes this MealPlanDay to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MealPlanDay&&(identical(other.id, id) || other.id == id)&&(identical(other.dayIndex, dayIndex) || other.dayIndex == dayIndex)&&(identical(other.label, label) || other.label == label)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,dayIndex,label,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'MealPlanDay(id: $id, dayIndex: $dayIndex, label: $label, items: $items)';
}


}

/// @nodoc
abstract mixin class $MealPlanDayCopyWith<$Res>  {
  factory $MealPlanDayCopyWith(MealPlanDay value, $Res Function(MealPlanDay) _then) = _$MealPlanDayCopyWithImpl;
@useResult
$Res call({
 String id, int dayIndex, String label, List<MealPlanItem> items
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? dayIndex = null,Object? label = null,Object? items = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,dayIndex: null == dayIndex ? _self.dayIndex : dayIndex // ignore: cast_nullable_to_non_nullable
as int,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  int dayIndex,  String label,  List<MealPlanItem> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MealPlanDay() when $default != null:
return $default(_that.id,_that.dayIndex,_that.label,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  int dayIndex,  String label,  List<MealPlanItem> items)  $default,) {final _that = this;
switch (_that) {
case _MealPlanDay():
return $default(_that.id,_that.dayIndex,_that.label,_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  int dayIndex,  String label,  List<MealPlanItem> items)?  $default,) {final _that = this;
switch (_that) {
case _MealPlanDay() when $default != null:
return $default(_that.id,_that.dayIndex,_that.label,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MealPlanDay implements MealPlanDay {
  const _MealPlanDay({required this.id, required this.dayIndex, required this.label, required final  List<MealPlanItem> items}): _items = items;
  factory _MealPlanDay.fromJson(Map<String, dynamic> json) => _$MealPlanDayFromJson(json);

@override final  String id;
@override final  int dayIndex;
@override final  String label;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MealPlanDay&&(identical(other.id, id) || other.id == id)&&(identical(other.dayIndex, dayIndex) || other.dayIndex == dayIndex)&&(identical(other.label, label) || other.label == label)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,dayIndex,label,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'MealPlanDay(id: $id, dayIndex: $dayIndex, label: $label, items: $items)';
}


}

/// @nodoc
abstract mixin class _$MealPlanDayCopyWith<$Res> implements $MealPlanDayCopyWith<$Res> {
  factory _$MealPlanDayCopyWith(_MealPlanDay value, $Res Function(_MealPlanDay) _then) = __$MealPlanDayCopyWithImpl;
@override @useResult
$Res call({
 String id, int dayIndex, String label, List<MealPlanItem> items
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? dayIndex = null,Object? label = null,Object? items = null,}) {
  return _then(_MealPlanDay(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,dayIndex: null == dayIndex ? _self.dayIndex : dayIndex // ignore: cast_nullable_to_non_nullable
as int,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
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

 String get id; String get employeeId; String get employeeName; String get employerName; String get status; String get title; String? get packageId; String? get failureReason; String? get adminNote; String? get reviewedAt; String get createdAt; String get updatedAt; List<MealPlanDay> get days; MealPlanProfileSnapshot? get profile;
/// Create a copy of MealPlanDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MealPlanDetailCopyWith<MealPlanDetail> get copyWith => _$MealPlanDetailCopyWithImpl<MealPlanDetail>(this as MealPlanDetail, _$identity);

  /// Serializes this MealPlanDetail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MealPlanDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.employeeName, employeeName) || other.employeeName == employeeName)&&(identical(other.employerName, employerName) || other.employerName == employerName)&&(identical(other.status, status) || other.status == status)&&(identical(other.title, title) || other.title == title)&&(identical(other.packageId, packageId) || other.packageId == packageId)&&(identical(other.failureReason, failureReason) || other.failureReason == failureReason)&&(identical(other.adminNote, adminNote) || other.adminNote == adminNote)&&(identical(other.reviewedAt, reviewedAt) || other.reviewedAt == reviewedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other.days, days)&&(identical(other.profile, profile) || other.profile == profile));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,employeeId,employeeName,employerName,status,title,packageId,failureReason,adminNote,reviewedAt,createdAt,updatedAt,const DeepCollectionEquality().hash(days),profile);

@override
String toString() {
  return 'MealPlanDetail(id: $id, employeeId: $employeeId, employeeName: $employeeName, employerName: $employerName, status: $status, title: $title, packageId: $packageId, failureReason: $failureReason, adminNote: $adminNote, reviewedAt: $reviewedAt, createdAt: $createdAt, updatedAt: $updatedAt, days: $days, profile: $profile)';
}


}

/// @nodoc
abstract mixin class $MealPlanDetailCopyWith<$Res>  {
  factory $MealPlanDetailCopyWith(MealPlanDetail value, $Res Function(MealPlanDetail) _then) = _$MealPlanDetailCopyWithImpl;
@useResult
$Res call({
 String id, String employeeId, String employeeName, String employerName, String status, String title, String? packageId, String? failureReason, String? adminNote, String? reviewedAt, String createdAt, String updatedAt, List<MealPlanDay> days, MealPlanProfileSnapshot? profile
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? employeeId = null,Object? employeeName = null,Object? employerName = null,Object? status = null,Object? title = null,Object? packageId = freezed,Object? failureReason = freezed,Object? adminNote = freezed,Object? reviewedAt = freezed,Object? createdAt = null,Object? updatedAt = null,Object? days = null,Object? profile = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,employeeName: null == employeeName ? _self.employeeName : employeeName // ignore: cast_nullable_to_non_nullable
as String,employerName: null == employerName ? _self.employerName : employerName // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,packageId: freezed == packageId ? _self.packageId : packageId // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String employeeId,  String employeeName,  String employerName,  String status,  String title,  String? packageId,  String? failureReason,  String? adminNote,  String? reviewedAt,  String createdAt,  String updatedAt,  List<MealPlanDay> days,  MealPlanProfileSnapshot? profile)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MealPlanDetail() when $default != null:
return $default(_that.id,_that.employeeId,_that.employeeName,_that.employerName,_that.status,_that.title,_that.packageId,_that.failureReason,_that.adminNote,_that.reviewedAt,_that.createdAt,_that.updatedAt,_that.days,_that.profile);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String employeeId,  String employeeName,  String employerName,  String status,  String title,  String? packageId,  String? failureReason,  String? adminNote,  String? reviewedAt,  String createdAt,  String updatedAt,  List<MealPlanDay> days,  MealPlanProfileSnapshot? profile)  $default,) {final _that = this;
switch (_that) {
case _MealPlanDetail():
return $default(_that.id,_that.employeeId,_that.employeeName,_that.employerName,_that.status,_that.title,_that.packageId,_that.failureReason,_that.adminNote,_that.reviewedAt,_that.createdAt,_that.updatedAt,_that.days,_that.profile);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String employeeId,  String employeeName,  String employerName,  String status,  String title,  String? packageId,  String? failureReason,  String? adminNote,  String? reviewedAt,  String createdAt,  String updatedAt,  List<MealPlanDay> days,  MealPlanProfileSnapshot? profile)?  $default,) {final _that = this;
switch (_that) {
case _MealPlanDetail() when $default != null:
return $default(_that.id,_that.employeeId,_that.employeeName,_that.employerName,_that.status,_that.title,_that.packageId,_that.failureReason,_that.adminNote,_that.reviewedAt,_that.createdAt,_that.updatedAt,_that.days,_that.profile);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MealPlanDetail implements MealPlanDetail {
  const _MealPlanDetail({required this.id, required this.employeeId, required this.employeeName, required this.employerName, required this.status, required this.title, this.packageId, this.failureReason, this.adminNote, this.reviewedAt, required this.createdAt, required this.updatedAt, required final  List<MealPlanDay> days, this.profile}): _days = days;
  factory _MealPlanDetail.fromJson(Map<String, dynamic> json) => _$MealPlanDetailFromJson(json);

@override final  String id;
@override final  String employeeId;
@override final  String employeeName;
@override final  String employerName;
@override final  String status;
@override final  String title;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MealPlanDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.employeeName, employeeName) || other.employeeName == employeeName)&&(identical(other.employerName, employerName) || other.employerName == employerName)&&(identical(other.status, status) || other.status == status)&&(identical(other.title, title) || other.title == title)&&(identical(other.packageId, packageId) || other.packageId == packageId)&&(identical(other.failureReason, failureReason) || other.failureReason == failureReason)&&(identical(other.adminNote, adminNote) || other.adminNote == adminNote)&&(identical(other.reviewedAt, reviewedAt) || other.reviewedAt == reviewedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other._days, _days)&&(identical(other.profile, profile) || other.profile == profile));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,employeeId,employeeName,employerName,status,title,packageId,failureReason,adminNote,reviewedAt,createdAt,updatedAt,const DeepCollectionEquality().hash(_days),profile);

@override
String toString() {
  return 'MealPlanDetail(id: $id, employeeId: $employeeId, employeeName: $employeeName, employerName: $employerName, status: $status, title: $title, packageId: $packageId, failureReason: $failureReason, adminNote: $adminNote, reviewedAt: $reviewedAt, createdAt: $createdAt, updatedAt: $updatedAt, days: $days, profile: $profile)';
}


}

/// @nodoc
abstract mixin class _$MealPlanDetailCopyWith<$Res> implements $MealPlanDetailCopyWith<$Res> {
  factory _$MealPlanDetailCopyWith(_MealPlanDetail value, $Res Function(_MealPlanDetail) _then) = __$MealPlanDetailCopyWithImpl;
@override @useResult
$Res call({
 String id, String employeeId, String employeeName, String employerName, String status, String title, String? packageId, String? failureReason, String? adminNote, String? reviewedAt, String createdAt, String updatedAt, List<MealPlanDay> days, MealPlanProfileSnapshot? profile
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? employeeId = null,Object? employeeName = null,Object? employerName = null,Object? status = null,Object? title = null,Object? packageId = freezed,Object? failureReason = freezed,Object? adminNote = freezed,Object? reviewedAt = freezed,Object? createdAt = null,Object? updatedAt = null,Object? days = null,Object? profile = freezed,}) {
  return _then(_MealPlanDetail(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,employeeName: null == employeeName ? _self.employeeName : employeeName // ignore: cast_nullable_to_non_nullable
as String,employerName: null == employerName ? _self.employerName : employerName // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,packageId: freezed == packageId ? _self.packageId : packageId // ignore: cast_nullable_to_non_nullable
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

// dart format on
