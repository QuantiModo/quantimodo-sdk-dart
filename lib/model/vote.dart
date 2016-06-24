part of api;


@Entity()
class Vote {
  /* id */
  @Property(name: 'id')
  int id = null;
  
/* client_id */
  @Property(name: 'client_id')
  String clientId = null;
  
/* ID of User */
  @Property(name: 'user_id')
  int userId = null;
  
/* ID of the predictor variable */
  @Property(name: 'cause_id')
  int causeId = null;
  
/* ID of effect variable */
  @Property(name: 'effect_id')
  int effectId = null;
  
/* Value of Vote */
  @Property(name: 'value')
  int value = null;
  
/* When the record was first created. Use ISO 8601 datetime format */
  @Property(name: 'created_at')
  DateTime createdAt = null;
  
/* When the record in the database was last updated. Use ISO 8601 datetime format */
  @Property(name: 'updated_at')
  DateTime updatedAt = null;
  
  Vote();

  @override
  String toString()  {
    return 'Vote[id=$id, clientId=$clientId, userId=$userId, causeId=$causeId, effectId=$effectId, value=$value, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

}

