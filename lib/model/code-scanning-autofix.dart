import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-autofix.dart';
import 'package:github/model/code-scanning-autofix-status.dart';
import 'package:github/model/code-scanning-autofix-description.dart';
import 'package:github/model/code-scanning-autofix.dart';
import 'package:github/model/code-scanning-autofix-status.dart';
import 'package:github/model/code-scanning-autofix-description.dart';
@immutable
class Code-scanning-autofix {
    Code-scanning-autofix(
        { required this.status,required this.description,required this.started_at,
         }
    );

    factory Code-scanning-autofix.fromJson(Map<String, dynamic>
        json) {
        return Code-scanning-autofix(
            status: Code-scanning-autofix-status.fromJson(json['status'] as String) ,
            description: Code-scanning-autofix-description((json['description'] as String) ),
            started_at: DateTime.parse(json['started_at'] as String),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-scanning-autofix? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Code-scanning-autofix.fromJson(json);
    }

    final Code-scanning-autofix-status  status;
    final Code-scanning-autofix-description  description;
    final DateTime  started_at;


    Map<String, dynamic> toJson() {
        return {
            'status': status.toJson(),
            'description': description.toJson(),
            'started_at': started_at.toIso8601String(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          status,
          description,
          started_at,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Code-scanning-autofix
            && status == other.status
            && description == other.description
            && started_at == other.started_at
        ;
    }
}
