import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/issues/remove_assignees_request.dart';
import 'package:github/model/issues/remove_assignees_request.dart';
@immutable
class Issues&#x2F;removeAssigneesRequest {
    Issues&#x2F;removeAssigneesRequest(
        {  this.assignees = const [],
         }
    );

    factory Issues&#x2F;removeAssigneesRequest.fromJson(Map<String, dynamic>
        json) {
        return Issues&#x2F;removeAssigneesRequest(
            assignees: (json['assignees'] as List?)?.cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Issues&#x2F;removeAssigneesRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Issues&#x2F;removeAssigneesRequest.fromJson(json);
    }

    final  List<String>? assignees;


    Map<String, dynamic> toJson() {
        return {
            'assignees': assignees,
        };
    }

    @override
    int get hashCode =>
          assignees.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Issues&#x2F;removeAssigneesRequest
            && listsEqual(assignees, other.assignees)
        ;
    }
}
