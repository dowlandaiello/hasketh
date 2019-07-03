module Types.Transaction.Transaction (
    Transaction
) where

import qualified Data.ByteArray

----------------------------------------------------------------------------
-- Transaction
----------------------------------------------------------------------------

newtype Transaction = Transaction {
    hash :: ByteArray
}