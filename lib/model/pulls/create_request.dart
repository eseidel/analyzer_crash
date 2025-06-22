import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pulls/create_request.dart';
import 'package:github/model/pulls/create_request.dart';
@immutable
class Pulls&#x2F;createRequest {
    Pulls&#x2F;createRequest(
        {  this.title,required this.head, this.head_repo,required this.base, this.body, this.maintainer_can_modify, this.draft, this.issue,
         }
    );

    factory Pulls&#x2F;createRequest.fromJson(Map<String, dynamic>
        json) {
        return Pulls&#x2F;createRequest(
            title: json['title'] as String? ,
            head: json['head'] as String ,
            head_repo: json['head_repo'] as String? ,
            base: json['base'] as String ,
            body: json['body'] as String? ,
            maintainer_can_modify: (json['maintainer_can_modify'] as bool?) ,
            draft: (json['draft'] as bool?) ,
            issue: (json['issue'] as int?).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pulls&#x2F;createRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Pulls&#x2F;createRequest.fromJson(json);
    }

    final  String? title;
    final String  head;
    final  String? head_repo;
    final String  base;
    final  String? body;
    final  bool? maintainer_can_modify;
    final  bool? draft;
    final  int? issue;


    Map<String, dynamic> toJson() {
        return {
            'title': title,
            'head': head,
            'head_repo': head_repo,
            'base': base,
            'body': body,
            'maintainer_can_modify': maintainer_can_modify,
            'draft': draft,
            'issue': issue,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          title,
          head,
          head_repo,
          base,
          body,
          maintainer_can_modify,
          draft,
          issue,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Pulls&#x2F;createRequest
            && title == other.title
            && head == other.head
            && head_repo == other.head_repo
            && base == other.base
            && body == other.body
            && maintainer_can_modify == other.maintainer_can_modify
            && draft == other.draft
            && issue == other.issue
        ;
    }
}
