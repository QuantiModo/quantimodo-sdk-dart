part of api;


@Entity()
class Update {
  /* id */
  int id = null;
  
  /* user_id */
  int userId = null;
  
  /* connector_id */
  int connectorId = null;
  
  /* number_of_measurements */
  int numberOfMeasurements = null;
  
  /* success */
  bool success = null;
  
  /* message */
  String message = null;
  
  /* When the record was first created. Use ISO 8601 datetime format */
  DateTime createdAt = null;
  
  /* When the record in the database was last updated. Use ISO 8601 datetime format */
  DateTime updatedAt = null;
  
  
  Update();

  @override
  String toString()  {
    return 'Update[id=$id, userId=$userId, connectorId=$connectorId, numberOfMeasurements=$numberOfMeasurements, success=$success, message=$message, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

}

