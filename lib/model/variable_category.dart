part of api;


@Entity()
class VariableCategory {
  /* id */
  int id = null;
  
  /* Name of the category */
  String name = null;
  
  /* Value for replacing null measurements */
  num fillingValue = null;
  
  /* Maximum recorded value of this category */
  num maximumAllowedValue = null;
  
  /* Minimum recorded value of this category */
  num minimumAllowedValue = null;
  
  /* How long the effect of a measurement in this variable lasts */
  int durationOfAction = null;
  
  /* How long it takes for a measurement in this variable to take effect */
  int onsetDelay = null;
  
  /* How to combine values of this variable (for instance, to see a summary of the values over a month) 0 for sum OR 1 for mean */
  String combinationOperation = null;
  
  /* updated */
  int updated = null;
  
  /* A value of 1 indicates that this category is generally a cause in a causal relationship.  An example of a causeOnly category would be a category such as Work which would generally not be influenced by the behaviour of the user */
  bool causeOnly = null;
  
  /* Is category public */
  int public = null;
  
  /* outcome */
  bool outcome = null;
  
  /* created_at */
  DateTime createdAt = null;
  
  /* updated_at */
  DateTime updatedAt = null;
  
  /* Image URL */
  String imageUrl = null;
  
  /* ID of the default unit for the category */
  int defaultUnitId = null;
  
  
  VariableCategory();

  @override
  String toString()  {
    return 'VariableCategory[id=$id, name=$name, fillingValue=$fillingValue, maximumAllowedValue=$maximumAllowedValue, minimumAllowedValue=$minimumAllowedValue, durationOfAction=$durationOfAction, onsetDelay=$onsetDelay, combinationOperation=$combinationOperation, updated=$updated, causeOnly=$causeOnly, public=$public, outcome=$outcome, createdAt=$createdAt, updatedAt=$updatedAt, imageUrl=$imageUrl, defaultUnitId=$defaultUnitId, ]';
  }

}

