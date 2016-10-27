{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGFEImageElement
       (getPreserveAspectRatio, getPreserveAspectRatioUnsafe,
        getPreserveAspectRatioUnchecked, SVGFEImageElement(..),
        gTypeSVGFEImageElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
import Data.Typeable (Typeable)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array)
import Data.Int (Int64)
import Data.Word (Word, Word64)
import JSDOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEImageElement.preserveAspectRatio Mozilla SVGFEImageElement.preserveAspectRatio documentation> 
getPreserveAspectRatio ::
                       (MonadDOM m) =>
                         SVGFEImageElement -> m (Maybe SVGAnimatedPreserveAspectRatio)
getPreserveAspectRatio self
  = liftDOM ((self ^. js "preserveAspectRatio") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEImageElement.preserveAspectRatio Mozilla SVGFEImageElement.preserveAspectRatio documentation> 
getPreserveAspectRatioUnsafe ::
                             (MonadDOM m, HasCallStack) =>
                               SVGFEImageElement -> m SVGAnimatedPreserveAspectRatio
getPreserveAspectRatioUnsafe self
  = liftDOM
      (((self ^. js "preserveAspectRatio") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEImageElement.preserveAspectRatio Mozilla SVGFEImageElement.preserveAspectRatio documentation> 
getPreserveAspectRatioUnchecked ::
                                (MonadDOM m) =>
                                  SVGFEImageElement -> m SVGAnimatedPreserveAspectRatio
getPreserveAspectRatioUnchecked self
  = liftDOM
      ((self ^. js "preserveAspectRatio") >>= fromJSValUnchecked)
