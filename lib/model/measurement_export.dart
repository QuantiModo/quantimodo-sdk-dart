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
  
  /* created_at */
  DateTime createdAt = null;
  
  /* updated_at */
  DateTime updatedAt = null;
  
  
  MeasurementExport();

  @override
  String toString()  {
    return 'MeasurementExport[id=$id, userId=$userId, status=$status, errorMessage=$errorMessage, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

}

