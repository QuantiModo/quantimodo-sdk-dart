part of api;


@Entity()
class Measurement {
  /* id */
  int id = null;
  
  /* ID of user that owns this measurement */
  int userId = null;
  
  /* client_id */
  String clientId = null;
  
  /* The id for the connector data source from which the measurement was obtained */
  int connectorId = null;
  
  /* ID of the variable for which we are creating the measurement records */
  int variableId = null;
  
  /* Application or device used to record the measurement values */
  int sourceId = null;
  
  /* Start Time for the measurement event. Use ISO 8601 */
  String startTime = null;
  
  /* The value of the measurement after conversion to the default unit for that variable */
  num value = null;
  
  /* The default unit for the variable */
  int unitId = null;
  
  /* Value of measurement as originally posted (before conversion to default unit) */
  num originalValue = null;
  
  /* Unit ID of measurement as originally submitted */
  int originalUnitId = null;
  
  /* Duration of the event being measurement in seconds */
  int duration = null;
  
  /* An optional note the user may include with their measurement */
  String note = null;
  
  /* Latitude at which the measurement was taken */
  num latitude = null;
  
  /* Longitude at which the measurement was taken */
  num longitude = null;
  
  /* location */
  String location = null;
  
  /* When the record was first created. Use ISO 8601 datetime format */
  DateTime createdAt = null;
  
  /* When the record in the database was last updated. Use ISO 8601 datetime format */
  DateTime updatedAt = null;
  
  /* error */
  String error = null;
  
  
  Measurement();

  @override
  String toString()  {
    return 'Measurement[id=$id, userId=$userId, clientId=$clientId, connectorId=$connectorId, variableId=$variableId, sourceId=$sourceId, startTime=$startTime, value=$value, unitId=$unitId, originalValue=$originalValue, originalUnitId=$originalUnitId, duration=$duration, note=$note, latitude=$latitude, longitude=$longitude, location=$location, createdAt=$createdAt, updatedAt=$updatedAt, error=$error, ]';
  }

}

