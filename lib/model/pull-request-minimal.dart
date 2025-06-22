import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pull-request-minimal.dart';
import 'package:github/model/pull-request-minimal_head.dart';
import 'package:github/model/pull-request-minimal_head_repo.dart';
import 'package:github/model/pull-request-minimal_base.dart';
import 'package:github/model/pull-request-minimal_base_repo.dart';
import 'package:github/model/pull-request-minimal.dart';
import 'package:github/model/pull-request-minimal_head.dart';
import 'package:github/model/pull-request-minimal_head_repo.dart';
import 'package:github/model/pull-request-minimal_base.dart';
import 'package:github/model/pull-request-minimal_base_repo.dart';
@immutable
class Pull-request-minimal {
    Pull-request-minimal(
        { required this.id,required this.number,required this.url,required this.head,required this.base,
         }
    );

    factory Pull-request-minimal.fromJson(Map<String, dynamic>
        json) {
        return Pull-request-minimal(
            id: (json['id'] as int).toInt() ,
            number: (json['number'] as int).toInt() ,
            url: json['url'] as String ,
            head: Pull-request-minimalHead.fromJson(json['head'] as Map<String, dynamic>) ,
            base: Pull-request-minimalBase.fromJson(json['base'] as Map<String, dynamic>) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pull-request-minimal? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Pull-request-minimal.fromJson(json);
    }

    final int  id;
    final int  number;
    final String  url;
    final Pull-request-minimalHead  head;
    final Pull-request-minimalBase  base;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'number': number,
            'url': url,
            'head': head.toJson(),
            'base': base.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          number,
          url,
          head,
          base,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Pull-request-minimal
            && id == other.id
            && number == other.number
            && url == other.url
            && head == other.head
            && base == other.base
        ;
    }
}
