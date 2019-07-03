module Common.Hash where

import qualified Crypto.Hash.BLAKE2.BLAKE2s    as Blake2
import qualified Data.ByteString               as BS

----------------------------------------------------------------------------
-- Hash
----------------------------------------------------------------------------

newtype Hash = Hash BS.ByteString
