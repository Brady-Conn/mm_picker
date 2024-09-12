defmodule MmPicker.Repo do
  use Ecto.Repo,
    otp_app: :mm_picker,
    adapter: Ecto.Adapters.Postgres
end
