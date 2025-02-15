import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TripRecord extends FirestoreRecord {
  TripRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "startDate" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  bool hasStartDate() => _startDate != null;

  // "endDate" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  bool hasEndDate() => _endDate != null;

  // "carOwner" field.
  DocumentReference? _carOwner;
  DocumentReference? get carOwner => _carOwner;
  bool hasCarOwner() => _carOwner != null;

  // "carBorrower" field.
  DocumentReference? _carBorrower;
  DocumentReference? get carBorrower => _carBorrower;
  bool hasCarBorrower() => _carBorrower != null;

  // "totalPrice" field.
  double? _totalPrice;
  double get totalPrice => _totalPrice ?? 0.0;
  bool hasTotalPrice() => _totalPrice != null;

  // "status" field.
  Status? _status;
  Status? get status => _status;
  bool hasStatus() => _status != null;

  // "borrowedCar" field.
  DocumentReference? _borrowedCar;
  DocumentReference? get borrowedCar => _borrowedCar;
  bool hasBorrowedCar() => _borrowedCar != null;

  void _initializeFields() {
    _startDate = snapshotData['startDate'] as DateTime?;
    _endDate = snapshotData['endDate'] as DateTime?;
    _carOwner = snapshotData['carOwner'] as DocumentReference?;
    _carBorrower = snapshotData['carBorrower'] as DocumentReference?;
    _totalPrice = castToType<double>(snapshotData['totalPrice']);
    _status = snapshotData['status'] is Status
        ? snapshotData['status']
        : deserializeEnum<Status>(snapshotData['status']);
    _borrowedCar = snapshotData['borrowedCar'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('trip');

  static Stream<TripRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TripRecord.fromSnapshot(s));

  static Future<TripRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TripRecord.fromSnapshot(s));

  static TripRecord fromSnapshot(DocumentSnapshot snapshot) => TripRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TripRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TripRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TripRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TripRecord &&
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
        'startDate': debugSerializeParam(
          startDate,
          ParamType.DateTime,
          link:
              'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=database',
          name: 'DateTime',
          nullable: true,
        ),
        'endDate': debugSerializeParam(
          endDate,
          ParamType.DateTime,
          link:
              'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=database',
          name: 'DateTime',
          nullable: true,
        ),
        'carOwner': debugSerializeParam(
          carOwner,
          ParamType.DocumentReference,
          link:
              'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=database',
          name: 'users',
          nullable: true,
        ),
        'carBorrower': debugSerializeParam(
          carBorrower,
          ParamType.DocumentReference,
          link:
              'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=database',
          name: 'users',
          nullable: true,
        ),
        'totalPrice': debugSerializeParam(
          totalPrice,
          ParamType.double,
          link:
              'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=database',
          name: 'double',
          nullable: false,
        ),
        'status': debugSerializeParam(
          status,
          ParamType.Enum,
          link:
              'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=database',
          name: 'status',
          nullable: true,
        ),
        'borrowedCar': debugSerializeParam(
          borrowedCar,
          ParamType.DocumentReference,
          link:
              'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=database',
          name: 'car',
          nullable: true,
        )
      };
}

Map<String, dynamic> createTripRecordData({
  DateTime? startDate,
  DateTime? endDate,
  DocumentReference? carOwner,
  DocumentReference? carBorrower,
  double? totalPrice,
  Status? status,
  DocumentReference? borrowedCar,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'startDate': startDate,
      'endDate': endDate,
      'carOwner': carOwner,
      'carBorrower': carBorrower,
      'totalPrice': totalPrice,
      'status': status,
      'borrowedCar': borrowedCar,
    }.withoutNulls,
  );

  return firestoreData;
}

class TripRecordDocumentEquality implements Equality<TripRecord> {
  const TripRecordDocumentEquality();

  @override
  bool equals(TripRecord? e1, TripRecord? e2) {
    return e1?.startDate == e2?.startDate &&
        e1?.endDate == e2?.endDate &&
        e1?.carOwner == e2?.carOwner &&
        e1?.carBorrower == e2?.carBorrower &&
        e1?.totalPrice == e2?.totalPrice &&
        e1?.status == e2?.status &&
        e1?.borrowedCar == e2?.borrowedCar;
  }

  @override
  int hash(TripRecord? e) => const ListEquality().hash([
        e?.startDate,
        e?.endDate,
        e?.carOwner,
        e?.carBorrower,
        e?.totalPrice,
        e?.status,
        e?.borrowedCar
      ]);

  @override
  bool isValidKey(Object? o) => o is TripRecord;
}
