# # GitHub Authenticator
# sudo tljh-config set auth.GitHubOAuthenticator.client_id '<my-tljh-client-id>'
# sudo tljh-config set auth.GitHubOAuthenticator.client_secret '<my-tljh-client-secret>'
# sudo tljh-config set auth.GitHubOAuthenticator.oauth_callback_url 'http(s)://<my-tljh-ip-address>/hub/oauth_callback'
# sudo tljh-config set auth.type oauthenticator.github.GitHubOAuthenticator
# sudo tljh-config reload

# # CILogon Authenticator
# sudo tljh-config set auth.CILogonOAuthenticator.client_id 'cilogon:/client_id/XXXXXXXXXXXXXXXXXXXXXXXXXX'
# sudo tljh-config set auth.CILogonOAuthenticator.client_secret 'XXXXXXXXXXXXXXXXXXXXXXXXXX'
# sudo tljh-config set auth.CILogonOAuthenticator.oauth_callback_url 'https://eduhub.cac.cornell.edu/hub/oauth_callback'
# sudo tljh-config set auth.type oauthenticator.cilogon.CILogonOAuthenticator
# sudo tljh-config reload
# # Only allow pre-verified users to logon. Set from HUB control
# sudo tljh-config set auth.CILogonOAuthenticator.create_users false
# sudo tljh-config reload

# # Default Authenticator
# sudo tljh-config set auth.type firstuseauthenticator.FirstUseAuthenticator
# sudo tljh-config reload
