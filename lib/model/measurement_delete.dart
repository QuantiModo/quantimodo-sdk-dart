part of api;


@Entity()
class MeasurementDelete {
  /* Variable id of the measurement to be deleted */
  @Property(name: 'variableId')
  int variableId = null;
  
/* Start time of the measurement to be deleted */
  @Property(name: 'startTime')
  int startTime = null;
  
  MeasurementDelete();

  @override
  String toString()  {
    return 'MeasurementDelete[variableId=$variableId, startTime=$startTime, ]';
  }

}

