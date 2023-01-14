CREATE TABLE [dbo].[ZeemRole]
(
	[ZeemRoleId]                                    INT NOT NULL PRIMARY KEY IDENTITY, 
    [RoleName]                                      NVARCHAR(50) NOT NULL,
	[CreatedDate]                                   DATETIME NOT NULL DEFAULT GETDATE(), 
    [CreatedBy]                                     INT NOT NULL, 
    [ModifiedDate]                                  DATETIME NULL, 
    [ModifiedBy]                                    INT NULL, 
    [DeletedDate]                                   DATETIME NULL, 
    [DeletedBy]                                     INT NULL, 
    [IsDeleted]                                     BIT NOT NULL DEFAULT 0
)
