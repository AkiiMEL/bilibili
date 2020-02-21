import 'package:flutter/material.dart';

import '../utils/bb_common.dart';
import '../compenents/bb_network_image.dart';
import '../models/bb_channel.dart';

class BBChannelListEntryItemView extends StatelessWidget {
  final Channel channel;
  BBChannelListEntryItemView({this.channel});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: defaultMargin,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                _buildAuthorizedMask(context, channel),
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      ClipOval(
                        child: BBNetworkImage(
                          channel.cover,
                          placeholder: Images.channel,
                        ),
                      ),
                      _buildExtraMsg(channel),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Text(
          channel.title ?? "",
          style: Theme.of(context).textTheme.subtitle,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }

  Widget _buildExtraMsg(Channel channel) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        channel.coverLabel != null
            ? Text(
                channel.coverLabel,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                ),
              )
            : SizedBox.shrink(),
        channel.coverLabel2 != null
            ? Text(
                channel.coverLabel2,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 8.0,
                  decoration: TextDecoration.none,
                ),
              )
            : SizedBox.shrink(),
      ],
    );
  }

  Widget _buildAuthorizedMask(BuildContext context, Channel channel) {
    return channel.officialVerify == 1
        ? Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context).accentColor,
                width: 1.5,
              ),
              shape: BoxShape.circle,
            ),
          )
        : SizedBox.shrink();
  }
}
