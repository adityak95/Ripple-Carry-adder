module RCA(a,b,cin,s,co);
input a;
input b;
input cin;
output reg s;
output reg co;

always@(a,b,cin)begin 
if(a==0&&b==0&&cin==0)begin 
	s=0;co=0;
end
else if(a==0&&b==0&&cin==1)begin 
	s=1;co=0;
end
else if(a==0&&b==1&&cin==0)begin 
	s=1;co=0;
end
else if(a==0&&b==1&&cin==1)begin 
	s=0;co=1;
end
else if(a==1&&b==0&&cin==0)begin 
	s=1;co=0;
end
else if(a==1&&b==0&&cin==1)begin 
	s=0;co=1;
end
else if(a==1&&b==1&&cin==0)begin 
	s=1;co=0;
end
else begin 
	s=1;co=1;
end
end
endmodule

module carry_adder(a,b,cin,s,c);
input [3:0]a;
input [3:0]b;
input [3:0]cin;
output c;
output [3:0]s;

RCA g1(.a(a[0]),.b(b[0]),.cin(cin[0]),.s(s[0]),.co(cin[1]));
RCA g2(.a(a[1]),.b(b[1]),.cin(cin[1]),.s(s[1]),.co(cin[2]));
RCA g3(.a(a[2]),.b(b[2]),.cin(cin[2]),.s(s[2]),.co(cin[3]));
RCA g4(.a(a[3]),.b(b[3]),.cin(cin[3]),.s(s[3]),.co(c));
endmodule
