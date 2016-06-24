part of api;


@Entity()
class Update {
  /* id */
  @Property(name: 'id')
  int id = null;
  
/* user_id */
  @Property(name: 'user_id')
  int userId = null;
  
/* connector_id */
  @Property(name: 'connector_id')
  int connectorId = null;
  
/* number_of_measurements */
  @Property(name: 'number_of_measurements')
  int numberOfMeasurements = null;
  
/* success */
  @Property(name: 'success')
  bool success = null;
  
/* message */
  @Property(name: 'message')
  String message = null;
  
/* When the record was first created. Use ISO 8601 datetime format */
  @Property(name: 'created_at')
  DateTime createdAt = null;
  
/* When the record in the database was last updated. Use ISO 8601 datetime format */
  @Property(name: 'updated_at')
  DateTime updatedAt = null;
  
  Update();

  @override
  String toString()  {
    return 'Update[id=$id, userId=$userId, connectorId=$connectorId, numberOfMeasurements=$numberOfMeasurements, success=$success, message=$message, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

}

