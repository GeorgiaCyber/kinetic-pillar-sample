#!yaml|gpg

images:
  ubuntu1604:
    name: xenial-server-cloudimg-amd64-disk1.qcow2
    needs_conversion: true
    remote_url: http://images:8080/images/xenial-server-cloudimg-amd64-disk1.img
    remote_hash: http://cloud-images.ubuntu.com/xenial/current/SHA256SUMS
    remote_source_hash_name: "'*xenial-server-cloudimg-amd64-disk1.img'"
    local_url: pull_from_mine
    local_hash: pull_from_mine
    local_name: ubuntu1604.raw
    local_source_hash_name: ubuntu1604.raw
  ubuntu1804:
    name: bionic-server-cloudimg-amd64.qcow2
    needs_conversion: true
    remote_url: http://images:8080/images/bionic-server-cloudimg-amd64.img
    remote_hash: http://cloud-images.ubuntu.com/bionic/current/SHA256SUMS
    remote_source_hash_name: "'*bionic-server-cloudimg-amd64.img'"
    local_url: pull_from_mine
    local_hash: pull_from_mine
    local_name: ubuntu1804.raw
    local_source_hash_name: ubuntu1804.raw
  debian9:
    name: debian9.raw
    needs_conversion: false
    remote_url: http://images:8080/images/debian-9-openstack-amd64.raw
    remote_hash: https://cdimage.debian.org/cdimage/openstack/current-9/SHA512SUMS
    remote_source_hash_name: debian-9-openstack-amd64.raw
    local_url: pull_from_mine
    local_hash: pull_from_mine
    local_name: debian9.raw
    local_source_hash_name: debian9.raw
