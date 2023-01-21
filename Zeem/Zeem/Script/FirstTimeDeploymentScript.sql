GO
IF (NOT EXISTS(SELECT * FROM ZeemRole))
BEGIN
	INSERT INTO [dbo].[ZeemRole]
	(
		[RoleName],
		[SelfRegistrationRole],
		[CreatedBy],
		[CreatedDate]		
	)
	VALUES 
		(
			'Super Administrator',
			0,
			1,
			GETDATE()
		),
		(
			'Administrator',
			0,
			1,
			GETDATE()
		),
		(
			'Client',
			1,
			1,
			GETDATE()
		)
END

GO