instance_type = "t2.medium"
vol_size = 20
sec_grp = "dev-security-group"
in_ports = [ 22,80,443 ]
key_name = "terr_env"
key_path = "terr_env.pub"
sec_grp_desc = "Allow ports for dev env"
instance_name = "Dev"