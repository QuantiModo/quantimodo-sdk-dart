part of api;


@Entity()
class VariableUserSource {
  /* ID of User */
  int userId = null;
  
  /* ID of variable */
  int variableId = null;
  
  /* ID of source */
  int sourceId = null;
  
  /* Time that this measurement occurred Uses epoch minute (epoch time divided by 60) */
  int timestamp = null;
  
  /* Earliest measurement time */
  int earliestMeasurementTime = null;
  
  /* Latest measurement time */
  int latestMeasurementTime = null;
  
  /* created_at */
  DateTime createdAt = null;
  
  /* updated_at */
  DateTime updatedAt = null;
  
  
  VariableUserSource();

  @override
  String toString()  {
    return 'VariableUserSource[userId=$userId, variableId=$variableId, sourceId=$sourceId, timestamp=$timestamp, earliestMeasurementTime=$earliestMeasurementTime, latestMeasurementTime=$latestMeasurementTime, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

}

