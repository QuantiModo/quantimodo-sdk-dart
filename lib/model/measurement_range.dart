part of api;


@Entity()
class MeasurementRange {
  /* The timestamp of the earliest measurement for a user. */
  @Property(name: 'lowerLimit')
  int lowerLimit = null;
  
/* The timestamp of the most recent measurement for a user. */
  @Property(name: 'upperLimit')
  int upperLimit = null;
  
  MeasurementRange();

  @override
  String toString()  {
    return 'MeasurementRange[lowerLimit=$lowerLimit, upperLimit=$upperLimit, ]';
  }

}

