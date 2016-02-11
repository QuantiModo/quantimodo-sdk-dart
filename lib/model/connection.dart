part of api;


@Entity()
class Connection {
  /* id */
  int id = null;
  
  /* ID of user that owns this correlation */
  int userId = null;
  
  /* The id for the connector data source for which the connection is connected */
  int connectorId = null;
  
  /* Indicates whether a connector is currently connected to a service for a user. */
  String connectStatus = null;
  
  /* Error message if there is a problem with authorizing this connection. */
  String connectError = null;
  
  /* Time at which an update was requested by a user. */
  DateTime updateRequestedAt = null;
  
  /* Indicates whether a connector is currently updated. */
  String updateStatus = null;
  
  /* Indicates if there was an error during the update. */
  String updateError = null;
  
  /* The time at which the connector was last successfully updated. */
  DateTime lastSuccessfulUpdatedAt = null;
  
  /* When the record was first created. Use ISO 8601 datetime format */
  DateTime createdAt = null;
  
  /* When the record in the database was last updated. Use ISO 8601 datetime format */
  DateTime updatedAt = null;
  
  
  Connection();

  @override
  String toString()  {
    return 'Connection[id=$id, userId=$userId, connectorId=$connectorId, connectStatus=$connectStatus, connectError=$connectError, updateRequestedAt=$updateRequestedAt, updateStatus=$updateStatus, updateError=$updateError, lastSuccessfulUpdatedAt=$lastSuccessfulUpdatedAt, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

}

