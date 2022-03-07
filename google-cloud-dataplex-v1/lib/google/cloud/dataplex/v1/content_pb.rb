# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dataplex/v1/content.proto

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/dataplex/v1/analyze_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/dataplex/v1/content.proto", :syntax => :proto3) do
    add_message "google.cloud.dataplex.v1.CreateContentRequest" do
      optional :parent, :string, 1
      optional :content, :message, 2, "google.cloud.dataplex.v1.Content"
      optional :validate_only, :bool, 3
    end
    add_message "google.cloud.dataplex.v1.UpdateContentRequest" do
      optional :update_mask, :message, 1, "google.protobuf.FieldMask"
      optional :content, :message, 2, "google.cloud.dataplex.v1.Content"
      optional :validate_only, :bool, 3
    end
    add_message "google.cloud.dataplex.v1.DeleteContentRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.dataplex.v1.ListContentRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
    end
    add_message "google.cloud.dataplex.v1.ListContentResponse" do
      repeated :content, :message, 1, "google.cloud.dataplex.v1.Content"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.dataplex.v1.GetContentRequest" do
      optional :name, :string, 1
      optional :view, :enum, 2, "google.cloud.dataplex.v1.GetContentRequest.ContentView"
    end
    add_enum "google.cloud.dataplex.v1.GetContentRequest.ContentView" do
      value :CONTENT_VIEW_UNSPECIFIED, 0
      value :BASIC, 1
      value :FULL, 2
    end
  end
end

module Google
  module Cloud
    module Dataplex
      module V1
        CreateContentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.CreateContentRequest").msgclass
        UpdateContentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.UpdateContentRequest").msgclass
        DeleteContentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DeleteContentRequest").msgclass
        ListContentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.ListContentRequest").msgclass
        ListContentResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.ListContentResponse").msgclass
        GetContentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.GetContentRequest").msgclass
        GetContentRequest::ContentView = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.GetContentRequest.ContentView").enummodule
      end
    end
  end
end
