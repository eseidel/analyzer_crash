import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/community-profile_files.dart';
import 'package:github/model/nullable-code-of-conduct-simple.dart';
import 'package:github/model/nullable-community-health-file.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/nullable-community-health-file.dart';
import 'package:github/model/nullable-community-health-file.dart';
import 'package:github/model/nullable-community-health-file.dart';
import 'package:github/model/nullable-community-health-file.dart';
import 'package:github/model/community-profile_files.dart';
import 'package:github/model/nullable-code-of-conduct-simple.dart';
import 'package:github/model/nullable-community-health-file.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/nullable-community-health-file.dart';
import 'package:github/model/nullable-community-health-file.dart';
import 'package:github/model/nullable-community-health-file.dart';
import 'package:github/model/nullable-community-health-file.dart';
@immutable
class Community-profileFiles {
    Community-profileFiles(
        { required this.code_of_conduct,required this.code_of_conduct_file,required this.license,required this.contributing,required this.readme,required this.issue_template,required this.pull_request_template,
         }
    );

    factory Community-profileFiles.fromJson(Map<String, dynamic>
        json) {
        return Community-profileFiles(
            code_of_conduct: Nullable-code-of-conduct-simple.fromJson(json['code_of_conduct'] as Map<String, dynamic>) ,
            code_of_conduct_file: Nullable-community-health-file.fromJson(json['code_of_conduct_file'] as Map<String, dynamic>) ,
            license: Nullable-license-simple.fromJson(json['license'] as Map<String, dynamic>) ,
            contributing: Nullable-community-health-file.fromJson(json['contributing'] as Map<String, dynamic>) ,
            readme: Nullable-community-health-file.fromJson(json['readme'] as Map<String, dynamic>) ,
            issue_template: Nullable-community-health-file.fromJson(json['issue_template'] as Map<String, dynamic>) ,
            pull_request_template: Nullable-community-health-file.fromJson(json['pull_request_template'] as Map<String, dynamic>) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Community-profileFiles? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Community-profileFiles.fromJson(json);
    }

    final Nullable-code-of-conduct-simple  code_of_conduct;
    final Nullable-community-health-file  code_of_conduct_file;
    final Nullable-license-simple  license;
    final Nullable-community-health-file  contributing;
    final Nullable-community-health-file  readme;
    final Nullable-community-health-file  issue_template;
    final Nullable-community-health-file  pull_request_template;


    Map<String, dynamic> toJson() {
        return {
            'code_of_conduct': code_of_conduct.toJson(),
            'code_of_conduct_file': code_of_conduct_file.toJson(),
            'license': license.toJson(),
            'contributing': contributing.toJson(),
            'readme': readme.toJson(),
            'issue_template': issue_template.toJson(),
            'pull_request_template': pull_request_template.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          code_of_conduct,
          code_of_conduct_file,
          license,
          contributing,
          readme,
          issue_template,
          pull_request_template,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Community-profileFiles
            && code_of_conduct == other.code_of_conduct
            && code_of_conduct_file == other.code_of_conduct_file
            && license == other.license
            && contributing == other.contributing
            && readme == other.readme
            && issue_template == other.issue_template
            && pull_request_template == other.pull_request_template
        ;
    }
}
