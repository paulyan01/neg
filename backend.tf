terraform {
 cloud {
    organization = "paul-yan-terraform"
    
    workspaces { 
      tags = ["loadbalancer"]
    }
  }
}
