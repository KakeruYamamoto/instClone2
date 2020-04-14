# frozen_string_literal: true

Rails.application.configure do

  config.cache_classes = true

  config.eager_load = true

  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  # config.public_file_server.enabled = ENV['RAILS_SERVE_STATIC_FILES'].present?
  config.public_file_server.enabled = true

  config.assets.js_compressor = :uglifier

  # 本番環境に画像を反映させるためfalseから以下に変更
  config.assets.compile = true

  config.active_storage.service = :local

  config.log_level = :debug

  config.log_tags = [:request_id]

  config.action_mailer.perform_caching = false

  config.i18n.fallbacks = true

  config.active_support.deprecation = :notify

  config.log_formatter = ::Logger::Formatter.new

  if ENV['RAILS_LOG_TO_STDOUT'].present?
    logger           = ActiveSupport::Logger.new(STDOUT)
    logger.formatter = config.log_formatter
    config.logger    = ActiveSupport::TaggedLogging.new(logger)
  end

  config.active_record.dump_schema_after_migration = false
  # letter_opener_web
  config.action_mailer.default_url_options = { host: 'https://radiant-fjord-28025.herokuapp.com/'}
  config.action_mailer.delivery_method = :letter_opener_web

end
