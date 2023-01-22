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

IF (NOT EXISTS(SELECT * FROM ZeemUser WHERE [Username] = 'zeemadmin'))
BEGIN
	DECLARE @SuperAdminId INT

	SELECT @SuperAdminId = ZeemRoleId FROM [dbo].[ZeemRole] WHERE [RoleName]='Super Administrator'

	INSERT INTO [dbo].[ZeemUser]
	(
		[FirstName],
		[LastName],
		[Email],
		[MobileNumber],
		[Username],
		[Password],
		[EmailVerified],
		[MobileNumberVerified],
		[IsLocked],
		[CreatedDate],
		[CreatedBy]
	)
	VALUES
	(
		'Zeem',
		'Administrator',
		'test@mailinator.com',
		'123456789',
		'zeemadmin',
		'eb6131dd48785f36ed2c62f1c02fddd6ca55cf0804996fb3ec213cb8b6259b45', -- Zeem@2023.
		1,
		1,
		0,
		GETDATE(),
		1
	)

	DECLARE @ZeemUserId INT

	SET @ZeemUserId = SCOPE_IDENTITY()

	INSERT INTO [dbo].[ZeemUserRole]
	(
		[UserId],
		[RoleId],
		[CreatedBy],
		[CreatedDate]
	)
	VALUES
	(
		@ZeemUserId,
		@SuperAdminId,
		@ZeemUserId,
		GETDATE()
	)
	
END
GO