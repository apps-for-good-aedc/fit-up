import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DadosResRecord extends FirestoreRecord {
  DadosResRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "peso" field.
  double? _peso;
  double get peso => _peso ?? 0.0;
  bool hasPeso() => _peso != null;

  // "resistencia" field.
  int? _resistencia;
  int get resistencia => _resistencia ?? 0;
  bool hasResistencia() => _resistencia != null;

  // "res_cardiaca" field.
  int? _resCardiaca;
  int get resCardiaca => _resCardiaca ?? 0;
  bool hasResCardiaca() => _resCardiaca != null;

  void _initializeFields() {
    _peso = castToType<double>(snapshotData['peso']);
    _resistencia = castToType<int>(snapshotData['resistencia']);
    _resCardiaca = castToType<int>(snapshotData['res_cardiaca']);
  }

  static CollectionReference get collection => FirebaseFirestore.instanceFor(
          app: Firebase.app(), databaseId: 'flutterflow-105f5')
      .collection('dados_res');

  static Stream<DadosResRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DadosResRecord.fromSnapshot(s));

  static Future<DadosResRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DadosResRecord.fromSnapshot(s));

  static DadosResRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DadosResRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DadosResRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DadosResRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DadosResRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DadosResRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDadosResRecordData({
  double? peso,
  int? resistencia,
  int? resCardiaca,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'peso': peso,
      'resistencia': resistencia,
      'res_cardiaca': resCardiaca,
    }.withoutNulls,
  );

  return firestoreData;
}

class DadosResRecordDocumentEquality implements Equality<DadosResRecord> {
  const DadosResRecordDocumentEquality();

  @override
  bool equals(DadosResRecord? e1, DadosResRecord? e2) {
    return e1?.peso == e2?.peso &&
        e1?.resistencia == e2?.resistencia &&
        e1?.resCardiaca == e2?.resCardiaca;
  }

  @override
  int hash(DadosResRecord? e) =>
      const ListEquality().hash([e?.peso, e?.resistencia, e?.resCardiaca]);

  @override
  bool isValidKey(Object? o) => o is DadosResRecord;
}
