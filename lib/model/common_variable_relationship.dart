part of api;


@Entity()
class CommonVariableRelationship {
  /* id */
  int id = null;
  
  /* Our confidence that a consistent predictive relationship exists based on the amount of evidence, reproducibility, and other factors */
  String confidenceLevel = null;
  
  /* A quantitative representation of our confidence that a consistent predictive relationship exists based on the amount of evidence, reproducibility, and other factors */
  num confidenceScore = null;
  
  /* Direction is positive if higher predictor values generally precede higher outcome values. Direction is negative if higher predictor values generally precede lower outcome values. */
  String direction = null;
  
  /* duration_of_action */
  int durationOfAction = null;
  
  /* error_message */
  String errorMessage = null;
  
  /* User estimated (or default number of seconds) after cause measurement before a perceivable effect is observed */
  int onsetDelay = null;
  
  /* Variable ID for the outcome variable */
  int outcomeVariableId = null;
  
  /* Variable ID for the predictor variable */
  int predictorVariableId = null;
  
  /* ID for default unit of the predictor variable */
  int predictorUnitId = null;
  
  /* A value representative of the relevance of this predictor relative to other predictors of this outcome.  Usually used for relevancy sorting. */
  num sinnRank = null;
  
  /* A value represented to the size of the effect which the predictor appears to have on the outcome. */
  num strengthScore = null;
  
  /* Can be weak, medium, or strong based on the size of the effect which the predictor appears to have on the outcome relative to other variable relationship strength scores. */
  String strengthLevel = null;
  
  /* Number of users who feel that there is a plausible causal relationship between the predictor and outcome variables. */
  int upVotes = null;
  
  /* Number of users who do not feel that there is a plausible causal relationship between the predictor and outcome variables. */
  int downVotes = null;
  
  /* Value for the predictor variable (in it's default unit) which typically precedes an above average outcome value */
  num valuePredictingHighOutcome = null;
  
  /* Value for the predictor variable (in it's default unit) which typically precedes a below average outcome value */
  num valuePredictingLowOutcome = null;
  
  /* Number of users whose data was aggregated to obtain this relationship */
  int numberOfUsers = null;
  
  /* Source of data for this common variable relationship */
  String dataSource = null;
  
  
  CommonVariableRelationship();

  @override
  String toString()  {
    return 'CommonVariableRelationship[id=$id, confidenceLevel=$confidenceLevel, confidenceScore=$confidenceScore, direction=$direction, durationOfAction=$durationOfAction, errorMessage=$errorMessage, onsetDelay=$onsetDelay, outcomeVariableId=$outcomeVariableId, predictorVariableId=$predictorVariableId, predictorUnitId=$predictorUnitId, sinnRank=$sinnRank, strengthScore=$strengthScore, strengthLevel=$strengthLevel, upVotes=$upVotes, downVotes=$downVotes, valuePredictingHighOutcome=$valuePredictingHighOutcome, valuePredictingLowOutcome=$valuePredictingLowOutcome, numberOfUsers=$numberOfUsers, dataSource=$dataSource, ]';
  }

}

