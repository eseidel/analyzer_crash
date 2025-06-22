import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/community-profile.dart';
import 'package:github/model/community-profile_files.dart';
import 'package:github/model/nullable-code-of-conduct-simple.dart';
import 'package:github/model/nullable-community-health-file.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/nullable-community-health-file.dart';
import 'package:github/model/nullable-community-health-file.dart';
import 'package:github/model/nullable-community-health-file.dart';
import 'package:github/model/nullable-community-health-file.dart';
import 'package:github/model/community-profile.dart';
import 'package:github/model/community-profile_files.dart';
import 'package:github/model/nullable-code-of-conduct-simple.dart';
import 'package:github/model/nullable-community-health-file.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/nullable-community-health-file.dart';
import 'package:github/model/nullable-community-health-file.dart';
import 'package:github/model/nullable-community-health-file.dart';
import 'package:github/model/nullable-community-health-file.dart';
@immutable
class Community-profile {
    Community-profile(
        { required this.health_percentage,required this.description,required this.documentation,required this.files,required this.updated_at, this.content_reports_enabled,
         }
    );

    factory Community-profile.fromJson(Map<String, dynamic>
        json) {
        return Community-profile(
            health_percentage: (json['health_percentage'] as int).toInt() ,
            description: json['description'] as String ,
            documentation: json['documentation'] as String ,
            files: Community-profileFiles.fromJson(json['files'] as Map<String, dynamic>) ,
            updated_at: DateTime.parse(json['updated_at'] as String),
            content_reports_enabled: (json['content_reports_enabled'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Community-profile? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Community-profile.fromJson(json);
    }

    final int  health_percentage;
    final String  description;
    final String  documentation;
    final Community-profileFiles  files;
    final DateTime  updated_at;
    final  bool? content_reports_enabled;


    Map<String, dynamic> toJson() {
        return {
            'health_percentage': health_percentage,
            'description': description,
            'documentation': documentation,
            'files': files.toJson(),
            'updated_at': updated_at.toIso8601String(),
            'content_reports_enabled': content_reports_enabled,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          health_percentage,
          description,
          documentation,
          files,
          updated_at,
          content_reports_enabled,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Community-profile
            && health_percentage == other.health_percentage
            && description == other.description
            && documentation == other.documentation
            && files == other.files
            && updated_at == other.updated_at
            && content_reports_enabled == other.content_reports_enabled
        ;
    }
}
