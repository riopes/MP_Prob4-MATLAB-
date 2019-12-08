ho = input ('Please input the initial height of the object wrt to the ground: ');
vo = input ('Please input the initial velocity of the object: ');
theta = input ('Please input the angle of trajectory of the object: ');
ax = input ('Please input the acceleration of the x component: ');
ay = input ('Please input the acceleration of the y component: ');
%Asks for inputs from user that will be used for plugging in values in 
%kinematic equations

    if ay == 0      %Code that will stop the program when a vertical acceleration of 0 is given
        error("MALFUNCTIONING! Please input non-zero vertical acceleration to proceed with the program, exitting...")
    end
    realth = deg2rad(theta);    %Code block for computation of variables
    vox = vo.*(cos(realth));    %to be used for visualization of trajectory
    voy = vo.*(sin(realth));
    d = sqrt((voy.^2)-4.*((1/2.*ay).*ho));
    t1 = (-voy + d)/ay;
    t2 = (-voy - d)/ay;
    if t1<=0        %Roots code block to find a positive time
        t1 = t2;    %if it proceeds with the first condition, the first root is negative
        x = vox.*(linspace(0,t1)) + 1/2*(ax*(linspace(0,t1)).^2);
        y = voy.*(linspace(0,t1)) + 1/2*(ay*(linspace(0,t1)).^2);
        plot(x,y,'k--') %plots the trajectory of the object through a 2D plane
        grid on
        xlabel('Projectile passing through the X axis')
        ylabel('Projectile passing through the y axis')
    else            %first time is positive, thus it goes here
        x = vox.*(linspace(0,t1)) + 1/2*(ax.*(linspace(0,t1)).^2);
        y = voy.*(linspace(0,t1)) + 1/2*(ay.*(linspace(0,t1)).^2);
        plot(x,y,'k--') %plots the trajectory of the object through a 2D plane
        grid on
        xlabel('Projectile passing through the X axis')
        ylabel('Projectile passing through the y axis')
    end