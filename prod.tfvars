instance_type = "t2.large"
vol_size = 30
sec_grp = "prod-sec-group"
in_ports = [ 22,80,443 ]
key_name = "terr_env"
key_path = "terr_env.pub"
sec_grp_desc = "Allow all ports for Prod Env"
instance_name = "Prod"