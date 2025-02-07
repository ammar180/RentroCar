import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserVerficationRecord extends FirestoreRecord {
  UserVerficationRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "ssn_id" field.
  String? _ssnId;
  String get ssnId => _ssnId ?? '';
  bool hasSsnId() => _ssnId != null;

  void _initializeFields() {
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
}

Map<String, dynamic> createUserVerficationRecordData({
  String? ssnId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
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
    return e1?.ssnId == e2?.ssnId;
  }

  @override
  int hash(UserVerficationRecord? e) => const ListEquality().hash([e?.ssnId]);

  @override
  bool isValidKey(Object? o) => o is UserVerficationRecord;
}
