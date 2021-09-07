#
# Uncomment the lines below
#

# module "bridgenet" {
#   source      = "zerotier/network/zerotier"
#   version     = "1.0.0"
#   name        = "bridgenet"
#   description = "bridging example"
#   subnets     = ["10.10.0.0/16"]
#   flow_rules  = "accept;"
# }

# resource "zerotier_member" "router1" {
#   name                    = "router1"
#   member_id               = "71c71c71c1"
#   description             = "Alice's router"
#   ip_assignments          = ["10.10.1.1"]
#   allow_ethernet_bridging = true
#   network_id              = module.bridgenet.id
# }

# resource "zerotier_member" "router2" {
#   name                    = "router2"
#   member_id               = "71c71c71c2"
#   description             = "Bob's router"
#   ip_assignments          = ["10.10.2.1"]
#   allow_ethernet_bridging = true
#   network_id              = module.bridgenet.id
# }
