part of api;


@Entity()
class MeasurementValue {
  /* start_time */
  int startTime = null;
  
  /* value */
  num value = null;
  
  
  MeasurementValue();

  @override
  String toString()  {
    return 'MeasurementValue[startTime=$startTime, value=$value, ]';
  }

}

