terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

/*
terraform {
  backend "artifactory" {
    username = "SheldonCooper"
    password = "AmyFarrahFowler"
    url      = "https://custom.artifactoryonline.com/artifactory"
    repo     = "foo"
    subpath  = "terraform-bar"
  }
}
*/


provider "github" {
  token = var.token
  owner = "viveky255"
  organization = "Devops-bang"
}

resource "github_team" "some_team" {
  name        = "some-team"
  description = "Some cool team"
  privacy     = "closed"
}

resource "github_team" "some_team_test" {
  name        = "some-team1"
  description = "Some cool team"
  privacy     = "closed"
}