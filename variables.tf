variable "project_id" {test-02-12345}
variable "name"{}
variable "function_name" {}
variable "region" {
type = list(string) 
default=["northamerica-northeast1","us-central1"]
}
