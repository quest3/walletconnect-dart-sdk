// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wc_session_request_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WCSessionRequestResponse _$WCSessionRequestResponseFromJson(
        Map<String, dynamic> json) =>
    WCSessionRequestResponse(
      approved: json['approved'] as bool? ?? false,
      chainId: const NullableIntConverter().fromJson(json['chainId']),
      accounts: (json['accounts'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      peerId: json['peerId'] as String?,
      peerMeta: json['peerMeta'] == null
          ? null
          : PeerMeta.fromJson(json['peerMeta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WCSessionRequestResponseToJson(
        WCSessionRequestResponse instance) =>
    <String, dynamic>{
      'approved': instance.approved,
      'chainId': const NullableIntConverter().toJson(instance.chainId),
      'accounts': instance.accounts,
      'peerId': instance.peerId,
      'peerMeta': instance.peerMeta?.toJson(),
    };
