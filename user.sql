Use GENERALSTORE

Create Table [User]
(
	UserID int IDENTITY(1,1) PRIMARY KEY,
	UserName Varchar(100) NOT NULL DEFAULT '',
	Password Varchar(100) NOT NULL DEFAULT '',
	Description Varchar(500) NOT NULL DEFAULT '',
	Published BIT NOT NULL DEFAULT 1,
	CreatedOn Datetime NOT NULL DEFAULT GETDATE(),
	UpdatedOn Datetime NOT NULL DEFAULT GETDATE()
)
GO