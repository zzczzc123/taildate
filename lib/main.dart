import 'package:flutter/material.dart'; // Flutter의 Material Design 라이브러리

void main() {
  runApp(const MyApp()); // Flutter 앱 실행 시작점
}

// MyApp 클래스는 StatelessWidget을 상속받아 상태가 변하지 않는 앱의 기본 구조를 정의합니다.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 앱의 제목 설정 (앱 스위처에 표시됨)
      title: 'My First App',
      // 앱의 테마 설정 (기본 색상 등)
      theme: ThemeData(
        primarySwatch: Colors.blue, // 앱의 주 색상을 파란색으로 설정
      ),
      // 초기 화면 설정
      home: const HomeScreen(), // 초기 화면 위젯을 HomeScreen으로 지정
    );
  }
}

// HomeScreen 클래스는 앱의 초기 화면을 구성하는 위젯입니다.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome!'), // 앱바 제목
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // 세로 방향 중앙 정렬
          children: [
            const Text(
              'Hello, Flutter!', // 화면에 표시될 첫 번째 텍스트
              style: TextStyle(
                  fontSize: 24, fontWeight: FontWeight.bold), // 텍스트 스타일
            ),
            const SizedBox(height: 20), // 첫 번째 텍스트와 버튼 사이의 간격
            ElevatedButton(
              onPressed: () {
                // 버튼 클릭 시 호출될 함수
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecondScreen(), // 두 번째 화면으로 이동
                  ),
                );
              },
              child: const Text('Go to Second Screen'), // 버튼의 텍스트
            ),
          ],
        ),
      ),
    );
  }
}

// SecondScreen 클래스는 버튼 클릭 시 이동할 화면을 정의합니다.
class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'), // 앱바 제목
      ),
      body: const Center(
        child: Text(
          'This is the second screen!', // 화면에 표시될 텍스트
          style: TextStyle(fontSize: 24, color: Colors.blue), // 텍스트 스타일
        ),
      ),
    );
  }
}
