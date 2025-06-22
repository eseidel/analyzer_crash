import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/gist-history.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/gist-history_change_status.dart';
import 'package:github/model/gist-history.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/gist-history_change_status.dart';
@immutable
class Gist-history {
    Gist-history(
        {  this.user, this.version, this.committed_at, this.change_status, this.url,
         }
    );

    factory Gist-history.fromJson(Map<String, dynamic>
        json) {
        return Gist-history(
            user: Nullable-simple-user.maybeFromJson(json['user'] as Map<String, dynamic>?) ,
            version: json['version'] as String? ,
            committed_at: maybeParseDateTime(json['committed_at'] as String?) ,
            change_status: Gist-historyChangeStatus.maybeFromJson(json['change_status'] as Map<String, dynamic>?) ,
            url: json['url'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Gist-history? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Gist-history.fromJson(json);
    }

    final  Nullable-simple-user? user;
    final  String? version;
    final  DateTime? committed_at;
    final  Gist-historyChangeStatus? change_status;
    final  String? url;


    Map<String, dynamic> toJson() {
        return {
            'user': user?.toJson(),
            'version': version,
            'committed_at': committed_at?.toIso8601String(),
            'change_status': change_status?.toJson(),
            'url': url,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          user,
          version,
          committed_at,
          change_status,
          url,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Gist-history
            && user == other.user
            && version == other.version
            && committed_at == other.committed_at
            && change_status == other.change_status
            && url == other.url
        ;
    }
}
