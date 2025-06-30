import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PesosRecord extends FirestoreRecord {
  PesosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "dez" field.
  int? _dez;
  int get dez => _dez ?? 0;
  bool hasDez() => _dez != null;

  // "vinte" field.
  int? _vinte;
  int get vinte => _vinte ?? 0;
  bool hasVinte() => _vinte != null;

  // "trinta" field.
  int? _trinta;
  int get trinta => _trinta ?? 0;
  bool hasTrinta() => _trinta != null;

  // "quarenta" field.
  int? _quarenta;
  int get quarenta => _quarenta ?? 0;
  bool hasQuarenta() => _quarenta != null;

  // "cinquenta" field.
  int? _cinquenta;
  int get cinquenta => _cinquenta ?? 0;
  bool hasCinquenta() => _cinquenta != null;

  // "sessenta" field.
  int? _sessenta;
  int get sessenta => _sessenta ?? 0;
  bool hasSessenta() => _sessenta != null;

  void _initializeFields() {
    _dez = castToType<int>(snapshotData['dez']);
    _vinte = castToType<int>(snapshotData['vinte']);
    _trinta = castToType<int>(snapshotData['trinta']);
    _quarenta = castToType<int>(snapshotData['quarenta']);
    _cinquenta = castToType<int>(snapshotData['cinquenta']);
    _sessenta = castToType<int>(snapshotData['sessenta']);
  }

  static CollectionReference get collection => FirebaseFirestore.instanceFor(
          app: Firebase.app(), databaseId: 'flutterflow-105f5')
      .collection('pesos');

  static Stream<PesosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PesosRecord.fromSnapshot(s));

  static Future<PesosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PesosRecord.fromSnapshot(s));

  static PesosRecord fromSnapshot(DocumentSnapshot snapshot) => PesosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PesosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PesosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PesosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PesosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPesosRecordData({
  int? dez,
  int? vinte,
  int? trinta,
  int? quarenta,
  int? cinquenta,
  int? sessenta,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'dez': dez,
      'vinte': vinte,
      'trinta': trinta,
      'quarenta': quarenta,
      'cinquenta': cinquenta,
      'sessenta': sessenta,
    }.withoutNulls,
  );

  return firestoreData;
}

class PesosRecordDocumentEquality implements Equality<PesosRecord> {
  const PesosRecordDocumentEquality();

  @override
  bool equals(PesosRecord? e1, PesosRecord? e2) {
    return e1?.dez == e2?.dez &&
        e1?.vinte == e2?.vinte &&
        e1?.trinta == e2?.trinta &&
        e1?.quarenta == e2?.quarenta &&
        e1?.cinquenta == e2?.cinquenta &&
        e1?.sessenta == e2?.sessenta;
  }

  @override
  int hash(PesosRecord? e) => const ListEquality().hash(
      [e?.dez, e?.vinte, e?.trinta, e?.quarenta, e?.cinquenta, e?.sessenta]);

  @override
  bool isValidKey(Object? o) => o is PesosRecord;
}
