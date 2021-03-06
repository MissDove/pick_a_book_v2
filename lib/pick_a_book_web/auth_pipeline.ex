defmodule PickABook.Guardian.AuthPipeline do
  use Guardian.Plug.Pipeline, otp_app: :PickABook,
  module: PickABook.Guardian,
  error_handler: PickABook.AuthErrorHandler

  plug Guardian.Plug.VerifyHeader, realm: "Bearer"
  plug Guardian.Plug.EnsureAuthenticated
  plug Guardian.Plug.LoadResource
end
