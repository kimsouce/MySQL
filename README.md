## 우분투 환경에서 SQL 실행하기

#### 0. 환경설정

먼저 Oracle VM VIrtualBox와 Ubuntu를 설치한다 (VMDK, 동적할당, 설정>저장소>다운받은 iso파일로 지정)

다음으로 패키지를 업데이트 해준다
<pre>
<code>
sudo apt-get update && sudo apt-get upgrade
</code>
</pre>

굳이 해준 이유는 apache2를 install 하려고보니, 해당 패키지가 없다고 나오기 때문이다.. 이러한 문제점에 당면했을 때 위의 명령어를 입력하면 된다. 업데이트 완료 후, apache2를 설치한다 
<pre>
<code>
sudo apt-get install apache2
</code>
</pre>







