import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/classroom-accepted-assignment.dart';
import 'package:github/model/simple-classroom-user.dart';
import 'package:github/model/simple-classroom-repository.dart';
import 'package:github/model/simple-classroom-assignment.dart';
import 'package:github/model/simple-classroom-assignment_type.dart';
import 'package:github/model/simple-classroom.dart';
import 'package:github/model/classroom-accepted-assignment.dart';
import 'package:github/model/simple-classroom-user.dart';
import 'package:github/model/simple-classroom-repository.dart';
import 'package:github/model/simple-classroom-assignment.dart';
import 'package:github/model/simple-classroom-assignment_type.dart';
import 'package:github/model/simple-classroom.dart';
@immutable
class Classroom-accepted-assignment {
    Classroom-accepted-assignment(
        { required this.id,required this.submitted,required this.passing,required this.commit_count,required this.grade, this.students = const [],required this.repository,required this.assignment,
         }
    );

    factory Classroom-accepted-assignment.fromJson(Map<String, dynamic>
        json) {
        return Classroom-accepted-assignment(
            id: (json['id'] as int).toInt() ,
            submitted: (json['submitted'] as bool) ,
            passing: (json['passing'] as bool) ,
            commit_count: (json['commit_count'] as int).toInt() ,
            grade: json['grade'] as String ,
            students: (json['students'] as List).map<Simple-classroom-user>((e) => Simple-classroom-user.fromJson(e as Map<String, dynamic>) ).toList() ,
            repository: Simple-classroom-repository.fromJson(json['repository'] as Map<String, dynamic>) ,
            assignment: Simple-classroom-assignment.fromJson(json['assignment'] as Map<String, dynamic>) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Classroom-accepted-assignment? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Classroom-accepted-assignment.fromJson(json);
    }

    final int  id;
    final bool  submitted;
    final bool  passing;
    final int  commit_count;
    final String  grade;
    final List<Simple-classroom-user>  students;
    final Simple-classroom-repository  repository;
    final Simple-classroom-assignment  assignment;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'submitted': submitted,
            'passing': passing,
            'commit_count': commit_count,
            'grade': grade,
            'students': students.map((e) => e.toJson()).toList(),
            'repository': repository.toJson(),
            'assignment': assignment.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          submitted,
          passing,
          commit_count,
          grade,
          students,
          repository,
          assignment,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Classroom-accepted-assignment
            && id == other.id
            && submitted == other.submitted
            && passing == other.passing
            && commit_count == other.commit_count
            && grade == other.grade
            && listsEqual(students, other.students)
            && repository == other.repository
            && assignment == other.assignment
        ;
    }
}
