%reconstruction of brain
clear;
P=imread('images/bat-5.gif');
P=imbinarize(P);
% imagesc(P),colormap(gray(2));
theta1=0:10:170;[R1,xp1]=radon(P,theta1);
theta2=0:5:175;[R2,xp2]=radon(P,theta2);
theta3=-90:1:89;[R3,xp3]=radon(P,theta3);
figure,imagesc(theta3,xp3,R3);title('R_{theta}X');
xlabel('{\theta}\circ');
ylabel('{\delta}');
colormap(hot(256));colorbar;
figure,subplot(221),imshow(P);title('origin');
IR1=iradon(R1,theta1);
subplot(222),imshow(IR1);title('0:10:170');
IR2=iradon(R2,theta2);
subplot(223),imshow(IR2);title('0:5:175');
IR3=iradon(R3,theta3);
subplot(224),imshow(IR3);title('-90:1:89');
