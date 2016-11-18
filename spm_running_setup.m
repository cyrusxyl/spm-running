m = 80;
k = 20000;
l_0 = 1;
g = 9.81;
alpha_0 = deg2rad(68);
xdot_0 = 5;
y_0 = 1;

simulation = sim('spm_running');

% i) animation for 2s

for t = 1:2:X.Length
    x = X.data(t);
    y = Y.data(t);
    mode = ForS.data(t);
    del_x = deltaX.data(t);
%     th = 0:pi/50:2*pi;
%     xunit = r * cos(th) + x;
%     yunit = r * sin(th) + y;
%     h = plot(xunit, yunit);
    plot(x,y,'o')
    if ForS.data(t) == 1
        line([x x-del_x],[y 0]);
    else
        line([x x-del_x],[y y-l_0*sin(alpha_0)]);
    end
    
    axis([0 10.2 0 1.2]);
    pause(0);
%     M(t) = getframe(gcf);
end

% ii) plot apex(i) and apex(i+1)

% change_of_sign = find(diff(sign(ydot.data)));
% apex = change_of_sign(1:2:length(change_of_sign));
% 
% apex_i = Y.data(apex(1:length(apex)-1));
% apex_i_1 = Y.data(apex(2:length(apex)));
% f = fit(apex_i,apex_i_1,'smoothingspline');
% plot(f,apex_i,apex_i_1,'o');
% refline(1,0)

% iv) plot apex(i) and apex(i+1)
% alpha_0 = deg2rad(75);
% apex_i = l_0*sin(alpha_0):0.01:2.25;
% apex_i_1 = [];
% E = m*g*1 + 1/2*m*5.^2
% for y_0 = apex_i
%     xdot_0 = sqrt((E-m*g*y_0)*2/m);
%     sim('spm_running_1_apex');
%     hold on;
%     size = length(Y.data);
%     apex_i_1 = [apex_i_1 Y.data(size)];
% end
% 
% 
% f = fit(transpose(apex_i),transpose(apex_i_1),'smoothingspline');
% plot(f, apex_i, apex_i_1);
% refline(1,0)

% alpha_0 = deg2rad(75);
% E = m*g*1 + 1/2*m*5.^2
% y_0 = 1.1;
% xdot_0 = sqrt((E-m*g*y_0)*2/m);
