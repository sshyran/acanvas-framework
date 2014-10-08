part of stagexl_rockdot;

class StateEvents {

// expects nothing
  static const INIT = "StateEvents.INIT";

  // expects URL String, e.g. "/"
  static const ADDRESS_SET = "StateEvents.ADDRESS_SET";

  //expects PageVO
  static const STATE_VO_SET = "StateEvents.STATE_VO_CHANGE";

  //expects nothing
  static const STATE_VO_BACK = "StateEvents.STATE_VO_BACK";

  //expects nothing
  static const STATE_VO_FORWARD = "StateEvents.STATE_VO_FORWARD";


  /* The following Events are used internally. See config/docs/model/GetAddressSequence.png */

  // expects URL String, e.g. "/"
  static const STATE_REQUEST = "StateEvents.STATE_REQUEST";
  // expects VOStatePageChange
  static const STATE_CHANGE = "StateEvents.STATE_CHANGE";
  // expects PageVO
  static const STATE_PARAMS_CHANGE = "StateEvents.STATE_PARAMS_CHANGE";

}
