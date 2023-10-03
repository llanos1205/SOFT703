﻿

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