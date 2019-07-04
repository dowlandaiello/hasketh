module Common.Hash.Hash
    ( Hash
    , hashBlake2
    )
where

import qualified Crypto.Hash.BLAKE2.BLAKE2s    as Blake2
import qualified Data.ByteString               as BS
import           Data.ByteString.Base16        as Hex
import           Data.Text                     as Text
import           Data.Text.Encoding            as Encoding

----------------------------------------------------------------------------
-- Hash
----------------------------------------------------------------------------

type Hash = BS.ByteString

-- Convert a given hash to a human-readable string
string :: Hash -> Text.Text
string hash = Encoding.decodeUtf8 (Hex.encode hash)

-- Hash a given input, b, via blake2
hashBlake2 :: BS.ByteString -> Hash
hashBlake2 = Blake2.hash 32 mempty
