# Procduce insert function in TimescaleDB

## TimescaleDB SQL

### Create function

```sql
CREATE OR REPLACE FUNCTION public.insert_http_status_code(
    p_time timestamp,
    p_server_id integer,
    p_app_id integer,
    p_total_200 bigint,
    p_total_301 bigint,
    p_total_302 bigint,
    p_total_304 bigint,
    p_total_400 bigint,
    p_total_403 bigint,
    p_total_404 bigint,
    p_total_500 bigint,
    p_total_502 bigint,
    p_total_close bigint,
    p_total_unknown bigint
  ) RETURNS integer LANGUAGE plpgsql AS $function$
DECLARE result integer := 0;
BEGIN BEGIN
INSERT INTO "HTTPStatusCode" (
    "time",
    "serverId",
    "appId",
    "Total200",
    "Total301",
    "Total302",
    "Total304",
    "Total400",
    "Total403",
    "Total404",
    "Total500",
    "Total502",
    "TotalClose",
    "TotalUnknown"
  )
VALUES (
    p_time,
    p_server_id,
    p_app_id,
    p_total_200,
    p_total_301,
    p_total_302,
    p_total_304,
    p_total_400,
    p_total_403,
    p_total_404,
    p_total_500,
    p_total_502,
    p_total_close,
    p_total_unknown
  );
result := 1;
-- Set the result to 1 if the insertion succeeds
EXCEPTION
WHEN unique_violation THEN -- Handle the case when the primary key constraint is violated
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
result := 1;
-- Set the result to 1 if the update succeeds
END;
RETURN result;
-- Return the result value (1 for success, 0 for error)
END;
$function$
```

### Check and list function is created or not

```sql
SELECT *
FROM pg_catalog.pg_proc p
WHERE p.pronamespace = 'public'::pg_catalog.regnamespace AND p.proname= 'insert_http_status_code'
ORDER BY p.proname;
```


### Call function

```sql
SELECT public.insert_http_status_code(
  '2023-07-10 11:11:00.309+07'::timestamp with time zone,
  221,
  331,
  24091332,
  0,
  0,
  4241,
  0,
  55,
  45,
  0,
  0,
  0,
  0
);
```

### Drop function

```sql
DROP FUNCTION IF EXISTS public.insert_http_status_code(p_time timestamp without time zone, p_server_id integer, p_app_id integer, p_total_200 integer, p_total_301 integer, p_total_302 integer, p_total_304 integer, p_total_400 integer, p_total_403 integer, p_total_404 integer, p_total_500 integer, p_total_502 integer, p_total_close integer, p_total_unknown integer);
```


