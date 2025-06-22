import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/rename_branch_request.dart';
import 'package:github/model/repos/rename_branch_request.dart';
@immutable
class Repos&#x2F;renameBranchRequest {
    Repos&#x2F;renameBranchRequest(
        { required this.new_name,
         }
    );

    factory Repos&#x2F;renameBranchRequest.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;renameBranchRequest(
            new_name: json['new_name'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;renameBranchRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;renameBranchRequest.fromJson(json);
    }

    final String  new_name;


    Map<String, dynamic> toJson() {
        return {
            'new_name': new_name,
        };
    }

    @override
    int get hashCode =>
          new_name.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;renameBranchRequest
            && new_name == other.new_name
        ;
    }
}
