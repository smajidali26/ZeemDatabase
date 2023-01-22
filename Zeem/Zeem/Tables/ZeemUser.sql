CREATE TABLE [dbo].[ZeemUser]
(
	[ZeemUserId]                                    INT NOT NULL PRIMARY KEY IDENTITY, 
    [FirstName]                                     NVARCHAR(50) NOT NULL, 
    [LastName]                                      NVARCHAR(50) NOT NULL, 
    [Email]                                         NVARCHAR(200) NOT NULL, 
    [MobileNumber]                                  NVARCHAR(50) NOT NULL, 
    [Username]                                      NVARCHAR(50) NOT NULL, 
    [Password]                                      NVARCHAR(200) NOT NULL, 
    [EmailVerified]                                 BIT NOT NULL DEFAULT 0, 
    [MobileNumberVerified]                          BIT NOT NULL DEFAULT 0, 
    [IsLocked]                                      BIT NOT NULL DEFAULT 0, 
    [CreatedDate]                                   DATETIME NOT NULL DEFAULT GETDATE(), 
    [CreatedBy]                                     INT NOT NULL, 
    [ModifiedDate]                                  DATETIME NULL, 
    [ModifiedBy]                                    INT NULL, 
    [DeletedDate]                                   DATETIME NULL, 
    [DeletedBy]                                     INT NULL, 
    [IsDeleted]                                     BIT NOT NULL DEFAULT 0
)
