import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/protected-branch_block_creations.dart';
import 'package:github/model/protected-branch_block_creations.dart';
@immutable
class Protected-branchBlockCreations {
    Protected-branchBlockCreations(
        { required this.enabled,
         }
    );

    factory Protected-branchBlockCreations.fromJson(Map<String, dynamic>
        json) {
        return Protected-branchBlockCreations(
            enabled: (json['enabled'] as bool) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Protected-branchBlockCreations? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Protected-branchBlockCreations.fromJson(json);
    }

    final bool  enabled;


    Map<String, dynamic> toJson() {
        return {
            'enabled': enabled,
        };
    }

    @override
    int get hashCode =>
          enabled.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Protected-branchBlockCreations
            && enabled == other.enabled
        ;
    }
}
