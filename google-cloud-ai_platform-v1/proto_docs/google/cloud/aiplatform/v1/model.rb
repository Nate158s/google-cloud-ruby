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
        # A trained machine learning Model.
        # @!attribute [rw] name
        #   @return [::String]
        #     The resource name of the Model.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Required. The display name of the Model.
        #     The name can be up to 128 characters long and can be consist of any UTF-8
        #     characters.
        # @!attribute [rw] description
        #   @return [::String]
        #     The description of the Model.
        # @!attribute [rw] predict_schemata
        #   @return [::Google::Cloud::AIPlatform::V1::PredictSchemata]
        #     The schemata that describe formats of the Model's predictions and
        #     explanations as given and returned via
        #     {::Google::Cloud::AIPlatform::V1::PredictionService::Client#predict PredictionService.Predict} and {::Google::Cloud::AIPlatform::V1::PredictionService::Client#explain PredictionService.Explain}.
        # @!attribute [rw] metadata_schema_uri
        #   @return [::String]
        #     Immutable. Points to a YAML file stored on Google Cloud Storage describing additional
        #     information about the Model, that is specific to it. Unset if the Model
        #     does not have any additional information.
        #     The schema is defined as an OpenAPI 3.0.2 [Schema
        #     Object](https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.2.md#schemaObject).
        #     AutoML Models always have this field populated by Vertex AI, if no
        #     additional metadata is needed, this field is set to an empty string.
        #     Note: The URI given on output will be immutable and probably different,
        #     including the URI scheme, than the one given on input. The output URI will
        #     point to a location where the user only has a read access.
        # @!attribute [rw] metadata
        #   @return [::Google::Protobuf::Value]
        #     Immutable. An additional information about the Model; the schema of the metadata can
        #     be found in {::Google::Cloud::AIPlatform::V1::Model#metadata_schema_uri metadata_schema}.
        #     Unset if the Model does not have any additional information.
        # @!attribute [r] supported_export_formats
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::Model::ExportFormat>]
        #     Output only. The formats in which this Model may be exported. If empty, this Model is
        #     not available for export.
        # @!attribute [r] training_pipeline
        #   @return [::String]
        #     Output only. The resource name of the TrainingPipeline that uploaded this Model, if
        #     any.
        # @!attribute [rw] container_spec
        #   @return [::Google::Cloud::AIPlatform::V1::ModelContainerSpec]
        #     Input only. The specification of the container that is to be used when deploying
        #     this Model. The specification is ingested upon
        #     {::Google::Cloud::AIPlatform::V1::ModelService::Client#upload_model ModelService.UploadModel}, and all binaries it contains are copied
        #     and stored internally by Vertex AI.
        #     Not present for AutoML Models.
        # @!attribute [rw] artifact_uri
        #   @return [::String]
        #     Immutable. The path to the directory containing the Model artifact and any of its
        #     supporting files.
        #     Not present for AutoML Models.
        # @!attribute [r] supported_deployment_resources_types
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::Model::DeploymentResourcesType>]
        #     Output only. When this Model is deployed, its prediction resources are described by the
        #     `prediction_resources` field of the {::Google::Cloud::AIPlatform::V1::Endpoint#deployed_models Endpoint.deployed_models} object.
        #     Because not all Models support all resource configuration types, the
        #     configuration types this Model supports are listed here. If no
        #     configuration types are listed, the Model cannot be deployed to an
        #     {::Google::Cloud::AIPlatform::V1::Endpoint Endpoint} and does not support
        #     online predictions ({::Google::Cloud::AIPlatform::V1::PredictionService::Client#predict PredictionService.Predict} or
        #     {::Google::Cloud::AIPlatform::V1::PredictionService::Client#explain PredictionService.Explain}). Such a Model can serve predictions by
        #     using a {::Google::Cloud::AIPlatform::V1::BatchPredictionJob BatchPredictionJob}, if it has at least one entry each in
        #     {::Google::Cloud::AIPlatform::V1::Model#supported_input_storage_formats supported_input_storage_formats} and
        #     {::Google::Cloud::AIPlatform::V1::Model#supported_output_storage_formats supported_output_storage_formats}.
        # @!attribute [r] supported_input_storage_formats
        #   @return [::Array<::String>]
        #     Output only. The formats this Model supports in
        #     {::Google::Cloud::AIPlatform::V1::BatchPredictionJob#input_config BatchPredictionJob.input_config}. If
        #     {::Google::Cloud::AIPlatform::V1::PredictSchemata#instance_schema_uri PredictSchemata.instance_schema_uri} exists, the instances
        #     should be given as per that schema.
        #
        #     The possible formats are:
        #
        #     * `jsonl`
        #     The JSON Lines format, where each instance is a single line. Uses
        #     {::Google::Cloud::AIPlatform::V1::BatchPredictionJob::InputConfig#gcs_source GcsSource}.
        #
        #     * `csv`
        #     The CSV format, where each instance is a single comma-separated line.
        #     The first line in the file is the header, containing comma-separated field
        #     names. Uses {::Google::Cloud::AIPlatform::V1::BatchPredictionJob::InputConfig#gcs_source GcsSource}.
        #
        #     * `tf-record`
        #     The TFRecord format, where each instance is a single record in tfrecord
        #     syntax. Uses {::Google::Cloud::AIPlatform::V1::BatchPredictionJob::InputConfig#gcs_source GcsSource}.
        #
        #     * `tf-record-gzip`
        #     Similar to `tf-record`, but the file is gzipped. Uses
        #     {::Google::Cloud::AIPlatform::V1::BatchPredictionJob::InputConfig#gcs_source GcsSource}.
        #
        #     * `bigquery`
        #     Each instance is a single row in BigQuery. Uses
        #     {::Google::Cloud::AIPlatform::V1::BatchPredictionJob::InputConfig#bigquery_source BigQuerySource}.
        #
        #     * `file-list`
        #     Each line of the file is the location of an instance to process, uses
        #     `gcs_source` field of the
        #     {::Google::Cloud::AIPlatform::V1::BatchPredictionJob::InputConfig InputConfig} object.
        #
        #
        #     If this Model doesn't support any of these formats it means it cannot be
        #     used with a {::Google::Cloud::AIPlatform::V1::BatchPredictionJob BatchPredictionJob}. However, if it has
        #     {::Google::Cloud::AIPlatform::V1::Model#supported_deployment_resources_types supported_deployment_resources_types}, it could serve online
        #     predictions by using {::Google::Cloud::AIPlatform::V1::PredictionService::Client#predict PredictionService.Predict} or
        #     {::Google::Cloud::AIPlatform::V1::PredictionService::Client#explain PredictionService.Explain}.
        # @!attribute [r] supported_output_storage_formats
        #   @return [::Array<::String>]
        #     Output only. The formats this Model supports in
        #     {::Google::Cloud::AIPlatform::V1::BatchPredictionJob#output_config BatchPredictionJob.output_config}. If both
        #     {::Google::Cloud::AIPlatform::V1::PredictSchemata#instance_schema_uri PredictSchemata.instance_schema_uri} and
        #     {::Google::Cloud::AIPlatform::V1::PredictSchemata#prediction_schema_uri PredictSchemata.prediction_schema_uri} exist, the predictions
        #     are returned together with their instances. In other words, the
        #     prediction has the original instance data first, followed
        #     by the actual prediction content (as per the schema).
        #
        #     The possible formats are:
        #
        #     * `jsonl`
        #     The JSON Lines format, where each prediction is a single line. Uses
        #     {::Google::Cloud::AIPlatform::V1::BatchPredictionJob::OutputConfig#gcs_destination GcsDestination}.
        #
        #     * `csv`
        #     The CSV format, where each prediction is a single comma-separated line.
        #     The first line in the file is the header, containing comma-separated field
        #     names. Uses
        #     {::Google::Cloud::AIPlatform::V1::BatchPredictionJob::OutputConfig#gcs_destination GcsDestination}.
        #
        #     * `bigquery`
        #     Each prediction is a single row in a BigQuery table, uses
        #     {::Google::Cloud::AIPlatform::V1::BatchPredictionJob::OutputConfig#bigquery_destination BigQueryDestination}
        #     .
        #
        #
        #     If this Model doesn't support any of these formats it means it cannot be
        #     used with a {::Google::Cloud::AIPlatform::V1::BatchPredictionJob BatchPredictionJob}. However, if it has
        #     {::Google::Cloud::AIPlatform::V1::Model#supported_deployment_resources_types supported_deployment_resources_types}, it could serve online
        #     predictions by using {::Google::Cloud::AIPlatform::V1::PredictionService::Client#predict PredictionService.Predict} or
        #     {::Google::Cloud::AIPlatform::V1::PredictionService::Client#explain PredictionService.Explain}.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when this Model was uploaded into Vertex AI.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when this Model was most recently updated.
        # @!attribute [r] deployed_models
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::DeployedModelRef>]
        #     Output only. The pointers to DeployedModels created from this Model. Note that
        #     Model could have been deployed to Endpoints in different Locations.
        # @!attribute [rw] explanation_spec
        #   @return [::Google::Cloud::AIPlatform::V1::ExplanationSpec]
        #     The default explanation specification for this Model.
        #
        #     The Model can be used for [requesting
        #     explanation][PredictionService.Explain] after being
        #     {::Google::Cloud::AIPlatform::V1::EndpointService::Client#deploy_model deployed} if it is populated.
        #     The Model can be used for [batch
        #     explanation][BatchPredictionJob.generate_explanation] if it is populated.
        #
        #     All fields of the explanation_spec can be overridden by
        #     {::Google::Cloud::AIPlatform::V1::DeployedModel#explanation_spec explanation_spec} of
        #     {::Google::Cloud::AIPlatform::V1::DeployModelRequest#deployed_model DeployModelRequest.deployed_model}, or
        #     {::Google::Cloud::AIPlatform::V1::BatchPredictionJob#explanation_spec explanation_spec} of
        #     {::Google::Cloud::AIPlatform::V1::BatchPredictionJob BatchPredictionJob}.
        #
        #     If the default explanation specification is not set for this Model, this
        #     Model can still be used for [requesting
        #     explanation][PredictionService.Explain] by setting
        #     {::Google::Cloud::AIPlatform::V1::DeployedModel#explanation_spec explanation_spec} of
        #     {::Google::Cloud::AIPlatform::V1::DeployModelRequest#deployed_model DeployModelRequest.deployed_model} and for [batch
        #     explanation][BatchPredictionJob.generate_explanation] by setting
        #     {::Google::Cloud::AIPlatform::V1::BatchPredictionJob#explanation_spec explanation_spec} of
        #     {::Google::Cloud::AIPlatform::V1::BatchPredictionJob BatchPredictionJob}.
        # @!attribute [rw] etag
        #   @return [::String]
        #     Used to perform consistent read-modify-write updates. If not set, a blind
        #     "overwrite" update happens.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     The labels with user-defined metadata to organize your Models.
        #
        #     Label keys and values can be no longer than 64 characters
        #     (Unicode codepoints), can only contain lowercase letters, numeric
        #     characters, underscores and dashes. International characters are allowed.
        #
        #     See https://goo.gl/xmQnxf for more information and examples of labels.
        # @!attribute [rw] encryption_spec
        #   @return [::Google::Cloud::AIPlatform::V1::EncryptionSpec]
        #     Customer-managed encryption key spec for a Model. If set, this
        #     Model and all sub-resources of this Model will be secured by this key.
        class Model
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Represents export format supported by the Model.
          # All formats export to Google Cloud Storage.
          # @!attribute [r] id
          #   @return [::String]
          #     Output only. The ID of the export format.
          #     The possible format IDs are:
          #
          #     * `tflite`
          #     Used for Android mobile devices.
          #
          #     * `edgetpu-tflite`
          #     Used for [Edge TPU](https://cloud.google.com/edge-tpu/) devices.
          #
          #     * `tf-saved-model`
          #     A tensorflow model in SavedModel format.
          #
          #     * `tf-js`
          #     A [TensorFlow.js](https://www.tensorflow.org/js) model that can be used
          #     in the browser and in Node.js using JavaScript.
          #
          #     * `core-ml`
          #     Used for iOS mobile devices.
          #
          #     * `custom-trained`
          #     A Model that was uploaded or trained by custom code.
          # @!attribute [r] exportable_contents
          #   @return [::Array<::Google::Cloud::AIPlatform::V1::Model::ExportFormat::ExportableContent>]
          #     Output only. The content of this Model that may be exported.
          class ExportFormat
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # The Model content that can be exported.
            module ExportableContent
              # Should not be used.
              EXPORTABLE_CONTENT_UNSPECIFIED = 0

              # Model artifact and any of its supported files. Will be exported to the
              # location specified by the `artifactDestination` field of the
              # {::Google::Cloud::AIPlatform::V1::ExportModelRequest#output_config ExportModelRequest.output_config} object.
              ARTIFACT = 1

              # The container image that is to be used when deploying this Model. Will
              # be exported to the location specified by the `imageDestination` field
              # of the {::Google::Cloud::AIPlatform::V1::ExportModelRequest#output_config ExportModelRequest.output_config} object.
              IMAGE = 2
            end
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Identifies a type of Model's prediction resources.
          module DeploymentResourcesType
            # Should not be used.
            DEPLOYMENT_RESOURCES_TYPE_UNSPECIFIED = 0

            # Resources that are dedicated to the {::Google::Cloud::AIPlatform::V1::DeployedModel DeployedModel}, and that need a
            # higher degree of manual configuration.
            DEDICATED_RESOURCES = 1

            # Resources that to large degree are decided by Vertex AI, and require
            # only a modest additional configuration.
            AUTOMATIC_RESOURCES = 2
          end
        end

        # Contains the schemata used in Model's predictions and explanations via
        # {::Google::Cloud::AIPlatform::V1::PredictionService::Client#predict PredictionService.Predict}, {::Google::Cloud::AIPlatform::V1::PredictionService::Client#explain PredictionService.Explain} and
        # {::Google::Cloud::AIPlatform::V1::BatchPredictionJob BatchPredictionJob}.
        # @!attribute [rw] instance_schema_uri
        #   @return [::String]
        #     Immutable. Points to a YAML file stored on Google Cloud Storage describing the format
        #     of a single instance, which are used in {::Google::Cloud::AIPlatform::V1::PredictRequest#instances PredictRequest.instances},
        #     {::Google::Cloud::AIPlatform::V1::ExplainRequest#instances ExplainRequest.instances} and
        #     {::Google::Cloud::AIPlatform::V1::BatchPredictionJob#input_config BatchPredictionJob.input_config}.
        #     The schema is defined as an OpenAPI 3.0.2 [Schema
        #     Object](https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.2.md#schemaObject).
        #     AutoML Models always have this field populated by Vertex AI.
        #     Note: The URI given on output will be immutable and probably different,
        #     including the URI scheme, than the one given on input. The output URI will
        #     point to a location where the user only has a read access.
        # @!attribute [rw] parameters_schema_uri
        #   @return [::String]
        #     Immutable. Points to a YAML file stored on Google Cloud Storage describing the
        #     parameters of prediction and explanation via
        #     {::Google::Cloud::AIPlatform::V1::PredictRequest#parameters PredictRequest.parameters}, {::Google::Cloud::AIPlatform::V1::ExplainRequest#parameters ExplainRequest.parameters} and
        #     {::Google::Cloud::AIPlatform::V1::BatchPredictionJob#model_parameters BatchPredictionJob.model_parameters}.
        #     The schema is defined as an OpenAPI 3.0.2 [Schema
        #     Object](https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.2.md#schemaObject).
        #     AutoML Models always have this field populated by Vertex AI, if no
        #     parameters are supported, then it is set to an empty string.
        #     Note: The URI given on output will be immutable and probably different,
        #     including the URI scheme, than the one given on input. The output URI will
        #     point to a location where the user only has a read access.
        # @!attribute [rw] prediction_schema_uri
        #   @return [::String]
        #     Immutable. Points to a YAML file stored on Google Cloud Storage describing the format
        #     of a single prediction produced by this Model, which are returned via
        #     {::Google::Cloud::AIPlatform::V1::PredictResponse#predictions PredictResponse.predictions}, {::Google::Cloud::AIPlatform::V1::ExplainResponse#explanations ExplainResponse.explanations}, and
        #     {::Google::Cloud::AIPlatform::V1::BatchPredictionJob#output_config BatchPredictionJob.output_config}.
        #     The schema is defined as an OpenAPI 3.0.2 [Schema
        #     Object](https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.2.md#schemaObject).
        #     AutoML Models always have this field populated by Vertex AI.
        #     Note: The URI given on output will be immutable and probably different,
        #     including the URI scheme, than the one given on input. The output URI will
        #     point to a location where the user only has a read access.
        class PredictSchemata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Specification of a container for serving predictions. Some fields in this
        # message correspond to fields in the [Kubernetes Container v1 core
        # specification](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#container-v1-core).
        # @!attribute [rw] image_uri
        #   @return [::String]
        #     Required. Immutable. URI of the Docker image to be used as the custom container for serving
        #     predictions. This URI must identify an image in Artifact Registry or
        #     Container Registry. Learn more about the [container publishing
        #     requirements](https://cloud.google.com/vertex-ai/docs/predictions/custom-container-requirements#publishing),
        #     including permissions requirements for the Vertex AI Service Agent.
        #
        #     The container image is ingested upon {::Google::Cloud::AIPlatform::V1::ModelService::Client#upload_model ModelService.UploadModel}, stored
        #     internally, and this original path is afterwards not used.
        #
        #     To learn about the requirements for the Docker image itself, see
        #     [Custom container
        #     requirements](https://cloud.google.com/vertex-ai/docs/predictions/custom-container-requirements#).
        #
        #     You can use the URI to one of Vertex AI's [pre-built container images for
        #     prediction](https://cloud.google.com/vertex-ai/docs/predictions/pre-built-containers)
        #     in this field.
        # @!attribute [rw] command
        #   @return [::Array<::String>]
        #     Immutable. Specifies the command that runs when the container starts. This overrides
        #     the container's
        #     [ENTRYPOINT](https://docs.docker.com/engine/reference/builder/#entrypoint).
        #     Specify this field as an array of executable and arguments, similar to a
        #     Docker `ENTRYPOINT`'s "exec" form, not its "shell" form.
        #
        #     If you do not specify this field, then the container's `ENTRYPOINT` runs,
        #     in conjunction with the {::Google::Cloud::AIPlatform::V1::ModelContainerSpec#args args} field or the
        #     container's [`CMD`](https://docs.docker.com/engine/reference/builder/#cmd),
        #     if either exists. If this field is not specified and the container does not
        #     have an `ENTRYPOINT`, then refer to the Docker documentation about [how
        #     `CMD` and `ENTRYPOINT`
        #     interact](https://docs.docker.com/engine/reference/builder/#understand-how-cmd-and-entrypoint-interact).
        #
        #     If you specify this field, then you can also specify the `args` field to
        #     provide additional arguments for this command. However, if you specify this
        #     field, then the container's `CMD` is ignored. See the
        #     [Kubernetes documentation about how the
        #     `command` and `args` fields interact with a container's `ENTRYPOINT` and
        #     `CMD`](https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#notes).
        #
        #     In this field, you can reference [environment variables set by Vertex
        #     AI](https://cloud.google.com/vertex-ai/docs/predictions/custom-container-requirements#aip-variables)
        #     and environment variables set in the {::Google::Cloud::AIPlatform::V1::ModelContainerSpec#env env} field.
        #     You cannot reference environment variables set in the Docker image. In
        #     order for environment variables to be expanded, reference them by using the
        #     following syntax:
        #     <code>$(<var>VARIABLE_NAME</var>)</code>
        #     Note that this differs from Bash variable expansion, which does not use
        #     parentheses. If a variable cannot be resolved, the reference in the input
        #     string is used unchanged. To avoid variable expansion, you can escape this
        #     syntax with `$$`; for example:
        #     <code>$$(<var>VARIABLE_NAME</var>)</code>
        #     This field corresponds to the `command` field of the Kubernetes Containers
        #     [v1 core
        #     API](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#container-v1-core).
        # @!attribute [rw] args
        #   @return [::Array<::String>]
        #     Immutable. Specifies arguments for the command that runs when the container starts.
        #     This overrides the container's
        #     [`CMD`](https://docs.docker.com/engine/reference/builder/#cmd). Specify
        #     this field as an array of executable and arguments, similar to a Docker
        #     `CMD`'s "default parameters" form.
        #
        #     If you don't specify this field but do specify the
        #     {::Google::Cloud::AIPlatform::V1::ModelContainerSpec#command command} field, then the command from the
        #     `command` field runs without any additional arguments. See the
        #     [Kubernetes documentation about how the
        #     `command` and `args` fields interact with a container's `ENTRYPOINT` and
        #     `CMD`](https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#notes).
        #
        #     If you don't specify this field and don't specify the `command` field,
        #     then the container's
        #     [`ENTRYPOINT`](https://docs.docker.com/engine/reference/builder/#cmd) and
        #     `CMD` determine what runs based on their default behavior. See the Docker
        #     documentation about [how `CMD` and `ENTRYPOINT`
        #     interact](https://docs.docker.com/engine/reference/builder/#understand-how-cmd-and-entrypoint-interact).
        #
        #     In this field, you can reference [environment variables
        #     set by Vertex
        #     AI](https://cloud.google.com/vertex-ai/docs/predictions/custom-container-requirements#aip-variables)
        #     and environment variables set in the {::Google::Cloud::AIPlatform::V1::ModelContainerSpec#env env} field.
        #     You cannot reference environment variables set in the Docker image. In
        #     order for environment variables to be expanded, reference them by using the
        #     following syntax:
        #     <code>$(<var>VARIABLE_NAME</var>)</code>
        #     Note that this differs from Bash variable expansion, which does not use
        #     parentheses. If a variable cannot be resolved, the reference in the input
        #     string is used unchanged. To avoid variable expansion, you can escape this
        #     syntax with `$$`; for example:
        #     <code>$$(<var>VARIABLE_NAME</var>)</code>
        #     This field corresponds to the `args` field of the Kubernetes Containers
        #     [v1 core
        #     API](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#container-v1-core).
        # @!attribute [rw] env
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::EnvVar>]
        #     Immutable. List of environment variables to set in the container. After the container
        #     starts running, code running in the container can read these environment
        #     variables.
        #
        #     Additionally, the {::Google::Cloud::AIPlatform::V1::ModelContainerSpec#command command} and
        #     {::Google::Cloud::AIPlatform::V1::ModelContainerSpec#args args} fields can reference these variables. Later
        #     entries in this list can also reference earlier entries. For example, the
        #     following example sets the variable `VAR_2` to have the value `foo bar`:
        #
        #     ```json
        #     [
        #       {
        #         "name": "VAR_1",
        #         "value": "foo"
        #       },
        #       {
        #         "name": "VAR_2",
        #         "value": "$(VAR_1) bar"
        #       }
        #     ]
        #     ```
        #
        #     If you switch the order of the variables in the example, then the expansion
        #     does not occur.
        #
        #     This field corresponds to the `env` field of the Kubernetes Containers
        #     [v1 core
        #     API](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#container-v1-core).
        # @!attribute [rw] ports
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::Port>]
        #     Immutable. List of ports to expose from the container. Vertex AI sends any
        #     prediction requests that it receives to the first port on this list. Vertex
        #     AI also sends
        #     [liveness and health
        #     checks](https://cloud.google.com/vertex-ai/docs/predictions/custom-container-requirements#liveness)
        #     to this port.
        #
        #     If you do not specify this field, it defaults to following value:
        #
        #     ```json
        #     [
        #       {
        #         "containerPort": 8080
        #       }
        #     ]
        #     ```
        #
        #     Vertex AI does not use ports other than the first one listed. This field
        #     corresponds to the `ports` field of the Kubernetes Containers
        #     [v1 core
        #     API](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#container-v1-core).
        # @!attribute [rw] predict_route
        #   @return [::String]
        #     Immutable. HTTP path on the container to send prediction requests to. Vertex AI
        #     forwards requests sent using
        #     {::Google::Cloud::AIPlatform::V1::PredictionService::Client#predict projects.locations.endpoints.predict} to this
        #     path on the container's IP address and port. Vertex AI then returns the
        #     container's response in the API response.
        #
        #     For example, if you set this field to `/foo`, then when Vertex AI
        #     receives a prediction request, it forwards the request body in a POST
        #     request to the `/foo` path on the port of your container specified by the
        #     first value of this `ModelContainerSpec`'s
        #     {::Google::Cloud::AIPlatform::V1::ModelContainerSpec#ports ports} field.
        #
        #     If you don't specify this field, it defaults to the following value when
        #     you {::Google::Cloud::AIPlatform::V1::EndpointService::Client#deploy_model deploy this Model to an Endpoint}:
        #     <code>/v1/endpoints/<var>ENDPOINT</var>/deployedModels/<var>DEPLOYED_MODEL</var>:predict</code>
        #     The placeholders in this value are replaced as follows:
        #
        #     * <var>ENDPOINT</var>: The last segment (following `endpoints/`)of the
        #       Endpoint.name][] field of the Endpoint where this Model has been
        #       deployed. (Vertex AI makes this value available to your container code
        #       as the [`AIP_ENDPOINT_ID` environment
        #      variable](https://cloud.google.com/vertex-ai/docs/predictions/custom-container-requirements#aip-variables).)
        #
        #     * <var>DEPLOYED_MODEL</var>: {::Google::Cloud::AIPlatform::V1::DeployedModel#id DeployedModel.id} of the `DeployedModel`.
        #       (Vertex AI makes this value available to your container code
        #       as the [`AIP_DEPLOYED_MODEL_ID` environment
        #       variable](https://cloud.google.com/vertex-ai/docs/predictions/custom-container-requirements#aip-variables).)
        # @!attribute [rw] health_route
        #   @return [::String]
        #     Immutable. HTTP path on the container to send health checks to. Vertex AI
        #     intermittently sends GET requests to this path on the container's IP
        #     address and port to check that the container is healthy. Read more about
        #     [health
        #     checks](https://cloud.google.com/vertex-ai/docs/predictions/custom-container-requirements#health).
        #
        #     For example, if you set this field to `/bar`, then Vertex AI
        #     intermittently sends a GET request to the `/bar` path on the port of your
        #     container specified by the first value of this `ModelContainerSpec`'s
        #     {::Google::Cloud::AIPlatform::V1::ModelContainerSpec#ports ports} field.
        #
        #     If you don't specify this field, it defaults to the following value when
        #     you {::Google::Cloud::AIPlatform::V1::EndpointService::Client#deploy_model deploy this Model to an Endpoint}:
        #     <code>/v1/endpoints/<var>ENDPOINT</var>/deployedModels/<var>DEPLOYED_MODEL</var>:predict</code>
        #     The placeholders in this value are replaced as follows:
        #
        #     * <var>ENDPOINT</var>: The last segment (following `endpoints/`)of the
        #       Endpoint.name][] field of the Endpoint where this Model has been
        #       deployed. (Vertex AI makes this value available to your container code
        #       as the [`AIP_ENDPOINT_ID` environment
        #       variable](https://cloud.google.com/vertex-ai/docs/predictions/custom-container-requirements#aip-variables).)
        #
        #     * <var>DEPLOYED_MODEL</var>: {::Google::Cloud::AIPlatform::V1::DeployedModel#id DeployedModel.id} of the `DeployedModel`.
        #       (Vertex AI makes this value available to your container code as the
        #       [`AIP_DEPLOYED_MODEL_ID` environment
        #       variable](https://cloud.google.com/vertex-ai/docs/predictions/custom-container-requirements#aip-variables).)
        class ModelContainerSpec
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents a network port in a container.
        # @!attribute [rw] container_port
        #   @return [::Integer]
        #     The number of the port to expose on the pod's IP address.
        #     Must be a valid port number, between 1 and 65535 inclusive.
        class Port
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
