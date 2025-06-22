import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/update_release_asset_request.dart';
import 'package:github/model/repos/update_release_asset_request.dart';
@immutable
class Repos&#x2F;updateReleaseAssetRequest {
    Repos&#x2F;updateReleaseAssetRequest(
        {  this.name, this.label, this.state,
         }
    );

    factory Repos&#x2F;updateReleaseAssetRequest.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;updateReleaseAssetRequest(
            name: json['name'] as String? ,
            label: json['label'] as String? ,
            state: json['state'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;updateReleaseAssetRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;updateReleaseAssetRequest.fromJson(json);
    }

    final  String? name;
    final  String? label;
    final  String? state;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'label': label,
            'state': state,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          name,
          label,
          state,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;updateReleaseAssetRequest
            && name == other.name
            && label == other.label
            && state == other.state
        ;
    }
}
