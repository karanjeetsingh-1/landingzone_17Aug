rgs = {
  rg_1 = {
    name     = "rg_kjs_1"
    location = "centralus"
  }
  rg_2 = {
    name     = "rg_kjs_2"
    location = "centralindia"
  }
}

sas = {
  sa_1 = {
    name     = "devopsinsider123"
    rg_name  = "rg_kjs_1"
    location = "centralus"
  }
}

ca = {
  ca_1 = {
    name    = "tfstate"
    sa_name = "devopsinsider123"
    rg_name = "rg_kjs_1"
  }
}