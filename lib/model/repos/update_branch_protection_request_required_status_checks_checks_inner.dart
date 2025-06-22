import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/update_branch_protection_request_required_status_checks_checks_inner.dart';
import 'package:github/model/repos/update_branch_protection_request_required_status_checks_checks_inner.dart';
@immutable
class Repos&#x2F;updateBranchProtectionRequestRequiredStatusChecksChecksInner {
    Repos&#x2F;updateBranchProtectionRequestRequiredStatusChecksChecksInner(
        { required this.context, this.app_id,
         }
    );

    factory Repos&#x2F;updateBranchProtectionRequestRequiredStatusChecksChecksInner.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;updateBranchProtectionRequestRequiredStatusChecksChecksInner(
            context: json['context'] as String ,
            app_id: (json['app_id'] as int?).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;updateBranchProtectionRequestRequiredStatusChecksChecksInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;updateBranchProtectionRequestRequiredStatusChecksChecksInner.fromJson(json);
    }

    final String  context;
    final  int? app_id;


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
        return other is Repos&#x2F;updateBranchProtectionRequestRequiredStatusChecksChecksInner
            && context == other.context
            && app_id == other.app_id
        ;
    }
}
