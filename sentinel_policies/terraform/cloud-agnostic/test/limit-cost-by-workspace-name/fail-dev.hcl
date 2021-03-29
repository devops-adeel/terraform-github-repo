module "tfrun-functions" {
  source = "../../../common-functions/tfrun-functions/tfrun-functions.sentinel"
}

mock "tfrun" {
  module {
    source = "mock-tfrun-fail-dev.sentinel"
  }
}

test {
  rules = {
    main = false
  }
}
