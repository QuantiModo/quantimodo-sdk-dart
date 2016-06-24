part of api;


class VariablesApi {
  String basePath = "https://app.quantimo.do/api";
  ApiClient apiClient = ApiClient.defaultApiClient;

  VariablesApi([ApiClient apiClient]) {
    if (apiClient != null) {
      this.apiClient = apiClient;
    }
  }

  /// Get public variables
  ///
  /// This endpoint retrieves an array of all public variables. Public variables are things like foods, medications, symptoms, conditions, and anything not unique to a particular user. For instance, a telephone number or name would not be a public variable.
  Future<Variable> v1PublicVariablesGet() {
    Object postBody = null;


    // create path and map variables
    String path = "/v1/public/variables".replaceAll("{format}","json");

    // query params
    Map<String, String> queryParams = {};
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
        
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
        return ApiClient.deserialize(response.body, Variable);
      }
      else {
        return null;
      }
    });
  }
  /// Get top 5 PUBLIC variables with the most correlations
  ///
  /// Get top 5 PUBLIC variables with the most correlations containing the entered search characters. For example, search for &#39;mood&#39; as an effect. Since &#39;Overall Mood&#39; has a lot of correlations with other variables, it should be in the autocomplete list.&lt;br&gt;Supported filter parameters:&lt;br&gt;&lt;ul&gt;&lt;li&gt;&lt;b&gt;category&lt;/b&gt; - Category of Variable&lt;/li&gt;&lt;/ul&gt;&lt;br&gt;
  Future<Variable> v1PublicVariablesSearchSearchGet(String search, String accessToken, String categoryName, String source, String effectOrCause, String publicEffectOrCause, int limit, int offset, int sort) {
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
    }

    // create path and map variables
    String path = "/v1/public/variables/search/{search}".replaceAll("{format}","json").replaceAll("{" + "search" + "}", search.toString());

    // query params
    Map<String, String> queryParams = {};
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if("null" != accessToken)
      queryParams["access_token"] = accessToken is List ? accessToken.join(',') : accessToken;
if("null" != categoryName)
      queryParams["categoryName"] = categoryName is List ? categoryName.join(',') : categoryName;
if("null" != source)
      queryParams["source"] = source is List ? source.join(',') : source;
if("null" != effectOrCause)
      queryParams["effectOrCause"] = effectOrCause is List ? effectOrCause.join(',') : effectOrCause;
if("null" != publicEffectOrCause)
      queryParams["publicEffectOrCause"] = publicEffectOrCause is List ? publicEffectOrCause.join(',') : publicEffectOrCause;
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
        return ApiClient.deserialize(response.body, Variable);
      }
      else {
        return null;
      }
    });
  }
  /// Update User Settings for a Variable
  ///
  /// Users can change the parameters used in analysis of that variable such as the expected duration of action for a variable to have an effect, the estimated delay before the onset of action. In order to filter out erroneous data, they are able to set the maximum and minimum reasonable daily values for a variable.
  Future v1UserVariablesPost(UserVariables userVariables) {
    Object postBody = userVariables;
    // verify required params are set
    if() {
       throw new ApiException(400, "missing required params");
    }

    // create path and map variables
    String path = "/v1/userVariables".replaceAll("{format}","json");

    // query params
    Map<String, String> queryParams = {};
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
        
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

    return apiClient.invokeAPI(basePath, path, 'POST', queryParams, postBody, headerParams, formParams, contentType, authNames).then((response) {
      if(response.statusCode >= 400) {
        throw new ApiException(response.statusCode, response.body);
      }
      else if(response.body != null){
        return ;
      }
      else {
        return ;
      }
    });
  }
  /// Variable categories
  ///
  /// The variable categories include Activity, Causes of Illness, Cognitive Performance, Conditions, Environment, Foods, Location, Miscellaneous, Mood, Nutrition, Physical Activity, Physique, Sleep, Social Interactions, Symptoms, Treatments, Vital Signs, and Work.
  Future<List<VariableCategory>> v1VariableCategoriesGet() {
    Object postBody = null;


    // create path and map variables
    String path = "/v1/variableCategories".replaceAll("{format}","json");

    // query params
    Map<String, String> queryParams = {};
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
        
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
        return ApiClient.deserialize(response.body, VariableCategory);
      }
      else {
        return null;
      }
    });
  }
  /// Get variables by the category name
  ///
  /// Get variables by the category name. &lt;br&gt;Supported filter parameters:&lt;br&gt;&lt;ul&gt;&lt;li&gt;&lt;b&gt;name&lt;/b&gt; - Original name of the variable (supports exact name match only)&lt;/li&gt;&lt;li&gt;&lt;b&gt;lastUpdated&lt;/b&gt; - Filter by the last time any of the properties of the variable were changed. Uses UTC format \&quot;YYYY-MM-DDThh:mm:ss\&quot;&lt;/li&gt;&lt;li&gt;&lt;b&gt;source&lt;/b&gt; - The name of the data source that created the variable (supports exact name match only). So if you have a client application and you only want variables that were last updated by your app, you can include the name of your app here&lt;/li&gt;&lt;li&gt;&lt;b&gt;latestMeasurementTime&lt;/b&gt; - Filter variables based on the last time a measurement for them was created or updated in the UTC format \&quot;YYYY-MM-DDThh:mm:ss\&quot;&lt;/li&gt;&lt;li&gt;&lt;b&gt;numberOfMeasurements&lt;/b&gt; - Filter variables by the total number of measurements that they have. This could be used of you want to filter or sort by popularity.&lt;/li&gt;&lt;li&gt;&lt;b&gt;lastSource&lt;/b&gt; - Limit variables to those which measurements were last submitted by a specific source. So if you have a client application and you only want variables that were last updated by your app, you can include the name of your app here. (supports exact name match only)&lt;/li&gt;&lt;/ul&gt;&lt;br&gt;
  Future<Variable> v1VariablesGet(String accessToken, int id, int userId, String category, String name, String lastUpdated, String source, String latestMeasurementTime, String numberOfMeasurements, String lastSource, int limit, int offset, int sort) {
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
    }

    // create path and map variables
    String path = "/v1/variables".replaceAll("{format}","json");

    // query params
    Map<String, String> queryParams = {};
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if("null" != accessToken)
      queryParams["access_token"] = accessToken is List ? accessToken.join(',') : accessToken;
if("null" != id)
      queryParams["id"] = id is List ? id.join(',') : id;
if("null" != userId)
      queryParams["userId"] = userId is List ? userId.join(',') : userId;
if("null" != category)
      queryParams["category"] = category is List ? category.join(',') : category;
if("null" != name)
      queryParams["name"] = name is List ? name.join(',') : name;
if("null" != lastUpdated)
      queryParams["lastUpdated"] = lastUpdated is List ? lastUpdated.join(',') : lastUpdated;
if("null" != source)
      queryParams["source"] = source is List ? source.join(',') : source;
if("null" != latestMeasurementTime)
      queryParams["latestMeasurementTime"] = latestMeasurementTime is List ? latestMeasurementTime.join(',') : latestMeasurementTime;
if("null" != numberOfMeasurements)
      queryParams["numberOfMeasurements"] = numberOfMeasurements is List ? numberOfMeasurements.join(',') : numberOfMeasurements;
if("null" != lastSource)
      queryParams["lastSource"] = lastSource is List ? lastSource.join(',') : lastSource;
if("null" != limit)
      queryParams["limit"] = limit is List ? limit.join(',') : limit;
if("null" != offset)
      queryParams["offset"] = offset is List ? offset.join(',') : offset;
if("null" != sort)
      queryParams["sort"] = sort is List ? sort.join(',') : sort;
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["oauth2", "basicAuth"];

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
        return ApiClient.deserialize(response.body, Variable);
      }
      else {
        return null;
      }
    });
  }
  /// Create Variables
  ///
  /// Allows the client to create a new variable in the &#x60;variables&#x60; table.
  Future v1VariablesPost(VariablesNew body, String accessToken) {
    Object postBody = body;
    // verify required params are set
    if(    // verify required params are set
    if() {
       throw new ApiException(400, "missing required params");
    }) {
       throw new ApiException(400, "missing required params");
    }

    // create path and map variables
    String path = "/v1/variables".replaceAll("{format}","json");

    // query params
    Map<String, String> queryParams = {};
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if("null" != accessToken)
      queryParams["access_token"] = accessToken is List ? accessToken.join(',') : accessToken;
    
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

    return apiClient.invokeAPI(basePath, path, 'POST', queryParams, postBody, headerParams, formParams, contentType, authNames).then((response) {
      if(response.statusCode >= 400) {
        throw new ApiException(response.statusCode, response.body);
      }
      else if(response.body != null){
        return ;
      }
      else {
        return ;
      }
    });
  }
  /// Get variables by search query
  ///
  /// Get variables containing the search characters for which the currently logged in user has measurements. Used to provide auto-complete function in variable search boxes.
  Future<List<Variable>> v1VariablesSearchSearchGet(String search, String accessToken, String categoryName, bool includePublic, bool manualTracking, String source, String effectOrCause, String publicEffectOrCause, int limit, int offset) {
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
    }

    // create path and map variables
    String path = "/v1/variables/search/{search}".replaceAll("{format}","json").replaceAll("{" + "search" + "}", search.toString());

    // query params
    Map<String, String> queryParams = {};
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if("null" != accessToken)
      queryParams["access_token"] = accessToken is List ? accessToken.join(',') : accessToken;
if("null" != categoryName)
      queryParams["categoryName"] = categoryName is List ? categoryName.join(',') : categoryName;
if("null" != includePublic)
      queryParams["includePublic"] = includePublic is List ? includePublic.join(',') : includePublic;
if("null" != manualTracking)
      queryParams["manualTracking"] = manualTracking is List ? manualTracking.join(',') : manualTracking;
if("null" != source)
      queryParams["source"] = source is List ? source.join(',') : source;
if("null" != effectOrCause)
      queryParams["effectOrCause"] = effectOrCause is List ? effectOrCause.join(',') : effectOrCause;
if("null" != publicEffectOrCause)
      queryParams["publicEffectOrCause"] = publicEffectOrCause is List ? publicEffectOrCause.join(',') : publicEffectOrCause;
if("null" != limit)
      queryParams["limit"] = limit is List ? limit.join(',') : limit;
if("null" != offset)
      queryParams["offset"] = offset is List ? offset.join(',') : offset;
    
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
        return ApiClient.deserialize(response.body, Variable);
      }
      else {
        return null;
      }
    });
  }
  /// Get info about a variable
  ///
  /// Get all of the settings and information about a variable by its name. If the logged in user has modified the settings for the variable, these will be provided instead of the default settings for that variable.
  Future<Variable> v1VariablesVariableNameGet(String variableName, String accessToken) {
    Object postBody = null;
    // verify required params are set
    if(    // verify required params are set
    if() {
       throw new ApiException(400, "missing required params");
    }) {
       throw new ApiException(400, "missing required params");
    }

    // create path and map variables
    String path = "/v1/variables/{variableName}".replaceAll("{format}","json").replaceAll("{" + "variableName" + "}", variableName.toString());

    // query params
    Map<String, String> queryParams = {};
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if("null" != accessToken)
      queryParams["access_token"] = accessToken is List ? accessToken.join(',') : accessToken;
    
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
        return ApiClient.deserialize(response.body, Variable);
      }
      else {
        return null;
      }
    });
  }
}
