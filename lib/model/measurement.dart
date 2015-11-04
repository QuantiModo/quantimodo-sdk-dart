part of api;


@Entity()
class Measurement {
  /* id */
  int id = null;
  
  /* ID of user that owns this measurement */
  int userId = null;
  
  /* client_id */
  String clientId = null;
  
  /* Connector ID */
  int connectorId = null;
  
  /* ID of the variable for which we are creating the measurement records */
  int variableId = null;
  
  /* Application or device used to record the measurement values */
  int sourceId = null;
  
  /* Start Time for the measurement event in ISO 8601 */
  int startTime = null;
  
  /* Converted measurement value in requested unit */
  num value = null;
  
  /* Unit ID of measurement as requested in GET request */
  int unitId = null;
  
  /* Original value */
  num originalValue = null;
  
  /* Unit ID of measurement as originally submitted */
  int originalUnitId = null;
  
  /* duration of measurement in seconds */
  int duration = null;
  
  /* Note of measurement */
  String note = null;
  
  /* latitude */
  num latitude = null;
  
  /* longitude */
  num longitude = null;
  
  /* location */
  String location = null;
  
  /* created_at */
  DateTime createdAt = null;
  
  /* updated_at */
  DateTime updatedAt = null;
  
  /* error */
  String error = null;
  
  
  Measurement();

  @override
  String toString()  {
    return 'Measurement[id=$id, userId=$userId, clientId=$clientId, connectorId=$connectorId, variableId=$variableId, sourceId=$sourceId, startTime=$startTime, value=$value, unitId=$unitId, originalValue=$originalValue, originalUnitId=$originalUnitId, duration=$duration, note=$note, latitude=$latitude, longitude=$longitude, location=$location, createdAt=$createdAt, updatedAt=$updatedAt, error=$error, ]';
  }

}

