#
# Uncomment the lines below
#

# variable "segments" {
#   default = {
#     red = {
#       description = "red"
#       subnets     = ["10.1.0.0/16"]
#       flow_rules  = "accept;"
#     }
#     green = {
#       description = "green"
#       subnets     = ["10.2.0.0/16"]
#       flow_rules  = "accept;"
#     }
#     yellow = {
#       description = "yellow"
#       subnets     = ["10.3.0.0/16"]
#       flow_rules  = "accept;"
#     }
#   }
# }

# variable "members" {
#   default = {
#     red = {
#       eve = {
#         description = "Eve's Laptop"
#         member_id   = "34b34b34b3"
#       }
#       steve = {
#         description = "Steve's Laptop"
#         member_id   = "573b3573b3"
#       }
#     }
#     green = {
#       cletus = {
#         description = "Cletus' Laptop"
#         member_id   = "c133715b0b"
#       }
#       brandie = {
#         description = "Brandie's Laptop"
#         member_id   = "b33fb33fff"
#       }
#     }
#   }
# }

# module "segments" {
#   for_each    = var.segments
#   source      = "zerotier/network/zerotier"
#   version     = "1.0.0"
#   name        = each.key
#   description = each.value.description
#   subnets     = each.value.subnets
#   flow_rules  = each.value.flow_rules
# }

# resource "zerotier_member" "red" {
#   for_each   = { for k, v in var.members.red : (k) => v }
#   name       = each.key
#   member_id  = each.value.member_id
#   network_id = module.segments["red"].id
# }

# resource "zerotier_member" "green" {
#   for_each   = { for k, v in var.members.green : (k) => v }
#   name       = each.key
#   member_id  = each.value.member_id
#   network_id = module.segments["green"].id
# }

# resource "zerotier_member" "yellow" {
#   for_each   = { for k, v in merge(var.members.red, var.members.green) : (k) => v }
#   name       = each.key
#   member_id  = each.value.member_id
#   network_id = module.segments["yellow"].id
# }
