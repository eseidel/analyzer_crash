import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/issues/reprioritize_sub_issue_request.dart';
import 'package:github/model/issues/reprioritize_sub_issue_request.dart';
@immutable
class Issues&#x2F;reprioritizeSubIssueRequest {
    Issues&#x2F;reprioritizeSubIssueRequest(
        { required this.sub_issue_id, this.after_id, this.before_id,
         }
    );

    factory Issues&#x2F;reprioritizeSubIssueRequest.fromJson(Map<String, dynamic>
        json) {
        return Issues&#x2F;reprioritizeSubIssueRequest(
            sub_issue_id: (json['sub_issue_id'] as int).toInt() ,
            after_id: (json['after_id'] as int?).toInt() ,
            before_id: (json['before_id'] as int?).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Issues&#x2F;reprioritizeSubIssueRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Issues&#x2F;reprioritizeSubIssueRequest.fromJson(json);
    }

    final int  sub_issue_id;
    final  int? after_id;
    final  int? before_id;


    Map<String, dynamic> toJson() {
        return {
            'sub_issue_id': sub_issue_id,
            'after_id': after_id,
            'before_id': before_id,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          sub_issue_id,
          after_id,
          before_id,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Issues&#x2F;reprioritizeSubIssueRequest
            && sub_issue_id == other.sub_issue_id
            && after_id == other.after_id
            && before_id == other.before_id
        ;
    }
}
