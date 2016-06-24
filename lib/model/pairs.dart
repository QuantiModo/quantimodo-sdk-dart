part of api;


@Entity()
class Pairs {
  /* Category name */
  @Property(name: 'name')
  String name = null;
  
  Pairs();

  @override
  String toString()  {
    return 'Pairs[name=$name, ]';
  }

}

