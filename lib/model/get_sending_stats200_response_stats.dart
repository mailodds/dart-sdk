//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetSendingStats200ResponseStats {
  /// Returns a new [GetSendingStats200ResponseStats] instance.
  GetSendingStats200ResponseStats({
    this.period,
    this.sent,
    this.delivered,
    this.bounced,
    this.deferred_,
    this.failed,
    this.openedTotal,
    this.openedUnique,
    this.clickedTotal,
    this.clickedUnique,
    this.unsubscribed,
    this.deliveryRate,
    this.openRate,
    this.clickRate,
    this.botOpens,
    this.humanOpens,
    this.botOpenPct,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? period;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sent;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? delivered;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? bounced;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? deferred_;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? failed;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? openedTotal;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? openedUnique;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? clickedTotal;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? clickedUnique;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? unsubscribed;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? deliveryRate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? openRate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? clickRate;

  /// Opens from known bots/scanners
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? botOpens;

  /// Verified human opens
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? humanOpens;

  /// Percentage of opens from bots
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? botOpenPct;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetSendingStats200ResponseStats &&
    other.period == period &&
    other.sent == sent &&
    other.delivered == delivered &&
    other.bounced == bounced &&
    other.deferred_ == deferred_ &&
    other.failed == failed &&
    other.openedTotal == openedTotal &&
    other.openedUnique == openedUnique &&
    other.clickedTotal == clickedTotal &&
    other.clickedUnique == clickedUnique &&
    other.unsubscribed == unsubscribed &&
    other.deliveryRate == deliveryRate &&
    other.openRate == openRate &&
    other.clickRate == clickRate &&
    other.botOpens == botOpens &&
    other.humanOpens == humanOpens &&
    other.botOpenPct == botOpenPct;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (period == null ? 0 : period!.hashCode) +
    (sent == null ? 0 : sent!.hashCode) +
    (delivered == null ? 0 : delivered!.hashCode) +
    (bounced == null ? 0 : bounced!.hashCode) +
    (deferred_ == null ? 0 : deferred_!.hashCode) +
    (failed == null ? 0 : failed!.hashCode) +
    (openedTotal == null ? 0 : openedTotal!.hashCode) +
    (openedUnique == null ? 0 : openedUnique!.hashCode) +
    (clickedTotal == null ? 0 : clickedTotal!.hashCode) +
    (clickedUnique == null ? 0 : clickedUnique!.hashCode) +
    (unsubscribed == null ? 0 : unsubscribed!.hashCode) +
    (deliveryRate == null ? 0 : deliveryRate!.hashCode) +
    (openRate == null ? 0 : openRate!.hashCode) +
    (clickRate == null ? 0 : clickRate!.hashCode) +
    (botOpens == null ? 0 : botOpens!.hashCode) +
    (humanOpens == null ? 0 : humanOpens!.hashCode) +
    (botOpenPct == null ? 0 : botOpenPct!.hashCode);

  @override
  String toString() => 'GetSendingStats200ResponseStats[period=$period, sent=$sent, delivered=$delivered, bounced=$bounced, deferred_=$deferred_, failed=$failed, openedTotal=$openedTotal, openedUnique=$openedUnique, clickedTotal=$clickedTotal, clickedUnique=$clickedUnique, unsubscribed=$unsubscribed, deliveryRate=$deliveryRate, openRate=$openRate, clickRate=$clickRate, botOpens=$botOpens, humanOpens=$humanOpens, botOpenPct=$botOpenPct]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.period != null) {
      json[r'period'] = this.period;
    } else {
      json[r'period'] = null;
    }
    if (this.sent != null) {
      json[r'sent'] = this.sent;
    } else {
      json[r'sent'] = null;
    }
    if (this.delivered != null) {
      json[r'delivered'] = this.delivered;
    } else {
      json[r'delivered'] = null;
    }
    if (this.bounced != null) {
      json[r'bounced'] = this.bounced;
    } else {
      json[r'bounced'] = null;
    }
    if (this.deferred_ != null) {
      json[r'deferred'] = this.deferred_;
    } else {
      json[r'deferred'] = null;
    }
    if (this.failed != null) {
      json[r'failed'] = this.failed;
    } else {
      json[r'failed'] = null;
    }
    if (this.openedTotal != null) {
      json[r'opened_total'] = this.openedTotal;
    } else {
      json[r'opened_total'] = null;
    }
    if (this.openedUnique != null) {
      json[r'opened_unique'] = this.openedUnique;
    } else {
      json[r'opened_unique'] = null;
    }
    if (this.clickedTotal != null) {
      json[r'clicked_total'] = this.clickedTotal;
    } else {
      json[r'clicked_total'] = null;
    }
    if (this.clickedUnique != null) {
      json[r'clicked_unique'] = this.clickedUnique;
    } else {
      json[r'clicked_unique'] = null;
    }
    if (this.unsubscribed != null) {
      json[r'unsubscribed'] = this.unsubscribed;
    } else {
      json[r'unsubscribed'] = null;
    }
    if (this.deliveryRate != null) {
      json[r'delivery_rate'] = this.deliveryRate;
    } else {
      json[r'delivery_rate'] = null;
    }
    if (this.openRate != null) {
      json[r'open_rate'] = this.openRate;
    } else {
      json[r'open_rate'] = null;
    }
    if (this.clickRate != null) {
      json[r'click_rate'] = this.clickRate;
    } else {
      json[r'click_rate'] = null;
    }
    if (this.botOpens != null) {
      json[r'bot_opens'] = this.botOpens;
    } else {
      json[r'bot_opens'] = null;
    }
    if (this.humanOpens != null) {
      json[r'human_opens'] = this.humanOpens;
    } else {
      json[r'human_opens'] = null;
    }
    if (this.botOpenPct != null) {
      json[r'bot_open_pct'] = this.botOpenPct;
    } else {
      json[r'bot_open_pct'] = null;
    }
    return json;
  }

  /// Returns a new [GetSendingStats200ResponseStats] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetSendingStats200ResponseStats? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetSendingStats200ResponseStats[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetSendingStats200ResponseStats[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetSendingStats200ResponseStats(
        period: mapValueOfType<String>(json, r'period'),
        sent: mapValueOfType<int>(json, r'sent'),
        delivered: mapValueOfType<int>(json, r'delivered'),
        bounced: mapValueOfType<int>(json, r'bounced'),
        deferred_: mapValueOfType<int>(json, r'deferred'),
        failed: mapValueOfType<int>(json, r'failed'),
        openedTotal: mapValueOfType<int>(json, r'opened_total'),
        openedUnique: mapValueOfType<int>(json, r'opened_unique'),
        clickedTotal: mapValueOfType<int>(json, r'clicked_total'),
        clickedUnique: mapValueOfType<int>(json, r'clicked_unique'),
        unsubscribed: mapValueOfType<int>(json, r'unsubscribed'),
        deliveryRate: num.parse('${json[r'delivery_rate']}'),
        openRate: num.parse('${json[r'open_rate']}'),
        clickRate: num.parse('${json[r'click_rate']}'),
        botOpens: mapValueOfType<int>(json, r'bot_opens'),
        humanOpens: mapValueOfType<int>(json, r'human_opens'),
        botOpenPct: num.parse('${json[r'bot_open_pct']}'),
      );
    }
    return null;
  }

  static List<GetSendingStats200ResponseStats> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetSendingStats200ResponseStats>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetSendingStats200ResponseStats.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetSendingStats200ResponseStats> mapFromJson(dynamic json) {
    final map = <String, GetSendingStats200ResponseStats>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetSendingStats200ResponseStats.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetSendingStats200ResponseStats-objects as value to a dart map
  static Map<String, List<GetSendingStats200ResponseStats>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetSendingStats200ResponseStats>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetSendingStats200ResponseStats.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

