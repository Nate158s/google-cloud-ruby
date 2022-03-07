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

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/ai_platform/v1/version"

require "google/cloud/ai_platform/v1/model_service/credentials"
require "google/cloud/ai_platform/v1/model_service/paths"
require "google/cloud/ai_platform/v1/model_service/operations"
require "google/cloud/ai_platform/v1/model_service/client"

module Google
  module Cloud
    module AIPlatform
      module V1
        ##
        # A service for managing Vertex AI's machine learning Models.
        #
        # To load this service and instantiate a client:
        #
        #     require "google/cloud/ai_platform/v1/model_service"
        #     client = ::Google::Cloud::AIPlatform::V1::ModelService::Client.new
        #
        module ModelService
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "model_service", "helpers.rb"
require "google/cloud/ai_platform/v1/model_service/helpers" if ::File.file? helper_path
