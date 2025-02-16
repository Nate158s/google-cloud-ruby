# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/channel/v1/entitlements.proto

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/channel/v1/common_pb'
require 'google/cloud/channel/v1/offers_pb'
require 'google/cloud/channel/v1/products_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/channel/v1/entitlements.proto", :syntax => :proto3) do
    add_message "google.cloud.channel.v1.Entitlement" do
      optional :name, :string, 1
      optional :create_time, :message, 5, "google.protobuf.Timestamp"
      optional :update_time, :message, 6, "google.protobuf.Timestamp"
      optional :offer, :string, 8
      optional :commitment_settings, :message, 12, "google.cloud.channel.v1.CommitmentSettings"
      optional :provisioning_state, :enum, 13, "google.cloud.channel.v1.Entitlement.ProvisioningState"
      optional :provisioned_service, :message, 16, "google.cloud.channel.v1.ProvisionedService"
      repeated :suspension_reasons, :enum, 18, "google.cloud.channel.v1.Entitlement.SuspensionReason"
      optional :purchase_order_id, :string, 19
      optional :trial_settings, :message, 21, "google.cloud.channel.v1.TrialSettings"
      optional :association_info, :message, 23, "google.cloud.channel.v1.AssociationInfo"
      repeated :parameters, :message, 26, "google.cloud.channel.v1.Parameter"
    end
    add_enum "google.cloud.channel.v1.Entitlement.ProvisioningState" do
      value :PROVISIONING_STATE_UNSPECIFIED, 0
      value :ACTIVE, 1
      value :SUSPENDED, 5
    end
    add_enum "google.cloud.channel.v1.Entitlement.SuspensionReason" do
      value :SUSPENSION_REASON_UNSPECIFIED, 0
      value :RESELLER_INITIATED, 1
      value :TRIAL_ENDED, 2
      value :RENEWAL_WITH_TYPE_CANCEL, 3
      value :PENDING_TOS_ACCEPTANCE, 4
      value :OTHER, 100
    end
    add_message "google.cloud.channel.v1.Parameter" do
      optional :name, :string, 1
      optional :value, :message, 2, "google.cloud.channel.v1.Value"
      optional :editable, :bool, 3
    end
    add_message "google.cloud.channel.v1.AssociationInfo" do
      optional :base_entitlement, :string, 1
    end
    add_message "google.cloud.channel.v1.ProvisionedService" do
      optional :provisioning_id, :string, 1
      optional :product_id, :string, 2
      optional :sku_id, :string, 3
    end
    add_message "google.cloud.channel.v1.CommitmentSettings" do
      optional :start_time, :message, 1, "google.protobuf.Timestamp"
      optional :end_time, :message, 2, "google.protobuf.Timestamp"
      optional :renewal_settings, :message, 4, "google.cloud.channel.v1.RenewalSettings"
    end
    add_message "google.cloud.channel.v1.RenewalSettings" do
      optional :enable_renewal, :bool, 1
      optional :resize_unit_count, :bool, 2
      optional :payment_plan, :enum, 5, "google.cloud.channel.v1.PaymentPlan"
      optional :payment_cycle, :message, 6, "google.cloud.channel.v1.Period"
    end
    add_message "google.cloud.channel.v1.TrialSettings" do
      optional :trial, :bool, 1
      optional :end_time, :message, 2, "google.protobuf.Timestamp"
    end
    add_message "google.cloud.channel.v1.TransferableSku" do
      optional :transfer_eligibility, :message, 9, "google.cloud.channel.v1.TransferEligibility"
      optional :sku, :message, 11, "google.cloud.channel.v1.Sku"
      optional :legacy_sku, :message, 12, "google.cloud.channel.v1.Sku"
    end
    add_message "google.cloud.channel.v1.TransferEligibility" do
      optional :is_eligible, :bool, 1
      optional :description, :string, 2
      optional :ineligibility_reason, :enum, 3, "google.cloud.channel.v1.TransferEligibility.Reason"
    end
    add_enum "google.cloud.channel.v1.TransferEligibility.Reason" do
      value :REASON_UNSPECIFIED, 0
      value :PENDING_TOS_ACCEPTANCE, 1
      value :SKU_NOT_ELIGIBLE, 2
      value :SKU_SUSPENDED, 3
    end
  end
end

module Google
  module Cloud
    module Channel
      module V1
        Entitlement = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.Entitlement").msgclass
        Entitlement::ProvisioningState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.Entitlement.ProvisioningState").enummodule
        Entitlement::SuspensionReason = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.Entitlement.SuspensionReason").enummodule
        Parameter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.Parameter").msgclass
        AssociationInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.AssociationInfo").msgclass
        ProvisionedService = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.ProvisionedService").msgclass
        CommitmentSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.CommitmentSettings").msgclass
        RenewalSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.RenewalSettings").msgclass
        TrialSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.TrialSettings").msgclass
        TransferableSku = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.TransferableSku").msgclass
        TransferEligibility = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.TransferEligibility").msgclass
        TransferEligibility::Reason = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.TransferEligibility.Reason").enummodule
      end
    end
  end
end
