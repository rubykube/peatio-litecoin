require "peatio/litecoin/version"
require "active_support/core_ext/object/blank"
require "peatio"

module Peatio
  module Litecoin
    require "bigdecimal"
    require "bigdecimal/util"

    require "peatio/litecoin/blockchain"
    require "peatio/litecoin/client"
    require "peatio/litecoin/wallet"

    require "peatio/litecoin/hooks"
  end
end
