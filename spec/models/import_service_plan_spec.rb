=begin
#Catalog API

#This API gets and orders catalog items from different cloud sources.

The version of the OpenAPI document: 1.0.0
Contact: support@redhat.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OpenapiClient::ImportServicePlan
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ImportServicePlan' do
  before do
    # run before each test
    @instance = OpenapiClient::ImportServicePlan.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ImportServicePlan' do
    it 'should create an instance of ImportServicePlan' do
      expect(@instance).to be_instance_of(OpenapiClient::ImportServicePlan)
    end
  end
  describe 'test attribute "portfolio_item_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
