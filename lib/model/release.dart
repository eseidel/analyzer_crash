import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/release.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/release-asset.dart';
import 'package:github/model/release-asset_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/release.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/release-asset.dart';
import 'package:github/model/release-asset_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/reaction-rollup.dart';
@immutable
class Release {
    Release(
        { required this.url,required this.html_url,required this.assets_url,required this.upload_url,required this.tarball_url,required this.zipball_url,required this.id,required this.node_id,required this.tag_name,required this.target_commitish,required this.name, this.body,required this.draft,required this.prerelease,required this.created_at,required this.published_at,required this.author, this.assets = const [], this.body_html, this.body_text, this.mentions_count, this.discussion_url, this.reactions,
         }
    );

    factory Release.fromJson(Map<String, dynamic>
        json) {
        return Release(
            url: json['url'] as String ,
            html_url: json['html_url'] as String ,
            assets_url: json['assets_url'] as String ,
            upload_url: json['upload_url'] as String ,
            tarball_url: json['tarball_url'] as String ,
            zipball_url: json['zipball_url'] as String ,
            id: (json['id'] as int).toInt() ,
            node_id: json['node_id'] as String ,
            tag_name: json['tag_name'] as String ,
            target_commitish: json['target_commitish'] as String ,
            name: json['name'] as String ,
            body: json['body'] as String? ,
            draft: (json['draft'] as bool) ,
            prerelease: (json['prerelease'] as bool) ,
            created_at: DateTime.parse(json['created_at'] as String),
            published_at: DateTime.parse(json['published_at'] as String),
            author: Simple-user.fromJson(json['author'] as Map<String, dynamic>) ,
            assets: (json['assets'] as List).map<Release-asset>((e) => Release-asset.fromJson(e as Map<String, dynamic>) ).toList() ,
            body_html: json['body_html'] as String? ,
            body_text: json['body_text'] as String? ,
            mentions_count: (json['mentions_count'] as int?).toInt() ,
            discussion_url: json['discussion_url'] as String? ,
            reactions: Reaction-rollup.maybeFromJson(json['reactions'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Release? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Release.fromJson(json);
    }

    final String  url;
    final String  html_url;
    final String  assets_url;
    final String  upload_url;
    final String  tarball_url;
    final String  zipball_url;
    final int  id;
    final String  node_id;
    final String  tag_name;
    final String  target_commitish;
    final String  name;
    final  String? body;
    final bool  draft;
    final bool  prerelease;
    final DateTime  created_at;
    final DateTime  published_at;
    final Simple-user  author;
    final List<Release-asset>  assets;
    final  String? body_html;
    final  String? body_text;
    final  int? mentions_count;
    final  String? discussion_url;
    final  Reaction-rollup? reactions;


    Map<String, dynamic> toJson() {
        return {
            'url': url,
            'html_url': html_url,
            'assets_url': assets_url,
            'upload_url': upload_url,
            'tarball_url': tarball_url,
            'zipball_url': zipball_url,
            'id': id,
            'node_id': node_id,
            'tag_name': tag_name,
            'target_commitish': target_commitish,
            'name': name,
            'body': body,
            'draft': draft,
            'prerelease': prerelease,
            'created_at': created_at.toIso8601String(),
            'published_at': published_at.toIso8601String(),
            'author': author.toJson(),
            'assets': assets.map((e) => e.toJson()).toList(),
            'body_html': body_html,
            'body_text': body_text,
            'mentions_count': mentions_count,
            'discussion_url': discussion_url,
            'reactions': reactions?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          url,
          html_url,
          assets_url,
          upload_url,
          tarball_url,
          zipball_url,
          id,
          node_id,
          tag_name,
          target_commitish,
          name,
          body,
          draft,
          prerelease,
          created_at,
          published_at,
          author,
          assets,
          body_html,
          body_text,
          mentions_count,
          discussion_url,
          reactions,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Release
            && url == other.url
            && html_url == other.html_url
            && assets_url == other.assets_url
            && upload_url == other.upload_url
            && tarball_url == other.tarball_url
            && zipball_url == other.zipball_url
            && id == other.id
            && node_id == other.node_id
            && tag_name == other.tag_name
            && target_commitish == other.target_commitish
            && name == other.name
            && body == other.body
            && draft == other.draft
            && prerelease == other.prerelease
            && created_at == other.created_at
            && published_at == other.published_at
            && author == other.author
            && listsEqual(assets, other.assets)
            && body_html == other.body_html
            && body_text == other.body_text
            && mentions_count == other.mentions_count
            && discussion_url == other.discussion_url
            && reactions == other.reactions
        ;
    }
}
