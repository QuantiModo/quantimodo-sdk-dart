part of api;


@Entity()
class Credential {
  /* ID of user that owns this credential */
  int userId = null;
  
  /* The id for the connector data source from which the credential was obtained */
  int connectorId = null;
  
  /* Attribute name such as token, userid, username, or password */
  String attrKey = null;
  
  /* Encrypted value for the attribute specified */
  String attrValue = null;
  
  /* When the record was first created. Use ISO 8601 datetime format */
  DateTime createdAt = null;
  
  /* When the record in the database was last updated. Use ISO 8601 datetime format */
  DateTime updatedAt = null;
  
  
  Credential();

  @override
  String toString()  {
    return 'Credential[userId=$userId, connectorId=$connectorId, attrKey=$attrKey, attrValue=$attrValue, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

}

