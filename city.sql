Use GENERALSTORE

Create Table City
(
	CityID int IDENTITY(1, 1) PRIMARY KEY,
	Name Varchar(100) NOT NULL DEFAULT '',
	StateName Varchar(100) NOT NULL DEFAULT '',
	Description Varchar(500) NOT NULL DEFAULT '',
	Published BIT NOT NULL DEFAULT 1,
	UserID int NOT NULL DEFAULT 1,
	CreatedOn Datetime NOT NULL DEFAULT GETDATE(),
	UpdatedOn Datetime NOT NULL DEFAULT GETDATE(),
	FOREIGN KEY (UserID) REFERENCES [User](UserID)
)
GO