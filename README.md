# atd

#### Table of Contents

1. [Overview](#overview)
2. [Module Description](#module-description)
3. [Setup](#setup)
    * [What atd affects](#what-atd-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with atd](#beginning-with-atd)
4. [Usage](#usage)
5. [Reference](#reference)
5. [Limitations](#limitations)
6. [Development](#development)
    * [TODO](#todo)
    * [Contributing](#contributing)

## Overview

atd service and at.allow management

## Module Description

This module is intended for applying CIS standard to Linux boxes

## Setup

### What atd affects

* allowed user management via **atd::allowuser**
* **at.deny** will be **removed** (only explicitly allowed users will be able to use this service)

### Setup Requirements

This module requires pluginsync enabled

### Beginning with atd

Config to apply atd related CIS standard:

```puppet
class { 'atd':
  package_ensure => 'absent',
  manage_service => false,
}
```

## Usage

Just include the class to manage it's package and service. Yoy can grant usage rights to any user using **atd::allowuser**

## Reference

Here, list the classes, types, providers, facts, etc contained in your module.
This section should include all of the under-the-hood workings of your module so
people know what the module is touching on their system but don't need to mess
with things. (We are working on automating this section!)

## Limitations

This is where you list OS compatibility, version compatibility, etc.

## Development

We are pushing to have acceptance testing in place, so any new feature should
have some test to check both presence and absence of any feature

### TODO

TODO list

### Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
