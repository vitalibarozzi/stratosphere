{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-channel.html

module Stratosphere.Resources.IoTAnalyticsChannel where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.IoTAnalyticsChannelRetentionPeriod
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for IoTAnalyticsChannel. See
-- 'ioTAnalyticsChannel' for a more convenient constructor.
data IoTAnalyticsChannel =
  IoTAnalyticsChannel
  { _ioTAnalyticsChannelChannelName :: Maybe (Val Text)
  , _ioTAnalyticsChannelRetentionPeriod :: Maybe IoTAnalyticsChannelRetentionPeriod
  , _ioTAnalyticsChannelTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToJSON IoTAnalyticsChannel where
  toJSON IoTAnalyticsChannel{..} =
    object $
    catMaybes
    [ fmap (("ChannelName",) . toJSON) _ioTAnalyticsChannelChannelName
    , fmap (("RetentionPeriod",) . toJSON) _ioTAnalyticsChannelRetentionPeriod
    , fmap (("Tags",) . toJSON) _ioTAnalyticsChannelTags
    ]

instance FromJSON IoTAnalyticsChannel where
  parseJSON (Object obj) =
    IoTAnalyticsChannel <$>
      (obj .:? "ChannelName") <*>
      (obj .:? "RetentionPeriod") <*>
      (obj .:? "Tags")
  parseJSON _ = mempty

-- | Constructor for 'IoTAnalyticsChannel' containing required fields as
-- arguments.
ioTAnalyticsChannel
  :: IoTAnalyticsChannel
ioTAnalyticsChannel  =
  IoTAnalyticsChannel
  { _ioTAnalyticsChannelChannelName = Nothing
  , _ioTAnalyticsChannelRetentionPeriod = Nothing
  , _ioTAnalyticsChannelTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-channel.html#cfn-iotanalytics-channel-channelname
itacChannelName :: Lens' IoTAnalyticsChannel (Maybe (Val Text))
itacChannelName = lens _ioTAnalyticsChannelChannelName (\s a -> s { _ioTAnalyticsChannelChannelName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-channel.html#cfn-iotanalytics-channel-retentionperiod
itacRetentionPeriod :: Lens' IoTAnalyticsChannel (Maybe IoTAnalyticsChannelRetentionPeriod)
itacRetentionPeriod = lens _ioTAnalyticsChannelRetentionPeriod (\s a -> s { _ioTAnalyticsChannelRetentionPeriod = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-channel.html#cfn-iotanalytics-channel-tags
itacTags :: Lens' IoTAnalyticsChannel (Maybe [Tag])
itacTags = lens _ioTAnalyticsChannelTags (\s a -> s { _ioTAnalyticsChannelTags = a })
