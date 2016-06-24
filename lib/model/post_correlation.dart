part of api;


@Entity()
class PostCorrelation {
  /* Cause variable name */
  @Property(name: 'cause')
  String cause = null;
  
/* Effect variable name */
  @Property(name: 'effect')
  String effect = null;
  
/* Correlation value */
  @Property(name: 'correlation')
  double correlation = null;
  
/* Vote: 0 or 1 */
  @Property(name: 'vote')
  int vote = null;
  
  PostCorrelation();

  @override
  String toString()  {
    return 'PostCorrelation[cause=$cause, effect=$effect, correlation=$correlation, vote=$vote, ]';
  }

}

