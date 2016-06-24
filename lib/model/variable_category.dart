part of api;


@Entity()
class VariableCategory {
  /* Category name */
  @Property(name: 'name')
  String name = null;
  
  VariableCategory();

  @override
  String toString()  {
    return 'VariableCategory[name=$name, ]';
  }

}

