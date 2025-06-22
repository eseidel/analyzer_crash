import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/marketplace-listing-plan.dart';
import 'package:github/model/marketplace-listing-plan_price_model.dart';
import 'package:github/model/marketplace-listing-plan.dart';
import 'package:github/model/marketplace-listing-plan_price_model.dart';
@immutable
class Marketplace-listing-plan {
    Marketplace-listing-plan(
        { required this.url,required this.accounts_url,required this.id,required this.number,required this.name,required this.description,required this.monthly_price_in_cents,required this.yearly_price_in_cents,required this.price_model,required this.has_free_trial,required this.unit_name,required this.state, this.bullets = const [],
         }
    );

    factory Marketplace-listing-plan.fromJson(Map<String, dynamic>
        json) {
        return Marketplace-listing-plan(
            url: json['url'] as String ,
            accounts_url: json['accounts_url'] as String ,
            id: (json['id'] as int).toInt() ,
            number: (json['number'] as int).toInt() ,
            name: json['name'] as String ,
            description: json['description'] as String ,
            monthly_price_in_cents: (json['monthly_price_in_cents'] as int).toInt() ,
            yearly_price_in_cents: (json['yearly_price_in_cents'] as int).toInt() ,
            price_model: Marketplace-listing-planPriceModel.fromJson(json['price_model'] as String) ,
            has_free_trial: (json['has_free_trial'] as bool) ,
            unit_name: json['unit_name'] as String ,
            state: json['state'] as String ,
            bullets: (json['bullets'] as List).cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Marketplace-listing-plan? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Marketplace-listing-plan.fromJson(json);
    }

    final String  url;
    final String  accounts_url;
    final int  id;
    final int  number;
    final String  name;
    final String  description;
    final int  monthly_price_in_cents;
    final int  yearly_price_in_cents;
    final Marketplace-listing-planPriceModel  price_model;
    final bool  has_free_trial;
    final String  unit_name;
    final String  state;
    final List<String>  bullets;


    Map<String, dynamic> toJson() {
        return {
            'url': url,
            'accounts_url': accounts_url,
            'id': id,
            'number': number,
            'name': name,
            'description': description,
            'monthly_price_in_cents': monthly_price_in_cents,
            'yearly_price_in_cents': yearly_price_in_cents,
            'price_model': price_model.toJson(),
            'has_free_trial': has_free_trial,
            'unit_name': unit_name,
            'state': state,
            'bullets': bullets,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          url,
          accounts_url,
          id,
          number,
          name,
          description,
          monthly_price_in_cents,
          yearly_price_in_cents,
          price_model,
          has_free_trial,
          unit_name,
          state,
          bullets,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Marketplace-listing-plan
            && url == other.url
            && accounts_url == other.accounts_url
            && id == other.id
            && number == other.number
            && name == other.name
            && description == other.description
            && monthly_price_in_cents == other.monthly_price_in_cents
            && yearly_price_in_cents == other.yearly_price_in_cents
            && price_model == other.price_model
            && has_free_trial == other.has_free_trial
            && unit_name == other.unit_name
            && state == other.state
            && listsEqual(bullets, other.bullets)
        ;
    }
}
