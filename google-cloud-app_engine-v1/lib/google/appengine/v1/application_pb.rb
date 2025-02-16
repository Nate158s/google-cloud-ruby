# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/appengine/v1/application.proto

require 'google/protobuf/duration_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/appengine/v1/application.proto", :syntax => :proto3) do
    add_message "google.appengine.v1.Application" do
      optional :name, :string, 1
      optional :id, :string, 2
      repeated :dispatch_rules, :message, 3, "google.appengine.v1.UrlDispatchRule"
      optional :auth_domain, :string, 6
      optional :location_id, :string, 7
      optional :code_bucket, :string, 8
      optional :default_cookie_expiration, :message, 9, "google.protobuf.Duration"
      optional :serving_status, :enum, 10, "google.appengine.v1.Application.ServingStatus"
      optional :default_hostname, :string, 11
      optional :default_bucket, :string, 12
      optional :iap, :message, 14, "google.appengine.v1.Application.IdentityAwareProxy"
      optional :gcr_domain, :string, 16
      optional :database_type, :enum, 17, "google.appengine.v1.Application.DatabaseType"
      optional :feature_settings, :message, 18, "google.appengine.v1.Application.FeatureSettings"
    end
    add_message "google.appengine.v1.Application.IdentityAwareProxy" do
      optional :enabled, :bool, 1
      optional :oauth2_client_id, :string, 2
      optional :oauth2_client_secret, :string, 3
      optional :oauth2_client_secret_sha256, :string, 4
    end
    add_message "google.appengine.v1.Application.FeatureSettings" do
      optional :split_health_checks, :bool, 1
      optional :use_container_optimized_os, :bool, 2
    end
    add_enum "google.appengine.v1.Application.ServingStatus" do
      value :UNSPECIFIED, 0
      value :SERVING, 1
      value :USER_DISABLED, 2
      value :SYSTEM_DISABLED, 3
    end
    add_enum "google.appengine.v1.Application.DatabaseType" do
      value :DATABASE_TYPE_UNSPECIFIED, 0
      value :CLOUD_DATASTORE, 1
      value :CLOUD_FIRESTORE, 2
      value :CLOUD_DATASTORE_COMPATIBILITY, 3
    end
    add_message "google.appengine.v1.UrlDispatchRule" do
      optional :domain, :string, 1
      optional :path, :string, 2
      optional :service, :string, 3
    end
  end
end

module Google
  module Cloud
    module AppEngine
      module V1
        Application = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.Application").msgclass
        Application::IdentityAwareProxy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.Application.IdentityAwareProxy").msgclass
        Application::FeatureSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.Application.FeatureSettings").msgclass
        Application::ServingStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.Application.ServingStatus").enummodule
        Application::DatabaseType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.Application.DatabaseType").enummodule
        UrlDispatchRule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.UrlDispatchRule").msgclass
      end
    end
  end
end
