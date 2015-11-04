part of api;


@Entity()
class Connector {
  /* Connector ID number */
  int id = null;
  
  /* Connector lowercase system name */
  String name = null;
  
  /* Connector pretty display name */
  String displayName = null;
  
  /* URL to the image of the connector logo */
  String image = null;
  
  /* URL to a site where one can get this device or application */
  String getItUrl = null;
  
  /* Short description */
  String shortDescription = null;
  
  /* Long description */
  String longDescription = null;
  
  /* enabled */
  bool enabled = null;
  
  /* oauth */
  bool oauth = null;
  
  
  Connector();

  @override
  String toString()  {
    return 'Connector[id=$id, name=$name, displayName=$displayName, image=$image, getItUrl=$getItUrl, shortDescription=$shortDescription, longDescription=$longDescription, enabled=$enabled, oauth=$oauth, ]';
  }

}

