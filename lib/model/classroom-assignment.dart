import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/classroom-assignment.dart';
import 'package:github/model/classroom-assignment_type.dart';
import 'package:github/model/simple-classroom-repository.dart';
import 'package:github/model/classroom.dart';
import 'package:github/model/simple-classroom-organization.dart';
import 'package:github/model/classroom-assignment.dart';
import 'package:github/model/classroom-assignment_type.dart';
import 'package:github/model/simple-classroom-repository.dart';
import 'package:github/model/classroom.dart';
import 'package:github/model/simple-classroom-organization.dart';
@immutable
class Classroom-assignment {
    Classroom-assignment(
        { required this.id,required this.public_repo,required this.title,required this.type,required this.invite_link,required this.invitations_enabled,required this.slug,required this.students_are_repo_admins,required this.feedback_pull_requests_enabled,required this.max_teams,required this.max_members,required this.editor,required this.accepted,required this.submitted,required this.passing,required this.language,required this.deadline,required this.starter_code_repository,required this.classroom,
         }
    );

    factory Classroom-assignment.fromJson(Map<String, dynamic>
        json) {
        return Classroom-assignment(
            id: (json['id'] as int).toInt() ,
            public_repo: (json['public_repo'] as bool) ,
            title: json['title'] as String ,
            type: Classroom-assignmentType.fromJson(json['type'] as String) ,
            invite_link: json['invite_link'] as String ,
            invitations_enabled: (json['invitations_enabled'] as bool) ,
            slug: json['slug'] as String ,
            students_are_repo_admins: (json['students_are_repo_admins'] as bool) ,
            feedback_pull_requests_enabled: (json['feedback_pull_requests_enabled'] as bool) ,
            max_teams: (json['max_teams'] as int).toInt() ,
            max_members: (json['max_members'] as int).toInt() ,
            editor: json['editor'] as String ,
            accepted: (json['accepted'] as int).toInt() ,
            submitted: (json['submitted'] as int).toInt() ,
            passing: (json['passing'] as int).toInt() ,
            language: json['language'] as String ,
            deadline: DateTime.parse(json['deadline'] as String),
            starter_code_repository: Simple-classroom-repository.fromJson(json['starter_code_repository'] as Map<String, dynamic>) ,
            classroom: Classroom.fromJson(json['classroom'] as Map<String, dynamic>) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Classroom-assignment? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Classroom-assignment.fromJson(json);
    }

    final int  id;
    final bool  public_repo;
    final String  title;
    final Classroom-assignmentType  type;
    final String  invite_link;
    final bool  invitations_enabled;
    final String  slug;
    final bool  students_are_repo_admins;
    final bool  feedback_pull_requests_enabled;
    final int  max_teams;
    final int  max_members;
    final String  editor;
    final int  accepted;
    final int  submitted;
    final int  passing;
    final String  language;
    final DateTime  deadline;
    final Simple-classroom-repository  starter_code_repository;
    final Classroom  classroom;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'public_repo': public_repo,
            'title': title,
            'type': type.toJson(),
            'invite_link': invite_link,
            'invitations_enabled': invitations_enabled,
            'slug': slug,
            'students_are_repo_admins': students_are_repo_admins,
            'feedback_pull_requests_enabled': feedback_pull_requests_enabled,
            'max_teams': max_teams,
            'max_members': max_members,
            'editor': editor,
            'accepted': accepted,
            'submitted': submitted,
            'passing': passing,
            'language': language,
            'deadline': deadline.toIso8601String(),
            'starter_code_repository': starter_code_repository.toJson(),
            'classroom': classroom.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          public_repo,
          title,
          type,
          invite_link,
          invitations_enabled,
          slug,
          students_are_repo_admins,
          feedback_pull_requests_enabled,
          max_teams,
          max_members,
          editor,
          accepted,
          submitted,
          passing,
          language,
          deadline,
          starter_code_repository,
          classroom,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Classroom-assignment
            && id == other.id
            && public_repo == other.public_repo
            && title == other.title
            && type == other.type
            && invite_link == other.invite_link
            && invitations_enabled == other.invitations_enabled
            && slug == other.slug
            && students_are_repo_admins == other.students_are_repo_admins
            && feedback_pull_requests_enabled == other.feedback_pull_requests_enabled
            && max_teams == other.max_teams
            && max_members == other.max_members
            && editor == other.editor
            && accepted == other.accepted
            && submitted == other.submitted
            && passing == other.passing
            && language == other.language
            && deadline == other.deadline
            && starter_code_repository == other.starter_code_repository
            && classroom == other.classroom
        ;
    }
}
