part of api;


@Entity()
class Measurement {
  /* ORIGINAL Name of the variable for which we are creating the measurement records */
  @Property(name: 'variable')
  String variable = null;
  
/* Application or device used to record the measurement values */
  @Property(name: 'source')
  String source = null;
  
/* Start Time for the measurement event in ISO 8601 */
  @Property(name: 'startTime')
  String startTime = null;
  
/* Start Time for the measurement event in ISO 8601 */
  @Property(name: 'humanTime')
  HumanTime humanTime = null;
  
/* Converted measurement value in requested unit */
  @Property(name: 'value')
  double value = null;
  
/* Unit of measurement as requested in GET request */
  @Property(name: 'unit')
  String unit = null;
  
/* Original value */
  @Property(name: 'originalValue')
  int originalValue = null;
  
/* Measurement value in the unit as orignally submitted */
  @Property(name: 'storedValue')
  double storedValue = null;
  
/* Unit of measurement as originally submitted */
  @Property(name: 'storedAbbreviatedUnitName')
  String storedAbbreviatedUnitName = null;
  
/* Original Unit of measurement as originally submitted */
  @Property(name: 'originalAbbreviatedUnitName')
  String originalAbbreviatedUnitName = null;
  
/* Unit of measurement as originally submitted */
  @Property(name: 'abbreviatedUnitName')
  String abbreviatedUnitName = null;
  
/* Note of measurement */
  @Property(name: 'note')
  String note = null;
  
  Measurement();

  @override
  String toString()  {
    return 'Measurement[variable=$variable, source=$source, startTime=$startTime, humanTime=$humanTime, value=$value, unit=$unit, originalValue=$originalValue, storedValue=$storedValue, storedAbbreviatedUnitName=$storedAbbreviatedUnitName, originalAbbreviatedUnitName=$originalAbbreviatedUnitName, abbreviatedUnitName=$abbreviatedUnitName, note=$note, ]';
  }

}

