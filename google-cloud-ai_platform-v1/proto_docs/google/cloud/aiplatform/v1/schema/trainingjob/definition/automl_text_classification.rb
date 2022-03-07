# frozen_string_literal: true

# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Cloud
    module AIPlatform
      module V1
        module Schema
          module TrainingJob
            module Definition
              # A TrainingJob that trains and uploads an AutoML Text Classification Model.
              # @!attribute [rw] inputs
              #   @return [::Google::Cloud::AIPlatform::V1::Schema::TrainingJob::Definition::AutoMlTextClassificationInputs]
              #     The input parameters of this TrainingJob.
              class AutoMlTextClassification
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end

              # @!attribute [rw] multi_label
              #   @return [::Boolean]
              class AutoMlTextClassificationInputs
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end
            end
          end
        end
      end
    end
  end
end
