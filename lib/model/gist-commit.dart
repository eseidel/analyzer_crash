import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/gist-commit.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/gist-commit_change_status.dart';
import 'package:github/model/gist-commit.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/gist-commit_change_status.dart';
@immutable
class Gist-commit {
    Gist-commit(
        { required this.url,required this.version,required this.user,required this.change_status,required this.committed_at,
         }
    );

    factory Gist-commit.fromJson(Map<String, dynamic>
        json) {
        return Gist-commit(
            url: json['url'] as String ,
            version: json['version'] as String ,
            user: Nullable-simple-user.fromJson(json['user'] as Map<String, dynamic>) ,
            change_status: Gist-commitChangeStatus.fromJson(json['change_status'] as Map<String, dynamic>) ,
            committed_at: DateTime.parse(json['committed_at'] as String),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Gist-commit? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Gist-commit.fromJson(json);
    }

    final String  url;
    final String  version;
    final Nullable-simple-user  user;
    final Gist-commitChangeStatus  change_status;
    final DateTime  committed_at;


    Map<String, dynamic> toJson() {
        return {
            'url': url,
            'version': version,
            'user': user.toJson(),
            'change_status': change_status.toJson(),
            'committed_at': committed_at.toIso8601String(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          url,
          version,
          user,
          change_status,
          committed_at,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Gist-commit
            && url == other.url
            && version == other.version
            && user == other.user
            && change_status == other.change_status
            && committed_at == other.committed_at
        ;
    }
}
