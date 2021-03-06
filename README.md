## 우분투 환경에서 SQL 실행하기

🐢 [생활코딩](https://opentutorials.org/course/195/1465)과 구글(...^^)을 참고하고 있습니다.

🐢 자격증은 있지만 개발 거북이 입니다.

### 0. 환경설정 (전부 콘솔창에서)

먼저 [Oracle VM VirtualBox](https://www.virtualbox.org/wiki/Downloads)와 [Ubuntu](https://ubuntu.com/download/desktop)를 설치한다. (VMDK, 동적할당, 설정>저장소>다운받은 iso파일로 지정)

0-1. 다음으로 패키지를 업데이트 해준다. 꽤 오래걸린다.

굳이 해주는 이유는 apache2를 install 하려고보니, 해당 패키지가 없다고 나오기 때문이다.. 

(만약 이런 에러메세지가 뜨지 않았다면 바로 install apache2를 해도 무방하다)
<pre>
<code>
$sudo apt-get update && sudo apt-get upgrade
</code>
</pre>

0-2. 업데이트 완료 후, apache2를 설치한다.
<pre>
<code>
$sudo apt-get install apache2
</code>
</pre>

0-3. mysql을 설치한다. 

(참고로 생활코딩 사이트에서는 mysql 인증 모듈을 설치하라고 나오는데, 오류메세지가 떠서 스킵했다. 무지한 나는 없어도 되는 단계인가 하고 뛰어넘긴 했지만, 이후 문제가 생긴다면 코멘트를 추가하겠다.)
<pre>
<code>
$sudo apt-get install mysql-server mysql-client
</code>
</pre>

0-4. php를 설치한다. 

우분투 버전에 따라 php 버전도 달라지는데, 본인은 우분투 20.10을 사용하고 있으므로 php7.4를 설치해야 한다. 

끝부분에 php-mysql은 php와 mysql을 연동하라는 명령어이다.

<pre>
<code>
$sudo apt install php libapache2-mod-php php-mysql
</code>
</pre>

0-5. Apache 재시작

<pre>
<code>
$sudo /etc/init.d/apache2 restart
</code>
</pre>

0-6. 잘 실행되었는지 확인하기

우분투환경의 Firefox 에서 웹주소 란에 localhost를 입력한다.

Apache2 Ubuntu Default Page가 뜨면서 It works!라는 문구를 보았다면, 잘 설치된 것이다. 


### 1. SQL실행하기 

1-1. 비밀번호를 설정한다. 

나같은 경우, 처음 sql server을 생성할 때 root의 비밀번호를 생성하라는 메세지창이 안떴다.. 그래서 계속 접근하는데 오류가 생겼다.

이러한 경우, 아래와 같은 명령어를 입력하여 비밀번호 및 접근 권한을 설정할 수 있다. 

<pre>
<code>
$sudo mysql_secure_installation
</code>
</pre>

계속 질문같은게 뜨는데, 다 y 누르면서 진행하면 된다. 
