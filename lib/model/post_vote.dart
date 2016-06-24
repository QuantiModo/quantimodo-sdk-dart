part of api;


@Entity()
class PostVote {
  /* Cause variable name */
  @Property(name: 'cause')
  String cause = null;
  
/* Effect variable name */
  @Property(name: 'effect')
  String effect = null;
  
/* Vote: 0 (for implausible) or 1 (for plausible) */
  @Property(name: 'vote')
  bool vote = null;
  
  PostVote();

  @override
  String toString()  {
    return 'PostVote[cause=$cause, effect=$effect, vote=$vote, ]';
  }

}

