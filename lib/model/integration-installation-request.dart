import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/integration-installation-request.dart';
import 'package:github/model/integration-installation-request_account.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/integration-installation-request.dart';
import 'package:github/model/integration-installation-request_account.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/simple-user.dart';
@immutable
class Integration-installation-request {
    Integration-installation-request(
        { required this.id, this.node_id,required this.account,required this.requester,required this.created_at,
         }
    );

    factory Integration-installation-request.fromJson(Map<String, dynamic>
        json) {
        return Integration-installation-request(
            id: (json['id'] as int).toInt() ,
            node_id: json['node_id'] as String? ,
            account: Integration-installation-requestAccount.fromJson(json['account'] as dynamic),
            requester: Simple-user.fromJson(json['requester'] as Map<String, dynamic>) ,
            created_at: DateTime.parse(json['created_at'] as String),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Integration-installation-request? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Integration-installation-request.fromJson(json);
    }

    final int  id;
    final  String? node_id;
    final Integration-installation-requestAccount  account;
    final Simple-user  requester;
    final DateTime  created_at;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'node_id': node_id,
            'account': account.toJson(),
            'requester': requester.toJson(),
            'created_at': created_at.toIso8601String(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          node_id,
          account,
          requester,
          created_at,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Integration-installation-request
            && id == other.id
            && node_id == other.node_id
            && account == other.account
            && requester == other.requester
            && created_at == other.created_at
        ;
    }
}
