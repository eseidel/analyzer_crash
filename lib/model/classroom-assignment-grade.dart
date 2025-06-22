import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/classroom-assignment-grade.dart';
import 'package:github/model/classroom-assignment-grade.dart';
@immutable
class Classroom-assignment-grade {
    Classroom-assignment-grade(
        { required this.assignment_name,required this.assignment_url,required this.starter_code_url,required this.github_username,required this.roster_identifier,required this.student_repository_name,required this.student_repository_url,required this.submission_timestamp,required this.points_awarded,required this.points_available, this.group_name,
         }
    );

    factory Classroom-assignment-grade.fromJson(Map<String, dynamic>
        json) {
        return Classroom-assignment-grade(
            assignment_name: json['assignment_name'] as String ,
            assignment_url: json['assignment_url'] as String ,
            starter_code_url: json['starter_code_url'] as String ,
            github_username: json['github_username'] as String ,
            roster_identifier: json['roster_identifier'] as String ,
            student_repository_name: json['student_repository_name'] as String ,
            student_repository_url: json['student_repository_url'] as String ,
            submission_timestamp: json['submission_timestamp'] as String ,
            points_awarded: (json['points_awarded'] as int).toInt() ,
            points_available: (json['points_available'] as int).toInt() ,
            group_name: json['group_name'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Classroom-assignment-grade? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Classroom-assignment-grade.fromJson(json);
    }

    final String  assignment_name;
    final String  assignment_url;
    final String  starter_code_url;
    final String  github_username;
    final String  roster_identifier;
    final String  student_repository_name;
    final String  student_repository_url;
    final String  submission_timestamp;
    final int  points_awarded;
    final int  points_available;
    final  String? group_name;


    Map<String, dynamic> toJson() {
        return {
            'assignment_name': assignment_name,
            'assignment_url': assignment_url,
            'starter_code_url': starter_code_url,
            'github_username': github_username,
            'roster_identifier': roster_identifier,
            'student_repository_name': student_repository_name,
            'student_repository_url': student_repository_url,
            'submission_timestamp': submission_timestamp,
            'points_awarded': points_awarded,
            'points_available': points_available,
            'group_name': group_name,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          assignment_name,
          assignment_url,
          starter_code_url,
          github_username,
          roster_identifier,
          student_repository_name,
          student_repository_url,
          submission_timestamp,
          points_awarded,
          points_available,
          group_name,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Classroom-assignment-grade
            && assignment_name == other.assignment_name
            && assignment_url == other.assignment_url
            && starter_code_url == other.starter_code_url
            && github_username == other.github_username
            && roster_identifier == other.roster_identifier
            && student_repository_name == other.student_repository_name
            && student_repository_url == other.student_repository_url
            && submission_timestamp == other.submission_timestamp
            && points_awarded == other.points_awarded
            && points_available == other.points_available
            && group_name == other.group_name
        ;
    }
}
