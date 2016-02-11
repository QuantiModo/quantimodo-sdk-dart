part of api;


@Entity()
class MeasurementExport {
  /* id */
  int id = null;
  
  /* ID of User */
  int userId = null;
  
  /* Status of Measurement Export */
  String status = null;
  
  /* Error message */
  String errorMessage = null;
  
  /* When the record was first created. Use ISO 8601 datetime format */
  DateTime createdAt = null;
  
  /* When the record in the database was last updated. Use ISO 8601 datetime format */
  DateTime updatedAt = null;
  
  
  MeasurementExport();

  @override
  String toString()  {
    return 'MeasurementExport[id=$id, userId=$userId, status=$status, errorMessage=$errorMessage, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

}

