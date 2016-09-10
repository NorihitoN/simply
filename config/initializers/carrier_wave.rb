if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Amazon S3用の設定
      :provider              => 'AWS',
      :region                => ENV['ap-northeast-1'], # 例: 'ap-northeast-1'
      :aws_access_key_id     => ENV['AKIAJAZVSACO7AQPCR3Q'],
      :aws_secret_access_key => ENV['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']
    }
    config.fog_directory     =  ENV['simply-m']
  end
end