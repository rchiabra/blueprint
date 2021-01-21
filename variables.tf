# variable "ibmcloud_api_key" {}

variable "ibmcloud_region" {
    description = "Preferred IBM Cloud region to use for your infrastructure"
    default = "us-east"
}
variable "environment_name" {
    description = "resource group name"
    default = "Default"
}

variable "cloudantnosqldb_plan" {
    description = "Plan for Cloudant database: lite or standard"
    default="standard"
}

variable "cloudantnosqldb_location" {
    description = "Find available locations with: ibmcloud catalog service cloudantnosqldb"
    default = "us-east"
}

variable "cloudobjectstorage_plan" {
    description = "Plan for Cloud Object Storage: lite or standard"
    default="standard"
}

variable "cloudobjectstorage_location" {
    description = "Find available locations with: ibmcloud catalog service cloud-object-storage"
    default = "global"
}

variable "logdna_plan" {
    description = "Plan for LogDNA: lite, 7-day,14-day, 30-day"
    default="lite"
}

variable "logdna_location" {
    description = "Find available locations with: ibmcloud catalog service logdna"
    default = "us-east"
}
