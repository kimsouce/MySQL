## 우분투 환경에서 SQL 실행하기

🐢 [생활코딩](https://opentutorials.org/course/195/1465)과 구글(...^^)을 참고하고 있습니다.

🐢 자격증은 있지만 개발 거북이 입니다.

### 0. 환경설정 (전부 콘솔창에서)

먼저 [Oracle VM VirtualBox](https://www.virtualbox.org/wiki/Downloads)와 [Ubuntu](https://ubuntu.com/download/desktop)를 설치한다. (VMDK, 동적할당, 설정>저장소>다운받은 iso파일로 지정)

다음으로 패키지를 업데이트 해준다. 꽤 오래걸린다.

굳이 해주는 이유는 apache2를 install 하려고보니, 해당 패키지가 없다고 나오기 때문이다.. (만약 이런 에러메세지가 뜨지 않았다면 바로 install apache2를 해도 무방하다)
<pre>
<code>
sudo apt-get update && sudo apt-get upgrade
</code>
</pre>

업데이트 완료 후, apache2를 설치한다.
<pre>
<code>
sudo apt-get install apache2
</code>
</pre>

mysql을 설치한다. (참고로 생활코딩 사이트에서는 mysql 인증 모듈을 설처하라고 나오는데, 오류메세지가 떠서 스킵했다. 무지한 나는 없어도 되는 단계인가 하고 뛰어넘긴 했지만, 이후 문제가 생긴다면 코멘트를 추가하겠다.)
<pre>
<code>
sudo apt-get install mysql-server mysql-client
</code>
</pre>






