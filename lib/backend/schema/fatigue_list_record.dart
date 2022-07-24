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
  String get location;

  @nullable
  String get uid;

  @nullable
  String get who;

  @nullable
  String get whatDoing;

  @nullable
  bool get setBoundaries;

  @nullable
  bool get communicateHonestly;

  @nullable
  bool get meetYourNeeds;

  @nullable
  bool get overThinking;

  @nullable
  String get action;

  @nullable
  bool get didThingsImprove;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(FatigueListRecordBuilder builder) => builder
    ..mood = ''
    ..location = ''
    ..uid = ''
    ..who = ''
    ..whatDoing = ''
    ..setBoundaries = false
    ..communicateHonestly = false
    ..meetYourNeeds = false
    ..overThinking = false
    ..action = ''
    ..didThingsImprove = false;

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
  String location,
  String uid,
  String who,
  String whatDoing,
  bool setBoundaries,
  bool communicateHonestly,
  bool meetYourNeeds,
  bool overThinking,
  String action,
  bool didThingsImprove,
}) =>
    serializers.toFirestore(
        FatigueListRecord.serializer,
        FatigueListRecord((f) => f
          ..date = date
          ..mood = mood
          ..location = location
          ..uid = uid
          ..who = who
          ..whatDoing = whatDoing
          ..setBoundaries = setBoundaries
          ..communicateHonestly = communicateHonestly
          ..meetYourNeeds = meetYourNeeds
          ..overThinking = overThinking
          ..action = action
          ..didThingsImprove = didThingsImprove));
