# TFE workspace basics

Create three Terraform Cloud workspaces with the published workspace module.

## What it creates

- `myapp`: a basic VCS-driven workspace.
- `myapp-prod`: adds tags and an OIDC role ARN for AWS dynamic credentials.
- `myapp-staging`: adds a sensitive env variable, a terraform variable, and an OIDC role.
- OIDC variable sets with `TFC_AWS_PROVIDER_AUTH` and `TFC_AWS_RUN_ROLE_ARN` for the two workspaces that set `role_arn`.

## Before you start

- Uses the published registry module `pomo-studio/workspace/tfe`, version `~> 1.0`.
- Provider `hashicorp/tfe`. Log in with `terraform login` or set `TFE_TOKEN`.
- The organization, VCS repo, GitHub App installation ID, and role ARNs are placeholders. Replace them with real values. The organization must already exist.

## Run it

```bash
terraform init
terraform plan
terraform apply
```

## Clean up

```bash
terraform destroy
```
