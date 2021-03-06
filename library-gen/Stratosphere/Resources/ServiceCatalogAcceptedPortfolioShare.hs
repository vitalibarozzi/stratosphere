{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-acceptedportfolioshare.html

module Stratosphere.Resources.ServiceCatalogAcceptedPortfolioShare where

import Stratosphere.ResourceImports


-- | Full data type definition for ServiceCatalogAcceptedPortfolioShare. See
-- 'serviceCatalogAcceptedPortfolioShare' for a more convenient constructor.
data ServiceCatalogAcceptedPortfolioShare =
  ServiceCatalogAcceptedPortfolioShare
  { _serviceCatalogAcceptedPortfolioShareAcceptLanguage :: Maybe (Val Text)
  , _serviceCatalogAcceptedPortfolioSharePortfolioId :: Val Text
  } deriving (Show, Eq)

instance ToJSON ServiceCatalogAcceptedPortfolioShare where
  toJSON ServiceCatalogAcceptedPortfolioShare{..} =
    object $
    catMaybes
    [ fmap (("AcceptLanguage",) . toJSON) _serviceCatalogAcceptedPortfolioShareAcceptLanguage
    , (Just . ("PortfolioId",) . toJSON) _serviceCatalogAcceptedPortfolioSharePortfolioId
    ]

instance FromJSON ServiceCatalogAcceptedPortfolioShare where
  parseJSON (Object obj) =
    ServiceCatalogAcceptedPortfolioShare <$>
      (obj .:? "AcceptLanguage") <*>
      (obj .: "PortfolioId")
  parseJSON _ = mempty

-- | Constructor for 'ServiceCatalogAcceptedPortfolioShare' containing
-- required fields as arguments.
serviceCatalogAcceptedPortfolioShare
  :: Val Text -- ^ 'scapsPortfolioId'
  -> ServiceCatalogAcceptedPortfolioShare
serviceCatalogAcceptedPortfolioShare portfolioIdarg =
  ServiceCatalogAcceptedPortfolioShare
  { _serviceCatalogAcceptedPortfolioShareAcceptLanguage = Nothing
  , _serviceCatalogAcceptedPortfolioSharePortfolioId = portfolioIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-acceptedportfolioshare.html#cfn-servicecatalog-acceptedportfolioshare-acceptlanguage
scapsAcceptLanguage :: Lens' ServiceCatalogAcceptedPortfolioShare (Maybe (Val Text))
scapsAcceptLanguage = lens _serviceCatalogAcceptedPortfolioShareAcceptLanguage (\s a -> s { _serviceCatalogAcceptedPortfolioShareAcceptLanguage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-acceptedportfolioshare.html#cfn-servicecatalog-acceptedportfolioshare-portfolioid
scapsPortfolioId :: Lens' ServiceCatalogAcceptedPortfolioShare (Val Text)
scapsPortfolioId = lens _serviceCatalogAcceptedPortfolioSharePortfolioId (\s a -> s { _serviceCatalogAcceptedPortfolioSharePortfolioId = a })
