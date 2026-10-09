terraform {
  backend "consul" {
    scheme = "http"
    path   = "terraform/modules/tfmod-cloudflare-public"
  }
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 5"
    }
  }
}

data "vault_generic_secret" "cloudflare" {
  path = "cloudflare/brucellino.dev"
}

provider "cloudflare" {
  api_token = data.vault_generic_secret.cloudflare.data["token"]
}
module "example" {
  source            = "../../"
  registered_domain = "brucellino.dev"
  service_records = {
    test = {
      type  = "CNAME",
      value = "vault",
      ttl   = "30"
    }
  }
}
