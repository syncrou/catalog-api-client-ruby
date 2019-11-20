# OpenapiClient::SharePolicy

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**permissions** | **Array&lt;String&gt;** | The permissions to apply for this share. Each permission comprises of 3 parts catalog:portfolios:verb separated by :. The valid verbs are read, update, delete and order | 
**group_uuids** | **Array&lt;String&gt;** | An array of group UUID&#39;s retrieved from the RBAC Service with whom the resource has to be shared. | 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::SharePolicy.new(permissions: [&quot;catalog:portfolios:read&quot;,&quot;catalog:portfolios:update&quot;,&quot;catalog:portfolios:delete&quot;,&quot;catalog:portfolios:order&quot;],
                                 group_uuids: null)
```


