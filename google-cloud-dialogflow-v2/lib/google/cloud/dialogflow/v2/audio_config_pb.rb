# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dialogflow/v2/audio_config.proto

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/dialogflow/v2/audio_config.proto", :syntax => :proto3) do
    add_message "google.cloud.dialogflow.v2.SpeechContext" do
      repeated :phrases, :string, 1
      optional :boost, :float, 2
    end
    add_message "google.cloud.dialogflow.v2.SpeechWordInfo" do
      optional :word, :string, 3
      optional :start_offset, :message, 1, "google.protobuf.Duration"
      optional :end_offset, :message, 2, "google.protobuf.Duration"
      optional :confidence, :float, 4
    end
    add_message "google.cloud.dialogflow.v2.InputAudioConfig" do
      optional :audio_encoding, :enum, 1, "google.cloud.dialogflow.v2.AudioEncoding"
      optional :sample_rate_hertz, :int32, 2
      optional :language_code, :string, 3
      optional :enable_word_info, :bool, 13
      repeated :phrase_hints, :string, 4
      repeated :speech_contexts, :message, 11, "google.cloud.dialogflow.v2.SpeechContext"
      optional :model, :string, 7
      optional :model_variant, :enum, 10, "google.cloud.dialogflow.v2.SpeechModelVariant"
      optional :single_utterance, :bool, 8
      optional :disable_no_speech_recognized_event, :bool, 14
    end
    add_message "google.cloud.dialogflow.v2.VoiceSelectionParams" do
      optional :name, :string, 1
      optional :ssml_gender, :enum, 2, "google.cloud.dialogflow.v2.SsmlVoiceGender"
    end
    add_message "google.cloud.dialogflow.v2.SynthesizeSpeechConfig" do
      optional :speaking_rate, :double, 1
      optional :pitch, :double, 2
      optional :volume_gain_db, :double, 3
      repeated :effects_profile_id, :string, 5
      optional :voice, :message, 4, "google.cloud.dialogflow.v2.VoiceSelectionParams"
    end
    add_message "google.cloud.dialogflow.v2.OutputAudioConfig" do
      optional :audio_encoding, :enum, 1, "google.cloud.dialogflow.v2.OutputAudioEncoding"
      optional :sample_rate_hertz, :int32, 2
      optional :synthesize_speech_config, :message, 3, "google.cloud.dialogflow.v2.SynthesizeSpeechConfig"
    end
    add_message "google.cloud.dialogflow.v2.SpeechToTextConfig" do
      optional :speech_model_variant, :enum, 1, "google.cloud.dialogflow.v2.SpeechModelVariant"
    end
    add_enum "google.cloud.dialogflow.v2.AudioEncoding" do
      value :AUDIO_ENCODING_UNSPECIFIED, 0
      value :AUDIO_ENCODING_LINEAR_16, 1
      value :AUDIO_ENCODING_FLAC, 2
      value :AUDIO_ENCODING_MULAW, 3
      value :AUDIO_ENCODING_AMR, 4
      value :AUDIO_ENCODING_AMR_WB, 5
      value :AUDIO_ENCODING_OGG_OPUS, 6
      value :AUDIO_ENCODING_SPEEX_WITH_HEADER_BYTE, 7
    end
    add_enum "google.cloud.dialogflow.v2.SpeechModelVariant" do
      value :SPEECH_MODEL_VARIANT_UNSPECIFIED, 0
      value :USE_BEST_AVAILABLE, 1
      value :USE_STANDARD, 2
      value :USE_ENHANCED, 3
    end
    add_enum "google.cloud.dialogflow.v2.SsmlVoiceGender" do
      value :SSML_VOICE_GENDER_UNSPECIFIED, 0
      value :SSML_VOICE_GENDER_MALE, 1
      value :SSML_VOICE_GENDER_FEMALE, 2
      value :SSML_VOICE_GENDER_NEUTRAL, 3
    end
    add_enum "google.cloud.dialogflow.v2.OutputAudioEncoding" do
      value :OUTPUT_AUDIO_ENCODING_UNSPECIFIED, 0
      value :OUTPUT_AUDIO_ENCODING_LINEAR_16, 1
      value :OUTPUT_AUDIO_ENCODING_MP3, 2
      value :OUTPUT_AUDIO_ENCODING_MP3_64_KBPS, 4
      value :OUTPUT_AUDIO_ENCODING_OGG_OPUS, 3
      value :OUTPUT_AUDIO_ENCODING_MULAW, 5
    end
  end
end

module Google
  module Cloud
    module Dialogflow
      module V2
        SpeechContext = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.SpeechContext").msgclass
        SpeechWordInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.SpeechWordInfo").msgclass
        InputAudioConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.InputAudioConfig").msgclass
        VoiceSelectionParams = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.VoiceSelectionParams").msgclass
        SynthesizeSpeechConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.SynthesizeSpeechConfig").msgclass
        OutputAudioConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.OutputAudioConfig").msgclass
        SpeechToTextConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.SpeechToTextConfig").msgclass
        AudioEncoding = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.AudioEncoding").enummodule
        SpeechModelVariant = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.SpeechModelVariant").enummodule
        SsmlVoiceGender = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.SsmlVoiceGender").enummodule
        OutputAudioEncoding = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.OutputAudioEncoding").enummodule
      end
    end
  end
end
