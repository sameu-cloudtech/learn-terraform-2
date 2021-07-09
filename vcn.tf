provider "oci" {
  region = "${var.region}"
}

resource "oci_core_internet_gateway" "ExampleIG" {
  compartment_id = "${var.compartment_ocid}"
  display_name = "TFExampleIG"
  vcn_id = "${oci_core_virtual_network.vcndemo.id}"
}


resource "oci_core_virtual_network" "vcndemo" {
  cidr_block = "10.0.0.0/16"
  compartment_id = "${var.compartment_ocid}"
  display_name = "vcndemo"
  dns_label = "vcndemo"
}


resource "oci_core_route_table" "ExampleRT" {
  compartment_id = "${var.compartment_ocid}"
  vcn_id = "${oci_core_virtual_network.vcndemo.id}"
  display_name = "TFExampleRouteTable"
  route_rules {
    cidr_block = "0.0.0.0/0"
    network_entity_id = "${oci_core_internet_gateway.ExampleIG.id}"
  }
}

resource "oci_core_subnet" "ExampleSubnet" {
  availability_domain = "${var.localAD}"
  cidr_block = "10.0.1.0/24"
  display_name = "ExampleSubnet"
  dns_label = "examplesubnet"
  security_list_ids = ["${oci_core_virtual_network.vcndemo.default_security_list_id}"]
  compartment_id = "${var.compartment_ocid}"
  vcn_id = "${oci_core_virtual_network.vcndemo.id}"
  route_table_id = "${oci_core_route_table.ExampleRT.id}"
  dhcp_options_id = "${oci_core_virtual_network.vcndemo.default_dhcp_options_id}"
}
