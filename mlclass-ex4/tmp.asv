clc
clear
load tmp.mat;

for k=1:m
u(y(k),k)=1;
end
u=[zeros(1,m) ; u];
u(1,:)=u(size(u,1),:);
u(size(u,1),:)=[];


m = size(X, 1);

X=[ones(m,1) X];
         

    
    a1=[ones(1,m);sigmoid(Theta1*X')];
    a2=sigmoid(Theta2*a1);
    
a2=[zeros(1,m) ; a2];
a2(1,:)=a2(size(a2,1),:);
a2(size(a2,1),:)=[];
    
    del3=a2-u;
    
      newx=X';
      newa1=a1';
      big_del2=0;
      big_del3=0;
      
    for t=1:m
      
del2=(Theta2'*del3(:,t)).*[1; sigmoidGradient(Theta1*newx(:,t))];

del2=del2(2:end);

big_del2=big_del2+del2*newx(:,t)';

big_del3=big_del3+del3(:,t)*newa1(t,:);


    end
    
    
    
    
    
    
    Theta1_grad=big_del2/m;Theta2_grad=big_del3/m;
% Unroll gradients
grad = [Theta1_grad(:) ; Theta2_grad(:)];