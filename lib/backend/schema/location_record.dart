import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LocationRecord extends FirestoreRecord {
  LocationRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "street" field.
  String? _street;
  String get street => _street ?? '';
  bool hasStreet() => _street != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "government" field.
  String? _government;
  String get government => _government ?? '';
  bool hasGovernment() => _government != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  void _initializeFields() {
    _street = snapshotData['street'] as String?;
    _city = snapshotData['city'] as String?;
    _government = snapshotData['government'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('location');

  static Stream<LocationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LocationRecord.fromSnapshot(s));

  static Future<LocationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LocationRecord.fromSnapshot(s));

  static LocationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LocationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LocationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LocationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LocationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LocationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLocationRecordData({
  String? street,
  String? city,
  String? government,
  DocumentReference? user,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'street': street,
      'city': city,
      'government': government,
      'user': user,
    }.withoutNulls,
  );

  return firestoreData;
}

class LocationRecordDocumentEquality implements Equality<LocationRecord> {
  const LocationRecordDocumentEquality();

  @override
  bool equals(LocationRecord? e1, LocationRecord? e2) {
    return e1?.street == e2?.street &&
        e1?.city == e2?.city &&
        e1?.government == e2?.government &&
        e1?.user == e2?.user;
  }

  @override
  int hash(LocationRecord? e) =>
      const ListEquality().hash([e?.street, e?.city, e?.government, e?.user]);

  @override
  bool isValidKey(Object? o) => o is LocationRecord;
}
