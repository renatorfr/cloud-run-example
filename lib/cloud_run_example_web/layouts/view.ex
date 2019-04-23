defmodule CloudRunExampleWeb.Layouts.View do
  use Phoenix.View, root: "lib/cloud_run_example_web", path: "layouts/templates", namespace: CloudRunExampleWeb
  use Phoenix.HTML

  import Phoenix.Controller, only: [get_flash: 2]

  alias CloudRunExampleWeb.Router.Helpers, as: Routes
end
