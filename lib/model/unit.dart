part of api;


@Entity()
class Unit {
  /* Unit name */
  @Property(name: 'name')
  String name = null;
  
/* Unit abbreviation */
  @Property(name: 'abbreviatedName')
  String abbreviatedName = null;
  
/* Unit category */
  @Property(name: 'category')
  String category = null;
  //enum categoryEnum {  Distance,  Duration,  Energy,  Frequency,  Miscellany,  Pressure,  Proportion,  Rating,  Temperature,  Volume,  Weight,  };
/* The smallest acceptable value for measurements using this unit */
  @Property(name: 'minimumValue')
  double minimumValue = null;
  
/* The largest acceptable value for measurements using this unit */
  @Property(name: 'maximumValue')
  double maximumValue = null;
  
/* Conversion steps list */
  @Property(name: 'conversionSteps')
  List<ConversionStep> conversionSteps = [];
  
  Unit();

  @override
  String toString()  {
    return 'Unit[name=$name, abbreviatedName=$abbreviatedName, category=$category, minimumValue=$minimumValue, maximumValue=$maximumValue, conversionSteps=$conversionSteps, ]';
  }

}

