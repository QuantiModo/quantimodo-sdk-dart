part of api;


@Entity()
class Connection {
  /* id */
  int id = null;
  
  /* user_id */
  int userId = null;
  
  /* connector_id */
  int connectorId = null;
  
  /* connect_status */
  String connectStatus = null;
  
  /* connect_error */
  String connectError = null;
  
  /* update_requested_at */
  DateTime updateRequestedAt = null;
  
  /* update_status */
  String updateStatus = null;
  
  /* update_error */
  String updateError = null;
  
  /* last_successful_updated_at */
  DateTime lastSuccessfulUpdatedAt = null;
  
  /* created_at */
  DateTime createdAt = null;
  
  /* updated_at */
  DateTime updatedAt = null;
  
  
  Connection();

  @override
  String toString()  {
    return 'Connection[id=$id, userId=$userId, connectorId=$connectorId, connectStatus=$connectStatus, connectError=$connectError, updateRequestedAt=$updateRequestedAt, updateStatus=$updateStatus, updateError=$updateError, lastSuccessfulUpdatedAt=$lastSuccessfulUpdatedAt, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

}

