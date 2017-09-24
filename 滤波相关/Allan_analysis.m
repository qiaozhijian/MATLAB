function [result]=Allan_analysis(data,len)
    result=1:(len-1)/2;
    for m=1:(len-1)/2;
      w= 1:(len/m);
      for i=1:(len/m);
          w(i)=0;
          for j=1:m;
              w(i)=w(i)+data(j+i*m-m);
          end
          w(i)=w(i)/m;
      end
      result(m)=0;
      for i=1:(len/m)-1;
          result(m)=result(m)+(w(i+1)-w(i))*(w(i+1)-w(i));
      end
      result(m)=result(m)/2/(len/m-1);
    end
    plot(result);
end