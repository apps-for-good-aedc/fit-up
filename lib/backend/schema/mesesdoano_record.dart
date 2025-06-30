import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MesesdoanoRecord extends FirestoreRecord {
  MesesdoanoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "fevereiro" field.
  String? _fevereiro;
  String get fevereiro => _fevereiro ?? '';
  bool hasFevereiro() => _fevereiro != null;

  // "marco" field.
  String? _marco;
  String get marco => _marco ?? '';
  bool hasMarco() => _marco != null;

  // "abril" field.
  String? _abril;
  String get abril => _abril ?? '';
  bool hasAbril() => _abril != null;

  // "maio" field.
  String? _maio;
  String get maio => _maio ?? '';
  bool hasMaio() => _maio != null;

  // "junho" field.
  String? _junho;
  String get junho => _junho ?? '';
  bool hasJunho() => _junho != null;

  // "julho" field.
  String? _julho;
  String get julho => _julho ?? '';
  bool hasJulho() => _julho != null;

  // "agosto" field.
  String? _agosto;
  String get agosto => _agosto ?? '';
  bool hasAgosto() => _agosto != null;

  // "setembro" field.
  String? _setembro;
  String get setembro => _setembro ?? '';
  bool hasSetembro() => _setembro != null;

  void _initializeFields() {
    _fevereiro = snapshotData['fevereiro'] as String?;
    _marco = snapshotData['marco'] as String?;
    _abril = snapshotData['abril'] as String?;
    _maio = snapshotData['maio'] as String?;
    _junho = snapshotData['junho'] as String?;
    _julho = snapshotData['julho'] as String?;
    _agosto = snapshotData['agosto'] as String?;
    _setembro = snapshotData['setembro'] as String?;
  }

  static CollectionReference get collection => FirebaseFirestore.instanceFor(
          app: Firebase.app(), databaseId: 'flutterflow-105f5')
      .collection('mesesdoano');

  static Stream<MesesdoanoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MesesdoanoRecord.fromSnapshot(s));

  static Future<MesesdoanoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MesesdoanoRecord.fromSnapshot(s));

  static MesesdoanoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MesesdoanoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MesesdoanoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MesesdoanoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MesesdoanoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MesesdoanoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMesesdoanoRecordData({
  String? fevereiro,
  String? marco,
  String? abril,
  String? maio,
  String? junho,
  String? julho,
  String? agosto,
  String? setembro,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'fevereiro': fevereiro,
      'marco': marco,
      'abril': abril,
      'maio': maio,
      'junho': junho,
      'julho': julho,
      'agosto': agosto,
      'setembro': setembro,
    }.withoutNulls,
  );

  return firestoreData;
}

class MesesdoanoRecordDocumentEquality implements Equality<MesesdoanoRecord> {
  const MesesdoanoRecordDocumentEquality();

  @override
  bool equals(MesesdoanoRecord? e1, MesesdoanoRecord? e2) {
    return e1?.fevereiro == e2?.fevereiro &&
        e1?.marco == e2?.marco &&
        e1?.abril == e2?.abril &&
        e1?.maio == e2?.maio &&
        e1?.junho == e2?.junho &&
        e1?.julho == e2?.julho &&
        e1?.agosto == e2?.agosto &&
        e1?.setembro == e2?.setembro;
  }

  @override
  int hash(MesesdoanoRecord? e) => const ListEquality().hash([
        e?.fevereiro,
        e?.marco,
        e?.abril,
        e?.maio,
        e?.junho,
        e?.julho,
        e?.agosto,
        e?.setembro
      ]);

  @override
  bool isValidKey(Object? o) => o is MesesdoanoRecord;
}
