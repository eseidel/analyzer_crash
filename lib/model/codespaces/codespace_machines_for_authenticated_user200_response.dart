import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/codespaces/codespace_machines_for_authenticated_user200_response.dart';
import 'package:github/model/codespace-machine.dart';
import 'package:github/model/codespace-machine_prebuild_availability.dart';
import 'package:github/model/codespaces/codespace_machines_for_authenticated_user200_response.dart';
import 'package:github/model/codespace-machine.dart';
import 'package:github/model/codespace-machine_prebuild_availability.dart';
@immutable
class Codespaces&#x2F;codespaceMachinesForAuthenticatedUser200Response {
    Codespaces&#x2F;codespaceMachinesForAuthenticatedUser200Response(
        { required this.total_count, this.machines = const [],
         }
    );

    factory Codespaces&#x2F;codespaceMachinesForAuthenticatedUser200Response.fromJson(Map<String, dynamic>
        json) {
        return Codespaces&#x2F;codespaceMachinesForAuthenticatedUser200Response(
            total_count: (json['total_count'] as int).toInt() ,
            machines: (json['machines'] as List).map<Codespace-machine>((e) => Codespace-machine.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Codespaces&#x2F;codespaceMachinesForAuthenticatedUser200Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Codespaces&#x2F;codespaceMachinesForAuthenticatedUser200Response.fromJson(json);
    }

    final int  total_count;
    final List<Codespace-machine>  machines;


    Map<String, dynamic> toJson() {
        return {
            'total_count': total_count,
            'machines': machines.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          total_count,
          machines,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Codespaces&#x2F;codespaceMachinesForAuthenticatedUser200Response
            && total_count == other.total_count
            && listsEqual(machines, other.machines)
        ;
    }
}
