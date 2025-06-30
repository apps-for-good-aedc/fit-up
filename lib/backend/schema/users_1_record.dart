import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Users1Record extends FirestoreRecord {
  Users1Record._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "total_aulas_oferecidas" field.
  int? _totalAulasOferecidas;
  int get totalAulasOferecidas => _totalAulasOferecidas ?? 0;
  bool hasTotalAulasOferecidas() => _totalAulasOferecidas != null;

  // "aulas_frequentadas" field.
  int? _aulasFrequentadas;
  int get aulasFrequentadas => _aulasFrequentadas ?? 0;
  bool hasAulasFrequentadas() => _aulasFrequentadas != null;

  // "desafios_participados" field.
  int? _desafiosParticipados;
  int get desafiosParticipados => _desafiosParticipados ?? 0;
  bool hasDesafiosParticipados() => _desafiosParticipados != null;

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

  // "dadosres" field.
  List<DocumentReference>? _dadosres;
  List<DocumentReference> get dadosres => _dadosres ?? const [];
  bool hasDadosres() => _dadosres != null;

  void _initializeFields() {
    _totalAulasOferecidas =
        castToType<int>(snapshotData['total_aulas_oferecidas']);
    _aulasFrequentadas = castToType<int>(snapshotData['aulas_frequentadas']);
    _desafiosParticipados =
        castToType<int>(snapshotData['desafios_participados']);
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _dadosres = getDataList(snapshotData['dadosres']);
  }

  static CollectionReference get collection => FirebaseFirestore.instanceFor(
          app: Firebase.app(), databaseId: 'flutterflow-105f5')
      .collection('users_1');

  static Stream<Users1Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Users1Record.fromSnapshot(s));

  static Future<Users1Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Users1Record.fromSnapshot(s));

  static Users1Record fromSnapshot(DocumentSnapshot snapshot) => Users1Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Users1Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Users1Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Users1Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Users1Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsers1RecordData({
  int? totalAulasOferecidas,
  int? aulasFrequentadas,
  int? desafiosParticipados,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'total_aulas_oferecidas': totalAulasOferecidas,
      'aulas_frequentadas': aulasFrequentadas,
      'desafios_participados': desafiosParticipados,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class Users1RecordDocumentEquality implements Equality<Users1Record> {
  const Users1RecordDocumentEquality();

  @override
  bool equals(Users1Record? e1, Users1Record? e2) {
    const listEquality = ListEquality();
    return e1?.totalAulasOferecidas == e2?.totalAulasOferecidas &&
        e1?.aulasFrequentadas == e2?.aulasFrequentadas &&
        e1?.desafiosParticipados == e2?.desafiosParticipados &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        listEquality.equals(e1?.dadosres, e2?.dadosres);
  }

  @override
  int hash(Users1Record? e) => const ListEquality().hash([
        e?.totalAulasOferecidas,
        e?.aulasFrequentadas,
        e?.desafiosParticipados,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.dadosres
      ]);

  @override
  bool isValidKey(Object? o) => o is Users1Record;
}
