part of api;


@Entity()
class MeasurementPost {
  /* variable_id */
  int variableId = null;
  
  /* source_id */
  int sourceId = null;
  
  /* unit_id */
  int unitId = null;
  
  /* measurements */
  List<MeasurementValue> measurements = [];
  
  
  MeasurementPost();

  @override
  String toString()  {
    return 'MeasurementPost[variableId=$variableId, sourceId=$sourceId, unitId=$unitId, measurements=$measurements, ]';
  }

}

