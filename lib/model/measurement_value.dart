part of api;


@Entity()
class MeasurementValue {
  /* When the measurement event occurred . Use ISO 8601 datetime format */
  String startTime = null;
  
  /* Value for the measurement */
  num value = null;
  
  /* An optional note the user may include with their measurement */
  String note = null;
  
  
  MeasurementValue();

  @override
  String toString()  {
    return 'MeasurementValue[startTime=$startTime, value=$value, note=$note, ]';
  }

}

