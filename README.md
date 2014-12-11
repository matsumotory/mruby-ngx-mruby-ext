# This is moved to ngx_mruby core.
# mruby-ngx-mruby-ext   [![Build Status](https://travis-ci.org/matsumoto-r/mruby-ngx-mruby-ext.png?branch=master)](https://travis-ci.org/matsumoto-r/mruby-ngx-mruby-ext)
Extended Nginx class for ngx_mruby. You can exnted Nginx class by mrbgem.

## install by mrbgems 
- add conf.gem line to `build_config.rb` 

```ruby
MRuby::Build.new do |conf|

    # ... (snip) ...

    conf.gem :git => 'https://github.com/matsumoto-r/mruby-ngx-mruby-ext.git'
end
```
## example 

- define method by mrbgem

```ruby
class Nginx
  class Headers_in
    def user_agent
      self["User-Agent"]
    end
  end
end
```

- you can use the method defined by mruby-ngx-mruby-ext in ngx_mruby

```ruby
Nginx.echo Nginx::Request.new.headers_in.user_agent
#=> "your user agent"
```

## License
under the MIT License:
- see LICENSE file
