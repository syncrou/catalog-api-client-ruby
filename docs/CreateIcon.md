# CatalogApiClientRuby::CreateIcon

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**content** | **File** | The binary image contents | [optional] 
**portfolio_id** | **String** | The Portfolio this Icon belongs to | [optional] 
**portfolio_item_id** | **String** | The Portfolio Item this Icon belongs to | [optional] 

## Code Sample

```ruby
require 'CatalogApiClientRuby'

instance = CatalogApiClientRuby::CreateIcon.new(content: null,
                                 portfolio_id: 1,
                                 portfolio_item_id: 1)
```


