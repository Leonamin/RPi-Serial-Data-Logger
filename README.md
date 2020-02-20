# RPi-Serial-Data-Logger
Log serial data at boot start on RPi 3B

# 짧은 설명
시리얼 포트로 들어오는 실시간 데이터 저장 쉘 스크립트 기반의 서비스.

현재 설정을 바꾸는 부분 없음.

필요시 쉘 스크립트 내에서 직접 수정 요함.

동작: 부팅 -> 지정 폴더(기본: /log)에 날짜-숫자의 파일 생성 -> 생성한 파일에 실시간 데이터 저장 -> 끝

아직 정상 종료를 하는 부분이 없기에 종료 시점의 데이터를 온존히 보존하길 원한다면 `sync` 명령어 입력후 종료 추천.

설치 시 root 권한으로 실행 필요.

# Short explanation
This is shell script service to read serial data from serial port.

Setting control is not exist.

You should change source code if you want change setting like baudrate, port, etc.

Algorithm: Boot -> create log file(naming rule: data-number) on log folder(default path: /log) -> store data as real time on created file -> END

Yet, End point is not accurate, so if you want save last time data, I am recommand to type command `sync`.

Root privileges required for installation.