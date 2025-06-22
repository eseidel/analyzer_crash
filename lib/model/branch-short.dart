import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/branch-short.dart';
import 'package:github/model/branch-short_commit.dart';
import 'package:github/model/branch-short.dart';
import 'package:github/model/branch-short_commit.dart';
@immutable
class Branch-short {
    Branch-short(
        { required this.name,required this.commit,required this.protected,
         }
    );

    factory Branch-short.fromJson(Map<String, dynamic>
        json) {
        return Branch-short(
            name: json['name'] as String ,
            commit: Branch-shortCommit.fromJson(json['commit'] as Map<String, dynamic>) ,
            protected: (json['protected'] as bool) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Branch-short? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Branch-short.fromJson(json);
    }

    final String  name;
    final Branch-shortCommit  commit;
    final bool  protected;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'commit': commit.toJson(),
            'protected': protected,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          name,
          commit,
          protected,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Branch-short
            && name == other.name
            && commit == other.commit
            && protected == other.protected
        ;
    }
}
