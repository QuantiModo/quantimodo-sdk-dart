part of api;


class PairsApi {
  String basePath = "https://app.quantimo.do/api";
  ApiClient apiClient = ApiClient.defaultApiClient;

  PairsApi([ApiClient apiClient]) {
    if (apiClient != null) {
      this.apiClient = apiClient;
    }
  }

  /// Get pairs
  ///
  /// Pairs cause measurements with effect measurements grouped over the duration of action after the onset delay.
  Future<List<Pairs>> v1PairsCsvGet(String cause, String effect, String accessToken, String causeSource, String causeUnit, String delay, String duration, String effectSource, String effectUnit, String endTime, String startTime, int limit, int offset, int sort) {
    Object postBody = null;
    // verify required params are set
    if(    // verify required params are set
    if(    // verify required params are set
    if(    // verify required params are set
    if(    // verify required params are set
    if(    // verify required params are set
    if(    // verify required params are set
    if(    // verify required params are set
    if(    // verify required params are set
    if(    // verify required params are set
    if(    // verify required params are set
    if(    // verify required params are set
    if(    // verify required params are set
    if(    // verify required params are set
    if() {
       throw new ApiException(400, "missing required params");
    }) {
       throw new ApiException(400, "missing required params");
    }) {
       throw new ApiException(400, "missing required params");
    }) {
       throw new ApiException(400, "missing required params");
    }) {
       throw new ApiException(400, "missing required params");
    }) {
       throw new ApiException(400, "missing required params");
    }) {
       throw new ApiException(400, "missing required params");
    }) {
       throw new ApiException(400, "missing required params");
    }) {
       throw new ApiException(400, "missing required params");
    }) {
       throw new ApiException(400, "missing required params");
    }) {
       throw new ApiException(400, "missing required params");
    }) {
       throw new ApiException(400, "missing required params");
    }) {
       throw new ApiException(400, "missing required params");
    }) {
       throw new ApiException(400, "missing required params");
    }

    // create path and map variables
    String path = "/v1/pairsCsv".replaceAll("{format}","json");

    // query params
    Map<String, String> queryParams = {};
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if("null" != accessToken)
      queryParams["access_token"] = accessToken is List ? accessToken.join(',') : accessToken;
if("null" != cause)
      queryParams["cause"] = cause is List ? cause.join(',') : cause;
if("null" != causeSource)
      queryParams["causeSource"] = causeSource is List ? causeSource.join(',') : causeSource;
if("null" != causeUnit)
      queryParams["causeUnit"] = causeUnit is List ? causeUnit.join(',') : causeUnit;
if("null" != delay)
      queryParams["delay"] = delay is List ? delay.join(',') : delay;
if("null" != duration)
      queryParams["duration"] = duration is List ? duration.join(',') : duration;
if("null" != effect)
      queryParams["effect"] = effect is List ? effect.join(',') : effect;
if("null" != effectSource)
      queryParams["effectSource"] = effectSource is List ? effectSource.join(',') : effectSource;
if("null" != effectUnit)
      queryParams["effectUnit"] = effectUnit is List ? effectUnit.join(',') : effectUnit;
if("null" != endTime)
      queryParams["endTime"] = endTime is List ? endTime.join(',') : endTime;
if("null" != startTime)
      queryParams["startTime"] = startTime is List ? startTime.join(',') : startTime;
if("null" != limit)
      queryParams["limit"] = limit is List ? limit.join(',') : limit;
if("null" != offset)
      queryParams["offset"] = offset is List ? offset.join(',') : offset;
if("null" != sort)
      queryParams["sort"] = sort is List ? sort.join(',') : sort;
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["oauth2"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    return apiClient.invokeAPI(basePath, path, 'GET', queryParams, postBody, headerParams, formParams, contentType, authNames).then((response) {
      if(response.statusCode >= 400) {
        throw new ApiException(response.statusCode, response.body);
      }
      else if(response.body != null){
        return ApiClient.deserialize(response.body, Pairs);
      }
      else {
        return null;
      }
    });
  }
  /// Get pairs
  ///
  /// Pairs cause measurements with effect measurements grouped over the duration of action after the onset delay.
  Future<List<Pairs>> v1PairsGet(String cause, String effect, String accessToken, String causeSource, String causeUnit, String delay, String duration, String effectSource, String effectUnit, String endTime, String startTime, int limit, int offset, int sort) {
    Object postBody = null;
    // verify required params are set
    if(    // verify required params are set
    if(    // verify required params are set
    if(    // verify required params are set
    if(    // verify required params are set
    if(    // verify required params are set
    if(    // verify required params are set
    if(    // verify required params are set
    if(    // verify required params are set
    if(    // verify required params are set
    if(    // verify required params are set
    if(    // verify required params are set
    if(    // verify required params are set
    if(    // verify required params are set
    if() {
       throw new ApiException(400, "missing required params");
    }) {
       throw new ApiException(400, "missing required params");
    }) {
       throw new ApiException(400, "missing required params");
    }) {
       throw new ApiException(400, "missing required params");
    }) {
       throw new ApiException(400, "missing required params");
    }) {
       throw new ApiException(400, "missing required params");
    }) {
       throw new ApiException(400, "missing required params");
    }) {
       throw new ApiException(400, "missing required params");
    }) {
       throw new ApiException(400, "missing required params");
    }) {
       throw new ApiException(400, "missing required params");
    }) {
       throw new ApiException(400, "missing required params");
    }) {
       throw new ApiException(400, "missing required params");
    }) {
       throw new ApiException(400, "missing required params");
    }) {
       throw new ApiException(400, "missing required params");
    }

    // create path and map variables
    String path = "/v1/pairs".replaceAll("{format}","json");

    // query params
    Map<String, String> queryParams = {};
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if("null" != accessToken)
      queryParams["access_token"] = accessToken is List ? accessToken.join(',') : accessToken;
if("null" != cause)
      queryParams["cause"] = cause is List ? cause.join(',') : cause;
if("null" != causeSource)
      queryParams["causeSource"] = causeSource is List ? causeSource.join(',') : causeSource;
if("null" != causeUnit)
      queryParams["causeUnit"] = causeUnit is List ? causeUnit.join(',') : causeUnit;
if("null" != delay)
      queryParams["delay"] = delay is List ? delay.join(',') : delay;
if("null" != duration)
      queryParams["duration"] = duration is List ? duration.join(',') : duration;
if("null" != effect)
      queryParams["effect"] = effect is List ? effect.join(',') : effect;
if("null" != effectSource)
      queryParams["effectSource"] = effectSource is List ? effectSource.join(',') : effectSource;
if("null" != effectUnit)
      queryParams["effectUnit"] = effectUnit is List ? effectUnit.join(',') : effectUnit;
if("null" != endTime)
      queryParams["endTime"] = endTime is List ? endTime.join(',') : endTime;
if("null" != startTime)
      queryParams["startTime"] = startTime is List ? startTime.join(',') : startTime;
if("null" != limit)
      queryParams["limit"] = limit is List ? limit.join(',') : limit;
if("null" != offset)
      queryParams["offset"] = offset is List ? offset.join(',') : offset;
if("null" != sort)
      queryParams["sort"] = sort is List ? sort.join(',') : sort;
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["oauth2"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    return apiClient.invokeAPI(basePath, path, 'GET', queryParams, postBody, headerParams, formParams, contentType, authNames).then((response) {
      if(response.statusCode >= 400) {
        throw new ApiException(response.statusCode, response.body);
      }
      else if(response.body != null){
        return ApiClient.deserialize(response.body, Pairs);
      }
      else {
        return null;
      }
    });
  }
}
