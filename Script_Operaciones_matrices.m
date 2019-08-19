clear all; clc; close all;

fprintf('Ingresar una Matriz A\n\n')

film1=input('Ingrese el número de filas de la matriz \n');
if film1 <0 
   fprintf('Coloca un valor mayor que 0 \n\n')
   film1=input('Ingrese el número de filas de la matriz \n');  
end

colm1=input('Ingrese el número de columnas de la matriz \n');
if colm1 <0 
   fprintf('Coloca un valor mayor que 0 \n\n')
   colm1=input('Ingrese el número de columnas de la matriz \n');
end

for i=1:film1
    for j=1:colm1
        disp(['El elemento (', num2str(i),',',num2str(j),')' ])
        A(i,j)=input('');            
            while A(i,j) <0
            fprintf('Coloca un valor mayor que 0\n\n')
            A(i,j)=input('');
        end
    end
end

disp('La matriz A es:')
disp(A);

fprintf('Ingresar una Matriz B\n\n')
film2=input('Ingrese el número de filas de la matriz \n');
if film2 <0 
   fprintf('Coloca un valor mayor que 0 \n\n')
   film2=input('Ingrese el número de filas de la matriz \n');  
end

colm2=input('Ingrese el número de columnas de la matriz \n');
if colm2 <0 
   fprintf('Coloca un valor mayor que 0 \n\n')
   colm2=input('Ingrese el número de columnas de la matriz \n');
end

for i=1:film2
    for j=1:colm2  
        disp(['El elemento (', num2str(i),',',num2str(j),')' ])
        B(i,j)=input('');            
            while B(i,j) <0
            fprintf('Coloca un valor mayor que 0\n\n')
            B(i,j)=input('');
            end
    end
end

disp('La matriz B es:')
disp(B);

fprintf('Qué operación desea realizar?\n')

%suma entre matrices

opcion=input('Marque una opción: \n\n1 si es suma \n2 si es resta \n3 si es multilicación\n4 si es división\n');

switch opcion
    case 1 
      if film1==film2 && colm1==colm2
        suma=A+B
      else disp('Las dimensiones de las dos matrices no son iguales')
           disp(['Dimensiones Matriz A=',num2str(film1),'x',num2str(colm1)])
           disp(['Dimensiones Matriz B=',num2str(film2),'x',num2str(colm2)])
      end
    
    case 2
     if film1==film2 && colm1==colm2
        resta=A-B
      else disp('Las dimensiones de las dos matrices no son iguales')
           disp(['Dimensiones Matriz A=',num2str(film1),'x',num2str(colm1)])
           disp(['Dimensiones Matriz B=',num2str(film2),'x',num2str(colm2)])
      end
        
    case 3
        if film1==colm2 
           C=(A*B)/255
           if C(i,j)>=0.0 && C(i,j)<=1.0
               normalizado=round((C*187)+1)
           else
               normalizado=round((C/2)+126)
           end
       else disp('Las Filas de A no son iguales a las columnas de B')
           disp(['Dimensiones Matriz A=',num2str(film1),'x',num2str(colm1)])
           disp(['Dimensiones Matriz B=',num2str(film2),'x',num2str(colm2)])
      end
                      
    case 4 
        C=A./B
        if C(i,j)>=0.0 && C(i,j)<=1.0
           normalizado=round((C*187)+1)
        else
           normalizado=round((C/2)+126)
        end
end