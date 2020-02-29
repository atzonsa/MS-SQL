Use GENERALSTORE

Create Table Customer
(
	CustomerID int IDENTITY(1,1) PRIMARY KEY,
	Name Varchar(100) NOT NULL DEFAULT '',
	Address Varchar(500) NOT NULL DEFAULT '',
	CityID int NOT NULL DEFAULT 1,
	PinCode Varchar(100) NOT NULL DEFAULT '',
	Balance Decimal(12,2) NOT NULL DEFAULT 0,
	Photo IMAGE,
	PhotoExtension Varchar(10) NOT NULL DEFAULT '',
	Description Varchar(500) NOT NULL DEFAULT '',
	Published BIT NOT NULL DEFAULT 1,
	UserID int NOT NULL DEFAULT 1,
	CreatedOn Datetime NOT NULL DEFAULT GetDate(),
	UpdatedOn Datetime NOT NULL DEFAULT GetDate(),
	FOREIGN KEY (CityID) REFERENCES City(CityID),
	FOREIGN KEY (UserID) REFERENCES [User](UserID)
)
GO
