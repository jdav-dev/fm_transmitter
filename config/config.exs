# This file is responsible for configuring your umbrella and **all applications** and their
# dependencies with the help of the Config module.
#
# Note that all applications in your umbrella share the same configuration and dependencies, which
# is why they all use the same configuration file.  If you want different configurations or
# dependencies per app, it is best to move said applications out of the umbrella.
import Config

# Enable the Nerves integration with Mix
Application.start(:nerves_bootstrap)

config :fm_transmitter, target: Mix.target()

# Customize non-Elixir parts of the firmware.
# See https://hexdocs.pm/nerves/advanced-configuration.html for details.

config :nerves, :firmware, rootfs_overlay: "rootfs_overlay"

# Set the SOURCE_DATE_EPOCH date for reproducible builds.
# See https://reproducible-builds.org/docs/source-date-epoch/ for more information

config :nerves, source_date_epoch: "1717642131"

if Mix.target() == :host do
  import_config "host.exs"
else
  import_config "target.exs"
end
