if Rails.env.production? || Rails.env.development?
     ::CarrierWave.configure do |config|
         config.storage             = :qiniu
         config.qiniu_access_key    = QINIU_ACCESS_KEY
         config.qiniu_secret_key    = QINIU_ACCESS_SECRET
         config.qiniu_bucket        = QINIU_BUCKET
         config.qiniu_bucket_domain = QINIU_BUCKET_DOMAIN
     end
elsif Rails.env.test? or Rails.env.cucumber?
    CarrierWave.configure do |config|
        config.storage = :file
        config.enable_processing = false
    end
end