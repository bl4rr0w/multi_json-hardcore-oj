# MultiJson Hardcore: OJ

MultiJson Hardcore is a replacement gem for MultiJson that offers
MultiJson compatibility without any useful functionality - instead, it
just uses the JSON library of choice, in this case, `oj`.

## Use

The code is the same, pick whatever version number works for you.

```ruby
gem "multi_json", github: "wuputah/multi_json-hardcore-oj", ref: "v1.5.3"
gem "multi_json", github: "wuputah/multi_json-hardcore-oj", ref: "v1.8.0"
```

## Releases

Since the gem needs a matching name to the gem it is replacing, it
cannot be pushed to RubyGems. Releases are tagged, so use `ref` to refer
to a specific release.
