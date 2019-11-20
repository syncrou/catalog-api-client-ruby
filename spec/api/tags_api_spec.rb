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

# Unit tests for OpenapiClient::TagsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TagsApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::TagsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TagsApi' do
    it 'should create an instance of TagsApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::TagsApi)
    end
  end

  # unit tests for list_tag_portfolio_items
  # List Portfolio Items for Tag
  # Returns an array of Portfolio Item objects
  # @param id ID of the resource
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The numbers of items to return per page.
  # @option opts [Integer] :offset The number of items to skip before starting to collect the result set.
  # @option opts [Object] :filter Filter for querying collections.
  # @return [PortfolioItemsCollection]
  describe 'list_tag_portfolio_items test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_tag_portfolios
  # List Portfolios for Tag
  # Returns an array of Portfolio objects
  # @param id ID of the resource
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The numbers of items to return per page.
  # @option opts [Integer] :offset The number of items to skip before starting to collect the result set.
  # @option opts [Object] :filter Filter for querying collections.
  # @return [PortfoliosCollection]
  describe 'list_tag_portfolios test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_tags
  # List Tags
  # List Tags
  # @param [Hash] opts the optional parameters
  # @return [TagsCollection]
  describe 'list_tags test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show_tag
  # Show Tag
  # Show a specific Tag
  # @param id ID of the resource
  # @param [Hash] opts the optional parameters
  # @return [Tag]
  describe 'show_tag test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
