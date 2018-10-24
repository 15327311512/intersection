function [ R_law,R_safe,R_time,Yield_status,yyy,x_new,y_new,v_new,a_new,heading_new,yaw_new,x0_new,y0_new,v0_new,a0_new,heading0_new,yaw0_new] = ...
    Selectway(x,y,v,a,heading,yaw,x0,y0,v0,a0,heading0,yaw0,t_interval,traj,traj_acc)
%UNTITLED4 Summary of this function goes here
%   The prediction of social vehicle with the motion of host vehicle
% acc---acceleration of host vehicle in next circle. 
%% predict the next step for host vehicle
veh_L=5.2;
Lane_width=3.5;
v_limit=20;

    [ x_new,y_new,v_new,a_new,heading_new,yaw_new ] = StateUpdate( x,y,v,a,heading,yaw,t_interval,acc,theta );
    
            
    
%% calculate reward
     [R_safe,R_time,R_law]=RewardCalculate(x_new(1),y_new(1),v_new(1),a_new(1),heading_new(1),yaw_new(1),...
         x0_new(1),y0_new(1),v0_new(1),a0_new(1),heading0_new(1),yaw0_new(1),6,3.5);
     if Collision_status==0
        R_safe=0; 
     end
end
