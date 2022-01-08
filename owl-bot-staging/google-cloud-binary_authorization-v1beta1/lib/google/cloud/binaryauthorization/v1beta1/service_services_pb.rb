# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/binaryauthorization/v1beta1/service.proto for package 'Google.Cloud.BinaryAuthorization.V1beta1'
# Original file comments:
# Copyright 2021 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/binaryauthorization/v1beta1/service_pb'

module Google
  module Cloud
    module BinaryAuthorization
      module V1beta1
        module BinauthzManagementServiceV1Beta1
          # Customer-facing API for Cloud Binary Authorization.
          #
          # Google Cloud Management Service for Binary Authorization admission policies
          # and attestation authorities.
          #
          # This API implements a REST model with the following objects:
          #
          # * [Policy][google.cloud.binaryauthorization.v1beta1.Policy]
          # * [Attestor][google.cloud.binaryauthorization.v1beta1.Attestor]
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.binaryauthorization.v1beta1.BinauthzManagementServiceV1Beta1'

            # A [policy][google.cloud.binaryauthorization.v1beta1.Policy] specifies the [attestors][google.cloud.binaryauthorization.v1beta1.Attestor] that must attest to
            # a container image, before the project is allowed to deploy that
            # image. There is at most one policy per project. All image admission
            # requests are permitted if a project has no policy.
            #
            # Gets the [policy][google.cloud.binaryauthorization.v1beta1.Policy] for this project. Returns a default
            # [policy][google.cloud.binaryauthorization.v1beta1.Policy] if the project does not have one.
            rpc :GetPolicy, ::Google::Cloud::BinaryAuthorization::V1beta1::GetPolicyRequest, ::Google::Cloud::BinaryAuthorization::V1beta1::Policy
            # Creates or updates a project's [policy][google.cloud.binaryauthorization.v1beta1.Policy], and returns a copy of the
            # new [policy][google.cloud.binaryauthorization.v1beta1.Policy]. A policy is always updated as a whole, to avoid race
            # conditions with concurrent policy enforcement (or management!)
            # requests. Returns NOT_FOUND if the project does not exist, INVALID_ARGUMENT
            # if the request is malformed.
            rpc :UpdatePolicy, ::Google::Cloud::BinaryAuthorization::V1beta1::UpdatePolicyRequest, ::Google::Cloud::BinaryAuthorization::V1beta1::Policy
            # Creates an [attestor][google.cloud.binaryauthorization.v1beta1.Attestor], and returns a copy of the new
            # [attestor][google.cloud.binaryauthorization.v1beta1.Attestor]. Returns NOT_FOUND if the project does not exist,
            # INVALID_ARGUMENT if the request is malformed, ALREADY_EXISTS if the
            # [attestor][google.cloud.binaryauthorization.v1beta1.Attestor] already exists.
            rpc :CreateAttestor, ::Google::Cloud::BinaryAuthorization::V1beta1::CreateAttestorRequest, ::Google::Cloud::BinaryAuthorization::V1beta1::Attestor
            # Gets an [attestor][google.cloud.binaryauthorization.v1beta1.Attestor].
            # Returns NOT_FOUND if the [attestor][google.cloud.binaryauthorization.v1beta1.Attestor] does not exist.
            rpc :GetAttestor, ::Google::Cloud::BinaryAuthorization::V1beta1::GetAttestorRequest, ::Google::Cloud::BinaryAuthorization::V1beta1::Attestor
            # Updates an [attestor][google.cloud.binaryauthorization.v1beta1.Attestor].
            # Returns NOT_FOUND if the [attestor][google.cloud.binaryauthorization.v1beta1.Attestor] does not exist.
            rpc :UpdateAttestor, ::Google::Cloud::BinaryAuthorization::V1beta1::UpdateAttestorRequest, ::Google::Cloud::BinaryAuthorization::V1beta1::Attestor
            # Lists [attestors][google.cloud.binaryauthorization.v1beta1.Attestor].
            # Returns INVALID_ARGUMENT if the project does not exist.
            rpc :ListAttestors, ::Google::Cloud::BinaryAuthorization::V1beta1::ListAttestorsRequest, ::Google::Cloud::BinaryAuthorization::V1beta1::ListAttestorsResponse
            # Deletes an [attestor][google.cloud.binaryauthorization.v1beta1.Attestor]. Returns NOT_FOUND if the
            # [attestor][google.cloud.binaryauthorization.v1beta1.Attestor] does not exist.
            rpc :DeleteAttestor, ::Google::Cloud::BinaryAuthorization::V1beta1::DeleteAttestorRequest, ::Google::Protobuf::Empty
          end

          Stub = Service.rpc_stub_class
        end
        module SystemPolicyV1Beta1
          # API for working with the system policy.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.binaryauthorization.v1beta1.SystemPolicyV1Beta1'

            # Gets the current system policy in the specified location.
            rpc :GetSystemPolicy, ::Google::Cloud::BinaryAuthorization::V1beta1::GetSystemPolicyRequest, ::Google::Cloud::BinaryAuthorization::V1beta1::Policy
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
