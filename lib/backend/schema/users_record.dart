import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "is_verified" field.
  bool? _isVerified;
  bool get isVerified => _isVerified ?? false;
  bool hasIsVerified() => _isVerified != null;

  // "owned_cars" field.
  List<DocumentReference>? _ownedCars;
  List<DocumentReference> get ownedCars => _ownedCars ?? const [];
  bool hasOwnedCars() => _ownedCars != null;

  // "loved_cars" field.
  List<DocumentReference>? _lovedCars;
  List<DocumentReference> get lovedCars => _lovedCars ?? const [];
  bool hasLovedCars() => _lovedCars != null;

  // "location" field.
  DocumentReference? _location;
  DocumentReference? get location => _location;
  bool hasLocation() => _location != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _isVerified = snapshotData['is_verified'] as bool?;
    _ownedCars = getDataList(snapshotData['owned_cars']);
    _lovedCars = getDataList(snapshotData['loved_cars']);
    _location = snapshotData['location'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
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
        'email': debugSerializeParam(
          email,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=database',
          name: 'String',
          nullable: false,
        ),
        'display_name': debugSerializeParam(
          displayName,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=database',
          name: 'String',
          nullable: false,
        ),
        'photo_url': debugSerializeParam(
          photoUrl,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=database',
          name: 'String',
          nullable: false,
        ),
        'uid': debugSerializeParam(
          uid,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=database',
          name: 'String',
          nullable: false,
        ),
        'created_time': debugSerializeParam(
          createdTime,
          ParamType.DateTime,
          link:
              'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=database',
          name: 'DateTime',
          nullable: true,
        ),
        'phone_number': debugSerializeParam(
          phoneNumber,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=database',
          name: 'String',
          nullable: false,
        ),
        'is_verified': debugSerializeParam(
          isVerified,
          ParamType.bool,
          link:
              'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=database',
          name: 'bool',
          nullable: false,
        ),
        'owned_cars': debugSerializeParam(
          ownedCars,
          ParamType.DocumentReference,
          isList: true,
          link:
              'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=database',
          name: 'car',
          nullable: false,
        ),
        'loved_cars': debugSerializeParam(
          lovedCars,
          ParamType.DocumentReference,
          isList: true,
          link:
              'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=database',
          name: 'car',
          nullable: false,
        ),
        'location': debugSerializeParam(
          location,
          ParamType.DocumentReference,
          link:
              'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=database',
          name: 'location',
          nullable: true,
        )
      };
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  bool? isVerified,
  DocumentReference? location,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'is_verified': isVerified,
      'location': location,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.isVerified == e2?.isVerified &&
        listEquality.equals(e1?.ownedCars, e2?.ownedCars) &&
        listEquality.equals(e1?.lovedCars, e2?.lovedCars) &&
        e1?.location == e2?.location;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.isVerified,
        e?.ownedCars,
        e?.lovedCars,
        e?.location
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
