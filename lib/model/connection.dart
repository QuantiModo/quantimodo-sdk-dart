part of api;


@Entity()
class Connection {
  /* id */
  @Property(name: 'id')
  int id = null;
  
/* ID of user that owns this correlation */
  @Property(name: 'user_id')
  int userId = null;
  
/* The id for the connector data source for which the connection is connected */
  @Property(name: 'connector_id')
  int connectorId = null;
  
/* Indicates whether a connector is currently connected to a service for a user. */
  @Property(name: 'connect_status')
  String connectStatus = null;
  
/* Error message if there is a problem with authorizing this connection. */
  @Property(name: 'connect_error')
  String connectError = null;
  
/* Time at which an update was requested by a user. */
  @Property(name: 'update_requested_at')
  DateTime updateRequestedAt = null;
  
/* Indicates whether a connector is currently updated. */
  @Property(name: 'update_status')
  String updateStatus = null;
  
/* Indicates if there was an error during the update. */
  @Property(name: 'update_error')
  String updateError = null;
  
/* The time at which the connector was last successfully updated. */
  @Property(name: 'last_successful_updated_at')
  DateTime lastSuccessfulUpdatedAt = null;
  
/* When the record was first created. Use ISO 8601 datetime format */
  @Property(name: 'created_at')
  DateTime createdAt = null;
  
/* When the record in the database was last updated. Use ISO 8601 datetime format */
  @Property(name: 'updated_at')
  DateTime updatedAt = null;
  
  Connection();

  @override
  String toString()  {
    return 'Connection[id=$id, userId=$userId, connectorId=$connectorId, connectStatus=$connectStatus, connectError=$connectError, updateRequestedAt=$updateRequestedAt, updateStatus=$updateStatus, updateError=$updateError, lastSuccessfulUpdatedAt=$lastSuccessfulUpdatedAt, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

}

