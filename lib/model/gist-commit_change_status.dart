import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/gist-commit_change_status.dart';
import 'package:github/model/gist-commit_change_status.dart';
@immutable
class Gist-commitChangeStatus {
    Gist-commitChangeStatus(
        {  this.total, this.additions, this.deletions,
         }
    );

    factory Gist-commitChangeStatus.fromJson(Map<String, dynamic>
        json) {
        return Gist-commitChangeStatus(
            total: (json['total'] as int?).toInt() ,
            additions: (json['additions'] as int?).toInt() ,
            deletions: (json['deletions'] as int?).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Gist-commitChangeStatus? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Gist-commitChangeStatus.fromJson(json);
    }

    final  int? total;
    final  int? additions;
    final  int? deletions;


    Map<String, dynamic> toJson() {
        return {
            'total': total,
            'additions': additions,
            'deletions': deletions,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          total,
          additions,
          deletions,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Gist-commitChangeStatus
            && total == other.total
            && additions == other.additions
            && deletions == other.deletions
        ;
    }
}
