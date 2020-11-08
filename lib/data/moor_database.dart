import 'package:moor_flutter/moor_flutter.dart';
import 'package:moor/moor.dart';
part 'moor_database.g.dart';

class Patients extends Table {
  TextColumn get name => text().withLength(min: 1,max: 20)();
  IntColumn get age => integer()();
  TextColumn get gender => text().withLength(min: 1,max: 6)();
  IntColumn get phno =>integer()();
  TextColumn get dept =>text().withLength(min: 1,max: 20)();
  IntColumn get b_doc => integer()();
  TextColumn get p_med =>text().withLength(min: 1,max: 20)();
  DateTimeColumn get b_date => dateTime()();
  DateTimeColumn get b_time => dateTime()();

    @override
    Set<Column>get primaryKey => {phno};
}
class Doctors extends Table{
  TextColumn get dname => text().withLength(min: 1,max: 20)();
  IntColumn get dage => integer()();
  IntColumn get dphno =>integer()();
  TextColumn get dept =>text().withLength(min: 1,max: 20)();
  IntColumn get b_pat=> integer()();
  TextColumn get d_med =>text().withLength(min: 1,max: 20)();

  @override
  Set<Column>get primaryKey => {dphno};
}

class Books extends Table{
  IntColumn get bno =>integer().autoIncrement()();
  IntColumn get booked_by => integer()();
  IntColumn get booked_for => integer()();
  DateTimeColumn get booked_time =>dateTime()();
  DateTimeColumn get booked_date => dateTime()();


}
class Meds extends Table{
  IntColumn get mno =>integer().autoIncrement()();
  IntColumn get presc_by => integer()();
  IntColumn get presc_for => integer()();

}
@UseMoor(tables: [Patients,Doctors,Books,Meds], daos:[PatDao,DocDao,BookDao,MedDao])
class AppDatabase extends _$AppDatabase{
  AppDatabase():super((FlutterQueryExecutor.inDatabaseFolder(path: 'db.sqlite',logStatements: true)));

  @override
  int get schemaVersion =>1;
}
@UseDao(tables: [Patients])
class PatDao extends DatabaseAccessor<AppDatabase> with _$PatDaoMixin {
  final AppDatabase db;

  PatDao(this.db) : super(db);

  Future<List<Patient>> getAllPatients() => select(patients).get();
  Stream<List<Patient>> watchAllPatients() => select(patients).watch();
  Future insertPat(Patient pat) =>into(patients).insert(pat);
  Future updatePat(Patient pat) =>update(patients).replace(pat);
  Future deletePat(Patient pat) =>delete(patients).delete(pat);
}
@UseDao(tables: [Doctors])
class DocDao extends DatabaseAccessor<AppDatabase> with _$DocDaoMixin {
  final AppDatabase db;

  DocDao(this.db) : super(db);

  Future<List<Doctor>> getAllDoctors() => select(doctors).get();
  Stream<List<Doctor>> watchAllDoctors() => select(doctors).watch();
  Future insertDoc(Doctor doc) =>into(doctors).insert(doc);
  Future updateDoc(Doctor doc) =>update(doctors).replace(doc);
  Future deleteDoc(Doctor doc) =>delete(doctors).delete(doc);
}
@UseDao(tables: [Books])
class BookDao extends DatabaseAccessor<AppDatabase> with _$BookDaoMixin {
  final AppDatabase db;

  BookDao(this.db) : super(db);

  Future<List<Book>> getAllBooks() => select(books).get();
  Stream<List<Book>> watchAllBooks() => select(books).watch();
  Future insertBook(Book book) =>into(books).insert(book);
  Future updateBook(Book book) =>update(books).replace(book);
  Future deleteBook(Book book) =>delete(books).delete(book);
}
@UseDao(tables: [Meds])
class MedDao extends DatabaseAccessor<AppDatabase> with _$MedDaoMixin {
  final AppDatabase db;

  MedDao(this.db) : super(db);

  Future<List<Med>> getAllMeds() => select(meds).get();
  Stream<List<Med>> watchAllMeds() => select(meds).watch();
  Future insertMed(Med med) =>into(meds).insert( med);
  Future updateMed(Med  med) =>update(meds).replace( med);
  Future deleteMed(Med  med) =>delete(meds).delete( med);
}

