CREATE TABLE [dbo].[ZeemUserRole]
(
	[ZeemUserRoleId]                                INT NOT NULL PRIMARY KEY IDENTITY, 
    [UserId]                                        INT NOT NULL, 
    [RoleId]                                        INT NOT NULL,
    [CreatedDate]                                   DATETIME NOT NULL DEFAULT GETDATE(), 
    [CreatedBy]                                     INT NOT NULL, 
    [ModifiedDate]                                  DATETIME NULL, 
    [ModifiedBy]                                    INT NULL, 
    [DeletedDate]                                   DATETIME NULL, 
    [DeletedBy]                                     INT NULL, 
    [IsDeleted]                                     BIT NOT NULL DEFAULT 0, 
    CONSTRAINT [FK_ZeemUserRole_ZeemUser] FOREIGN KEY ([UserId]) REFERENCES [ZeemUser]([ZeemUserId]), 
    CONSTRAINT [FK_ZeemUserRole_ZeemRole] FOREIGN KEY ([RoleId]) REFERENCES [ZeemRole]([ZeemRoleId]) 
)
