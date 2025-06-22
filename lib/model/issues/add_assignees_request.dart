import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/issues/add_assignees_request.dart';
import 'package:github/model/issues/add_assignees_request.dart';
@immutable
class Issues&#x2F;addAssigneesRequest {
    Issues&#x2F;addAssigneesRequest(
        {  this.assignees = const [],
         }
    );

    factory Issues&#x2F;addAssigneesRequest.fromJson(Map<String, dynamic>
        json) {
        return Issues&#x2F;addAssigneesRequest(
            assignees: (json['assignees'] as List?)?.cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Issues&#x2F;addAssigneesRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Issues&#x2F;addAssigneesRequest.fromJson(json);
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
        return other is Issues&#x2F;addAssigneesRequest
            && listsEqual(assignees, other.assignees)
        ;
    }
}
