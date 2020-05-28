# workflow auto-pr
workflow "auto-pr" {
  resolves = ["create-pr"]
  on = "push"
}

action "create-pr" {
  uses = "smartinspereira/auto-create-pr-action@master"
  secrets = ["GITHUB_TOKEN"]
  env = {
    BRANCH_PREFIX = "rus/"
    BASE_BRANCH = "russian1"
    PULL_REQUEST_TITLE = "Auto PR to merge russian translate"
    # PULL_REQUEST_BODY = ""
    PULL_REQUEST_DRAFT = "true"
  }
}
