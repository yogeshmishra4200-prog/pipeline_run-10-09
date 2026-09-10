x = {
  rg1 = { name = "pandu"
    location = "eastus"
  }

  rg2 = { name = "shivam-rg2"
    location = "eastus"
  }
}
y = {
  stg1 = { name = "shivamstg1"
    resource_group_name      = "shivam-rg2"
    location                 = "eastus"
    account_tier             = "Standard"
    account_replication_type = "GRS"
  }
}