CREATE OR REPLACE FUNCTION public.insert_http_status_code(p_time timestamp with time zone, p_server_id integer, p_app_id integer, p_total_200 integer, p_total_301 integer, p_total_302 integer, p_total_304 integer, p_total_400 integer, p_total_403 integer, p_total_404 integer, p_total_500 integer, p_total_502 integer, p_total_close integer, p_total_unknown integer)
 RETURNS void
 LANGUAGE plpgsql
AS $function$
BEGIN
  INSERT INTO "HTTPStatusCode" ("time", "serverId", "appId", "Total200", "Total301", "Total302", "Total304", "Total400", "Total403", "Total404", "Total500", "Total502", "TotalClose", "TotalUnknown")
  VALUES (p_time, p_server_id, p_app_id, p_total_200, p_total_301, p_total_302, p_total_304, p_total_400, p_total_403, p_total_404, p_total_500, p_total_502, p_total_close, p_total_unknown);
EXCEPTION
  WHEN unique_violation THEN
    -- Handle the case when the primary key constraint is violated
    -- (e.g., by updating the existing row instead of inserting a new one)
    UPDATE "HTTPStatusCode"
    SET "Total200" = "Total200" + p_total_200,
        "Total301" = "Total301" + p_total_301,
        "Total302" = "Total302" + p_total_302,
        "Total304" = "Total304" + p_total_304,
        "Total400" = "Total400" + p_total_400,
        "Total403" = "Total403" + p_total_403,
        "Total404" = "Total404" + p_total_404,
        "Total500" = "Total500" + p_total_500,
        "Total502" = "Total502" + p_total_502,
        "TotalClose" = "TotalClose" + p_total_close,
        "TotalUnknown" = "TotalUnknown" + p_total_unknown
    WHERE "time" = p_time
      AND "serverId" = p_server_id
      AND "appId" = p_app_id;
END;
$function$
