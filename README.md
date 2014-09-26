# syslog-ng cookbook
> A [Chef](http://getchef.com/) recipe to install and configure [syslog-ng](https://wiki.archlinux.org/index.php/Syslog-ng).

[![Build Status](http://ci.ldk.io/logankoester/chef-syslog-ng/badge)](http://ci.ldk.io/logankoester/chef-syslog-ng/)
[![Gittip](http://img.shields.io/gittip/logankoester.png)](https://www.gittip.com/logankoester/)

## Installation

Using [Berkshelf](http://berkshelf.com/), add the `syslog-ng` cookbook to your Berksfile.

```ruby
cookbook 'syslog-ng', github: 'logankoester/chef-syslog-ng', branch: 'master'
```
Then run `berks` to install it.

## Usage

Set the required attributes, and add the `syslog-ng::default` recipe to your run list.

## Attributes

See `attributes/default.rb` for details

## Author

Copyright (c) 2014 [Logan Koester](http://logankoester.com). Released under the MIT license. See `LICENSE` for details.
