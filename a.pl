open(FH, '<', 'phone.txt') or die $!;

while(<FH>) {
	@list = ();
	
	@list = split/\t+/, $_; #한 줄 단위로 탭을 기준으로 잘라서 배열에 저장
	#print @list, "===> "; #전체 배열 출력
	print "place:",$list[4], "\t", " location:",$list[2],"\t"; 
        	
	if($list[5] =~ /([0-5]{2,3})[-\s]([0-9]{3,4})[-\s]([0-9]{4})/) { #여기 부분을 채워주시면 됩니다.
		print "areaCode:", $1,"\t", " firstNo:", $2,"\t", " lastNo:", $3, "\n";
	}	
}
