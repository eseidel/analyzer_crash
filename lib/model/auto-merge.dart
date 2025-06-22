import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/auto-merge.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/auto-merge_merge_method.dart';
import 'package:github/model/auto-merge.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/auto-merge_merge_method.dart';
@immutable
class Auto-merge {
    Auto-merge(
        { required this.enabled_by,required this.merge_method,required this.commit_title,required this.commit_message,
         }
    );

    factory Auto-merge.fromJson(Map<String, dynamic>
        json) {
        return Auto-merge(
            enabled_by: Simple-user.fromJson(json['enabled_by'] as Map<String, dynamic>) ,
            merge_method: Auto-mergeMergeMethod.fromJson(json['merge_method'] as String) ,
            commit_title: json['commit_title'] as String ,
            commit_message: json['commit_message'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Auto-merge? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Auto-merge.fromJson(json);
    }

    final Simple-user  enabled_by;
    final Auto-mergeMergeMethod  merge_method;
    final String  commit_title;
    final String  commit_message;


    Map<String, dynamic> toJson() {
        return {
            'enabled_by': enabled_by.toJson(),
            'merge_method': merge_method.toJson(),
            'commit_title': commit_title,
            'commit_message': commit_message,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          enabled_by,
          merge_method,
          commit_title,
          commit_message,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Auto-merge
            && enabled_by == other.enabled_by
            && merge_method == other.merge_method
            && commit_title == other.commit_title
            && commit_message == other.commit_message
        ;
    }
}
