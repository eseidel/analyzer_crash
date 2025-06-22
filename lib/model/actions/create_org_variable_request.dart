import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions/create_org_variable_request.dart';
import 'package:github/model/actions/create_org_variable_request_visibility.dart';
import 'package:github/model/actions/create_org_variable_request.dart';
import 'package:github/model/actions/create_org_variable_request_visibility.dart';
@immutable
class Actions&#x2F;createOrgVariableRequest {
    Actions&#x2F;createOrgVariableRequest(
        { required this.name,required this.value,required this.visibility, this.selected_repository_ids = const [],
         }
    );

    factory Actions&#x2F;createOrgVariableRequest.fromJson(Map<String, dynamic>
        json) {
        return Actions&#x2F;createOrgVariableRequest(
            name: json['name'] as String ,
            value: json['value'] as String ,
            visibility: Actions/createOrgVariableRequestVisibility.fromJson(json['visibility'] as String) ,
            selected_repository_ids: (json['selected_repository_ids'] as List?)?.cast<int>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions&#x2F;createOrgVariableRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Actions&#x2F;createOrgVariableRequest.fromJson(json);
    }

    final String  name;
    final String  value;
    final Actions/createOrgVariableRequestVisibility  visibility;
    final  List<int>? selected_repository_ids;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'value': value,
            'visibility': visibility.toJson(),
            'selected_repository_ids': selected_repository_ids,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          name,
          value,
          visibility,
          selected_repository_ids,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Actions&#x2F;createOrgVariableRequest
            && name == other.name
            && value == other.value
            && visibility == other.visibility
            && listsEqual(selected_repository_ids, other.selected_repository_ids)
        ;
    }
}
