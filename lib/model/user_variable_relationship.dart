part of api;


@Entity()
class UserVariableRelationship {
  /* id */
  @Property(name: 'id')
  int id = null;
  
/* Our confidence that a consistent predictive relationship exists based on the amount of evidence, reproducibility, and other factors */
  @Property(name: 'confidence_level')
  String confidenceLevel = null;
  
/* A quantitative representation of our confidence that a consistent predictive relationship exists based on the amount of evidence, reproducibility, and other factors */
  @Property(name: 'confidence_score')
  double confidenceScore = null;
  
/* Direction is positive if higher predictor values generally precede higher outcome values. Direction is negative if higher predictor values generally precede lower outcome values. */
  @Property(name: 'direction')
  String direction = null;
  
/* Number of seconds over which the predictor variable event is expected to produce a perceivable effect following the onset delay */
  @Property(name: 'duration_of_action')
  int durationOfAction = null;
  
/* error_message */
  @Property(name: 'error_message')
  String errorMessage = null;
  
/* User estimated (or default number of seconds) after cause measurement before a perceivable effect is observed */
  @Property(name: 'onset_delay')
  int onsetDelay = null;
  
/* Variable ID for the outcome variable */
  @Property(name: 'outcome_variable_id')
  int outcomeVariableId = null;
  
/* Variable ID for the predictor variable */
  @Property(name: 'predictor_variable_id')
  int predictorVariableId = null;
  
/* ID for default unit of the predictor variable */
  @Property(name: 'predictor_unit_id')
  int predictorUnitId = null;
  
/* A value representative of the relevance of this predictor relative to other predictors of this outcome.  Usually used for relevancy sorting. */
  @Property(name: 'sinn_rank')
  double sinnRank = null;
  
/* Can be weak, medium, or strong based on the size of the effect which the predictor appears to have on the outcome relative to other variable relationship strength scores. */
  @Property(name: 'strength_level')
  String strengthLevel = null;
  
/* A value represented to the size of the effect which the predictor appears to have on the outcome. */
  @Property(name: 'strength_score')
  double strengthScore = null;
  
/* user_id */
  @Property(name: 'user_id')
  int userId = null;
  
/* vote */
  @Property(name: 'vote')
  String vote = null;
  
/* Value for the predictor variable (in it's default unit) which typically precedes an above average outcome value */
  @Property(name: 'value_predicting_high_outcome')
  double valuePredictingHighOutcome = null;
  
/* Value for the predictor variable (in it's default unit) which typically precedes a below average outcome value */
  @Property(name: 'value_predicting_low_outcome')
  double valuePredictingLowOutcome = null;
  
  UserVariableRelationship();

  @override
  String toString()  {
    return 'UserVariableRelationship[id=$id, confidenceLevel=$confidenceLevel, confidenceScore=$confidenceScore, direction=$direction, durationOfAction=$durationOfAction, errorMessage=$errorMessage, onsetDelay=$onsetDelay, outcomeVariableId=$outcomeVariableId, predictorVariableId=$predictorVariableId, predictorUnitId=$predictorUnitId, sinnRank=$sinnRank, strengthLevel=$strengthLevel, strengthScore=$strengthScore, userId=$userId, vote=$vote, valuePredictingHighOutcome=$valuePredictingHighOutcome, valuePredictingLowOutcome=$valuePredictingLowOutcome, ]';
  }

}

