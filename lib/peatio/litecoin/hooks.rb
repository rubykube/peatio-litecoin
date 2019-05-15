module Peatio
  module Litecoin
    module Hooks
      class << self
        def check_compatibility
          if Peatio::Blockchain::VERSION >= '2.0'
            [
              "Litecoin plugin was designed for work with 1.x. Blockchain.",
              "You use #{Peatio::Blockchain::VERSION}."
            ].join('\n').tap { |s| Kernel.abort s }
          end

          if Peatio::Wallet::VERSION >= '2.0'
            [
              "Litecoin plugin was designed for work with 1.x. Wallet.",
              "You use #{Peatio::Wallet::VERSION}."
            ].join('\n').tap { |s| Kernel.abort s }
          end
        end

        def register
          Peatio::Blockchain.registry[:litecoin] = Litecoin::Blockchain.new
          Peatio::Wallet.registry[:litecoind] = Litecoin::Wallet.new
        end
      end

      if defined?(Rails::Railtie)
        require "peatio/litecoin/railtie"
      else
        check_compatibility
        register
      end
    end
  end
end
