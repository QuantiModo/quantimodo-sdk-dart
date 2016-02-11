part of api;


@Entity()
class Connector {
  /* Connector ID number */
  int id = null;
  
  /* Lowercase system name for the data source */
  String name = null;
  
  /* Pretty display name for the data source */
  String displayName = null;
  
  /* URL to the image of the connector logo */
  String image = null;
  
  /* URL to a site where one can get this device or application */
  String getItUrl = null;
  
  /* Short description of the service (such as the categories it tracks) */
  String shortDescription = null;
  
  /* Longer paragraph description of the data provider */
  String longDescription = null;
  
  /* Set to 1 if the connector should be returned when listing connectors */
  bool enabled = null;
  
  /* Set to 1 if the connector uses OAuth authentication as opposed to username/password */
  bool oauth = null;
  
  /* When the record was first created. Use ISO 8601 datetime format */
  DateTime createdAt = null;
  
  /* When the record in the database was last updated. Use ISO 8601 datetime format */
  DateTime updatedAt = null;
  
  
  Connector();

  @override
  String toString()  {
    return 'Connector[id=$id, name=$name, displayName=$displayName, image=$image, getItUrl=$getItUrl, shortDescription=$shortDescription, longDescription=$longDescription, enabled=$enabled, oauth=$oauth, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

}

