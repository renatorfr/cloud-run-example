defmodule CloudRunExampleWeb.Errors.View do
  use Phoenix.View, root: "lib/cloud_run_example_web", namespace: CloudRunExampleWeb

  def template_not_found(template, _assigns) do
    Phoenix.Controller.status_message_from_template(template)
  end
end
