# frozen_string_literal: true

# Copyright 2021 Google LLC
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
    module Dialogflow
      module V2
        module ConversationProfiles
          # Path helper methods for the ConversationProfiles API.
          module Paths
            ##
            # Create a fully-qualified Agent resource string.
            #
            # @overload agent_path(project:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/agent`
            #
            #   @param project [String]
            #
            # @overload agent_path(project:, location:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/locations/{location}/agent`
            #
            #   @param project [String]
            #   @param location [String]
            #
            # @return [::String]
            def agent_path **args
              resources = {
                "project" => (proc do |project:|
                  "projects/#{project}/agent"
                end),
                "location:project" => (proc do |project:, location:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

                  "projects/#{project}/locations/#{location}/agent"
                end)
              }

              resource = resources[args.keys.sort.join(":")]
              raise ::ArgumentError, "no resource found for values #{args.keys}" if resource.nil?
              resource.call(**args)
            end

            ##
            # Create a fully-qualified CXSecuritySettings resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/securitySettings/{security_settings}`
            #
            # @param project [String]
            # @param location [String]
            # @param security_settings [String]
            #
            # @return [::String]
            def cx_security_settings_path project:, location:, security_settings:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/securitySettings/#{security_settings}"
            end

            ##
            # Create a fully-qualified ConversationModel resource string.
            #
            # @overload conversation_model_path(project:, conversation_model:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/conversationModels/{conversation_model}`
            #
            #   @param project [String]
            #   @param conversation_model [String]
            #
            # @overload conversation_model_path(project:, location:, conversation_model:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/locations/{location}/conversationModels/{conversation_model}`
            #
            #   @param project [String]
            #   @param location [String]
            #   @param conversation_model [String]
            #
            # @return [::String]
            def conversation_model_path **args
              resources = {
                "conversation_model:project" => (proc do |project:, conversation_model:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

                  "projects/#{project}/conversationModels/#{conversation_model}"
                end),
                "conversation_model:location:project" => (proc do |project:, location:, conversation_model:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

                  "projects/#{project}/locations/#{location}/conversationModels/#{conversation_model}"
                end)
              }

              resource = resources[args.keys.sort.join(":")]
              raise ::ArgumentError, "no resource found for values #{args.keys}" if resource.nil?
              resource.call(**args)
            end

            ##
            # Create a fully-qualified ConversationProfile resource string.
            #
            # @overload conversation_profile_path(project:, conversation_profile:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/conversationProfiles/{conversation_profile}`
            #
            #   @param project [String]
            #   @param conversation_profile [String]
            #
            # @overload conversation_profile_path(project:, location:, conversation_profile:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/locations/{location}/conversationProfiles/{conversation_profile}`
            #
            #   @param project [String]
            #   @param location [String]
            #   @param conversation_profile [String]
            #
            # @return [::String]
            def conversation_profile_path **args
              resources = {
                "conversation_profile:project" => (proc do |project:, conversation_profile:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

                  "projects/#{project}/conversationProfiles/#{conversation_profile}"
                end),
                "conversation_profile:location:project" => (proc do |project:, location:, conversation_profile:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

                  "projects/#{project}/locations/#{location}/conversationProfiles/#{conversation_profile}"
                end)
              }

              resource = resources[args.keys.sort.join(":")]
              raise ::ArgumentError, "no resource found for values #{args.keys}" if resource.nil?
              resource.call(**args)
            end

            ##
            # Create a fully-qualified Document resource string.
            #
            # @overload document_path(project:, knowledge_base:, document:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/knowledgeBases/{knowledge_base}/documents/{document}`
            #
            #   @param project [String]
            #   @param knowledge_base [String]
            #   @param document [String]
            #
            # @overload document_path(project:, location:, knowledge_base:, document:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/locations/{location}/knowledgeBases/{knowledge_base}/documents/{document}`
            #
            #   @param project [String]
            #   @param location [String]
            #   @param knowledge_base [String]
            #   @param document [String]
            #
            # @return [::String]
            def document_path **args
              resources = {
                "document:knowledge_base:project" => (proc do |project:, knowledge_base:, document:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                  raise ::ArgumentError, "knowledge_base cannot contain /" if knowledge_base.to_s.include? "/"

                  "projects/#{project}/knowledgeBases/#{knowledge_base}/documents/#{document}"
                end),
                "document:knowledge_base:location:project" => (proc do |project:, location:, knowledge_base:, document:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                  raise ::ArgumentError, "knowledge_base cannot contain /" if knowledge_base.to_s.include? "/"

                  "projects/#{project}/locations/#{location}/knowledgeBases/#{knowledge_base}/documents/#{document}"
                end)
              }

              resource = resources[args.keys.sort.join(":")]
              raise ::ArgumentError, "no resource found for values #{args.keys}" if resource.nil?
              resource.call(**args)
            end

            ##
            # Create a fully-qualified KnowledgeBase resource string.
            #
            # @overload knowledge_base_path(project:, knowledge_base:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/knowledgeBases/{knowledge_base}`
            #
            #   @param project [String]
            #   @param knowledge_base [String]
            #
            # @overload knowledge_base_path(project:, location:, knowledge_base:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/locations/{location}/knowledgeBases/{knowledge_base}`
            #
            #   @param project [String]
            #   @param location [String]
            #   @param knowledge_base [String]
            #
            # @return [::String]
            def knowledge_base_path **args
              resources = {
                "knowledge_base:project" => (proc do |project:, knowledge_base:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

                  "projects/#{project}/knowledgeBases/#{knowledge_base}"
                end),
                "knowledge_base:location:project" => (proc do |project:, location:, knowledge_base:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

                  "projects/#{project}/locations/#{location}/knowledgeBases/#{knowledge_base}"
                end)
              }

              resource = resources[args.keys.sort.join(":")]
              raise ::ArgumentError, "no resource found for values #{args.keys}" if resource.nil?
              resource.call(**args)
            end

            ##
            # Create a fully-qualified Location resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}`
            #
            # @param project [String]
            # @param location [String]
            #
            # @return [::String]
            def location_path project:, location:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

              "projects/#{project}/locations/#{location}"
            end

            ##
            # Create a fully-qualified Project resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}`
            #
            # @param project [String]
            #
            # @return [::String]
            def project_path project:
              "projects/#{project}"
            end

            extend self
          end
        end
      end
    end
  end
end
