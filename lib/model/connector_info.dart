part of api;


@Entity()
class ConnectorInfo {
  /* Connector ID number */
  @Property(name: 'id')
  int id = null;
  
/* True if the authenticated user has this connector enabled */
  @Property(name: 'connected')
  bool connected = null;
  
/* Error message. Empty if connected. */
  @Property(name: 'error')
  String error = null;
  

  @Property(name: 'history')
  List<ConnectorInfoHistoryItem> history = [];
  
  ConnectorInfo();

  @override
  String toString()  {
    return 'ConnectorInfo[id=$id, connected=$connected, error=$error, history=$history, ]';
  }

}

