# GitHub token variable
variable "github_token" {
  description = "github token"
}

# Configure the GitHub Provider
provider "github" {
  token        = "${var.github_token}"
  organization = "VisitBG"
}

# Create a static GitHub repository
resource "github_repository" "example" {
  name        = "example-bananas"
  description = "My awesome codebase"
}
