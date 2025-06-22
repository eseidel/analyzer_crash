import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/nullable-actions-hosted-runner-pool-image.dart';
import 'package:github/model/nullable-actions-hosted-runner-pool-image_source.dart';
import 'package:github/model/nullable-actions-hosted-runner-pool-image.dart';
import 'package:github/model/nullable-actions-hosted-runner-pool-image_source.dart';
@immutable
class Nullable-actions-hosted-runner-pool-image {
    Nullable-actions-hosted-runner-pool-image(
        { required this.id,required this.size_gb,required this.display_name,required this.source,
         }
    );

    factory Nullable-actions-hosted-runner-pool-image.fromJson(Map<String, dynamic>
        json) {
        return Nullable-actions-hosted-runner-pool-image(
            id: json['id'] as String ,
            size_gb: (json['size_gb'] as int).toInt() ,
            display_name: json['display_name'] as String ,
            source: Nullable-actions-hosted-runner-pool-imageSource.fromJson(json['source'] as String) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Nullable-actions-hosted-runner-pool-image? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Nullable-actions-hosted-runner-pool-image.fromJson(json);
    }

    final String  id;
    final int  size_gb;
    final String  display_name;
    final Nullable-actions-hosted-runner-pool-imageSource  source;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'size_gb': size_gb,
            'display_name': display_name,
            'source': source.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          size_gb,
          display_name,
          source,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Nullable-actions-hosted-runner-pool-image
            && id == other.id
            && size_gb == other.size_gb
            && display_name == other.display_name
            && source == other.source
        ;
    }
}
