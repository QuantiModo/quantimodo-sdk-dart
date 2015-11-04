part of api;


@Entity()
class Credential {
  /* connector_id */
  int connectorId = null;
  
  /* attr_key */
  String attrKey = null;
  
  /* attr_value */
  String attrValue = null;
  
  /* created_at */
  DateTime createdAt = null;
  
  /* updated_at */
  DateTime updatedAt = null;
  
  
  Credential();

  @override
  String toString()  {
    return 'Credential[connectorId=$connectorId, attrKey=$attrKey, attrValue=$attrValue, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

}

