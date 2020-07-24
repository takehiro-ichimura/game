unless Rails.env.development? || Rails.env.test?
CarrierWave.configure do |config|
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: 'AKIAUWFCMNKJWPUMJC6Y',
      aws_secret_access_key: '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',
      region: 'ap-northeast-1'
    }

    config.fog_directory  = 'gametankurou'
    config.cache_storage = :fog
  end
end