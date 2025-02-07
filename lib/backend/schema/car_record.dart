import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CarRecord extends FirestoreRecord {
  CarRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "model" field.
  String? _model;
  String get model => _model ?? '';
  bool hasModel() => _model != null;

  // "carPhotos" field.
  List<String>? _carPhotos;
  List<String> get carPhotos => _carPhotos ?? const [];
  bool hasCarPhotos() => _carPhotos != null;

  // "rentalFare" field.
  double? _rentalFare;
  double get rentalFare => _rentalFare ?? 0.0;
  bool hasRentalFare() => _rentalFare != null;

  // "isAvailable" field.
  bool? _isAvailable;
  bool get isAvailable => _isAvailable ?? false;
  bool hasIsAvailable() => _isAvailable != null;

  // "isVisible" field.
  bool? _isVisible;
  bool get isVisible => _isVisible ?? false;
  bool hasIsVisible() => _isVisible != null;

  // "AvailableDays" field.
  int? _availableDays;
  int get availableDays => _availableDays ?? 0;
  bool hasAvailableDays() => _availableDays != null;

  // "available_date" field.
  DateTime? _availableDate;
  DateTime? get availableDate => _availableDate;
  bool hasAvailableDate() => _availableDate != null;

  // "rate" field.
  double? _rate;
  double get rate => _rate ?? 0.0;
  bool hasRate() => _rate != null;

  // "make" field.
  String? _make;
  String get make => _make ?? '';
  bool hasMake() => _make != null;

  // "year" field.
  int? _year;
  int get year => _year ?? 0;
  bool hasYear() => _year != null;

  // "car_owner" field.
  DocumentReference? _carOwner;
  DocumentReference? get carOwner => _carOwner;
  bool hasCarOwner() => _carOwner != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  void _initializeFields() {
    _model = snapshotData['model'] as String?;
    _carPhotos = getDataList(snapshotData['carPhotos']);
    _rentalFare = castToType<double>(snapshotData['rentalFare']);
    _isAvailable = snapshotData['isAvailable'] as bool?;
    _isVisible = snapshotData['isVisible'] as bool?;
    _availableDays = castToType<int>(snapshotData['AvailableDays']);
    _availableDate = snapshotData['available_date'] as DateTime?;
    _rate = castToType<double>(snapshotData['rate']);
    _make = snapshotData['make'] as String?;
    _year = castToType<int>(snapshotData['year']);
    _carOwner = snapshotData['car_owner'] as DocumentReference?;
    _description = snapshotData['description'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('car');

  static Stream<CarRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CarRecord.fromSnapshot(s));

  static Future<CarRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CarRecord.fromSnapshot(s));

  static CarRecord fromSnapshot(DocumentSnapshot snapshot) => CarRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CarRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CarRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CarRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CarRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCarRecordData({
  String? model,
  double? rentalFare,
  bool? isAvailable,
  bool? isVisible,
  int? availableDays,
  DateTime? availableDate,
  double? rate,
  String? make,
  int? year,
  DocumentReference? carOwner,
  String? description,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'model': model,
      'rentalFare': rentalFare,
      'isAvailable': isAvailable,
      'isVisible': isVisible,
      'AvailableDays': availableDays,
      'available_date': availableDate,
      'rate': rate,
      'make': make,
      'year': year,
      'car_owner': carOwner,
      'description': description,
    }.withoutNulls,
  );

  return firestoreData;
}

class CarRecordDocumentEquality implements Equality<CarRecord> {
  const CarRecordDocumentEquality();

  @override
  bool equals(CarRecord? e1, CarRecord? e2) {
    const listEquality = ListEquality();
    return e1?.model == e2?.model &&
        listEquality.equals(e1?.carPhotos, e2?.carPhotos) &&
        e1?.rentalFare == e2?.rentalFare &&
        e1?.isAvailable == e2?.isAvailable &&
        e1?.isVisible == e2?.isVisible &&
        e1?.availableDays == e2?.availableDays &&
        e1?.availableDate == e2?.availableDate &&
        e1?.rate == e2?.rate &&
        e1?.make == e2?.make &&
        e1?.year == e2?.year &&
        e1?.carOwner == e2?.carOwner &&
        e1?.description == e2?.description;
  }

  @override
  int hash(CarRecord? e) => const ListEquality().hash([
        e?.model,
        e?.carPhotos,
        e?.rentalFare,
        e?.isAvailable,
        e?.isVisible,
        e?.availableDays,
        e?.availableDate,
        e?.rate,
        e?.make,
        e?.year,
        e?.carOwner,
        e?.description
      ]);

  @override
  bool isValidKey(Object? o) => o is CarRecord;
}
