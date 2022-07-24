// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fatigue_list_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FatigueListRecord> _$fatigueListRecordSerializer =
    new _$FatigueListRecordSerializer();

class _$FatigueListRecordSerializer
    implements StructuredSerializer<FatigueListRecord> {
  @override
  final Iterable<Type> types = const [FatigueListRecord, _$FatigueListRecord];
  @override
  final String wireName = 'FatigueListRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, FatigueListRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.date;
    if (value != null) {
      result
        ..add('date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.mood;
    if (value != null) {
      result
        ..add('mood')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.who;
    if (value != null) {
      result
        ..add('who')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.whatDoing;
    if (value != null) {
      result
        ..add('whatDoing')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.setBoundaries;
    if (value != null) {
      result
        ..add('setBoundaries')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.communicateHonestly;
    if (value != null) {
      result
        ..add('communicateHonestly')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.meetYourNeeds;
    if (value != null) {
      result
        ..add('meetYourNeeds')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.overThinking;
    if (value != null) {
      result
        ..add('overThinking')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.action;
    if (value != null) {
      result
        ..add('action')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.didThingsImprove;
    if (value != null) {
      result
        ..add('didThingsImprove')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  FatigueListRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FatigueListRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'mood':
          result.mood = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'who':
          result.who = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'whatDoing':
          result.whatDoing = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'setBoundaries':
          result.setBoundaries = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'communicateHonestly':
          result.communicateHonestly = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'meetYourNeeds':
          result.meetYourNeeds = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'overThinking':
          result.overThinking = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'action':
          result.action = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'didThingsImprove':
          result.didThingsImprove = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$FatigueListRecord extends FatigueListRecord {
  @override
  final DateTime date;
  @override
  final String mood;
  @override
  final String location;
  @override
  final String uid;
  @override
  final String who;
  @override
  final String whatDoing;
  @override
  final bool setBoundaries;
  @override
  final bool communicateHonestly;
  @override
  final bool meetYourNeeds;
  @override
  final bool overThinking;
  @override
  final String action;
  @override
  final bool didThingsImprove;
  @override
  final DocumentReference<Object> reference;

  factory _$FatigueListRecord(
          [void Function(FatigueListRecordBuilder) updates]) =>
      (new FatigueListRecordBuilder()..update(updates)).build();

  _$FatigueListRecord._(
      {this.date,
      this.mood,
      this.location,
      this.uid,
      this.who,
      this.whatDoing,
      this.setBoundaries,
      this.communicateHonestly,
      this.meetYourNeeds,
      this.overThinking,
      this.action,
      this.didThingsImprove,
      this.reference})
      : super._();

  @override
  FatigueListRecord rebuild(void Function(FatigueListRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FatigueListRecordBuilder toBuilder() =>
      new FatigueListRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FatigueListRecord &&
        date == other.date &&
        mood == other.mood &&
        location == other.location &&
        uid == other.uid &&
        who == other.who &&
        whatDoing == other.whatDoing &&
        setBoundaries == other.setBoundaries &&
        communicateHonestly == other.communicateHonestly &&
        meetYourNeeds == other.meetYourNeeds &&
        overThinking == other.overThinking &&
        action == other.action &&
        didThingsImprove == other.didThingsImprove &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc($jc(0, date.hashCode),
                                                    mood.hashCode),
                                                location.hashCode),
                                            uid.hashCode),
                                        who.hashCode),
                                    whatDoing.hashCode),
                                setBoundaries.hashCode),
                            communicateHonestly.hashCode),
                        meetYourNeeds.hashCode),
                    overThinking.hashCode),
                action.hashCode),
            didThingsImprove.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FatigueListRecord')
          ..add('date', date)
          ..add('mood', mood)
          ..add('location', location)
          ..add('uid', uid)
          ..add('who', who)
          ..add('whatDoing', whatDoing)
          ..add('setBoundaries', setBoundaries)
          ..add('communicateHonestly', communicateHonestly)
          ..add('meetYourNeeds', meetYourNeeds)
          ..add('overThinking', overThinking)
          ..add('action', action)
          ..add('didThingsImprove', didThingsImprove)
          ..add('reference', reference))
        .toString();
  }
}

class FatigueListRecordBuilder
    implements Builder<FatigueListRecord, FatigueListRecordBuilder> {
  _$FatigueListRecord _$v;

  DateTime _date;
  DateTime get date => _$this._date;
  set date(DateTime date) => _$this._date = date;

  String _mood;
  String get mood => _$this._mood;
  set mood(String mood) => _$this._mood = mood;

  String _location;
  String get location => _$this._location;
  set location(String location) => _$this._location = location;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  String _who;
  String get who => _$this._who;
  set who(String who) => _$this._who = who;

  String _whatDoing;
  String get whatDoing => _$this._whatDoing;
  set whatDoing(String whatDoing) => _$this._whatDoing = whatDoing;

  bool _setBoundaries;
  bool get setBoundaries => _$this._setBoundaries;
  set setBoundaries(bool setBoundaries) =>
      _$this._setBoundaries = setBoundaries;

  bool _communicateHonestly;
  bool get communicateHonestly => _$this._communicateHonestly;
  set communicateHonestly(bool communicateHonestly) =>
      _$this._communicateHonestly = communicateHonestly;

  bool _meetYourNeeds;
  bool get meetYourNeeds => _$this._meetYourNeeds;
  set meetYourNeeds(bool meetYourNeeds) =>
      _$this._meetYourNeeds = meetYourNeeds;

  bool _overThinking;
  bool get overThinking => _$this._overThinking;
  set overThinking(bool overThinking) => _$this._overThinking = overThinking;

  String _action;
  String get action => _$this._action;
  set action(String action) => _$this._action = action;

  bool _didThingsImprove;
  bool get didThingsImprove => _$this._didThingsImprove;
  set didThingsImprove(bool didThingsImprove) =>
      _$this._didThingsImprove = didThingsImprove;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  FatigueListRecordBuilder() {
    FatigueListRecord._initializeBuilder(this);
  }

  FatigueListRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _mood = $v.mood;
      _location = $v.location;
      _uid = $v.uid;
      _who = $v.who;
      _whatDoing = $v.whatDoing;
      _setBoundaries = $v.setBoundaries;
      _communicateHonestly = $v.communicateHonestly;
      _meetYourNeeds = $v.meetYourNeeds;
      _overThinking = $v.overThinking;
      _action = $v.action;
      _didThingsImprove = $v.didThingsImprove;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FatigueListRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FatigueListRecord;
  }

  @override
  void update(void Function(FatigueListRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FatigueListRecord build() {
    final _$result = _$v ??
        new _$FatigueListRecord._(
            date: date,
            mood: mood,
            location: location,
            uid: uid,
            who: who,
            whatDoing: whatDoing,
            setBoundaries: setBoundaries,
            communicateHonestly: communicateHonestly,
            meetYourNeeds: meetYourNeeds,
            overThinking: overThinking,
            action: action,
            didThingsImprove: didThingsImprove,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
