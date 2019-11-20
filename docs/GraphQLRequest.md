# OpenapiClient::GraphQLRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**query** | **String** | The GraphQL query | [default to &#39;{}&#39;]
**operation_name** | **String** | If the Query contains several named operations, the operationName controls which one should be executed | [optional] [default to &#39;&#39;]
**variables** | [**Object**](.md) | Optional Query variables | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::GraphQLRequest.new(query: null,
                                 operation_name: null,
                                 variables: null)
```


