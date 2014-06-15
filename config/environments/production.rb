Bitaculous::Locoroco::Application.configure do
  # Settings specified here will take precedence over those in `config/application.rb`.

  # Enable threaded mode.
  config.threadsafe!

  # Code is not reloaded between requests.
  config.cache_classes = true

  # Enable dependency loading for rake tasks.
  config.dependency_loading = true if $rails_rake_task

  # Full error reports are disabled and caching is turned on.
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  # Send deprecation notices to registered listeners.
  config.active_support.deprecation = :notify

  # === Security ===

  # Force all access to the app over SSL, use Strict-Transport-Security and use secure cookies.
  # config.force_ssl = true

  # === Caching ===

  # Use a different cache store.
  # config.cache_store = :mem_cache_store

  # === Assets ===

  # Compress assets.
  config.assets.compress = true

  # Generate digests for assets URLs.
  config.assets.digest = true

  # Don't fallback to assets pipeline if a precompiled asset is missed.
  config.assets.compile = false

  # Disable Rails's static asset server (Apache or Nginx will already do this).
  config.serve_static_assets = false

  # Enable serving of assets from asset server(s), distributes asset requests among the corresponding four hosts
  # `locoroco.assets0.bitaculous.com`, `locoroco.assets1.bitaculous.com`, etc.
  # config.action_controller.asset_host = '//locoroco.assets%d.bitaculous.com'

  # Defaults to nil and saved in location specified by `config.assets.prefix`.
  # config.assets.manifest = YOUR_PATH

  # Specifies the header that your server uses for sending files.
  # config.action_dispatch.x_sendfile_header = 'X-Sendfile' # For Apache HTTP Server
  config.action_dispatch.x_sendfile_header = 'X-Accel-Redirect' # For Nginx

  # === Logging ===

  # Use a different logger for distributed setups.
  # config.logger = ActiveSupport::TaggedLogging.new(SyslogLogger.new)

  # Set log level (default is `:info`).
  # config.log_level = :debug

  # Prepend all log lines with the following tags.
  # config.log_tags = [:subdomain, :uuid]

  # Set the logging destination(s).
  config.log_to = %w[file]

  # Show the logging configuration on STDOUT.
  config.show_log_configuration = false

  # === Error notification ===

  # Disable delivery errors, bad email addresses will be ignored.
  # config.action_mailer.raise_delivery_errors = false
end