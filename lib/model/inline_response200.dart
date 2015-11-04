part of api;


@Entity()
class InlineResponse200 {
  
  List<AggregatedCorrelation> data = [];
  
  
  bool success = null;
  
  
  InlineResponse200();

  @override
  String toString()  {
    return 'InlineResponse200[data=$data, success=$success, ]';
  }

}

