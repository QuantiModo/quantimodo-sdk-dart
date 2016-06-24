part of api;


@Entity()
class Connector {
  /* Connector ID number */
  @Property(name: 'id')
  int id = null;
  
/* Connector lowercase system name */
  @Property(name: 'name')
  String name = null;
  
/* Connector pretty display name */
  @Property(name: 'displayName')
  String displayName = null;
  
/* URL to the image of the connector logo */
  @Property(name: 'image')
  String image = null;
  
/* URL to a site where one can get this device or application */
  @Property(name: 'getItUrl')
  String getItUrl = null;
  
/* True if the authenticated user has this connector enabled */
  @Property(name: 'connected')
  String connected = null;
  
/* URL and parameters used when connecting to a service */
  @Property(name: 'connectInstructions')
  String connectInstructions = null;
  
/* Epoch timestamp of last sync */
  @Property(name: 'lastUpdate')
  int lastUpdate = null;
  
/* Number of measurements obtained during latest update */
  @Property(name: 'totalMeasurementsInLastUpdate')
  int totalMeasurementsInLastUpdate = null;
  
/* True if user has no measurements for this connector */
  @Property(name: 'noDataYet')
  bool noDataYet = null;
  
  Connector();

  @override
  String toString()  {
    return 'Connector[id=$id, name=$name, displayName=$displayName, image=$image, getItUrl=$getItUrl, connected=$connected, connectInstructions=$connectInstructions, lastUpdate=$lastUpdate, totalMeasurementsInLastUpdate=$totalMeasurementsInLastUpdate, noDataYet=$noDataYet, ]';
  }

}

