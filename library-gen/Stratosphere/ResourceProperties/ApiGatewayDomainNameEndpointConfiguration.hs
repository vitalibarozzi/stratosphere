{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-domainname-endpointconfiguration.html

module Stratosphere.ResourceProperties.ApiGatewayDomainNameEndpointConfiguration where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for ApiGatewayDomainNameEndpointConfiguration.
-- See 'apiGatewayDomainNameEndpointConfiguration' for a more convenient
-- constructor.
data ApiGatewayDomainNameEndpointConfiguration =
  ApiGatewayDomainNameEndpointConfiguration
  { _apiGatewayDomainNameEndpointConfigurationTypes :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON ApiGatewayDomainNameEndpointConfiguration where
  toJSON ApiGatewayDomainNameEndpointConfiguration{..} =
    object $
    catMaybes
    [ fmap (("Types",) . toJSON) _apiGatewayDomainNameEndpointConfigurationTypes
    ]

instance FromJSON ApiGatewayDomainNameEndpointConfiguration where
  parseJSON (Object obj) =
    ApiGatewayDomainNameEndpointConfiguration <$>
      (obj .:? "Types")
  parseJSON _ = mempty

-- | Constructor for 'ApiGatewayDomainNameEndpointConfiguration' containing
-- required fields as arguments.
apiGatewayDomainNameEndpointConfiguration
  :: ApiGatewayDomainNameEndpointConfiguration
apiGatewayDomainNameEndpointConfiguration  =
  ApiGatewayDomainNameEndpointConfiguration
  { _apiGatewayDomainNameEndpointConfigurationTypes = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-domainname-endpointconfiguration.html#cfn-apigateway-domainname-endpointconfiguration-types
agdnecTypes :: Lens' ApiGatewayDomainNameEndpointConfiguration (Maybe (ValList Text))
agdnecTypes = lens _apiGatewayDomainNameEndpointConfigurationTypes (\s a -> s { _apiGatewayDomainNameEndpointConfigurationTypes = a })
