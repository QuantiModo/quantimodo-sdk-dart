part of api;


@Entity()
class ValueObject {
  /* Timestamp for the measurement event in epoch time (unixtime) */
  @Property(name: 'timestamp')
  int timestamp = null;
  
/* Measurement value */
  @Property(name: 'value')
  double value = null;
  
/* Optional note to include with the measurement */
  @Property(name: 'note')
  String note = null;
  
  ValueObject();

  @override
  String toString()  {
    return 'ValueObject[timestamp=$timestamp, value=$value, note=$note, ]';
  }

}

