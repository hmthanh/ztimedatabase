-- CreateTable
CREATE TABLE "Bandwidth" (
    "id" SERIAL NOT NULL,
    "time" TIMESTAMPTZ(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "serverId" INTEGER NOT NULL,
    "appId" INTEGER NOT NULL,
    "TotalBandwidthByCountry_Vietnam" BIGINT NOT NULL DEFAULT 0,
    "TotalBandwidthByCountry_US" BIGINT NOT NULL DEFAULT 0,
    "TotalBandwidthByCountry_Myanmar" BIGINT NOT NULL DEFAULT 0,
    "TotalBandwidthByCountry_International" BIGINT NOT NULL DEFAULT 0,
    "TotalBandwidthByCountry_Other" BIGINT NOT NULL DEFAULT 0,
    "TotalBandwidthByCountry_Notfound" BIGINT NOT NULL DEFAULT 0,
    "TotalBandwidthByIsp_Viettel" BIGINT NOT NULL DEFAULT 0,
    "TotalBandwidthByIsp_Mobi" BIGINT NOT NULL DEFAULT 0,
    "TotalBandwidthByIsp_Vina" BIGINT NOT NULL DEFAULT 0,
    "TotalBandwidthByIsp_FPT" BIGINT NOT NULL DEFAULT 0,
    "TotalBandwidthByIsp_Other" BIGINT NOT NULL DEFAULT 0,
    "TotalBandwidthByIsp_Unknown" BIGINT NOT NULL DEFAULT 0,
    "TotalBandwidthReceiveClientHTTP" BIGINT NOT NULL DEFAULT 0,
    "TotalBandwidthSendClientHTTP" BIGINT NOT NULL DEFAULT 0,
    "TotalBandwidthReceiveClientHTTP2" BIGINT NOT NULL DEFAULT 0,
    "TotalBandwidthSendClientHTTP2" BIGINT NOT NULL DEFAULT 0,
    "TotalBandwidthReceiveClientHTTPS" BIGINT NOT NULL DEFAULT 0,
    "TotalBandwidthSendClientHTTPS" BIGINT NOT NULL DEFAULT 0,
    "TotalBandwidthReceiveDownload" BIGINT NOT NULL DEFAULT 0,
    "TotalBandwidthSendDownload" BIGINT NOT NULL DEFAULT 0,

    CONSTRAINT "Bandwidth_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "HTTPSBandwidth" (
    "id" SERIAL NOT NULL,
    "time" TIMESTAMPTZ(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "serverId" INTEGER NOT NULL,
    "appId" INTEGER NOT NULL,
    "TotalBandwidthSendHTTPS_Outbound" BIGINT NOT NULL DEFAULT 0,
    "TotalBandwidthRecvHTTPS_Inbound" BIGINT NOT NULL DEFAULT 0,
    "TotalBandwidthSendHTTPSByCountry_Vietnam" BIGINT NOT NULL DEFAULT 0,
    "TotalBandwidthSendHTTPSByCountry_US" BIGINT NOT NULL DEFAULT 0,
    "TotalBandwidthSendHTTPSByCountry_Myanmar" BIGINT NOT NULL DEFAULT 0,
    "TotalBandwidthSendHTTPSByCountry_International" BIGINT NOT NULL DEFAULT 0,
    "TotalBandwidthSendHTTPSByCountry_Other" BIGINT NOT NULL DEFAULT 0,
    "TotalBandwidthSendHTTPSByCountry_NotFound" BIGINT NOT NULL DEFAULT 0,
    "TotalBandwidthSendHTTPSByIsp_Viettel" BIGINT NOT NULL DEFAULT 0,
    "TotalBandwidthSendHTTPSByIsp_Mobi" BIGINT NOT NULL DEFAULT 0,
    "TotalBandwidthSendHTTPSByIsp_Vina" BIGINT NOT NULL DEFAULT 0,
    "TotalBandwidthSendHTTPSByIsp_FPT" BIGINT NOT NULL DEFAULT 0,
    "TotalBandwidthSendHTTPSByIsp_Other" BIGINT NOT NULL DEFAULT 0,
    "TotalBandwidthSendHTTPSByIsp_Unknown" BIGINT NOT NULL DEFAULT 0,
    "DataUsageSendHTTPS_Outbound" BIGINT NOT NULL DEFAULT 0,
    "DataUsageRecvHTTPS_Inbound" BIGINT NOT NULL DEFAULT 0,
    "DataUsageHTTPSByCountry_Vietnam" BIGINT NOT NULL DEFAULT 0,
    "DataUsageHTTPSByCountry_US" BIGINT NOT NULL DEFAULT 0,
    "DataUsageHTTPSByCountry_Myanmar" BIGINT NOT NULL DEFAULT 0,
    "DataUsageHTTPSByCountry_International" BIGINT NOT NULL DEFAULT 0,
    "DataUsageHTTPSByCountry_Other" BIGINT NOT NULL DEFAULT 0,
    "DataUsageHTTPSByCountry_NotFound" BIGINT NOT NULL DEFAULT 0,
    "DataUsageSendHTTPSByIsp_Viettel" BIGINT NOT NULL DEFAULT 0,
    "DataUsageHTTPSByIsp_Mobi" BIGINT NOT NULL DEFAULT 0,
    "DataUsageHTTPSByIsp_Vina" BIGINT NOT NULL DEFAULT 0,
    "DataUsageHTTPSByIsp_FPT" BIGINT NOT NULL DEFAULT 0,
    "DataUsageHTTPSByIsp_Other" BIGINT NOT NULL DEFAULT 0,
    "DataUsageHTTPSByIsp_Unknown" BIGINT NOT NULL DEFAULT 0,

    CONSTRAINT "HTTPSBandwidth_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "HTTP2Bandwidth" (
    "id" SERIAL NOT NULL,
    "time" TIMESTAMPTZ(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "serverId" INTEGER NOT NULL,
    "appId" INTEGER NOT NULL,
    "TotalBandwidthSendHTTP2_Outbound" BIGINT NOT NULL DEFAULT 0,
    "TotalBandwidthRecvHTTP2_Inbound" BIGINT NOT NULL DEFAULT 0,
    "TotalBandwidthSendHTTP2ByCountry_Vietnam" BIGINT NOT NULL DEFAULT 0,
    "TotalBandwidthSendHTTP2ByCountry_US" BIGINT NOT NULL DEFAULT 0,
    "TotalBandwidthSendHTTP2ByCountry_Myanmar" BIGINT NOT NULL DEFAULT 0,
    "TotalBandwidthSendHTTP2ByCountry_International" BIGINT NOT NULL DEFAULT 0,
    "TotalBandwidthSendHTTP2ByCountry_Other" BIGINT NOT NULL DEFAULT 0,
    "TotalBandwidthSendHTTP2ByCountry_NotFound" BIGINT NOT NULL DEFAULT 0,
    "TotalBandwidthSendHTTP2ByIsp_Viettel" BIGINT NOT NULL DEFAULT 0,
    "TotalBandwidthSendHTTP2ByIsp_Mobi" BIGINT NOT NULL DEFAULT 0,
    "TotalBandwidthSendHTTP2ByIsp_Vina" BIGINT NOT NULL DEFAULT 0,
    "TotalBandwidthSendHTTP2ByIsp_FPT" BIGINT NOT NULL DEFAULT 0,
    "TotalBandwidthSendHTTP2ByIsp_Other" BIGINT NOT NULL DEFAULT 0,
    "TotalBandwidthSendHTTP2ByIsp_Unknown" BIGINT NOT NULL DEFAULT 0,
    "TotalDataUsageSendHTTP2_Outbound" BIGINT NOT NULL DEFAULT 0,
    "TotalDataUsageRecvHTTP2_Inbound" BIGINT NOT NULL DEFAULT 0,
    "TotalDataUsageHTTP2ByCountry_Vietnam" BIGINT NOT NULL DEFAULT 0,
    "TotalDataUsageHTTP2ByCountry_US" BIGINT NOT NULL DEFAULT 0,
    "TotalDataUsageHTTP2ByCountry_Myanmar" BIGINT NOT NULL DEFAULT 0,
    "TotalDataUsageHTTP2ByCountry_International" BIGINT NOT NULL DEFAULT 0,
    "TotalDataUsageHTTP2ByCountry_Other" BIGINT NOT NULL DEFAULT 0,
    "TotalDataUsageHTTP2ByCountry_NotFound" BIGINT NOT NULL DEFAULT 0,
    "TotalDataUsageHTTP2ByIsp_Viettel" BIGINT NOT NULL DEFAULT 0,
    "TotalDataUsageHTTP2ByIsp_Mobi" BIGINT NOT NULL DEFAULT 0,
    "TotalDataUsageHTTP2ByIsp_Vina" BIGINT NOT NULL DEFAULT 0,
    "TotalDataUsageHTTP2ByIsp_FPT" BIGINT NOT NULL DEFAULT 0,
    "TotalDataUsageHTTP2ByIsp_Other" BIGINT NOT NULL DEFAULT 0,
    "TotalDataUsageHTTP2ByIsp_Unknown" BIGINT NOT NULL DEFAULT 0,

    CONSTRAINT "HTTP2Bandwidth_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Cache" (
    "id" SERIAL NOT NULL,
    "time" TIMESTAMPTZ(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "serverId" INTEGER NOT NULL,
    "appId" INTEGER NOT NULL,
    "PercentMemHitTotal" BIGINT NOT NULL DEFAULT 0,
    "PercentDiskHitTotal" BIGINT NOT NULL DEFAULT 0,
    "PercentMissCacheTotal" BIGINT NOT NULL DEFAULT 0,
    "TotalMemHit" BIGINT NOT NULL DEFAULT 0,
    "TotalDiskHit" BIGINT NOT NULL DEFAULT 0,
    "TotalRequestHTTP" BIGINT NOT NULL DEFAULT 0,
    "TotalRequestHTTPS" BIGINT NOT NULL DEFAULT 0,
    "TotalRequestHTTP2" BIGINT NOT NULL DEFAULT 0,

    CONSTRAINT "Cache_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Download" (
    "id" SERIAL NOT NULL,
    "time" TIMESTAMPTZ(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "serverId" INTEGER NOT NULL,
    "appId" INTEGER NOT NULL,
    "TotalConnDownload" BIGINT NOT NULL DEFAULT 0,
    "TotalRequestDownload" BIGINT NOT NULL DEFAULT 0,
    "TotalRequestDownloadRetry" BIGINT NOT NULL DEFAULT 0,
    "TotalCCUDownload" BIGINT NOT NULL DEFAULT 0,
    "TotalCCURequestDownload" BIGINT NOT NULL DEFAULT 0,
    "RecentTimeDownload" BIGINT NOT NULL DEFAULT 0,
    "ConnPoolsDownload_PoolSize" BIGINT NOT NULL DEFAULT 0,
    "ConnPoolsDownload_MaxPoolSize" BIGINT NOT NULL DEFAULT 0,
    "ConnPoolsDownload_TotalBorrow" BIGINT NOT NULL DEFAULT 0,
    "ConnPoolsDownload_TotalInvalid" BIGINT NOT NULL DEFAULT 0,
    "ConnPoolsDownload_TotalConnectFailed" BIGINT NOT NULL DEFAULT 0,
    "ConnPoolsDownload_TotalConnectSuccess" BIGINT NOT NULL DEFAULT 0,

    CONSTRAINT "Download_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "InternalDownload" (
    "id" SERIAL NOT NULL,
    "time" TIMESTAMPTZ(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "serverId" INTEGER NOT NULL,
    "appId" INTEGER NOT NULL,
    "TotalRequestDownloadInternal" BIGINT NOT NULL DEFAULT 0,
    "TotalRequestDownloadInternalRetry" BIGINT NOT NULL DEFAULT 0,
    "TotalCCURequestDownloadInternal" BIGINT NOT NULL DEFAULT 0,
    "TotalCCUDownloadInternal" BIGINT NOT NULL DEFAULT 0,
    "TotalCloseDownloadInternal" BIGINT NOT NULL DEFAULT 0,
    "TotalConnDownloadInternal" BIGINT NOT NULL DEFAULT 0,
    "RecentTimeDownloadInternal" BIGINT NOT NULL DEFAULT 0,
    "TotalBandwidthReceiveDownloadInternal" BIGINT NOT NULL DEFAULT 0,
    "TotalBandwidthSendDownloadInternal" BIGINT NOT NULL DEFAULT 0,
    "TotalBandwidthReceiveClientInternal" BIGINT NOT NULL DEFAULT 0,
    "TotalBandwidthSendClientInternal" BIGINT NOT NULL DEFAULT 0,

    CONSTRAINT "InternalDownload_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "HTTPStatusCode" (
    "id" SERIAL NOT NULL,
    "time" TIMESTAMPTZ(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "serverId" INTEGER NOT NULL,
    "appId" INTEGER NOT NULL,
    "Total200" BIGINT NOT NULL DEFAULT 0,
    "Total301" BIGINT NOT NULL DEFAULT 0,
    "Total302" BIGINT NOT NULL DEFAULT 0,
    "Total304" BIGINT NOT NULL DEFAULT 0,
    "Total400" BIGINT NOT NULL DEFAULT 0,
    "Total403" BIGINT NOT NULL DEFAULT 0,
    "Total404" BIGINT NOT NULL DEFAULT 0,
    "Total500" BIGINT NOT NULL DEFAULT 0,
    "Total502" BIGINT NOT NULL DEFAULT 0,
    "TotalClose" BIGINT NOT NULL DEFAULT 0,
    "TotalUnknown" BIGINT NOT NULL DEFAULT 0,

    CONSTRAINT "HTTPStatusCode_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "HTTP2ErrorCode" (
    "id" SERIAL NOT NULL,
    "time" TIMESTAMPTZ(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "serverId" INTEGER NOT NULL,
    "appId" INTEGER NOT NULL,
    "TotalRcvProtocolError" BIGINT NOT NULL DEFAULT 0,
    "TotalRcvCancel" BIGINT NOT NULL DEFAULT 0,
    "TotalRcvCompressionError" BIGINT NOT NULL DEFAULT 0,
    "TotalRcvFlowControlError" BIGINT NOT NULL DEFAULT 0,
    "TotalRcvFrameSizeError" BIGINT NOT NULL DEFAULT 0,
    "TotalRcvInternalError" BIGINT NOT NULL DEFAULT 0,
    "TotalRcvRefusedStream" BIGINT NOT NULL DEFAULT 0,
    "TotalRcvSettingTimeout" BIGINT NOT NULL DEFAULT 0,
    "TotalRcvStreamClose" BIGINT NOT NULL DEFAULT 0,
    "TotalSendProtocolError" BIGINT NOT NULL DEFAULT 0,
    "TotalSendCancel" BIGINT NOT NULL DEFAULT 0,
    "TotalSendCompressionError" BIGINT NOT NULL DEFAULT 0,
    "TotalSendFlowControlError" BIGINT NOT NULL DEFAULT 0,
    "TotalSendFrameSizeError" BIGINT NOT NULL DEFAULT 0,
    "TotalSendInternalError" BIGINT NOT NULL DEFAULT 0,
    "TotalSendRefusedStream" BIGINT NOT NULL DEFAULT 0,
    "TotalSendSettingTimeout" BIGINT NOT NULL DEFAULT 0,
    "TotalSendStreamClose" BIGINT NOT NULL DEFAULT 0,

    CONSTRAINT "HTTP2ErrorCode_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Connection" (
    "id" SERIAL NOT NULL,
    "time" TIMESTAMPTZ(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "serverId" INTEGER NOT NULL,
    "appId" INTEGER NOT NULL,
    "RespondConnsCliHTTP" BIGINT NOT NULL DEFAULT 0,
    "RespondConnsCliHTTPS" BIGINT NOT NULL DEFAULT 0,
    "RespondConnsCliHTTP2" BIGINT NOT NULL DEFAULT 0,
    "KeepAliveConnsCliHTTP" BIGINT NOT NULL DEFAULT 0,
    "KeepAliveConnsCliHTTPS" BIGINT NOT NULL DEFAULT 0,
    "KeepAliveConnsCliHTTP2" BIGINT NOT NULL DEFAULT 0,
    "KeepAliveConnsDownload" BIGINT NOT NULL DEFAULT 0,

    CONSTRAINT "Connection_pkey" PRIMARY KEY ("id")
);

