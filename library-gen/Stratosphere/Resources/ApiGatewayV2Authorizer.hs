{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-authorizer.html

module Stratosphere.Resources.ApiGatewayV2Authorizer where

import Stratosphere.ResourceImports


-- | Full data type definition for ApiGatewayV2Authorizer. See
-- 'apiGatewayV2Authorizer' for a more convenient constructor.
data ApiGatewayV2Authorizer =
  ApiGatewayV2Authorizer
  { _apiGatewayV2AuthorizerApiId :: Val Text
  , _apiGatewayV2AuthorizerAuthorizerCredentialsArn :: Maybe (Val Text)
  , _apiGatewayV2AuthorizerAuthorizerResultTtlInSeconds :: Maybe (Val Integer)
  , _apiGatewayV2AuthorizerAuthorizerType :: Val Text
  , _apiGatewayV2AuthorizerAuthorizerUri :: Val Text
  , _apiGatewayV2AuthorizerIdentitySource :: ValList Text
  , _apiGatewayV2AuthorizerIdentityValidationExpression :: Maybe (Val Text)
  , _apiGatewayV2AuthorizerName :: Val Text
  } deriving (Show, Eq)

instance ToJSON ApiGatewayV2Authorizer where
  toJSON ApiGatewayV2Authorizer{..} =
    object $
    catMaybes
    [ (Just . ("ApiId",) . toJSON) _apiGatewayV2AuthorizerApiId
    , fmap (("AuthorizerCredentialsArn",) . toJSON) _apiGatewayV2AuthorizerAuthorizerCredentialsArn
    , fmap (("AuthorizerResultTtlInSeconds",) . toJSON . fmap Integer') _apiGatewayV2AuthorizerAuthorizerResultTtlInSeconds
    , (Just . ("AuthorizerType",) . toJSON) _apiGatewayV2AuthorizerAuthorizerType
    , (Just . ("AuthorizerUri",) . toJSON) _apiGatewayV2AuthorizerAuthorizerUri
    , (Just . ("IdentitySource",) . toJSON) _apiGatewayV2AuthorizerIdentitySource
    , fmap (("IdentityValidationExpression",) . toJSON) _apiGatewayV2AuthorizerIdentityValidationExpression
    , (Just . ("Name",) . toJSON) _apiGatewayV2AuthorizerName
    ]

instance FromJSON ApiGatewayV2Authorizer where
  parseJSON (Object obj) =
    ApiGatewayV2Authorizer <$>
      (obj .: "ApiId") <*>
      (obj .:? "AuthorizerCredentialsArn") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "AuthorizerResultTtlInSeconds") <*>
      (obj .: "AuthorizerType") <*>
      (obj .: "AuthorizerUri") <*>
      (obj .: "IdentitySource") <*>
      (obj .:? "IdentityValidationExpression") <*>
      (obj .: "Name")
  parseJSON _ = mempty

-- | Constructor for 'ApiGatewayV2Authorizer' containing required fields as
-- arguments.
apiGatewayV2Authorizer
  :: Val Text -- ^ 'agvaApiId'
  -> Val Text -- ^ 'agvaAuthorizerType'
  -> Val Text -- ^ 'agvaAuthorizerUri'
  -> ValList Text -- ^ 'agvaIdentitySource'
  -> Val Text -- ^ 'agvaName'
  -> ApiGatewayV2Authorizer
apiGatewayV2Authorizer apiIdarg authorizerTypearg authorizerUriarg identitySourcearg namearg =
  ApiGatewayV2Authorizer
  { _apiGatewayV2AuthorizerApiId = apiIdarg
  , _apiGatewayV2AuthorizerAuthorizerCredentialsArn = Nothing
  , _apiGatewayV2AuthorizerAuthorizerResultTtlInSeconds = Nothing
  , _apiGatewayV2AuthorizerAuthorizerType = authorizerTypearg
  , _apiGatewayV2AuthorizerAuthorizerUri = authorizerUriarg
  , _apiGatewayV2AuthorizerIdentitySource = identitySourcearg
  , _apiGatewayV2AuthorizerIdentityValidationExpression = Nothing
  , _apiGatewayV2AuthorizerName = namearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-authorizer.html#cfn-apigatewayv2-authorizer-apiid
agvaApiId :: Lens' ApiGatewayV2Authorizer (Val Text)
agvaApiId = lens _apiGatewayV2AuthorizerApiId (\s a -> s { _apiGatewayV2AuthorizerApiId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-authorizer.html#cfn-apigatewayv2-authorizer-authorizercredentialsarn
agvaAuthorizerCredentialsArn :: Lens' ApiGatewayV2Authorizer (Maybe (Val Text))
agvaAuthorizerCredentialsArn = lens _apiGatewayV2AuthorizerAuthorizerCredentialsArn (\s a -> s { _apiGatewayV2AuthorizerAuthorizerCredentialsArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-authorizer.html#cfn-apigatewayv2-authorizer-authorizerresultttlinseconds
agvaAuthorizerResultTtlInSeconds :: Lens' ApiGatewayV2Authorizer (Maybe (Val Integer))
agvaAuthorizerResultTtlInSeconds = lens _apiGatewayV2AuthorizerAuthorizerResultTtlInSeconds (\s a -> s { _apiGatewayV2AuthorizerAuthorizerResultTtlInSeconds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-authorizer.html#cfn-apigatewayv2-authorizer-authorizertype
agvaAuthorizerType :: Lens' ApiGatewayV2Authorizer (Val Text)
agvaAuthorizerType = lens _apiGatewayV2AuthorizerAuthorizerType (\s a -> s { _apiGatewayV2AuthorizerAuthorizerType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-authorizer.html#cfn-apigatewayv2-authorizer-authorizeruri
agvaAuthorizerUri :: Lens' ApiGatewayV2Authorizer (Val Text)
agvaAuthorizerUri = lens _apiGatewayV2AuthorizerAuthorizerUri (\s a -> s { _apiGatewayV2AuthorizerAuthorizerUri = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-authorizer.html#cfn-apigatewayv2-authorizer-identitysource
agvaIdentitySource :: Lens' ApiGatewayV2Authorizer (ValList Text)
agvaIdentitySource = lens _apiGatewayV2AuthorizerIdentitySource (\s a -> s { _apiGatewayV2AuthorizerIdentitySource = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-authorizer.html#cfn-apigatewayv2-authorizer-identityvalidationexpression
agvaIdentityValidationExpression :: Lens' ApiGatewayV2Authorizer (Maybe (Val Text))
agvaIdentityValidationExpression = lens _apiGatewayV2AuthorizerIdentityValidationExpression (\s a -> s { _apiGatewayV2AuthorizerIdentityValidationExpression = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-authorizer.html#cfn-apigatewayv2-authorizer-name
agvaName :: Lens' ApiGatewayV2Authorizer (Val Text)
agvaName = lens _apiGatewayV2AuthorizerName (\s a -> s { _apiGatewayV2AuthorizerName = a })
