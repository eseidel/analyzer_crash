import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/protected-branch-required-status-check_checks_inner.dart';
import 'package:github/model/protected-branch-required-status-check_checks_inner.dart';
@immutable
class Protected-branch-required-status-checkChecksInner {
    Protected-branch-required-status-checkChecksInner(
        { required this.context,required this.app_id,
         }
    );

    factory Protected-branch-required-status-checkChecksInner.fromJson(Map<String, dynamic>
        json) {
        return Protected-branch-required-status-checkChecksInner(
            context: json['context'] as String ,
            app_id: (json['app_id'] as int).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Protected-branch-required-status-checkChecksInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Protected-branch-required-status-checkChecksInner.fromJson(json);
    }

    final String  context;
    final int  app_id;


    Map<String, dynamic> toJson() {
        return {
            'context': context,
            'app_id': app_id,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          context,
          app_id,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Protected-branch-required-status-checkChecksInner
            && context == other.context
            && app_id == other.app_id
        ;
    }
}
