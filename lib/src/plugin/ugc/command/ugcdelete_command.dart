part of stagexl_rockdot;






	 @retain
class UGCDeleteCommand extends AbstractUGCCommand {

		@override dynamic execute([RockdotEvent event=null])
		 {
			super.execute(event);
			amfOperation("UGCEndpoint.deleteItem", [_ugcModel.currentItemDAO.id]);
		}
	}

