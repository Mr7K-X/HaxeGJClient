package gamejolt.types;

/**
 * An enum of every single command currently available to request to GameJolt API.
 */
enum RequestType {
	// DATA
	DataFetch(key:String, fromUser:Bool);
	DataGetKeys(fromUser:Bool, ?pattern:String);
	DataRemove(key:String, fromUser:Bool);
	DataSet(key:String, data:String, toUser:Bool);
	DataUpdate(key:String, operation:DataUpdateType, toUser:Bool);

	// USER
	UserAuth;
	UserFetch(userOrIDList:Array<String>);

	// SESSION
	SessionOpen;
	SessionPing(active:Bool);
	SessionCheck;
	SessionClose;

	// SCORES
	ScoresAdd(score:String, sort:Int, ?extra_data:String, ?table_id:Int);
	ScoresGetRank(sort:Int, ?table_id:Int);
	ScoresFetch(fromUser:Bool, ?table_id:Int, ?limit:Int, ?betterThan:Int);
	ScoresTables;

	// TROPHIES
	TrophiesFetch(?achieved:Bool, ?trophy_id:Int);
	TrophiesAdd(trophy_id:Int);
	TrophiesRemove(trophy_id:Int);

	// OTHERS
	Batch(parallel:Bool, breakOnError:Bool, requests:Array<RequestType>);
	Friends;
	Time;
}
