SELECT create_hypertable('"Bandwidth"', 'time');
SELECT create_hypertable('"HTTPSBandwidth"', 'time');
SELECT create_hypertable('"HTTP2Bandwidth"', 'time');
SELECT create_hypertable('"Cache"', 'time');
SELECT create_hypertable('"Download"', 'time');
SELECT create_hypertable('"InternalDownload"', 'time');
SELECT create_hypertable('"HTTPStatusCode"', 'time');
SELECT create_hypertable('"HTTP2ErrorCode"', 'time');
SELECT create_hypertable('"Connection"', 'time');


-- Generate 100 random data rows
INSERT INTO "Download" ("time", "serverId", "appId", "TotalConnDownload", "TotalRequestDownload", "TotalRequestDownloadRetry", "TotalCCUDownload", "TotalCCURequestDownload", "RecentTimeDownload", "ConnPoolsDownload_PoolSize", "ConnPoolsDownload_MaxPoolSize", "ConnPoolsDownload_TotalBorrow", "ConnPoolsDownload_TotalInvalid", "ConnPoolsDownload_TotalConnectFailed", "ConnPoolsDownload_TotalConnectSuccess")
SELECT 
    NOW() - INTERVAL '1 hour' * (random() * 12760)::int,  -- Generate a random timestamp within the past year
    FLOOR(RANDOM() * 100) + 1,                           -- Generate a random serverId between 1 and 100
    FLOOR(RANDOM() * 100) + 1,                           -- Generate a random appId between 1 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalConnDownload value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalRequestDownload value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalRequestDownloadRetry value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalCCUDownload value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalCCURequestDownload value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random RecentTimeDownload value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random ConnPoolsDownload_PoolSize value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random ConnPoolsDownload_MaxPoolSize value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random ConnPoolsDownload_TotalBorrow value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random ConnPoolsDownload_TotalInvalid value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random ConnPoolsDownload_TotalConnectFailed value between 0 and 100
    FLOOR(RANDOM() * 101)                                -- Generate a random ConnPoolsDownload_TotalConnectSuccess value between 0 and 100
FROM generate_series(1, 100);


-- Generate 100 random data rows
INSERT INTO "Cache" ("time", "serverId", "appId", "PercentMemHitTotal", "PercentDiskHitTotal", "PercentMissCacheTotal", "TotalMemHit", "TotalDiskHit", "TotalRequestHTTP", "TotalRequestHTTPS", "TotalRequestHTTP2")
SELECT 
    NOW() - INTERVAL '1 hour' * (random() * 12760)::int,  -- Generate a random timestamp within the past year
    FLOOR(RANDOM() * 100) + 1,                           -- Generate a random serverId between 1 and 100
    FLOOR(RANDOM() * 100) + 1,                           -- Generate a random appId between 1 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random PercentMemHitTotal value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random PercentDiskHitTotal value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random PercentMissCacheTotal value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalMemHit value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalDiskHit value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalRequestHTTP value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalRequestHTTPS value between 0 and 100
    FLOOR(RANDOM() * 101)                                -- Generate a random TotalRequestHTTP2 value between 0 and 100
FROM generate_series(1, 100);


-- Generate 100 random data rows
INSERT INTO "HTTP2Bandwidth" ("time", "serverId", "appId", "TotalBandwidthSendHTTP2_Outbound", "TotalBandwidthRecvHTTP2_Inbound", "TotalBandwidthSendHTTP2ByCountry_Vietnam", "TotalBandwidthSendHTTP2ByCountry_US", "TotalBandwidthSendHTTP2ByCountry_Myanmar", "TotalBandwidthSendHTTP2ByCountry_International", "TotalBandwidthSendHTTP2ByCountry_Other", "TotalBandwidthSendHTTP2ByCountry_NotFound", "TotalBandwidthSendHTTP2ByIsp_Viettel", "TotalBandwidthSendHTTP2ByIsp_Mobi", "TotalBandwidthSendHTTP2ByIsp_Vina", "TotalBandwidthSendHTTP2ByIsp_FPT", "TotalBandwidthSendHTTP2ByIsp_Other", "TotalBandwidthSendHTTP2ByIsp_Unknown", "TotalDataUsageSendHTTP2_Outbound", "TotalDataUsageRecvHTTP2_Inbound", "TotalDataUsageHTTP2ByCountry_Vietnam", "TotalDataUsageHTTP2ByCountry_US", "TotalDataUsageHTTP2ByCountry_Myanmar", "TotalDataUsageHTTP2ByCountry_International", "TotalDataUsageHTTP2ByCountry_Other", "TotalDataUsageHTTP2ByCountry_NotFound", "TotalDataUsageHTTP2ByIsp_Viettel", "TotalDataUsageHTTP2ByIsp_Mobi", "TotalDataUsageHTTP2ByIsp_Vina", "TotalDataUsageHTTP2ByIsp_FPT", "TotalDataUsageHTTP2ByIsp_Other", "TotalDataUsageHTTP2ByIsp_Unknown")
SELECT 
    NOW() - INTERVAL '1 hour' * (random() * 12760)::int,  -- Generate a random timestamp within the past year
    FLOOR(RANDOM() * 100) + 1,                           -- Generate a random serverId between 1 and 100
    FLOOR(RANDOM() * 100) + 1,                           -- Generate a random appId between 1 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalBandwidthSendHTTP2_Outbound value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalBandwidthRecvHTTP2_Inbound value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalBandwidthSendHTTP2ByCountry_Vietnam value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalBandwidthSendHTTP2ByCountry_US value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalBandwidthSendHTTP2ByCountry_Myanmar value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalBandwidthSendHTTP2ByCountry_International value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalBandwidthSendHTTP2ByCountry_Other value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalBandwidthSendHTTP2ByCountry_NotFound value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalBandwidthSendHTTP2ByIsp_Viettel value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalBandwidthSendHTTP2ByIsp_Mobi value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalBandwidthSendHTTP2ByIsp_Vina value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalBandwidthSendHTTP2ByIsp_FPT value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalBandwidthSendHTTP2ByIsp_Other value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalBandwidthSendHTTP2ByIsp_Unknown value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalDataUsageSendHTTP2_Outbound value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalDataUsageRecvHTTP2_Inbound value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalDataUsageHTTP2ByCountry_Vietnam value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalDataUsageHTTP2ByCountry_US value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalDataUsageHTTP2ByCountry_Myanmar value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalDataUsageHTTP2ByCountry_International value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalDataUsageHTTP2ByCountry_Other value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalDataUsageHTTP2ByCountry_NotFound value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalDataUsageHTTP2ByIsp_Viettel value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalDataUsageHTTP2ByIsp_Mobi value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalDataUsageHTTP2ByIsp_Vina value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalDataUsageHTTP2ByIsp_FPT value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalDataUsageHTTP2ByIsp_Other value between 0 and 100
    FLOOR(RANDOM() * 101)                                -- Generate a random TotalDataUsageHTTP2ByIsp_Unknown value between 0 and 100
FROM generate_series(1, 100);


-- Generate 100 random data rows
INSERT INTO "Bandwidth" ("time", "serverId", "appId", "TotalBandwidthByCountry_Vietnam", "TotalBandwidthByCountry_US", "TotalBandwidthByCountry_Myanmar", "TotalBandwidthByCountry_International", "TotalBandwidthByCountry_Other", "TotalBandwidthByCountry_Notfound", "TotalBandwidthByIsp_Viettel", "TotalBandwidthByIsp_Mobi", "TotalBandwidthByIsp_Vina", "TotalBandwidthByIsp_FPT", "TotalBandwidthByIsp_Other", "TotalBandwidthByIsp_Unknown", "TotalBandwidthReceiveClientHTTP", "TotalBandwidthSendClientHTTP", "TotalBandwidthReceiveClientHTTP2", "TotalBandwidthSendClientHTTP2", "TotalBandwidthReceiveClientHTTPS", "TotalBandwidthSendClientHTTPS", "TotalBandwidthReceiveDownload", "TotalBandwidthSendDownload")
SELECT 
    NOW() - INTERVAL '1 hour' * (random() * 12760)::int,  -- Generate a random timestamp within the past year
    FLOOR(RANDOM() * 100) + 1,                           -- Generate a random serverId between 1 and 100
    FLOOR(RANDOM() * 100) + 1,                           -- Generate a random appId between 1 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalBandwidthByCountry_Vietnam value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalBandwidthByCountry_US value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalBandwidthByCountry_Myanmar value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalBandwidthByCountry_International value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalBandwidthByCountry_Other value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalBandwidthByCountry_Notfound value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalBandwidthByIsp_Viettel value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalBandwidthByIsp_Mobi value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalBandwidthByIsp_Vina value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalBandwidthByIsp_FPT value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalBandwidthByIsp_Other value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalBandwidthByIsp_Unknown value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalBandwidthReceiveClientHTTP value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalBandwidthSendClientHTTP value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalBandwidthReceiveClientHTTP2 value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalBandwidthSendClientHTTP2 value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalBandwidthReceiveClientHTTPS value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalBandwidthSendClientHTTPS value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalBandwidthReceiveDownload value between 0 and 100
    FLOOR(RANDOM() * 101)                                -- Generate a random TotalBandwidthSendDownload value between 0 and 100
FROM generate_series(1, 100);

-- Generate 100 random data rows
INSERT INTO "HTTPSBandwidth" ("time", "serverId", "appId", "TotalBandwidthSendHTTPS_Outbound", "TotalBandwidthRecvHTTPS_Inbound", "TotalBandwidthSendHTTPSByCountry_Vietnam", "TotalBandwidthSendHTTPSByCountry_US", "TotalBandwidthSendHTTPSByCountry_Myanmar", "TotalBandwidthSendHTTPSByCountry_International", "TotalBandwidthSendHTTPSByCountry_Other", "TotalBandwidthSendHTTPSByCountry_NotFound", "TotalBandwidthSendHTTPSByIsp_Viettel", "TotalBandwidthSendHTTPSByIsp_Mobi", "TotalBandwidthSendHTTPSByIsp_Vina", "TotalBandwidthSendHTTPSByIsp_FPT", "TotalBandwidthSendHTTPSByIsp_Other", "TotalBandwidthSendHTTPSByIsp_Unknown", "DataUsageSendHTTPS_Outbound", "DataUsageRecvHTTPS_Inbound", "DataUsageHTTPSByCountry_Vietnam", "DataUsageHTTPSByCountry_US", "DataUsageHTTPSByCountry_Myanmar", "DataUsageHTTPSByCountry_International", "DataUsageHTTPSByCountry_Other", "DataUsageHTTPSByCountry_NotFound", "DataUsageSendHTTPSByIsp_Viettel", "DataUsageHTTPSByIsp_Mobi", "DataUsageHTTPSByIsp_Vina", "DataUsageHTTPSByIsp_FPT", "DataUsageHTTPSByIsp_Other", "DataUsageHTTPSByIsp_Unknown")
SELECT 
    NOW() - INTERVAL '1 hour' * (random() * 12760)::int,  -- Generate a random timestamp within the past year
    FLOOR(RANDOM() * 100) + 1,                           -- Generate a random serverId between 1 and 100
    FLOOR(RANDOM() * 100) + 1,                           -- Generate a random appId between 1 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalBandwidthSendHTTPS_Outbound value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalBandwidthRecvHTTPS_Inbound value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalBandwidthSendHTTPSByCountry_Vietnam value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalBandwidthSendHTTPSByCountry_US value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalBandwidthSendHTTPSByCountry_Myanmar value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalBandwidthSendHTTPSByCountry_Other value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalBandwidthSendHTTPSByCountry_NotFound value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalBandwidthSendHTTPSByIsp_Viettel value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalBandwidthSendHTTPSByIsp_Mobi value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalBandwidthSendHTTPSByIsp_Vina value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalBandwidthSendHTTPSByIsp_FPT value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalBandwidthSendHTTPSByIsp_Other value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalBandwidthSendHTTPSByIsp_Unknown value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random DataUsageSendHTTPS_Outbound value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random DataUsageRecvHTTPS_Inbound value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random DataUsageHTTPSByCountry_Vietnam value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random DataUsageHTTPSByCountry_US value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random DataUsageHTTPSByCountry_Myanmar value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random DataUsageHTTPSByCountry_International value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random DataUsageHTTPSByCountry_Other value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random DataUsageHTTPSByCountry_NotFound value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random DataUsageSendHTTPSByIsp_Viettel value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random DataUsageHTTPSByIsp_Mobi value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random DataUsageHTTPSByIsp_Vina value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random DataUsageHTTPSByIsp_FPT value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random DataUsageHTTPSByIsp_Other value between 0 and 100
    FLOOR(RANDOM() * 101)                                -- Generate a random DataUsageHTTPSByIsp_Unknown value between 0 and 100
FROM generate_series(1, 100);


-- Generate 100 random data rows
INSERT INTO "HTTPStatusCode" ("time", "serverId", "appId", "Total200", "Total301", "Total302", "Total304", "Total400", "Total403", "Total404", "Total500", "Total502", "TotalClose", "TotalUnknown")
SELECT 
    NOW() - INTERVAL '1 hour' * (random() * 12760)::int,  -- Generate a random timestamp within the past year
    FLOOR(RANDOM() * 100) + 1,                           -- Generate a random serverId between 1 and 100
    FLOOR(RANDOM() * 100) + 1,                           -- Generate a random appId between 1 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random Total200 value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random Total301 value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random Total302 value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random Total304 value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random Total400 value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random Total403 value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random Total404 value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random Total500 value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random Total502 value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalClose value between 0 and 100
    FLOOR(RANDOM() * 101)                                -- Generate a random TotalUnknown value between 0 and 100
FROM generate_series(1, 100);




-- Generate 100 random data rows
INSERT INTO "InternalDownload" ("time", "serverId", "appId", "TotalRequestDownloadInternal", "TotalRequestDownloadInternalRetry", "TotalCCURequestDownloadInternal", "TotalCCUDownloadInternal", "TotalCloseDownloadInternal", "TotalConnDownloadInternal", "RecentTimeDownloadInternal", "TotalBandwidthReceiveDownloadInternal", "TotalBandwidthSendDownloadInternal", "TotalBandwidthReceiveClientInternal", "TotalBandwidthSendClientInternal")
SELECT 
    NOW() - INTERVAL '1 hour' * (random() * 12760)::int,  -- Generate a random timestamp within the past year
    FLOOR(RANDOM() * 100) + 1,                           -- Generate a random serverId between 1 and 100
    FLOOR(RANDOM() * 100) + 1,                           -- Generate a random appId between 1 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalRequestDownloadInternal value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalRequestDownloadInternalRetry value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalCCURequestDownloadInternal value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalCCUDownloadInternal value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalCloseDownloadInternal value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalConnDownloadInternal value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random RecentTimeDownloadInternal value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalBandwidthReceiveDownloadInternal value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalBandwidthSendDownloadInternal value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random TotalBandwidthReceiveClientInternal value between 0 and 100
    FLOOR(RANDOM() * 101)                                -- Generate a random TotalBandwidthSendClientInternal value between 0 and 100
FROM generate_series(1, 100);


INSERT INTO "HTTP2ErrorCode" ("time", "serverId", "appId", "TotalRcvProtocolError", "TotalRcvCancel", "TotalRcvCompressionError", "TotalRcvFlowControlError", "TotalRcvFrameSizeError", "TotalRcvInternalError", "TotalRcvRefusedStream", "TotalRcvSettingTimeout", "TotalRcvStreamClose", "TotalSendProtocolError", "TotalSendCancel", "TotalSendCompressionError", "TotalSendFlowControlError", "TotalSendFrameSizeError", "TotalSendInternalError", "TotalSendRefusedStream", "TotalSendSettingTimeout", "TotalSendStreamClose")
SELECT 
NOW() - INTERVAL '1 hour' * (RANDOM() * 12760)::INT,
FLOOR(RANDOM() * 1234),
FLOOR(RANDOM() * 1234),
FLOOR(RANDOM() * 1234),
FLOOR(RANDOM() * 1234),
FLOOR(RANDOM() * 1234),
FLOOR(RANDOM() * 1234),
FLOOR(RANDOM() * 1234),
FLOOR(RANDOM() * 1234),
FLOOR(RANDOM() * 1234),
FLOOR(RANDOM() * 1234),
FLOOR(RANDOM() * 1234),
FLOOR(RANDOM() * 1234),
FLOOR(RANDOM() * 1234),
FLOOR(RANDOM() * 1234),
FLOOR(RANDOM() * 1234),
FLOOR(RANDOM() * 1234),
FLOOR(RANDOM() * 1234),
FLOOR(RANDOM() * 1234),
FLOOR(RANDOM() * 1234),
FLOOR(RANDOM() * 1234) FROM generate_series(1, 100);



-- Generate 100 random data rows
INSERT INTO "Connection" ("time", "serverId", "appId", "RespondConnsCliHTTP", "RespondConnsCliHTTPS", "RespondConnsCliHTTP2", "KeepAliveConnsCliHTTP", "KeepAliveConnsCliHTTPS", "KeepAliveConnsCliHTTP2", "KeepAliveConnsDownload")
SELECT 
    NOW() - INTERVAL '1 hour' * (random() * 12760)::int,  -- Generate a random timestamp within the past year
    FLOOR(RANDOM() * 100) + 1,                           -- Generate a random serverId between 1 and 100
    FLOOR(RANDOM() * 100) + 1,                           -- Generate a random appId between 1 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random RespondConnsCliHTTP value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random RespondConnsCliHTTPS value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random RespondConnsCliHTTP2 value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random KeepAliveConnsCliHTTP value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random KeepAliveConnsCliHTTPS value between 0 and 100
    FLOOR(RANDOM() * 101),                               -- Generate a random KeepAliveConnsCliHTTP2 value between 0 and 100
    FLOOR(RANDOM() * 101)                                -- Generate a random KeepAliveConnsDownload value between 0 and 100
FROM generate_series(1, 100);






CREATE OR REPLACE VIEW HTTPStatusCodeTotal5Minutes AS
SELECT 
  EXTRACT(epoch FROM time_bucket('5 minutes', time)) AS timestamp,
  "appId",
  "serverId"
  SUM("Total200") AS total200,
  SUM("Total301") AS total301,
  SUM("Total302") AS total302,
  SUM("Total304") AS total304,
  SUM("Total400") AS total400,
  SUM("Total403") AS total403,
  SUM("Total500") AS total500,
  SUM("Total502") AS total502,
  SUM("TotalClose") AS totalclose,
  SUM("TotalUnknown") AS totalunknown
FROM 
  "HTTPStatusCode"
GROUP BY 
  timestamp,
  "appId",
  "serverId"
ORDER BY 
  timestamp;








