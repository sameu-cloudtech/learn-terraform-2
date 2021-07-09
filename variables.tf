variable "compartment_ocid" {
	default = "ocid1.compartment.oc1..aaaaaaaau337m2maguz3zrssc4ie3jfkyfxalbpmgu2wglo26l7dg3nxmyaa"
}

variable "region" {
	default = "ap-sydney-1"
}

variable "InstanceImageOCID" {
  default = {
    // See https://docs.cloud.oracle.com/images/
    // Platform image "Oracle-Linux-7.5-2018.10.16-0"
    "ap-sydney-1" = "ocid1.image.oc1.ap-sydney-1.aaaaaaaaaba6jlgscasd7wdg6ly3z73dqzjxgrh5ubpbsbp2fnjl53pkrvnq"
  }
}


variable "ssh_public_key" {
	default = "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQBOIhBTtoVfQL1x9d3JDgDAm4oen9Cy/f1FOsIDcpPQTImsHyjyd35dZGY0sihS5qF+AHbjXkuQKnf5Yo0mtszdukzB9lsFxgR6C8e8N55X3v1LhJZJkxJT1M+/LEewjiq40LHOWr5jannn/CJ4srJfVBlxTMX5AOCdi5vXt2ncNLNjW0iJ1U0q/g9PhqkGthPHzgHEMi3FuH4ttiXpAHlFPPxdqmP8EDC8D+U2HKj1siJs4ohglXdP/o32DkegNJugCU5t7JWVbC6f0BGvQEt2OFQLykWqv/mcXVKOOvUfxfRmqRBYw7TT0zHNH2dcZyS4Is4D58GVbGIQBVkEf5T/ rsa-key-20191120"
}

# Defines the number of instances to deploy
variable "NumInstances" {
    default = "1"
}

variable "InstanceShape" {
    default = "VM.Standard2.1"
}

# Specifies the Availability Domain
variable "localAD" {
    default = "rrHb:AP-SYDNEY-1-AD-1"
}
