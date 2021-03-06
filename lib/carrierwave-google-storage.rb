require 'google-cloud'
require 'carrierwave'
require 'carrierwave/google/storage/version'
require 'carrierwave/storage/gcloud'
require 'carrierwave/storage/gcloud_file'
require 'carrierwave/storage/gcloud_options'
require 'carrierwave/support/uri_filename'

class CarrierWave::Uploader::Base
  
  ConfigurationError = Class.new(StandardError)

  add_config :gcloud_attributes
  add_config :gcloud_bucket
  add_config :gcloud_bucket_is_public
  add_config :gcloud_credentials
  add_config :gcloud_authenticated_url_expiration

  configure do |config|
    config.storage_engines[:gcloud] = 'CarrierWave::Storage::Gcloud'
  end

end