import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/create_using_template_request.dart';
import 'package:github/model/repos/create_using_template_request.dart';
@immutable
class Repos&#x2F;createUsingTemplateRequest {
    Repos&#x2F;createUsingTemplateRequest(
        {  this.owner,required this.name, this.description, this.include_all_branches = false, this.private = false,
         }
    );

    factory Repos&#x2F;createUsingTemplateRequest.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;createUsingTemplateRequest(
            owner: json['owner'] as String? ,
            name: json['name'] as String ,
            description: json['description'] as String? ,
            include_all_branches: (json['include_all_branches'] as bool?) ,
            private: (json['private'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;createUsingTemplateRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;createUsingTemplateRequest.fromJson(json);
    }

    final  String? owner;
    final String  name;
    final  String? description;
    final  bool? include_all_branches;
    final  bool? private;


    Map<String, dynamic> toJson() {
        return {
            'owner': owner,
            'name': name,
            'description': description,
            'include_all_branches': include_all_branches,
            'private': private,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          owner,
          name,
          description,
          include_all_branches,
          private,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;createUsingTemplateRequest
            && owner == other.owner
            && name == other.name
            && description == other.description
            && include_all_branches == other.include_all_branches
            && private == other.private
        ;
    }
}
