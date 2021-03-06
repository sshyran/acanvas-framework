library acanvas_framework.facebook;

import 'dart:html' as html;
import 'dart:js' as js;
import 'dart:typed_data';
import 'dart:convert';

/* Acanvas depends on StageXL */
import 'package:stagexl/stagexl.dart' show BitmapData;
import 'package:acanvas_commons/acanvas_commons.dart'
    show AcSignal, CompositeCommandKind, Assert, OperationEvent;
import 'package:acanvas_spring/acanvas_spring.dart'
    show IObjectPostProcessor, IObjectFactory;

import 'core.dart';
import 'core.plugin.state.dart' show StateMessageVO;
import 'plugin.io.dart' show DataRetrieveVO;
import 'plugin.ugc.dart' show UGCEvents;

part 'plugin/facebook/facebook_plugin.dart';
part 'plugin/facebook/command/abstract_fbcommand.dart';
part 'plugin/facebook/command/fbfriends_get_command.dart';
part 'plugin/facebook/command/fbfriends_get_info_command.dart';
part 'plugin/facebook/command/fbinit_browser_command.dart';
part 'plugin/facebook/command/fblogin_browser_command.dart';
part 'plugin/facebook/command/fblogout_browser_command.dart';
part 'plugin/facebook/command/fbphoto_get_albums_command.dart';
part 'plugin/facebook/command/fbphoto_get_from_album_command.dart';
part 'plugin/facebook/command/fbphoto_upload_command.dart';
part 'plugin/facebook/command/fbprompt_invite_browser_command.dart';
part 'plugin/facebook/command/fbprompt_share_command.dart';
part 'plugin/facebook/command/fbtest_command.dart';
part 'plugin/facebook/command/fbuser_get_info_command.dart';
part 'plugin/facebook/command/fbuser_get_info_permissions_command.dart';
part 'plugin/facebook/command/event/fbevents.dart';
part 'plugin/facebook/command/event/vo/facebook_login_vo.dart';
part 'plugin/facebook/command/event/vo/vofbinvite.dart';
part 'plugin/facebook/command/event/vo/vofbphoto_upload.dart';
part 'plugin/facebook/command/event/vo/vofbshare.dart';
part 'plugin/facebook/inject/fbmodel_injector.dart';
part 'plugin/facebook/inject/i_fbmodel_aware.dart';
part 'plugin/facebook/model/fbconstants.dart';
part 'plugin/facebook/model/fbmodel.dart';
part 'plugin/facebook/model/vo/fbalbum_vo.dart';
part 'plugin/facebook/model/vo/fbcomment_vo.dart';
part 'plugin/facebook/model/vo/fbphoto_vo.dart';
part 'plugin/facebook/model/vo/fbuser_vo.dart';
