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

# Unit tests for OpenapiClient::OrderApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'OrderApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::OrderApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OrderApi' do
    it 'should create an instance of OrderApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::OrderApi)
    end
  end

  # unit tests for add_to_order
  # Add an order item to an order in pending state
  # Adds an order item to an order in pending state
  # @param order_id The Order ID
  # @param order_item 
  # @param [Hash] opts the optional parameters
  # @return [OrderItem]
  describe 'add_to_order test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cancel_order
  # Cancels a given order
  # Returns an updated order.
  # @param order_id The Order ID
  # @param [Hash] opts the optional parameters
  # @return [Order]
  describe 'cancel_order test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_order
  # Create a new order
  # Creates a new order.
  # @param [Hash] opts the optional parameters
  # @return [Order]
  describe 'create_order test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for destroy_order
  # Delete an existing Order
  # Deletes the Order based on order ID passed
  # @param id ID of the resource
  # @param [Hash] opts the optional parameters
  # @return [RestoreKey]
  describe 'destroy_order test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_order_items_from_order
  # Gets a list of items in a given order
  # Gets a list of items associated with an order.
  # @param order_id The Order ID
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The numbers of items to return per page.
  # @option opts [Integer] :offset The number of items to skip before starting to collect the result set.
  # @option opts [Object] :filter Filter for querying collections.
  # @return [OrderItemsCollection]
  describe 'list_order_items_from_order test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_orders
  # Get a list of orders
  # Gets a list of orders associated with the logged in user.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The numbers of items to return per page.
  # @option opts [Integer] :offset The number of items to skip before starting to collect the result set.
  # @option opts [Object] :filter Filter for querying collections.
  # @return [OrdersCollection]
  describe 'list_orders test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for restore_order
  # Restore specific Order
  # Restores the order specified by the order ID.
  # @param id ID of the resource
  # @param restore_key 
  # @param [Hash] opts the optional parameters
  # @return [Order]
  describe 'restore_order test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show_order
  # Get a specific order
  # Get a specific order based on the order ID
  # @param id ID of the resource
  # @param [Hash] opts the optional parameters
  # @return [Order]
  describe 'show_order test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show_order_item_from_order
  # Gets an individual order item from a given order
  # Gets an order item associated with an order.
  # @param order_id The Order ID
  # @param id ID of the resource
  # @param [Hash] opts the optional parameters
  # @return [OrderItem]
  describe 'show_order_item_from_order test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for submit_order
  # Submit a given order
  # Returns an updated order.
  # @param order_id The Order ID
  # @param [Hash] opts the optional parameters
  # @return [Order]
  describe 'submit_order test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
