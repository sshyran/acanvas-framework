part of acanvas_framework.ugc;

class UGCGetLikersCommand extends AbstractUGCCommand {
  @override
  void execute([AcSignal event = null]) {
    super.execute(event);

    int currentImageID = (_ugcModel.currentItemDAO.id).toInt();
    UGCFilterVO vo = event.data;

    Map dto = {
      'id': currentImageID,
      'limitIndex': vo.nextToken,
      'limit': vo.limit
    };

    amfOperation("UGCEndpoint.getLikersOfItem", map: dto);
  }

  @override
  bool dispatchCompleteEvent([dynamic event = null]) {
    _ugcModel.currentItemDAO.likers = event.result;
    return super.dispatchCompleteEvent(event.result);
  }
}
