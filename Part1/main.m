%% Part 1 - Particle Biased Walk Simulation
function [result] = simulateBiasedWalk(N, P, s, w, e)
    % Initialize a grid representing the room (99x99 units)
    room_height = 99;
    room_width = 99;

    room = zeros(room_height, room_width);
    
    % Loop through N particles
    for particle = 1:N
        % Initialize the particle position based on start position (P or rand)
        if P == "rand"
            start_position = randi([1,room_width]);
        elseif P == '1'
            start_position = 50;
        end
        
        x = start_position;
        y = room_height;
    
        move_x = x;
        move_y = y;
        
        end_walk = false;

        % Simulate the biased walk
        while ~end_walk;
            u = rand;
            if u < w
                %GO LEFT    
                temp = x - 1;
                if temp < 1
                    temp = room_width;
                end
    
                if room(temp, y) ~= 1
                    move_x = temp;
                end
            elseif u < w + e
                %GO RIGHT
                temp = x + 1;
                if temp > room_width
                    temp = 1;
                end
    
                if room(temp, y) ~= 1
                    move_x = temp;
                end
            elseif u < w + e + s
                %GO DOWN
                move_y = y - 1;
                if room(move_x, move_y) == 1 || move_y == 1
                    room(x, y) = 1;
                    end_walk = true;
                end
            end
            x = move_x;
            y = move_y;
        end
    end

        result = zeros(1, room_width);
    for i = 1:room_width
        result(i) = sum(room(i,:));
    end
end
