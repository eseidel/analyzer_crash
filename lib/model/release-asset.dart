import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/release-asset.dart';
import 'package:github/model/release-asset_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/release-asset.dart';
import 'package:github/model/release-asset_state.dart';
import 'package:github/model/nullable-simple-user.dart';
@immutable
class Release-asset {
    Release-asset(
        { required this.url,required this.browser_download_url,required this.id,required this.node_id,required this.name,required this.label,required this.state,required this.content_type,required this.size,required this.digest,required this.download_count,required this.created_at,required this.updated_at,required this.uploader,
         }
    );

    factory Release-asset.fromJson(Map<String, dynamic>
        json) {
        return Release-asset(
            url: json['url'] as String ,
            browser_download_url: json['browser_download_url'] as String ,
            id: (json['id'] as int).toInt() ,
            node_id: json['node_id'] as String ,
            name: json['name'] as String ,
            label: json['label'] as String ,
            state: Release-assetState.fromJson(json['state'] as String) ,
            content_type: json['content_type'] as String ,
            size: (json['size'] as int).toInt() ,
            digest: json['digest'] as String ,
            download_count: (json['download_count'] as int).toInt() ,
            created_at: DateTime.parse(json['created_at'] as String),
            updated_at: DateTime.parse(json['updated_at'] as String),
            uploader: Nullable-simple-user.fromJson(json['uploader'] as Map<String, dynamic>) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Release-asset? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Release-asset.fromJson(json);
    }

    final String  url;
    final String  browser_download_url;
    final int  id;
    final String  node_id;
    final String  name;
    final String  label;
    final Release-assetState  state;
    final String  content_type;
    final int  size;
    final String  digest;
    final int  download_count;
    final DateTime  created_at;
    final DateTime  updated_at;
    final Nullable-simple-user  uploader;


    Map<String, dynamic> toJson() {
        return {
            'url': url,
            'browser_download_url': browser_download_url,
            'id': id,
            'node_id': node_id,
            'name': name,
            'label': label,
            'state': state.toJson(),
            'content_type': content_type,
            'size': size,
            'digest': digest,
            'download_count': download_count,
            'created_at': created_at.toIso8601String(),
            'updated_at': updated_at.toIso8601String(),
            'uploader': uploader.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          url,
          browser_download_url,
          id,
          node_id,
          name,
          label,
          state,
          content_type,
          size,
          digest,
          download_count,
          created_at,
          updated_at,
          uploader,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Release-asset
            && url == other.url
            && browser_download_url == other.browser_download_url
            && id == other.id
            && node_id == other.node_id
            && name == other.name
            && label == other.label
            && state == other.state
            && content_type == other.content_type
            && size == other.size
            && digest == other.digest
            && download_count == other.download_count
            && created_at == other.created_at
            && updated_at == other.updated_at
            && uploader == other.uploader
        ;
    }
}
