{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-loglist.html

module Stratosphere.ResourceProperties.AmazonMQBrokerLogList where

import Stratosphere.ResourceImports


-- | Full data type definition for AmazonMQBrokerLogList. See
-- 'amazonMQBrokerLogList' for a more convenient constructor.
data AmazonMQBrokerLogList =
  AmazonMQBrokerLogList
  { _amazonMQBrokerLogListAudit :: Maybe (Val Bool)
  , _amazonMQBrokerLogListGeneral :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON AmazonMQBrokerLogList where
  toJSON AmazonMQBrokerLogList{..} =
    object $
    catMaybes
    [ fmap (("Audit",) . toJSON . fmap Bool') _amazonMQBrokerLogListAudit
    , fmap (("General",) . toJSON . fmap Bool') _amazonMQBrokerLogListGeneral
    ]

instance FromJSON AmazonMQBrokerLogList where
  parseJSON (Object obj) =
    AmazonMQBrokerLogList <$>
      fmap (fmap (fmap unBool')) (obj .:? "Audit") <*>
      fmap (fmap (fmap unBool')) (obj .:? "General")
  parseJSON _ = mempty

-- | Constructor for 'AmazonMQBrokerLogList' containing required fields as
-- arguments.
amazonMQBrokerLogList
  :: AmazonMQBrokerLogList
amazonMQBrokerLogList  =
  AmazonMQBrokerLogList
  { _amazonMQBrokerLogListAudit = Nothing
  , _amazonMQBrokerLogListGeneral = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-loglist.html#cfn-amazonmq-broker-loglist-audit
amqbllAudit :: Lens' AmazonMQBrokerLogList (Maybe (Val Bool))
amqbllAudit = lens _amazonMQBrokerLogListAudit (\s a -> s { _amazonMQBrokerLogListAudit = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-loglist.html#cfn-amazonmq-broker-loglist-general
amqbllGeneral :: Lens' AmazonMQBrokerLogList (Maybe (Val Bool))
amqbllGeneral = lens _amazonMQBrokerLogListGeneral (\s a -> s { _amazonMQBrokerLogListGeneral = a })
