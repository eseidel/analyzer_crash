import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/gist-history_change_status.dart';
import 'package:github/model/gist-history_change_status.dart';
@immutable
class Gist-historyChangeStatus {
    Gist-historyChangeStatus(
        {  this.total, this.additions, this.deletions,
         }
    );

    factory Gist-historyChangeStatus.fromJson(Map<String, dynamic>
        json) {
        return Gist-historyChangeStatus(
            total: (json['total'] as int?).toInt() ,
            additions: (json['additions'] as int?).toInt() ,
            deletions: (json['deletions'] as int?).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Gist-historyChangeStatus? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Gist-historyChangeStatus.fromJson(json);
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
        return other is Gist-historyChangeStatus
            && total == other.total
            && additions == other.additions
            && deletions == other.deletions
        ;
    }
}
