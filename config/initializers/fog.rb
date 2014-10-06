CarrierWave.configure do |config|
  config.fog_credentials = {
      :provider               => 'AWS',                        # required
      :aws_access_key_id      => 'AKIAITHZB5HUKCKIUR2A',                        # required
      :aws_secret_access_key  => '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',                        # required
      :region                 => 'us-east-1',                  # optional, defaults to 'us-east-1'
      #     :host                   => 'https://chronicleme.bucket.s3-website-us-east-1.amazonaws.com',             # optional, defaults to nil
      #      :endpoint               => 'https://chronicleme.bucket.s3-website-us-east-1.amazonaws.com' # optional, defaults to nil
  }
  config.fog_directory  = 'future40b.bucket/'                     # required
  config.fog_public     = false                                   # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end