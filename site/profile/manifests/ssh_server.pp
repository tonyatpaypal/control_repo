class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDBeekhydw4fzgJAGbIznV57aOPiimCzTsKcs41QAz+NPYbaAumAqNvWI4WagSBnsDns2CaIE7vNRLpXVuDQ6ql7p2F0xz8iRAYnJpinkoC2+Su+tPz8oD2zD76fSfbwZRwfoE9arKoxLTjYR5bJxv9Kw7bbi9lC/v/taBtunaMCpFzAWRRyXRv2AjOxEytWB8fMipjzIvvk6h6bAS4DlX7MxXco6dozSHMygX8+ZMfbiBhE5jIh38/hUN8nPWW+6z1HXkegNIV5glkOd15eA24//fzFsu4xV7PLerEwqB9rAPl+z/WOc8pAtx35eXDaouNOcL+tkkvT38X0wyRQP+l',
  }  
}
