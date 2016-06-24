part of api;


@Entity()
class MeasurementSource {
  /* Name of the application or device. */
  @Property(name: 'name')
  String name = null;
  
  MeasurementSource();

  @override
  String toString()  {
    return 'MeasurementSource[name=$name, ]';
  }

}

