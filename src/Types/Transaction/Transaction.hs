module Types.Transaction.Transaction
    ( Transaction
    )
where

import qualified Common.Hash                   as Hash

----------------------------------------------------------------------------
-- Transaction
----------------------------------------------------------------------------

newtype Transaction = Transaction {
    hash :: Hash.Hash
}
