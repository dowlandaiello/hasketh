module Common.Hash.Hash where

import qualified Crypto.Hash.BLAKE2.BLAKE2s    as Blake2
import qualified Data.ByteString               as BS
import           Data.ByteString.Base16        as Hex
import           Data.Text.Encoding            as Encoding

----------------------------------------------------------------------------
-- Hash
----------------------------------------------------------------------------

newtype Hash = Hash BS.ByteString

string :: Hash -> String
string hash = Hex.encode hash
