import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AulasRecord extends FirestoreRecord {
  AulasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nome_aula" field.
  String? _nomeAula;
  String get nomeAula => _nomeAula ?? '';
  bool hasNomeAula() => _nomeAula != null;

  void _initializeFields() {
    _nomeAula = snapshotData['nome_aula'] as String?;
  }

  static CollectionReference get collection => FirebaseFirestore.instanceFor(
          app: Firebase.app(), databaseId: 'flutterflow-105f5')
      .collection('aulas');

  static Stream<AulasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AulasRecord.fromSnapshot(s));

  static Future<AulasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AulasRecord.fromSnapshot(s));

  static AulasRecord fromSnapshot(DocumentSnapshot snapshot) => AulasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AulasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AulasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AulasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AulasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAulasRecordData({
  String? nomeAula,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome_aula': nomeAula,
    }.withoutNulls,
  );

  return firestoreData;
}

class AulasRecordDocumentEquality implements Equality<AulasRecord> {
  const AulasRecordDocumentEquality();

  @override
  bool equals(AulasRecord? e1, AulasRecord? e2) {
    return e1?.nomeAula == e2?.nomeAula;
  }

  @override
  int hash(AulasRecord? e) => const ListEquality().hash([e?.nomeAula]);

  @override
  bool isValidKey(Object? o) => o is AulasRecord;
}
