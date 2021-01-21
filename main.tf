#######################################
# Create the resource group
#######################################
data "ibm_resource_group" "group" {
  name     = var.environment_name
}

#######################################
# Create services in the resource group
#######################################
# a database
resource "ibm_resource_instance" "database" {
    name              = "blueprint_database"
    service           = "cloudantnosqldb"
    plan              = var.cloudantnosqldb_plan
    location          = var.cloudantnosqldb_location
    resource_group_id = ibm_resource_group.group.id
}
# a cloud object storage
resource "ibm_resource_instance" "objectstorage" {
    name              = "blueprint_objectstorage"
    service           = "cloud-object-storage"
    plan              = var.cloudobjectstorage_plan
    location          = var.cloudobjectstorage_location
    resource_group_id = ibm_resource_group.group.id
}

# a LogDNA service
resource "ibm_resource_instance" "logging" {
    name              = "blueprint_logging"
    service           = "logdna"
    plan              = var.logdna_plan
    location          = var.logdna_location
    resource_group_id = ibm_resource_group.group.id
}
