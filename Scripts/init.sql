

DECLARE @MinRate DECIMAL(18, 6) = 1;
DECLARE @MaxRate DECIMAL(18, 6) = 100;

DECLARE @AgentId INT;

DECLARE cursor_agents CURSOR FOR
    SELECT Id FROM Agent;

OPEN cursor_agents;

FETCH NEXT FROM cursor_agents INTO @AgentId;

WHILE @@FETCH_STATUS = 0
    BEGIN
        -- Loop through all combinations of Latin American countries
        DECLARE @SenderId INT;
        DECLARE @ReceiverId INT;

        DECLARE cursor_countries CURSOR FOR
            SELECT c1.Id AS SenderId, c2.Id AS ReceiverId
            FROM Country c1
                     JOIN Country c2 ON c1.Id <> c2.Id;

        OPEN cursor_countries;

        FETCH NEXT FROM cursor_countries INTO @SenderId, @ReceiverId;

        WHILE @@FETCH_STATUS = 0
            BEGIN
                -- Generate a random rate within the defined range
                DECLARE @RandomRate DECIMAL(18, 6);
                SET @RandomRate = RAND() * (@MaxRate - @MinRate) + @MinRate;

                -- Insert the exchange rate for the current agent
                INSERT INTO Exchange (SenderCountryId, ReceiverCountryId, Rate, AgentId)
                VALUES (@SenderId, @ReceiverId, @RandomRate, @AgentId);

                -- Ensure that the rate in the opposite direction is reciprocal
                INSERT INTO Exchange (SenderCountryId, ReceiverCountryId, Rate, AgentId)
                VALUES (@ReceiverId, @SenderId, 1 / @RandomRate, @AgentId);

                FETCH NEXT FROM cursor_countries INTO @SenderId, @ReceiverId;
            END;

        CLOSE cursor_countries;
        DEALLOCATE cursor_countries;

        FETCH NEXT FROM cursor_agents INTO @AgentId;
    END;

CLOSE cursor_agents;
DEALLOCATE cursor_agents;
           
-- Generate random data for the Products table
-- Generate random data for the Products table
INSERT INTO Product (Name, Photo, Stock, Price)
SELECT
    CONCAT('Product', CAST(ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS VARCHAR(10))),
    'https://example.com/path/to/image' + CAST(ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS VARCHAR(10)),
    ROUND(RAND() * (50 - 10) + 10, 0), -- Random stock between 10 and 50
    ROUND(RAND() * (30 - 5) + 5, 2) -- Random price between 5.00 and 30.00
FROM
    (SELECT ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS n) AS numbers;


-- Create the 'admin' role
INSERT INTO AspNetRoles (Id, [Name], [NormalizedName])
VALUES ('8F8D7E0F-12F1-4C53-A1E3-9E5C53C96C00', 'admin', 'ADMINISTRAROR');

-- Create the 'staff' role
INSERT INTO AspNetRoles (Id, [Name], [NormalizedName])
VALUES ('F50A8B88-ACD3-496B-95A1-A82A6EB3E1F4', 'staff', 'STAFF');

-- Create the 'client' role
INSERT INTO AspNetRoles (Id, [Name], [NormalizedName])
VALUES ('4A7C9147-571F-46F1-92DB-8B74584E8478', 'client', 'CLIENT');
