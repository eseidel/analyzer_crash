import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/page-deployment.dart';
import 'package:github/model/page-deployment_id.dart';
import 'package:github/model/page-deployment.dart';
import 'package:github/model/page-deployment_id.dart';
@immutable
class Page-deployment {
    Page-deployment(
        { required this.id,required this.status_url,required this.page_url, this.preview_url,
         }
    );

    factory Page-deployment.fromJson(Map<String, dynamic>
        json) {
        return Page-deployment(
            id: Page-deploymentId.fromJson(json['id'] as dynamic),
            status_url: json['status_url'] as String ,
            page_url: json['page_url'] as String ,
            preview_url: json['preview_url'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Page-deployment? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Page-deployment.fromJson(json);
    }

    final Page-deploymentId  id;
    final String  status_url;
    final String  page_url;
    final  String? preview_url;


    Map<String, dynamic> toJson() {
        return {
            'id': id.toJson(),
            'status_url': status_url,
            'page_url': page_url,
            'preview_url': preview_url,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          status_url,
          page_url,
          preview_url,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Page-deployment
            && id == other.id
            && status_url == other.status_url
            && page_url == other.page_url
            && preview_url == other.preview_url
        ;
    }
}
