open(FH, '<', 'phone.txt') or die $!;

while(<FH>) {
	@list = ();
	
	@list = split/\t+/, $_; #�� �� ������ ���� �������� �߶� �迭�� ����
	#print @list, "===> "; #��ü �迭 ���
	print "place:",$list[4], "\t", " location:",$list[2],"\t"; 
        	
	if($list[5] =~ /([0-5]{2,3})[-\s]([0-9]{3,4})[-\s]([0-9]{4})/) { #���� �κ��� ä���ֽø� �˴ϴ�.
		print "areaCode:", $1,"\t", " firstNo:", $2,"\t", " lastNo:", $3, "\n";
	}	
}
