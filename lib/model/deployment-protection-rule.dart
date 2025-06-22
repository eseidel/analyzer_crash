import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/deployment-protection-rule.dart';
import 'package:github/model/custom-deployment-rule-app.dart';
import 'package:github/model/deployment-protection-rule.dart';
import 'package:github/model/custom-deployment-rule-app.dart';
@immutable
class Deployment-protection-rule {
    Deployment-protection-rule(
        { required this.id,required this.node_id,required this.enabled,required this.app,
         }
    );

    factory Deployment-protection-rule.fromJson(Map<String, dynamic>
        json) {
        return Deployment-protection-rule(
            id: (json['id'] as int).toInt() ,
            node_id: json['node_id'] as String ,
            enabled: (json['enabled'] as bool) ,
            app: Custom-deployment-rule-app.fromJson(json['app'] as Map<String, dynamic>) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Deployment-protection-rule? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Deployment-protection-rule.fromJson(json);
    }

    final int  id;
    final String  node_id;
    final bool  enabled;
    final Custom-deployment-rule-app  app;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'node_id': node_id,
            'enabled': enabled,
            'app': app.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          node_id,
          enabled,
          app,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Deployment-protection-rule
            && id == other.id
            && node_id == other.node_id
            && enabled == other.enabled
            && app == other.app
        ;
    }
}
