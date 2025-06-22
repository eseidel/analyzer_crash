import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pulls/update_request.dart';
import 'package:github/model/pulls/update_request_state.dart';
import 'package:github/model/pulls/update_request.dart';
import 'package:github/model/pulls/update_request_state.dart';
@immutable
class Pulls&#x2F;updateRequest {
    Pulls&#x2F;updateRequest(
        {  this.title, this.body, this.state, this.base, this.maintainer_can_modify,
         }
    );

    factory Pulls&#x2F;updateRequest.fromJson(Map<String, dynamic>
        json) {
        return Pulls&#x2F;updateRequest(
            title: json['title'] as String? ,
            body: json['body'] as String? ,
            state: Pulls/updateRequestState.maybeFromJson(json['state'] as String?) ,
            base: json['base'] as String? ,
            maintainer_can_modify: (json['maintainer_can_modify'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pulls&#x2F;updateRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Pulls&#x2F;updateRequest.fromJson(json);
    }

    final  String? title;
    final  String? body;
    final  Pulls/updateRequestState? state;
    final  String? base;
    final  bool? maintainer_can_modify;


    Map<String, dynamic> toJson() {
        return {
            'title': title,
            'body': body,
            'state': state?.toJson(),
            'base': base,
            'maintainer_can_modify': maintainer_can_modify,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          title,
          body,
          state,
          base,
          maintainer_can_modify,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Pulls&#x2F;updateRequest
            && title == other.title
            && body == other.body
            && state == other.state
            && base == other.base
            && maintainer_can_modify == other.maintainer_can_modify
        ;
    }
}
