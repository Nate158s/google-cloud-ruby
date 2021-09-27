# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/vision/v1p4beta1/face.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/cloud/vision/v1p4beta1/geometry_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/vision/v1p4beta1/face.proto", :syntax => :proto3) do
    add_message "google.cloud.vision.v1p4beta1.FaceRecognitionParams" do
      repeated :celebrity_set, :string, 1
    end
    add_message "google.cloud.vision.v1p4beta1.Celebrity" do
      optional :name, :string, 1
      optional :display_name, :string, 2
      optional :description, :string, 3
    end
    add_message "google.cloud.vision.v1p4beta1.FaceRecognitionResult" do
      optional :celebrity, :message, 1, "google.cloud.vision.v1p4beta1.Celebrity"
      optional :confidence, :float, 2
    end
  end
end

module Google
  module Cloud
    module Vision
      module V1p4beta1
        FaceRecognitionParams = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1p4beta1.FaceRecognitionParams").msgclass
        Celebrity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1p4beta1.Celebrity").msgclass
        FaceRecognitionResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1p4beta1.FaceRecognitionResult").msgclass
      end
    end
  end
end
