import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/issues/remove_sub_issue_request.dart';
import 'package:github/model/issues/remove_sub_issue_request.dart';
@immutable
class Issues&#x2F;removeSubIssueRequest {
    Issues&#x2F;removeSubIssueRequest(
        { required this.sub_issue_id,
         }
    );

    factory Issues&#x2F;removeSubIssueRequest.fromJson(Map<String, dynamic>
        json) {
        return Issues&#x2F;removeSubIssueRequest(
            sub_issue_id: (json['sub_issue_id'] as int).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Issues&#x2F;removeSubIssueRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Issues&#x2F;removeSubIssueRequest.fromJson(json);
    }

    final int  sub_issue_id;


    Map<String, dynamic> toJson() {
        return {
            'sub_issue_id': sub_issue_id,
        };
    }

    @override
    int get hashCode =>
          sub_issue_id.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Issues&#x2F;removeSubIssueRequest
            && sub_issue_id == other.sub_issue_id
        ;
    }
}
