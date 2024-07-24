resource "aws_cognito_user_pool" "techchallenge-pool" {
  name = "techchallenge-pool"
}

resource "aws_cognito_user_pool_client" "techchallenge-client" {
  name                         = "techchallenge-client"
  user_pool_id                 = aws_cognito_user_pool.techchallenge-pool.id
  explicit_auth_flows          = ["CUSTOM_AUTH_FLOW_ONLY"]

}
