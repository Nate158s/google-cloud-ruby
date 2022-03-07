# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/logging/v2/log_entry.proto

require 'google/api/field_behavior_pb'
require 'google/api/monitored_resource_pb'
require 'google/api/resource_pb'
require 'google/logging/type/http_request_pb'
require 'google/logging/type/log_severity_pb'
require 'google/protobuf/any_pb'
require 'google/protobuf/struct_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/logging/v2/log_entry.proto", :syntax => :proto3) do
    add_message "google.logging.v2.LogEntry" do
      optional :log_name, :string, 12
      optional :resource, :message, 8, "google.api.MonitoredResource"
      optional :timestamp, :message, 9, "google.protobuf.Timestamp"
      optional :receive_timestamp, :message, 24, "google.protobuf.Timestamp"
      optional :severity, :enum, 10, "google.logging.type.LogSeverity"
      optional :insert_id, :string, 4
      optional :http_request, :message, 7, "google.logging.type.HttpRequest"
      map :labels, :string, :string, 11
      optional :operation, :message, 15, "google.logging.v2.LogEntryOperation"
      optional :trace, :string, 22
      optional :span_id, :string, 27
      optional :trace_sampled, :bool, 30
      optional :source_location, :message, 23, "google.logging.v2.LogEntrySourceLocation"
      optional :split, :message, 35, "google.logging.v2.LogSplit"
      oneof :payload do
        optional :proto_payload, :message, 2, "google.protobuf.Any"
        optional :text_payload, :string, 3
        optional :json_payload, :message, 6, "google.protobuf.Struct"
      end
    end
    add_message "google.logging.v2.LogEntryOperation" do
      optional :id, :string, 1
      optional :producer, :string, 2
      optional :first, :bool, 3
      optional :last, :bool, 4
    end
    add_message "google.logging.v2.LogEntrySourceLocation" do
      optional :file, :string, 1
      optional :line, :int64, 2
      optional :function, :string, 3
    end
    add_message "google.logging.v2.LogSplit" do
      optional :uid, :string, 1
      optional :index, :int32, 2
      optional :total_splits, :int32, 3
    end
  end
end

module Google
  module Cloud
    module Logging
      module V2
        LogEntry = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.LogEntry").msgclass
        LogEntryOperation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.LogEntryOperation").msgclass
        LogEntrySourceLocation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.LogEntrySourceLocation").msgclass
        LogSplit = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.v2.LogSplit").msgclass
      end
    end
  end
end
