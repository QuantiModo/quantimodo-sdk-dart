part of api;


@Entity()
class UnitCategory {
  /* Category name */
  @Property(name: 'name')
  String name = null;
  
  UnitCategory();

  @override
  String toString()  {
    return 'UnitCategory[name=$name, ]';
  }

}

