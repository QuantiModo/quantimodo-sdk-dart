part of api;


@Entity()
class VariableUserSource {
  /* ID of User */
  @Property(name: 'user_id')
  int userId = null;
  
/* ID of variable */
  @Property(name: 'variable_id')
  int variableId = null;
  
/* ID of source */
  @Property(name: 'source_id')
  int sourceId = null;
  
/* Time that this measurement occurred Uses epoch minute (epoch time divided by 60) */
  @Property(name: 'timestamp')
  int timestamp = null;
  
/* Earliest measurement time */
  @Property(name: 'earliest_measurement_time')
  int earliestMeasurementTime = null;
  
/* Latest measurement time */
  @Property(name: 'latest_measurement_time')
  int latestMeasurementTime = null;
  
/* When the record was first created. Use ISO 8601 datetime format */
  @Property(name: 'created_at')
  DateTime createdAt = null;
  
/* When the record in the database was last updated. Use ISO 8601 datetime format */
  @Property(name: 'updated_at')
  DateTime updatedAt = null;
  
  VariableUserSource();

  @override
  String toString()  {
    return 'VariableUserSource[userId=$userId, variableId=$variableId, sourceId=$sourceId, timestamp=$timestamp, earliestMeasurementTime=$earliestMeasurementTime, latestMeasurementTime=$latestMeasurementTime, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

}

