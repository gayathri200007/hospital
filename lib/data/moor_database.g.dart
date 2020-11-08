// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps
class Patient extends DataClass implements Insertable<Patient> {
  final String name;
  final int age;
  final String gender;
  final int phno;
  final String dept;
  final int b_doc;
  final String p_med;
  final DateTime b_date;
  final DateTime b_time;
  Patient(
      {@required this.name,
      @required this.age,
      @required this.gender,
      @required this.phno,
      @required this.dept,
      @required this.b_doc,
      @required this.p_med,
      @required this.b_date,
      @required this.b_time});
  factory Patient.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    final intType = db.typeSystem.forDartType<int>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return Patient(
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      age: intType.mapFromDatabaseResponse(data['${effectivePrefix}age']),
      gender:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}gender']),
      phno: intType.mapFromDatabaseResponse(data['${effectivePrefix}phno']),
      dept: stringType.mapFromDatabaseResponse(data['${effectivePrefix}dept']),
      b_doc: intType.mapFromDatabaseResponse(data['${effectivePrefix}b_doc']),
      p_med:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}p_med']),
      b_date: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}b_date']),
      b_time: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}b_time']),
    );
  }
  factory Patient.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return Patient(
      name: serializer.fromJson<String>(json['name']),
      age: serializer.fromJson<int>(json['age']),
      gender: serializer.fromJson<String>(json['gender']),
      phno: serializer.fromJson<int>(json['phno']),
      dept: serializer.fromJson<String>(json['dept']),
      b_doc: serializer.fromJson<int>(json['b_doc']),
      p_med: serializer.fromJson<String>(json['p_med']),
      b_date: serializer.fromJson<DateTime>(json['b_date']),
      b_time: serializer.fromJson<DateTime>(json['b_time']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'name': serializer.toJson<String>(name),
      'age': serializer.toJson<int>(age),
      'gender': serializer.toJson<String>(gender),
      'phno': serializer.toJson<int>(phno),
      'dept': serializer.toJson<String>(dept),
      'b_doc': serializer.toJson<int>(b_doc),
      'p_med': serializer.toJson<String>(p_med),
      'b_date': serializer.toJson<DateTime>(b_date),
      'b_time': serializer.toJson<DateTime>(b_time),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<Patient>>(bool nullToAbsent) {
    return PatientsCompanion(
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      age: age == null && nullToAbsent ? const Value.absent() : Value(age),
      gender:
          gender == null && nullToAbsent ? const Value.absent() : Value(gender),
      phno: phno == null && nullToAbsent ? const Value.absent() : Value(phno),
      dept: dept == null && nullToAbsent ? const Value.absent() : Value(dept),
      b_doc:
          b_doc == null && nullToAbsent ? const Value.absent() : Value(b_doc),
      p_med:
          p_med == null && nullToAbsent ? const Value.absent() : Value(p_med),
      b_date:
          b_date == null && nullToAbsent ? const Value.absent() : Value(b_date),
      b_time:
          b_time == null && nullToAbsent ? const Value.absent() : Value(b_time),
    ) as T;
  }

  Patient copyWith(
          {String name,
          int age,
          String gender,
          int phno,
          String dept,
          int b_doc,
          String p_med,
          DateTime b_date,
          DateTime b_time}) =>
      Patient(
        name: name ?? this.name,
        age: age ?? this.age,
        gender: gender ?? this.gender,
        phno: phno ?? this.phno,
        dept: dept ?? this.dept,
        b_doc: b_doc ?? this.b_doc,
        p_med: p_med ?? this.p_med,
        b_date: b_date ?? this.b_date,
        b_time: b_time ?? this.b_time,
      );
  @override
  String toString() {
    return (StringBuffer('Patient(')
          ..write('name: $name, ')
          ..write('age: $age, ')
          ..write('gender: $gender, ')
          ..write('phno: $phno, ')
          ..write('dept: $dept, ')
          ..write('b_doc: $b_doc, ')
          ..write('p_med: $p_med, ')
          ..write('b_date: $b_date, ')
          ..write('b_time: $b_time')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      name.hashCode,
      $mrjc(
          age.hashCode,
          $mrjc(
              gender.hashCode,
              $mrjc(
                  phno.hashCode,
                  $mrjc(
                      dept.hashCode,
                      $mrjc(
                          b_doc.hashCode,
                          $mrjc(p_med.hashCode,
                              $mrjc(b_date.hashCode, b_time.hashCode)))))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is Patient &&
          other.name == name &&
          other.age == age &&
          other.gender == gender &&
          other.phno == phno &&
          other.dept == dept &&
          other.b_doc == b_doc &&
          other.p_med == p_med &&
          other.b_date == b_date &&
          other.b_time == b_time);
}

class PatientsCompanion extends UpdateCompanion<Patient> {
  final Value<String> name;
  final Value<int> age;
  final Value<String> gender;
  final Value<int> phno;
  final Value<String> dept;
  final Value<int> b_doc;
  final Value<String> p_med;
  final Value<DateTime> b_date;
  final Value<DateTime> b_time;
  const PatientsCompanion({
    this.name = const Value.absent(),
    this.age = const Value.absent(),
    this.gender = const Value.absent(),
    this.phno = const Value.absent(),
    this.dept = const Value.absent(),
    this.b_doc = const Value.absent(),
    this.p_med = const Value.absent(),
    this.b_date = const Value.absent(),
    this.b_time = const Value.absent(),
  });
  PatientsCompanion copyWith(
      {Value<String> name,
      Value<int> age,
      Value<String> gender,
      Value<int> phno,
      Value<String> dept,
      Value<int> b_doc,
      Value<String> p_med,
      Value<DateTime> b_date,
      Value<DateTime> b_time}) {
    return PatientsCompanion(
      name: name ?? this.name,
      age: age ?? this.age,
      gender: gender ?? this.gender,
      phno: phno ?? this.phno,
      dept: dept ?? this.dept,
      b_doc: b_doc ?? this.b_doc,
      p_med: p_med ?? this.p_med,
      b_date: b_date ?? this.b_date,
      b_time: b_time ?? this.b_time,
    );
  }
}

class $PatientsTable extends Patients with TableInfo<$PatientsTable, Patient> {
  final GeneratedDatabase _db;
  final String _alias;
  $PatientsTable(this._db, [this._alias]);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false,
        minTextLength: 1, maxTextLength: 20);
  }

  final VerificationMeta _ageMeta = const VerificationMeta('age');
  GeneratedIntColumn _age;
  @override
  GeneratedIntColumn get age => _age ??= _constructAge();
  GeneratedIntColumn _constructAge() {
    return GeneratedIntColumn(
      'age',
      $tableName,
      false,
    );
  }

  final VerificationMeta _genderMeta = const VerificationMeta('gender');
  GeneratedTextColumn _gender;
  @override
  GeneratedTextColumn get gender => _gender ??= _constructGender();
  GeneratedTextColumn _constructGender() {
    return GeneratedTextColumn('gender', $tableName, false,
        minTextLength: 1, maxTextLength: 6);
  }

  final VerificationMeta _phnoMeta = const VerificationMeta('phno');
  GeneratedIntColumn _phno;
  @override
  GeneratedIntColumn get phno => _phno ??= _constructPhno();
  GeneratedIntColumn _constructPhno() {
    return GeneratedIntColumn(
      'phno',
      $tableName,
      false,
    );
  }

  final VerificationMeta _deptMeta = const VerificationMeta('dept');
  GeneratedTextColumn _dept;
  @override
  GeneratedTextColumn get dept => _dept ??= _constructDept();
  GeneratedTextColumn _constructDept() {
    return GeneratedTextColumn('dept', $tableName, false,
        minTextLength: 1, maxTextLength: 20);
  }

  final VerificationMeta _b_docMeta = const VerificationMeta('b_doc');
  GeneratedIntColumn _b_doc;
  @override
  GeneratedIntColumn get b_doc => _b_doc ??= _constructBDoc();
  GeneratedIntColumn _constructBDoc() {
    return GeneratedIntColumn(
      'b_doc',
      $tableName,
      false,
    );
  }

  final VerificationMeta _p_medMeta = const VerificationMeta('p_med');
  GeneratedTextColumn _p_med;
  @override
  GeneratedTextColumn get p_med => _p_med ??= _constructPMed();
  GeneratedTextColumn _constructPMed() {
    return GeneratedTextColumn('p_med', $tableName, false,
        minTextLength: 1, maxTextLength: 20);
  }

  final VerificationMeta _b_dateMeta = const VerificationMeta('b_date');
  GeneratedDateTimeColumn _b_date;
  @override
  GeneratedDateTimeColumn get b_date => _b_date ??= _constructBDate();
  GeneratedDateTimeColumn _constructBDate() {
    return GeneratedDateTimeColumn(
      'b_date',
      $tableName,
      false,
    );
  }

  final VerificationMeta _b_timeMeta = const VerificationMeta('b_time');
  GeneratedDateTimeColumn _b_time;
  @override
  GeneratedDateTimeColumn get b_time => _b_time ??= _constructBTime();
  GeneratedDateTimeColumn _constructBTime() {
    return GeneratedDateTimeColumn(
      'b_time',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [name, age, gender, phno, dept, b_doc, p_med, b_date, b_time];
  @override
  $PatientsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'patients';
  @override
  final String actualTableName = 'patients';
  @override
  VerificationContext validateIntegrity(PatientsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.name.present) {
      context.handle(
          _nameMeta, name.isAcceptableValue(d.name.value, _nameMeta));
    } else if (name.isRequired && isInserting) {
      context.missing(_nameMeta);
    }
    if (d.age.present) {
      context.handle(_ageMeta, age.isAcceptableValue(d.age.value, _ageMeta));
    } else if (age.isRequired && isInserting) {
      context.missing(_ageMeta);
    }
    if (d.gender.present) {
      context.handle(
          _genderMeta, gender.isAcceptableValue(d.gender.value, _genderMeta));
    } else if (gender.isRequired && isInserting) {
      context.missing(_genderMeta);
    }
    if (d.phno.present) {
      context.handle(
          _phnoMeta, phno.isAcceptableValue(d.phno.value, _phnoMeta));
    } else if (phno.isRequired && isInserting) {
      context.missing(_phnoMeta);
    }
    if (d.dept.present) {
      context.handle(
          _deptMeta, dept.isAcceptableValue(d.dept.value, _deptMeta));
    } else if (dept.isRequired && isInserting) {
      context.missing(_deptMeta);
    }
    if (d.b_doc.present) {
      context.handle(
          _b_docMeta, b_doc.isAcceptableValue(d.b_doc.value, _b_docMeta));
    } else if (b_doc.isRequired && isInserting) {
      context.missing(_b_docMeta);
    }
    if (d.p_med.present) {
      context.handle(
          _p_medMeta, p_med.isAcceptableValue(d.p_med.value, _p_medMeta));
    } else if (p_med.isRequired && isInserting) {
      context.missing(_p_medMeta);
    }
    if (d.b_date.present) {
      context.handle(
          _b_dateMeta, b_date.isAcceptableValue(d.b_date.value, _b_dateMeta));
    } else if (b_date.isRequired && isInserting) {
      context.missing(_b_dateMeta);
    }
    if (d.b_time.present) {
      context.handle(
          _b_timeMeta, b_time.isAcceptableValue(d.b_time.value, _b_timeMeta));
    } else if (b_time.isRequired && isInserting) {
      context.missing(_b_timeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {phno};
  @override
  Patient map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Patient.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(PatientsCompanion d) {
    final map = <String, Variable>{};
    if (d.name.present) {
      map['name'] = Variable<String, StringType>(d.name.value);
    }
    if (d.age.present) {
      map['age'] = Variable<int, IntType>(d.age.value);
    }
    if (d.gender.present) {
      map['gender'] = Variable<String, StringType>(d.gender.value);
    }
    if (d.phno.present) {
      map['phno'] = Variable<int, IntType>(d.phno.value);
    }
    if (d.dept.present) {
      map['dept'] = Variable<String, StringType>(d.dept.value);
    }
    if (d.b_doc.present) {
      map['b_doc'] = Variable<int, IntType>(d.b_doc.value);
    }
    if (d.p_med.present) {
      map['p_med'] = Variable<String, StringType>(d.p_med.value);
    }
    if (d.b_date.present) {
      map['b_date'] = Variable<DateTime, DateTimeType>(d.b_date.value);
    }
    if (d.b_time.present) {
      map['b_time'] = Variable<DateTime, DateTimeType>(d.b_time.value);
    }
    return map;
  }

  @override
  $PatientsTable createAlias(String alias) {
    return $PatientsTable(_db, alias);
  }
}

class Doctor extends DataClass implements Insertable<Doctor> {
  final String dname;
  final int dage;
  final int dphno;
  final String dept;
  final int b_pat;
  final String d_med;
  Doctor(
      {@required this.dname,
      @required this.dage,
      @required this.dphno,
      @required this.dept,
      @required this.b_pat,
      @required this.d_med});
  factory Doctor.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    final intType = db.typeSystem.forDartType<int>();
    return Doctor(
      dname:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}dname']),
      dage: intType.mapFromDatabaseResponse(data['${effectivePrefix}dage']),
      dphno: intType.mapFromDatabaseResponse(data['${effectivePrefix}dphno']),
      dept: stringType.mapFromDatabaseResponse(data['${effectivePrefix}dept']),
      b_pat: intType.mapFromDatabaseResponse(data['${effectivePrefix}b_pat']),
      d_med:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}d_med']),
    );
  }
  factory Doctor.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return Doctor(
      dname: serializer.fromJson<String>(json['dname']),
      dage: serializer.fromJson<int>(json['dage']),
      dphno: serializer.fromJson<int>(json['dphno']),
      dept: serializer.fromJson<String>(json['dept']),
      b_pat: serializer.fromJson<int>(json['b_pat']),
      d_med: serializer.fromJson<String>(json['d_med']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'dname': serializer.toJson<String>(dname),
      'dage': serializer.toJson<int>(dage),
      'dphno': serializer.toJson<int>(dphno),
      'dept': serializer.toJson<String>(dept),
      'b_pat': serializer.toJson<int>(b_pat),
      'd_med': serializer.toJson<String>(d_med),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<Doctor>>(bool nullToAbsent) {
    return DoctorsCompanion(
      dname:
          dname == null && nullToAbsent ? const Value.absent() : Value(dname),
      dage: dage == null && nullToAbsent ? const Value.absent() : Value(dage),
      dphno:
          dphno == null && nullToAbsent ? const Value.absent() : Value(dphno),
      dept: dept == null && nullToAbsent ? const Value.absent() : Value(dept),
      b_pat:
          b_pat == null && nullToAbsent ? const Value.absent() : Value(b_pat),
      d_med:
          d_med == null && nullToAbsent ? const Value.absent() : Value(d_med),
    ) as T;
  }

  Doctor copyWith(
          {String dname,
          int dage,
          int dphno,
          String dept,
          int b_pat,
          String d_med}) =>
      Doctor(
        dname: dname ?? this.dname,
        dage: dage ?? this.dage,
        dphno: dphno ?? this.dphno,
        dept: dept ?? this.dept,
        b_pat: b_pat ?? this.b_pat,
        d_med: d_med ?? this.d_med,
      );
  @override
  String toString() {
    return (StringBuffer('Doctor(')
          ..write('dname: $dname, ')
          ..write('dage: $dage, ')
          ..write('dphno: $dphno, ')
          ..write('dept: $dept, ')
          ..write('b_pat: $b_pat, ')
          ..write('d_med: $d_med')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      dname.hashCode,
      $mrjc(
          dage.hashCode,
          $mrjc(dphno.hashCode,
              $mrjc(dept.hashCode, $mrjc(b_pat.hashCode, d_med.hashCode))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is Doctor &&
          other.dname == dname &&
          other.dage == dage &&
          other.dphno == dphno &&
          other.dept == dept &&
          other.b_pat == b_pat &&
          other.d_med == d_med);
}

class DoctorsCompanion extends UpdateCompanion<Doctor> {
  final Value<String> dname;
  final Value<int> dage;
  final Value<int> dphno;
  final Value<String> dept;
  final Value<int> b_pat;
  final Value<String> d_med;
  const DoctorsCompanion({
    this.dname = const Value.absent(),
    this.dage = const Value.absent(),
    this.dphno = const Value.absent(),
    this.dept = const Value.absent(),
    this.b_pat = const Value.absent(),
    this.d_med = const Value.absent(),
  });
  DoctorsCompanion copyWith(
      {Value<String> dname,
      Value<int> dage,
      Value<int> dphno,
      Value<String> dept,
      Value<int> b_pat,
      Value<String> d_med}) {
    return DoctorsCompanion(
      dname: dname ?? this.dname,
      dage: dage ?? this.dage,
      dphno: dphno ?? this.dphno,
      dept: dept ?? this.dept,
      b_pat: b_pat ?? this.b_pat,
      d_med: d_med ?? this.d_med,
    );
  }
}

class $DoctorsTable extends Doctors with TableInfo<$DoctorsTable, Doctor> {
  final GeneratedDatabase _db;
  final String _alias;
  $DoctorsTable(this._db, [this._alias]);
  final VerificationMeta _dnameMeta = const VerificationMeta('dname');
  GeneratedTextColumn _dname;
  @override
  GeneratedTextColumn get dname => _dname ??= _constructDname();
  GeneratedTextColumn _constructDname() {
    return GeneratedTextColumn('dname', $tableName, false,
        minTextLength: 1, maxTextLength: 20);
  }

  final VerificationMeta _dageMeta = const VerificationMeta('dage');
  GeneratedIntColumn _dage;
  @override
  GeneratedIntColumn get dage => _dage ??= _constructDage();
  GeneratedIntColumn _constructDage() {
    return GeneratedIntColumn(
      'dage',
      $tableName,
      false,
    );
  }

  final VerificationMeta _dphnoMeta = const VerificationMeta('dphno');
  GeneratedIntColumn _dphno;
  @override
  GeneratedIntColumn get dphno => _dphno ??= _constructDphno();
  GeneratedIntColumn _constructDphno() {
    return GeneratedIntColumn(
      'dphno',
      $tableName,
      false,
    );
  }

  final VerificationMeta _deptMeta = const VerificationMeta('dept');
  GeneratedTextColumn _dept;
  @override
  GeneratedTextColumn get dept => _dept ??= _constructDept();
  GeneratedTextColumn _constructDept() {
    return GeneratedTextColumn('dept', $tableName, false,
        minTextLength: 1, maxTextLength: 20);
  }

  final VerificationMeta _b_patMeta = const VerificationMeta('b_pat');
  GeneratedIntColumn _b_pat;
  @override
  GeneratedIntColumn get b_pat => _b_pat ??= _constructBPat();
  GeneratedIntColumn _constructBPat() {
    return GeneratedIntColumn(
      'b_pat',
      $tableName,
      false,
    );
  }

  final VerificationMeta _d_medMeta = const VerificationMeta('d_med');
  GeneratedTextColumn _d_med;
  @override
  GeneratedTextColumn get d_med => _d_med ??= _constructDMed();
  GeneratedTextColumn _constructDMed() {
    return GeneratedTextColumn('d_med', $tableName, false,
        minTextLength: 1, maxTextLength: 20);
  }

  @override
  List<GeneratedColumn> get $columns =>
      [dname, dage, dphno, dept, b_pat, d_med];
  @override
  $DoctorsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'doctors';
  @override
  final String actualTableName = 'doctors';
  @override
  VerificationContext validateIntegrity(DoctorsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.dname.present) {
      context.handle(
          _dnameMeta, dname.isAcceptableValue(d.dname.value, _dnameMeta));
    } else if (dname.isRequired && isInserting) {
      context.missing(_dnameMeta);
    }
    if (d.dage.present) {
      context.handle(
          _dageMeta, dage.isAcceptableValue(d.dage.value, _dageMeta));
    } else if (dage.isRequired && isInserting) {
      context.missing(_dageMeta);
    }
    if (d.dphno.present) {
      context.handle(
          _dphnoMeta, dphno.isAcceptableValue(d.dphno.value, _dphnoMeta));
    } else if (dphno.isRequired && isInserting) {
      context.missing(_dphnoMeta);
    }
    if (d.dept.present) {
      context.handle(
          _deptMeta, dept.isAcceptableValue(d.dept.value, _deptMeta));
    } else if (dept.isRequired && isInserting) {
      context.missing(_deptMeta);
    }
    if (d.b_pat.present) {
      context.handle(
          _b_patMeta, b_pat.isAcceptableValue(d.b_pat.value, _b_patMeta));
    } else if (b_pat.isRequired && isInserting) {
      context.missing(_b_patMeta);
    }
    if (d.d_med.present) {
      context.handle(
          _d_medMeta, d_med.isAcceptableValue(d.d_med.value, _d_medMeta));
    } else if (d_med.isRequired && isInserting) {
      context.missing(_d_medMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {dphno};
  @override
  Doctor map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Doctor.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(DoctorsCompanion d) {
    final map = <String, Variable>{};
    if (d.dname.present) {
      map['dname'] = Variable<String, StringType>(d.dname.value);
    }
    if (d.dage.present) {
      map['dage'] = Variable<int, IntType>(d.dage.value);
    }
    if (d.dphno.present) {
      map['dphno'] = Variable<int, IntType>(d.dphno.value);
    }
    if (d.dept.present) {
      map['dept'] = Variable<String, StringType>(d.dept.value);
    }
    if (d.b_pat.present) {
      map['b_pat'] = Variable<int, IntType>(d.b_pat.value);
    }
    if (d.d_med.present) {
      map['d_med'] = Variable<String, StringType>(d.d_med.value);
    }
    return map;
  }

  @override
  $DoctorsTable createAlias(String alias) {
    return $DoctorsTable(_db, alias);
  }
}

class Book extends DataClass implements Insertable<Book> {
  final int bno;
  final int booked_by;
  final int booked_for;
  final DateTime booked_time;
  final DateTime booked_date;
  Book(
      {@required this.bno,
      @required this.booked_by,
      @required this.booked_for,
      @required this.booked_time,
      @required this.booked_date});
  factory Book.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return Book(
      bno: intType.mapFromDatabaseResponse(data['${effectivePrefix}bno']),
      booked_by:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}booked_by']),
      booked_for:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}booked_for']),
      booked_time: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}booked_time']),
      booked_date: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}booked_date']),
    );
  }
  factory Book.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return Book(
      bno: serializer.fromJson<int>(json['bno']),
      booked_by: serializer.fromJson<int>(json['booked_by']),
      booked_for: serializer.fromJson<int>(json['booked_for']),
      booked_time: serializer.fromJson<DateTime>(json['booked_time']),
      booked_date: serializer.fromJson<DateTime>(json['booked_date']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'bno': serializer.toJson<int>(bno),
      'booked_by': serializer.toJson<int>(booked_by),
      'booked_for': serializer.toJson<int>(booked_for),
      'booked_time': serializer.toJson<DateTime>(booked_time),
      'booked_date': serializer.toJson<DateTime>(booked_date),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<Book>>(bool nullToAbsent) {
    return BooksCompanion(
      bno: bno == null && nullToAbsent ? const Value.absent() : Value(bno),
      booked_by: booked_by == null && nullToAbsent
          ? const Value.absent()
          : Value(booked_by),
      booked_for: booked_for == null && nullToAbsent
          ? const Value.absent()
          : Value(booked_for),
      booked_time: booked_time == null && nullToAbsent
          ? const Value.absent()
          : Value(booked_time),
      booked_date: booked_date == null && nullToAbsent
          ? const Value.absent()
          : Value(booked_date),
    ) as T;
  }

  Book copyWith(
          {int bno,
          int booked_by,
          int booked_for,
          DateTime booked_time,
          DateTime booked_date}) =>
      Book(
        bno: bno ?? this.bno,
        booked_by: booked_by ?? this.booked_by,
        booked_for: booked_for ?? this.booked_for,
        booked_time: booked_time ?? this.booked_time,
        booked_date: booked_date ?? this.booked_date,
      );
  @override
  String toString() {
    return (StringBuffer('Book(')
          ..write('bno: $bno, ')
          ..write('booked_by: $booked_by, ')
          ..write('booked_for: $booked_for, ')
          ..write('booked_time: $booked_time, ')
          ..write('booked_date: $booked_date')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      bno.hashCode,
      $mrjc(
          booked_by.hashCode,
          $mrjc(booked_for.hashCode,
              $mrjc(booked_time.hashCode, booked_date.hashCode)))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is Book &&
          other.bno == bno &&
          other.booked_by == booked_by &&
          other.booked_for == booked_for &&
          other.booked_time == booked_time &&
          other.booked_date == booked_date);
}

class BooksCompanion extends UpdateCompanion<Book> {
  final Value<int> bno;
  final Value<int> booked_by;
  final Value<int> booked_for;
  final Value<DateTime> booked_time;
  final Value<DateTime> booked_date;
  const BooksCompanion({
    this.bno = const Value.absent(),
    this.booked_by = const Value.absent(),
    this.booked_for = const Value.absent(),
    this.booked_time = const Value.absent(),
    this.booked_date = const Value.absent(),
  });
  BooksCompanion copyWith(
      {Value<int> bno,
      Value<int> booked_by,
      Value<int> booked_for,
      Value<DateTime> booked_time,
      Value<DateTime> booked_date}) {
    return BooksCompanion(
      bno: bno ?? this.bno,
      booked_by: booked_by ?? this.booked_by,
      booked_for: booked_for ?? this.booked_for,
      booked_time: booked_time ?? this.booked_time,
      booked_date: booked_date ?? this.booked_date,
    );
  }
}

class $BooksTable extends Books with TableInfo<$BooksTable, Book> {
  final GeneratedDatabase _db;
  final String _alias;
  $BooksTable(this._db, [this._alias]);
  final VerificationMeta _bnoMeta = const VerificationMeta('bno');
  GeneratedIntColumn _bno;
  @override
  GeneratedIntColumn get bno => _bno ??= _constructBno();
  GeneratedIntColumn _constructBno() {
    return GeneratedIntColumn('bno', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _booked_byMeta = const VerificationMeta('booked_by');
  GeneratedIntColumn _booked_by;
  @override
  GeneratedIntColumn get booked_by => _booked_by ??= _constructBookedBy();
  GeneratedIntColumn _constructBookedBy() {
    return GeneratedIntColumn(
      'booked_by',
      $tableName,
      false,
    );
  }

  final VerificationMeta _booked_forMeta = const VerificationMeta('booked_for');
  GeneratedIntColumn _booked_for;
  @override
  GeneratedIntColumn get booked_for => _booked_for ??= _constructBookedFor();
  GeneratedIntColumn _constructBookedFor() {
    return GeneratedIntColumn(
      'booked_for',
      $tableName,
      false,
    );
  }

  final VerificationMeta _booked_timeMeta =
      const VerificationMeta('booked_time');
  GeneratedDateTimeColumn _booked_time;
  @override
  GeneratedDateTimeColumn get booked_time =>
      _booked_time ??= _constructBookedTime();
  GeneratedDateTimeColumn _constructBookedTime() {
    return GeneratedDateTimeColumn(
      'booked_time',
      $tableName,
      false,
    );
  }

  final VerificationMeta _booked_dateMeta =
      const VerificationMeta('booked_date');
  GeneratedDateTimeColumn _booked_date;
  @override
  GeneratedDateTimeColumn get booked_date =>
      _booked_date ??= _constructBookedDate();
  GeneratedDateTimeColumn _constructBookedDate() {
    return GeneratedDateTimeColumn(
      'booked_date',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [bno, booked_by, booked_for, booked_time, booked_date];
  @override
  $BooksTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'books';
  @override
  final String actualTableName = 'books';
  @override
  VerificationContext validateIntegrity(BooksCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.bno.present) {
      context.handle(_bnoMeta, bno.isAcceptableValue(d.bno.value, _bnoMeta));
    } else if (bno.isRequired && isInserting) {
      context.missing(_bnoMeta);
    }
    if (d.booked_by.present) {
      context.handle(_booked_byMeta,
          booked_by.isAcceptableValue(d.booked_by.value, _booked_byMeta));
    } else if (booked_by.isRequired && isInserting) {
      context.missing(_booked_byMeta);
    }
    if (d.booked_for.present) {
      context.handle(_booked_forMeta,
          booked_for.isAcceptableValue(d.booked_for.value, _booked_forMeta));
    } else if (booked_for.isRequired && isInserting) {
      context.missing(_booked_forMeta);
    }
    if (d.booked_time.present) {
      context.handle(_booked_timeMeta,
          booked_time.isAcceptableValue(d.booked_time.value, _booked_timeMeta));
    } else if (booked_time.isRequired && isInserting) {
      context.missing(_booked_timeMeta);
    }
    if (d.booked_date.present) {
      context.handle(_booked_dateMeta,
          booked_date.isAcceptableValue(d.booked_date.value, _booked_dateMeta));
    } else if (booked_date.isRequired && isInserting) {
      context.missing(_booked_dateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {bno};
  @override
  Book map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Book.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(BooksCompanion d) {
    final map = <String, Variable>{};
    if (d.bno.present) {
      map['bno'] = Variable<int, IntType>(d.bno.value);
    }
    if (d.booked_by.present) {
      map['booked_by'] = Variable<int, IntType>(d.booked_by.value);
    }
    if (d.booked_for.present) {
      map['booked_for'] = Variable<int, IntType>(d.booked_for.value);
    }
    if (d.booked_time.present) {
      map['booked_time'] =
          Variable<DateTime, DateTimeType>(d.booked_time.value);
    }
    if (d.booked_date.present) {
      map['booked_date'] =
          Variable<DateTime, DateTimeType>(d.booked_date.value);
    }
    return map;
  }

  @override
  $BooksTable createAlias(String alias) {
    return $BooksTable(_db, alias);
  }
}

class Med extends DataClass implements Insertable<Med> {
  final int mno;
  final int presc_by;
  final int presc_for;
  Med({@required this.mno, @required this.presc_by, @required this.presc_for});
  factory Med.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    return Med(
      mno: intType.mapFromDatabaseResponse(data['${effectivePrefix}mno']),
      presc_by:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}presc_by']),
      presc_for:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}presc_for']),
    );
  }
  factory Med.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return Med(
      mno: serializer.fromJson<int>(json['mno']),
      presc_by: serializer.fromJson<int>(json['presc_by']),
      presc_for: serializer.fromJson<int>(json['presc_for']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'mno': serializer.toJson<int>(mno),
      'presc_by': serializer.toJson<int>(presc_by),
      'presc_for': serializer.toJson<int>(presc_for),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<Med>>(bool nullToAbsent) {
    return MedsCompanion(
      mno: mno == null && nullToAbsent ? const Value.absent() : Value(mno),
      presc_by: presc_by == null && nullToAbsent
          ? const Value.absent()
          : Value(presc_by),
      presc_for: presc_for == null && nullToAbsent
          ? const Value.absent()
          : Value(presc_for),
    ) as T;
  }

  Med copyWith({int mno, int presc_by, int presc_for}) => Med(
        mno: mno ?? this.mno,
        presc_by: presc_by ?? this.presc_by,
        presc_for: presc_for ?? this.presc_for,
      );
  @override
  String toString() {
    return (StringBuffer('Med(')
          ..write('mno: $mno, ')
          ..write('presc_by: $presc_by, ')
          ..write('presc_for: $presc_for')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(mno.hashCode, $mrjc(presc_by.hashCode, presc_for.hashCode)));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is Med &&
          other.mno == mno &&
          other.presc_by == presc_by &&
          other.presc_for == presc_for);
}

class MedsCompanion extends UpdateCompanion<Med> {
  final Value<int> mno;
  final Value<int> presc_by;
  final Value<int> presc_for;
  const MedsCompanion({
    this.mno = const Value.absent(),
    this.presc_by = const Value.absent(),
    this.presc_for = const Value.absent(),
  });
  MedsCompanion copyWith(
      {Value<int> mno, Value<int> presc_by, Value<int> presc_for}) {
    return MedsCompanion(
      mno: mno ?? this.mno,
      presc_by: presc_by ?? this.presc_by,
      presc_for: presc_for ?? this.presc_for,
    );
  }
}

class $MedsTable extends Meds with TableInfo<$MedsTable, Med> {
  final GeneratedDatabase _db;
  final String _alias;
  $MedsTable(this._db, [this._alias]);
  final VerificationMeta _mnoMeta = const VerificationMeta('mno');
  GeneratedIntColumn _mno;
  @override
  GeneratedIntColumn get mno => _mno ??= _constructMno();
  GeneratedIntColumn _constructMno() {
    return GeneratedIntColumn('mno', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _presc_byMeta = const VerificationMeta('presc_by');
  GeneratedIntColumn _presc_by;
  @override
  GeneratedIntColumn get presc_by => _presc_by ??= _constructPrescBy();
  GeneratedIntColumn _constructPrescBy() {
    return GeneratedIntColumn(
      'presc_by',
      $tableName,
      false,
    );
  }

  final VerificationMeta _presc_forMeta = const VerificationMeta('presc_for');
  GeneratedIntColumn _presc_for;
  @override
  GeneratedIntColumn get presc_for => _presc_for ??= _constructPrescFor();
  GeneratedIntColumn _constructPrescFor() {
    return GeneratedIntColumn(
      'presc_for',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [mno, presc_by, presc_for];
  @override
  $MedsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'meds';
  @override
  final String actualTableName = 'meds';
  @override
  VerificationContext validateIntegrity(MedsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.mno.present) {
      context.handle(_mnoMeta, mno.isAcceptableValue(d.mno.value, _mnoMeta));
    } else if (mno.isRequired && isInserting) {
      context.missing(_mnoMeta);
    }
    if (d.presc_by.present) {
      context.handle(_presc_byMeta,
          presc_by.isAcceptableValue(d.presc_by.value, _presc_byMeta));
    } else if (presc_by.isRequired && isInserting) {
      context.missing(_presc_byMeta);
    }
    if (d.presc_for.present) {
      context.handle(_presc_forMeta,
          presc_for.isAcceptableValue(d.presc_for.value, _presc_forMeta));
    } else if (presc_for.isRequired && isInserting) {
      context.missing(_presc_forMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {mno};
  @override
  Med map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Med.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(MedsCompanion d) {
    final map = <String, Variable>{};
    if (d.mno.present) {
      map['mno'] = Variable<int, IntType>(d.mno.value);
    }
    if (d.presc_by.present) {
      map['presc_by'] = Variable<int, IntType>(d.presc_by.value);
    }
    if (d.presc_for.present) {
      map['presc_for'] = Variable<int, IntType>(d.presc_for.value);
    }
    return map;
  }

  @override
  $MedsTable createAlias(String alias) {
    return $MedsTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(const SqlTypeSystem.withDefaults(), e);
  $PatientsTable _patients;
  $PatientsTable get patients => _patients ??= $PatientsTable(this);
  $DoctorsTable _doctors;
  $DoctorsTable get doctors => _doctors ??= $DoctorsTable(this);
  $BooksTable _books;
  $BooksTable get books => _books ??= $BooksTable(this);
  $MedsTable _meds;
  $MedsTable get meds => _meds ??= $MedsTable(this);
  PatDao _patDao;
  PatDao get patDao => _patDao ??= PatDao(this as AppDatabase);
  DocDao _docDao;
  DocDao get docDao => _docDao ??= DocDao(this as AppDatabase);
  BookDao _bookDao;
  BookDao get bookDao => _bookDao ??= BookDao(this as AppDatabase);
  MedDao _medDao;
  MedDao get medDao => _medDao ??= MedDao(this as AppDatabase);
  @override
  List<TableInfo> get allTables => [patients, doctors, books, meds];
}

// **************************************************************************
// DaoGenerator
// **************************************************************************

mixin _$PatDaoMixin on DatabaseAccessor<AppDatabase> {
  $PatientsTable get patients => db.patients;
}

mixin _$DocDaoMixin on DatabaseAccessor<AppDatabase> {
  $DoctorsTable get doctors => db.doctors;
}

mixin _$BookDaoMixin on DatabaseAccessor<AppDatabase> {
  $BooksTable get books => db.books;
}

mixin _$MedDaoMixin on DatabaseAccessor<AppDatabase> {
  $MedsTable get meds => db.meds;
}
