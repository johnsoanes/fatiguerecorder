import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'fatigue_list_record.g.dart';

abstract class FatigueListRecord
    implements Built<FatigueListRecord, FatigueListRecordBuilder> {
  static Serializer<FatigueListRecord> get serializer =>
      _$fatigueListRecordSerializer;

  @nullable
  DateTime get date;

  @nullable
  String get mood;

  @nullable
  LatLng get latlng;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(FatigueListRecordBuilder builder) =>
      builder..mood = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('fatigueList');

  static Stream<FatigueListRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<FatigueListRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  FatigueListRecord._();
  factory FatigueListRecord([void Function(FatigueListRecordBuilder) updates]) =
      _$FatigueListRecord;

  static FatigueListRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createFatigueListRecordData({
  DateTime date,
  String mood,
  LatLng latlng,
}) =>
    serializers.toFirestore(
        FatigueListRecord.serializer,
        FatigueListRecord((f) => f
          ..date = date
          ..mood = mood
          ..latlng = latlng));
