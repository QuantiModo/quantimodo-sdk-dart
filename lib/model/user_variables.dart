part of api;


@Entity()
class UserVariables {
  /* User ID */
  @Property(name: 'user')
  int user = null;
  
/* Common variable id */
  @Property(name: 'variableId')
  int variableId = null;
  
/* Estimated duration of time following the onset delay in which a stimulus produces a perceivable effect */
  @Property(name: 'durationOfAction')
  int durationOfAction = null;
  
/* fillingValue */
  @Property(name: 'fillingValue')
  int fillingValue = null;
  
/* joinWith */
  @Property(name: 'joinWith')
  String joinWith = null;
  
/* maximumAllowedValue */
  @Property(name: 'maximumAllowedValue')
  double maximumAllowedValue = null;
  
/* minimumAllowedValue */
  @Property(name: 'minimumAllowedValue')
  double minimumAllowedValue = null;
  
/* onsetDelay */
  @Property(name: 'onsetDelay')
  int onsetDelay = null;
  
/* Earliest measurement startTime that should be used in analysis in ISO format */
  @Property(name: 'experimentStartTime')
  String experimentStartTime = null;
  
/* Latest measurement startTime that should be used in analysis in ISO format */
  @Property(name: 'experimentEndTime')
  String experimentEndTime = null;
  
  UserVariables();

  @override
  String toString()  {
    return 'UserVariables[user=$user, variableId=$variableId, durationOfAction=$durationOfAction, fillingValue=$fillingValue, joinWith=$joinWith, maximumAllowedValue=$maximumAllowedValue, minimumAllowedValue=$minimumAllowedValue, onsetDelay=$onsetDelay, experimentStartTime=$experimentStartTime, experimentEndTime=$experimentEndTime, ]';
  }

}

