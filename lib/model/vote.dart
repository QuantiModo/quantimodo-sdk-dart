part of api;


@Entity()
class Vote {
  /* id */
  int id = null;
  
  /* client_id */
  String clientId = null;
  
  /* ID of User */
  int userId = null;
  
  /* ID of cause variable */
  int causeId = null;
  
  /* ID of effect variable */
  int effectId = null;
  
  /* Value of Vote */
  int value = null;
  
  /* created_at */
  DateTime createdAt = null;
  
  /* updated_at */
  DateTime updatedAt = null;
  
  
  Vote();

  @override
  String toString()  {
    return 'Vote[id=$id, clientId=$clientId, userId=$userId, causeId=$causeId, effectId=$effectId, value=$value, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

}

