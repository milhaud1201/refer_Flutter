## Check Widget parameters (Android Studio)
* Mac: ⌥ + spacce

## Widgets
### Row() or Column()
mainAxisAlignment 파라미터로 위젯들이 배치되는 간격을 조절할 수 있습니다. 

### SizedBox()
Container()인데 사이즈만 필요할 때 씁니다.

<details>
<summary>C1_exercise1</summary>
</details>

<details>
<summary>C1_exercise2</summary>
</details>

<details>
<summary>C1_exercise3</summary>
</details>

<details>
<summary>C1_exercise4</summary>
<img src="../assets/images/C1_exercise4.png" width="200"/>
</details>


<br>

## Dialog/모달창
```dart
showDialog(context: context, builder: (context) {
    return Dialog(child: Text('안녕'));
});
```

## Context
부모위젯의 정보를 담고 있는 변수
```dart
// context 확인
// MaterialApp이 context에 있는지
print(context.findAncestorWidgetOfExactType<MaterialApp>());
```

<details>
<summary>C1_exercise5</summary>
<img src="../assets/images/C1_exercise5.png" width="200"/>
</details>

<br>

## 부모 -> 자식 state 전송하는 법 
1. 보내기 
```dart
dartDialogexample(state : a),  // 작명: 변수명
```

2. 자식은 state 이름을 등록
```dart
class Dialogexample extends StatelessWidget {
  const Dialogexample({Key? key, this.state }) : super(key: key);
  final state;
}
```

3. 자식은 사용  
```dart
Text(state.toString())
```

<br>

## 부모 위젯이 자식 위젯 state를 변경하고 싶으면
1. 부모 위젯안에 state 조작하는 함수를 미리 만들기  
```dart
addOne(){  // 함수 만들기
    setState(() {
      total++;
    });
  }
```

2. 부모 -> 자식 이렇게 state 조작하는 함수를 전송
```dart
floatingActionButton: Dialogexample( addOne : addOne )  // 작명: 변수명
```

3. 자식은 그걸 등록
```dart
class Dialogexample extends StatelessWidget {
  const Dialogexample({Key? key, this.addOne }) : super(key: key);
  final addOne;
}
```

4. 자식은 사용
```dart
onPressed: () {
// Navigator.pop(context);
    addOne();
},
```

<br>

##  사용자가 입력한 input 받기

> var inputData = TextEditingController();  // 유저가 입력한 데이터를 변수에 담기  
TextField( controller: inputData,),

> var inputData2 = '';  
TextField( onChanged: (text){ print(text); },),  // 파라미터에 데이터 담기

<details>
<summary>C1_exercise6</summary>
<img src="../assets/images/C1_exercise6.png" width="200"/>
</details>



