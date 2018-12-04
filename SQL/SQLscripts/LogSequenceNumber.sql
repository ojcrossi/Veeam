SELECT
    [backup_start_date],
    [type],
    [first_lsn],
    [database_backup_lsn],
	[checkpoint_lsn],
	[name],
	[description]
FROM
    [msdb].[dbo].[backupset]
WHERE
    [database_name] = N'CRM01'
	--AND
	--[type] = N'D'
	ORDER BY [backup_start_date] DESC;
GO