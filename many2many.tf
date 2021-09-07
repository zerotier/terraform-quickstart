#
# Uncomment the lines below
#

# variable "letters" {
#   default = ["alfa", "bravo", "charlie"]
# }

# variable "shapes" {
#   default = ["circle", "square"]
# }

# resource "zerotier_identity" "letters" {
#   for_each = { for i in var.letters : i => i }
# }

# module "shapes" {
#   for_each    = { for i, k in var.shapes : (k) => i }
#   source      = "zerotier/network/zerotier"
#   version     = "1.0.0"
#   name        = each.key
#   description = each.key
#   subnets     = [cidrsubnet("10.11.0.0/16", 8, each.value)]
#   flow_rules  = "accept;"
# }

# resource "zerotier_member" "shape-letters" {
#   for_each    = { for i in setproduct(var.letters, keys(module.shapes)) : join("-", flatten(i)) => i }
#   name        = each.key
#   member_id   = zerotier_identity.letters[each.value[0]].id
#   description = module.shapes[each.value[1]].description
#   network_id  = module.shapes[each.value[1]].id
# }
