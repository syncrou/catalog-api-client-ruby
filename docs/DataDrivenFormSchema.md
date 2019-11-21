# CatalogApiClientRuby::DataDrivenFormSchema

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**schema** | [**Object**](.md) |  | [optional] 

## Code Sample

```ruby
require 'CatalogApiClientRuby'

instance = CatalogApiClientRuby::DataDrivenFormSchema.new(schema: {&quot;schema&quot;:{&quot;title&quot;:&quot;&quot;,&quot;fields&quot;:[{&quot;name&quot;:&quot;username&quot;,&quot;label&quot;:&quot;What is your name&quot;,&quot;validate&quot;:[{&quot;type&quot;:&quot;required-validator&quot;},{&quot;type&quot;:&quot;min-length-validator&quot;,&quot;threshold&quot;:0},{&quot;type&quot;:&quot;max-length-validator&quot;,&quot;threshold&quot;:255}],&quot;component&quot;:&quot;text-field&quot;,&quot;helperText&quot;:&quot;&quot;,&quot;isRequired&quot;:true,&quot;initialValue&quot;:&quot;&quot;},{&quot;name&quot;:&quot;quest&quot;,&quot;label&quot;:&quot;What is your quest?&quot;,&quot;options&quot;:[{&quot;label&quot;:&quot;Test Approval&quot;,&quot;value&quot;:&quot;Test Approval&quot;},{&quot;label&quot;:&quot;Test Catalog&quot;,&quot;value&quot;:&quot;Test Catalog&quot;},{&quot;label&quot;:&quot;Test Topology&quot;,&quot;value&quot;:&quot;Test Topology&quot;},{&quot;label&quot;:&quot;Seek the Holy Grail&quot;,&quot;value&quot;:&quot;Seek the Holy Grail&quot;}],&quot;validate&quot;:[{&quot;type&quot;:&quot;required-validator&quot;}],&quot;component&quot;:&quot;select-field&quot;,&quot;helperText&quot;:&quot;&quot;,&quot;isRequired&quot;:true,&quot;initialValue&quot;:&quot;&quot;},{&quot;name&quot;:&quot;airspeed&quot;,&quot;type&quot;:&quot;number&quot;,&quot;label&quot;:&quot;What is the airspeed velocity of an unladen swallow?&quot;,&quot;dataType&quot;:&quot;float&quot;,&quot;validate&quot;:[{&quot;type&quot;:&quot;min-number-value&quot;,&quot;value&quot;:0},{&quot;type&quot;:&quot;max-number-value&quot;,&quot;value&quot;:10}],&quot;component&quot;:&quot;text-field&quot;,&quot;helperText&quot;:&quot;Type: Float&quot;,&quot;initialValue&quot;:&quot;&quot;},{&quot;name&quot;:&quot;int_value&quot;,&quot;type&quot;:&quot;number&quot;,&quot;label&quot;:&quot;Integer value&quot;,&quot;dataType&quot;:&quot;integer&quot;,&quot;validate&quot;:[{&quot;type&quot;:&quot;required-validator&quot;},{&quot;type&quot;:&quot;min-number-value&quot;,&quot;value&quot;:0},{&quot;type&quot;:&quot;max-number-value&quot;,&quot;value&quot;:10}],&quot;component&quot;:&quot;text-field&quot;,&quot;helperText&quot;:&quot;&quot;,&quot;isRequired&quot;:true,&quot;initialValue&quot;:5}],&quot;description&quot;:&quot;&quot;},&quot;schemaType&quot;:&quot;default&quot;})
```


