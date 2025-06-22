import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/transfer_request.dart';
import 'package:github/model/repos/transfer_request.dart';
@immutable
class Repos&#x2F;transferRequest {
    Repos&#x2F;transferRequest(
        { required this.new_owner, this.new_name, this.team_ids = const [],
         }
    );

    factory Repos&#x2F;transferRequest.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;transferRequest(
            new_owner: json['new_owner'] as String ,
            new_name: json['new_name'] as String? ,
            team_ids: (json['team_ids'] as List?)?.cast<int>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;transferRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;transferRequest.fromJson(json);
    }

    final String  new_owner;
    final  String? new_name;
    final  List<int>? team_ids;


    Map<String, dynamic> toJson() {
        return {
            'new_owner': new_owner,
            'new_name': new_name,
            'team_ids': team_ids,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          new_owner,
          new_name,
          team_ids,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;transferRequest
            && new_owner == other.new_owner
            && new_name == other.new_name
            && listsEqual(team_ids, other.team_ids)
        ;
    }
}
