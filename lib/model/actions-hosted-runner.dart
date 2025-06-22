import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions-hosted-runner.dart';
import 'package:github/model/nullable-actions-hosted-runner-pool-image.dart';
import 'package:github/model/nullable-actions-hosted-runner-pool-image_source.dart';
import 'package:github/model/actions-hosted-runner-machine-spec.dart';
import 'package:github/model/actions-hosted-runner_status.dart';
import 'package:github/model/public-ip.dart';
import 'package:github/model/actions-hosted-runner.dart';
import 'package:github/model/nullable-actions-hosted-runner-pool-image.dart';
import 'package:github/model/nullable-actions-hosted-runner-pool-image_source.dart';
import 'package:github/model/actions-hosted-runner-machine-spec.dart';
import 'package:github/model/actions-hosted-runner_status.dart';
import 'package:github/model/public-ip.dart';
@immutable
class Actions-hosted-runner {
    Actions-hosted-runner(
        { required this.id,required this.name, this.runner_group_id,required this.image_details,required this.machine_size_details,required this.status,required this.platform, this.maximum_runners = 10,required this.public_ip_enabled, this.public_ips = const [], this.last_active_on,
         }
    );

    factory Actions-hosted-runner.fromJson(Map<String, dynamic>
        json) {
        return Actions-hosted-runner(
            id: (json['id'] as int).toInt() ,
            name: json['name'] as String ,
            runner_group_id: (json['runner_group_id'] as int?).toInt() ,
            image_details: Nullable-actions-hosted-runner-pool-image.fromJson(json['image_details'] as Map<String, dynamic>) ,
            machine_size_details: Actions-hosted-runner-machine-spec.fromJson(json['machine_size_details'] as Map<String, dynamic>) ,
            status: Actions-hosted-runnerStatus.fromJson(json['status'] as String) ,
            platform: json['platform'] as String ,
            maximum_runners: (json['maximum_runners'] as int?).toInt() ,
            public_ip_enabled: (json['public_ip_enabled'] as bool) ,
            public_ips: (json['public_ips'] as List?)?.map<Public-ip>((e) => Public-ip.fromJson(e as Map<String, dynamic>) ).toList() ,
            last_active_on: maybeParseDateTime(json['last_active_on'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions-hosted-runner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Actions-hosted-runner.fromJson(json);
    }

    final int  id;
    final String  name;
    final  int? runner_group_id;
    final Nullable-actions-hosted-runner-pool-image  image_details;
    final Actions-hosted-runner-machine-spec  machine_size_details;
    final Actions-hosted-runnerStatus  status;
    final String  platform;
    final  int? maximum_runners;
    final bool  public_ip_enabled;
    final  List<Public-ip>? public_ips;
    final  DateTime? last_active_on;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'name': name,
            'runner_group_id': runner_group_id,
            'image_details': image_details.toJson(),
            'machine_size_details': machine_size_details.toJson(),
            'status': status.toJson(),
            'platform': platform,
            'maximum_runners': maximum_runners,
            'public_ip_enabled': public_ip_enabled,
            'public_ips': public_ips?.map((e) => e.toJson()).toList(),
            'last_active_on': last_active_on?.toIso8601String(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          name,
          runner_group_id,
          image_details,
          machine_size_details,
          status,
          platform,
          maximum_runners,
          public_ip_enabled,
          public_ips,
          last_active_on,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Actions-hosted-runner
            && id == other.id
            && name == other.name
            && runner_group_id == other.runner_group_id
            && image_details == other.image_details
            && machine_size_details == other.machine_size_details
            && status == other.status
            && platform == other.platform
            && maximum_runners == other.maximum_runners
            && public_ip_enabled == other.public_ip_enabled
            && listsEqual(public_ips, other.public_ips)
            && last_active_on == other.last_active_on
        ;
    }
}
