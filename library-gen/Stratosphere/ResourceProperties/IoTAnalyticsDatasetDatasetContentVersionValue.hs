{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-variable-datasetcontentversionvalue.html

module Stratosphere.ResourceProperties.IoTAnalyticsDatasetDatasetContentVersionValue where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- IoTAnalyticsDatasetDatasetContentVersionValue. See
-- 'ioTAnalyticsDatasetDatasetContentVersionValue' for a more convenient
-- constructor.
data IoTAnalyticsDatasetDatasetContentVersionValue =
  IoTAnalyticsDatasetDatasetContentVersionValue
  { _ioTAnalyticsDatasetDatasetContentVersionValueDatasetName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON IoTAnalyticsDatasetDatasetContentVersionValue where
  toJSON IoTAnalyticsDatasetDatasetContentVersionValue{..} =
    object $
    catMaybes
    [ fmap (("DatasetName",) . toJSON) _ioTAnalyticsDatasetDatasetContentVersionValueDatasetName
    ]

instance FromJSON IoTAnalyticsDatasetDatasetContentVersionValue where
  parseJSON (Object obj) =
    IoTAnalyticsDatasetDatasetContentVersionValue <$>
      (obj .:? "DatasetName")
  parseJSON _ = mempty

-- | Constructor for 'IoTAnalyticsDatasetDatasetContentVersionValue'
-- containing required fields as arguments.
ioTAnalyticsDatasetDatasetContentVersionValue
  :: IoTAnalyticsDatasetDatasetContentVersionValue
ioTAnalyticsDatasetDatasetContentVersionValue  =
  IoTAnalyticsDatasetDatasetContentVersionValue
  { _ioTAnalyticsDatasetDatasetContentVersionValueDatasetName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-variable-datasetcontentversionvalue.html#cfn-iotanalytics-dataset-variable-datasetcontentversionvalue-datasetname
itaddcvvDatasetName :: Lens' IoTAnalyticsDatasetDatasetContentVersionValue (Maybe (Val Text))
itaddcvvDatasetName = lens _ioTAnalyticsDatasetDatasetContentVersionValueDatasetName (\s a -> s { _ioTAnalyticsDatasetDatasetContentVersionValueDatasetName = a })
