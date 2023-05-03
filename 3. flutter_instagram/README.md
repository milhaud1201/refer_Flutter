# Flutter로 만드는 Instagram App
## analysis_options.yaml 파일 수정
--
rules 수정
```yaml
rules:
  prefer_typing_uninitialized_variables: false
  prefer_const_constructors_in_immutables: false
  prefer_const_constructors: false
  avoid_print: false
  prefer_const_literals_to_create_immutables: false 
```

## MaterialApp()에서 ThemeData()으로 스타일 관리
* iconTheam
* appBarTheme
  * actionsIconTheme
* textTheme
  * bodyMedium <- Text() (flutter 3.7.12)
  * ListTile <- subtitle1 (현재 바뀜)
  * TextButton <- button
  * AppBar <- headline6 (현재 바뀜)
```dart
void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      appBarTheme: AppBarTheme(backgroundColor: Colors.yellow
      )
    ),
    home: MyApp(),
  ));
}
```
<details>
<summary>C2_exercise1</summary>
<img src="../assets/images/C2_exercise1.png" width="200"/>
</details>