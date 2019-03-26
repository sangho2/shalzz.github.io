workflow "Build and deploy on push" {
  on = "push"
  resolves = ["shalzz/zola-deploy-action"]
}

action "shalzz/zola-deploy-action" {
  uses = "shalzz/zola-deploy-action@master"
  secrets = ["TOKEN"]
  env = {
    PAGES_BRANCH = "master"
  }
}
