import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/issues/add_sub_issue_request.dart';
import 'package:github/model/issues/add_sub_issue_request.dart';
@immutable
class Issues&#x2F;addSubIssueRequest {
    Issues&#x2F;addSubIssueRequest(
        { required this.sub_issue_id, this.replace_parent,
         }
    );

    factory Issues&#x2F;addSubIssueRequest.fromJson(Map<String, dynamic>
        json) {
        return Issues&#x2F;addSubIssueRequest(
            sub_issue_id: (json['sub_issue_id'] as int).toInt() ,
            replace_parent: (json['replace_parent'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Issues&#x2F;addSubIssueRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Issues&#x2F;addSubIssueRequest.fromJson(json);
    }

    final int  sub_issue_id;
    final  bool? replace_parent;


    Map<String, dynamic> toJson() {
        return {
            'sub_issue_id': sub_issue_id,
            'replace_parent': replace_parent,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          sub_issue_id,
          replace_parent,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Issues&#x2F;addSubIssueRequest
            && sub_issue_id == other.sub_issue_id
            && replace_parent == other.replace_parent
        ;
    }
}
