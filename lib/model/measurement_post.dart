part of api;


@Entity()
class MeasurementPost {
  /* ID of the variable for the measurement as obtained from the GET variables endpoint */
  int variableId = null;
  
  /* Source ID of the app or device as obtained from the GET sources endpoint */
  int sourceId = null;
  
  /* Unit id for the measurement value as obtained from the GET units endpoint */
  int unitId = null;
  
  /* measurements */
  List<MeasurementValue> measurements = [];
  
  
  MeasurementPost();

  @override
  String toString()  {
    return 'MeasurementPost[variableId=$variableId, sourceId=$sourceId, unitId=$unitId, measurements=$measurements, ]';
  }

}

