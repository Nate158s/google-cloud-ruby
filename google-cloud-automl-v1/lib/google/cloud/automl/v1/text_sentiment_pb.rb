# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/automl/v1/text_sentiment.proto

require 'google/protobuf'

require 'google/cloud/automl/v1/classification_pb'
require 'google/api/annotations_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/automl/v1/text_sentiment.proto", :syntax => :proto3) do
    add_message "google.cloud.automl.v1.TextSentimentAnnotation" do
      optional :sentiment, :int32, 1
    end
    add_message "google.cloud.automl.v1.TextSentimentEvaluationMetrics" do
      optional :precision, :float, 1
      optional :recall, :float, 2
      optional :f1_score, :float, 3
      optional :mean_absolute_error, :float, 4
      optional :mean_squared_error, :float, 5
      optional :linear_kappa, :float, 6
      optional :quadratic_kappa, :float, 7
      optional :confusion_matrix, :message, 8, "google.cloud.automl.v1.ClassificationEvaluationMetrics.ConfusionMatrix"
    end
  end
end

module Google
  module Cloud
    module AutoML
      module V1
        TextSentimentAnnotation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.TextSentimentAnnotation").msgclass
        TextSentimentEvaluationMetrics = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.TextSentimentEvaluationMetrics").msgclass
      end
    end
  end
end
