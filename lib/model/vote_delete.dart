part of api;


@Entity()
class VoteDelete {
  /* Cause variable name for the correlation to which the vote pertains */
  @Property(name: 'cause')
  String cause = null;
  
/* Effect variable name for the correlation to which the vote pertains */
  @Property(name: 'effect')
  String effect = null;
  
  VoteDelete();

  @override
  String toString()  {
    return 'VoteDelete[cause=$cause, effect=$effect, ]';
  }

}

