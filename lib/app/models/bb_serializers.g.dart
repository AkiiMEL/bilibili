// GENERATED CODE - DO NOT MODIFY BY HAND

part of serializers;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(ClassifiedServices.serializer)
      ..add(HttpBody.serializer)
      ..add(HttpListBody.serializer)
      ..add(Mine.serializer)
      ..add(OfficialVerify.serializer)
      ..add(Partation.serializer)
      ..add(Pendant.serializer)
      ..add(Service.serializer)
      ..add(Vip.serializer)
      ..add(VipLabel.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ClassifiedServices)]),
          () => new ListBuilder<ClassifiedServices>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Service)]),
          () => new ListBuilder<Service>()))
    .build();

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
