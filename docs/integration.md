# Integration.

For Peatio Litecoin plugin integration you need to do the following steps:

## Build.

1. Add peatio-litecoin gem into your Gemfile.plugin
```ruby
gem 'peatio-litecoin', '~> 0.1.0'
```

2. Run `bundle install` for updating Gemfile.lock

3. Build custom Peatio [docker image with Litecoin plugin](https://github.com/rubykube/peatio/blob/master/docs/plugins.md#build)

4. Push your image using `dokcer push`

5. Update your image version

6. Create Litecoin Blockchain [config example](../config/blockchains.yml).

7. Create Litecoin Currency [config example](../config/currencies.yml).

8. Create Litecoin Wallets [config example](../config/wallets.yml)(deposit and hot wallets are required).
