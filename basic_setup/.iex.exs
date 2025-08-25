# :logger.set_primary_config(:level, :none)

formatter =
  Logger.default_formatter(
    metadata: [:mfa],
    colors: [info: :yellow]
  )

:logger.update_handler_config(:default, :formatter, formatter)

# ExUnit.run()
