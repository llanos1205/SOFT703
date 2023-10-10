

INSERT INTO Agent (Id, Name, Address) VALUES (NEWID(), 'Apple','21 OPOIA ROAD');
INSERT INTO Agent (Id, Name, Address) VALUES (NEWID(), 'Orange','28 LINWOOD AVE');
INSERT INTO Agent (Id, Name, Address) VALUES (NEWID(), 'Sea Cucumber', '6 FATHER MELGAR');
INSERT INTO Agent (Id, Name, Address) VALUES (NEWID(), 'Pineaple','1/1A BURWOOD ROAD');

INSERT INTO Country (Id, Name) VALUES (NEWID(), 'Argentina');
INSERT INTO Country (Id, Name) VALUES (NEWID(), 'Bolivia');
INSERT INTO Country (Id, Name) VALUES (NEWID(), 'Brazil');
INSERT INTO Country (Id, Name) VALUES (NEWID(), 'Chile');
INSERT INTO Country (Id, Name) VALUES (NEWID(), 'Colombia');
INSERT INTO Country (Id, Name) VALUES (NEWID(), 'Costa Rica');
INSERT INTO Country (Id, Name) VALUES (NEWID(), 'Cuba');
INSERT INTO Country (Id, Name) VALUES (NEWID(), 'Ecuador');


DECLARE @MinRate DECIMAL(18, 6) = 1;
DECLARE @MaxRate DECIMAL(18, 6) = 100;

DECLARE @AgentId nvarchar(450);

DECLARE cursor_agents CURSOR FOR
    SELECT Id FROM Agent;

OPEN cursor_agents;

FETCH NEXT FROM cursor_agents INTO @AgentId;

WHILE @@FETCH_STATUS = 0
    BEGIN
        DECLARE @SenderId nvarchar(450);
        DECLARE @ReceiverId nvarchar(450);

        DECLARE cursor_countries CURSOR FOR
            SELECT c1.Id AS SenderId, c2.Id AS ReceiverId
            FROM Country c1
                     JOIN Country c2 ON c1.Id <> c2.Id;

        OPEN cursor_countries;

        FETCH NEXT FROM cursor_countries INTO @SenderId, @ReceiverId;

        WHILE @@FETCH_STATUS = 0
            BEGIN
                DECLARE @RandomRate DECIMAL(18, 6);
                SET @RandomRate = RAND() * (@MaxRate - @MinRate) + @MinRate;
                INSERT INTO Exchange (Id,SenderCountryId, ReceiverCountryId, Rate, AgentId)
                VALUES (NEWID(),@SenderId, @ReceiverId, @RandomRate, @AgentId);
              

                INSERT INTO Exchange (Id,SenderCountryId, ReceiverCountryId, Rate, AgentId)
                VALUES (NEWID(),@ReceiverId, @SenderId, 1 / @RandomRate, @AgentId);

                FETCH NEXT FROM cursor_countries INTO @SenderId, @ReceiverId;
            END;

        CLOSE cursor_countries;
        DEALLOCATE cursor_countries;

        FETCH NEXT FROM cursor_agents INTO @AgentId;
    END;

CLOSE cursor_agents;
DEALLOCATE cursor_agents;
           
INSERT INTO Product (Id,Name, Photo, Stock, Price)
SELECT
    NEWID(),
    CONCAT('Product', CAST(ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS VARCHAR(10))),
    'https://example.com/path/to/image' + CAST(ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS VARCHAR(10)),
    ROUND(RAND() * (50 - 10) + 10, 0), 
    ROUND(RAND() * (30 - 5) + 5, 2) 
FROM
    (SELECT ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS n) AS numbers;




-- Create the 'admin' role
INSERT INTO AspNetRoles (Id, [Name], [NormalizedName])
VALUES (NEWID(), 'admin', 'ADMINISTRATOR');

-- Create the 'staff' role
INSERT INTO AspNetRoles (Id, [Name], [NormalizedName])
VALUES (NEWID(), 'staff', 'STAFF');

-- Create the 'client' role
INSERT INTO AspNetRoles (Id, [Name], [NormalizedName])
VALUES (NEWID(), 'client', 'CLIENT');
