import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserVerficationRecord extends FirestoreRecord {
  UserVerficationRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "ssn_id" field.
  String? _ssnId;
  String get ssnId => _ssnId ?? '';
  bool hasSsnId() => _ssnId != null;

  void _initializeFields() {
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _ssnId = snapshotData['ssn_id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user_verfication');

  static Stream<UserVerficationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserVerficationRecord.fromSnapshot(s));

  static Future<UserVerficationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserVerficationRecord.fromSnapshot(s));

  static UserVerficationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserVerficationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserVerficationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserVerficationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserVerficationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserVerficationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;

  @override
  Map<String, DebugDataField> toDebugSerializableMap() => {
        'reference': debugSerializeParam(
          reference,
          ParamType.DocumentReference,
          link:
              'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=database',
          name: '',
          nullable: false,
        ),
        'userRef': debugSerializeParam(
          userRef,
          ParamType.DocumentReference,
          link:
              'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=database',
          name: 'users',
          nullable: true,
        ),
        'ssn_id': debugSerializeParam(
          ssnId,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=database',
          name: 'String',
          nullable: false,
        )
      };
}

Map<String, dynamic> createUserVerficationRecordData({
  DocumentReference? userRef,
  String? ssnId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userRef': userRef,
      'ssn_id': ssnId,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserVerficationRecordDocumentEquality
    implements Equality<UserVerficationRecord> {
  const UserVerficationRecordDocumentEquality();

  @override
  bool equals(UserVerficationRecord? e1, UserVerficationRecord? e2) {
    return e1?.userRef == e2?.userRef && e1?.ssnId == e2?.ssnId;
  }

  @override
  int hash(UserVerficationRecord? e) =>
      const ListEquality().hash([e?.userRef, e?.ssnId]);

  @override
  bool isValidKey(Object? o) => o is UserVerficationRecord;
}
