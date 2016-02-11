part of api;


@Entity()
class Vote {
  /* id */
  int id = null;
  
  /* client_id */
  String clientId = null;
  
  /* ID of User */
  int userId = null;
  
  /* ID of the predictor variable */
  int causeId = null;
  
  /* ID of effect variable */
  int effectId = null;
  
  /* Value of Vote */
  int value = null;
  
  /* When the record was first created. Use ISO 8601 datetime format */
  DateTime createdAt = null;
  
  /* When the record in the database was last updated. Use ISO 8601 datetime format */
  DateTime updatedAt = null;
  
  
  Vote();

  @override
  String toString()  {
    return 'Vote[id=$id, clientId=$clientId, userId=$userId, causeId=$causeId, effectId=$effectId, value=$value, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

}

