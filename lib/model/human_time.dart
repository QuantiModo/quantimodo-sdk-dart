part of api;


@Entity()
class HumanTime {
  /* date time */
  @Property(name: 'date')
  String date = null;
  

  @Property(name: 'timezone_type')
  int timezoneType = null;
  
/* timezone of date time */
  @Property(name: 'timezone')
  String timezone = null;
  
  HumanTime();

  @override
  String toString()  {
    return 'HumanTime[date=$date, timezoneType=$timezoneType, timezone=$timezone, ]';
  }

}

