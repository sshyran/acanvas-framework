part of acanvas_framework.facebook;

class AbstractFBCommand extends AcCommand implements IFBModelAware {
  FBModel _fbModel;

  void set fbModel(FBModel fbModel) {
    _fbModel = fbModel;
  }

  bool notLoggedIn(AcSignal event) {
    if (!_fbModel.userIsAuthenticated) {
      //If the Login went successful, execute this Event again.
      new AcSignal(FBEvents.USER_LOGIN, null, () {
        execute(event);
      }).dispatch();
      //For now, cancel this Event.
      return true;
    } else {
      //User logged in, all is peachy.
      return false;
    }
  }

  bool containsError(js.JsObject response) {
    if (response == null) {
      dispatchErrorEvent("User cancelled dialog");
      return true;
    } else if (response["error"] != null) {
      this.log.info(
          "FB Init did not produce a valid access token: {1} (code: {2}, type: {3})",
          [
            response["error"]["message"],
            response["error"]["code"],
            response["error"]["type"]
          ]);
      dispatchErrorEvent(response["error"]);
      return true;
    } else {
      return false;
    }
  }
}
