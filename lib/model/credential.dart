part of api;


@Entity()
class Credential {
  /* ID of user that owns this credential */
  @Property(name: 'user_id')
  int userId = null;
  
/* The id for the connector data source from which the credential was obtained */
  @Property(name: 'connector_id')
  int connectorId = null;
  
/* Attribute name such as token, userid, username, or password */
  @Property(name: 'attr_key')
  String attrKey = null;
  
/* Encrypted value for the attribute specified */
  @Property(name: 'attr_value')
  String attrValue = null;
  
/* When the record was first created. Use ISO 8601 datetime format */
  @Property(name: 'created_at')
  DateTime createdAt = null;
  
/* When the record in the database was last updated. Use ISO 8601 datetime format */
  @Property(name: 'updated_at')
  DateTime updatedAt = null;
  
  Credential();

  @override
  String toString()  {
    return 'Credential[userId=$userId, connectorId=$connectorId, attrKey=$attrKey, attrValue=$attrValue, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

}

