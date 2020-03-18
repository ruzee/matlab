clear
load noisdopp;
[Lo_D,Hi_D]=wfilters('bior3.5','d');
[A D]=dwt(noisdopp,Lo_D,Hi_D);
