//
//  LinkedList.swift
//  DataStructure
//
//  Created by Keunna Lee on 2020/01/29.
//  Copyright © 2020 Keunna Lee. All rights reserved.
//

import Foundation

// 배열의 단점은 미리 특정한 연결된 공간을 예약해놓고 그 공간을 쓰는 구조인데 링크드 리스트는 필요할 때 더 추가해서 쓸 수 있도록 만든 구조

// 링크드 리스트는 해당 데이터를 저장하는 공간과 함께 다음 데이터를 가르키는 주소값을 가지는 공간을 하나의 데이터로 관리함. 노드 = (데이터 + 다음 데이터를 가리키는 주소- 포인터)

// 길이가 2인 배열에 추가적으로 데이터를 넣으려면 불가함. 왜냐하면 길이가 미리 지정되어있기 때문에. 그런데 링크드 리스트를 사용하면 이런 단점을 해결할 수 있음. 링크드 리스트는 순서에 상관없음. 어디에 있든 포인터가 다음 노드를 주소를  가리키기만 하면 되기 때문. 포인터가 null 이라면 그 노드가 마지막 노드로 인식.

// 노드를 연결시키면 무한정으로 늘릴 수 있음.

// 객체 지향을 알고 있어야 링크드리스트를 구현할 수 있음.

//1. Node Class를 만들기. 프로퍼티로 data, next -> 이 클래스로 객체를 만들 때 마다 노드가 만들어지는 것. 생성자로 두 개 다 만들기. next 디폴트로 none을 넣도록

class Node <Data> { //데이터에 특정 데이터 타입이 들어오지 않고 어떤 데이터 타입이 들어올지 모르기 때문에 Data를 제네릭으로 함.
    var data : Data
    var pointer : Int
    
    init(data: Data, pointer: Int) {
        self.data = data
        self.pointer = pointer
    }
    
    // 데이터를 추가하려면 head 라는 변수에 맨 처음 노드. 추가한 데이터는 맨 끝에 노드에 추가해야함 즉 마지막 노드를 찾아가야함. 노드가 가리키는 주소가 있으면 노드에 넣어서 while 반복문에서 계속 다음 노드를 찾아감. 그러다가 다음 노드를 가리키는 포인터가 없으면 마지막 노드를 발견한것! 그럼 while 문 탈출. 그럼 노드 객체를 생성.
    // 헤더노드에다가 넥스트포인트를 붙여가면서 링크드 리스트를 구현. 결과적으로는 헤더노드로 부터 시작해서 추가추가할 수 있게.
    // 구현하기
    
    struct NodeManagement<Data> {
        var head: Data
        init(head: Data) {
            self.head = head
        }
        func add(data: Data) {
            
        }

        func delete(data: Data){
//            if self.head == data {
                var temp = self.head
//                self.head = self.head.next
                
//            }
        }
    }
    
    // 다음 주소값를 다음 노드 객체로 설정하는 방식
    
    // 배열은 인덱스번호로 해당 데이터를 바로 가지고 올 수 있음. 이에 반해서 링크드 리스트는 헤드 노드를 확인해서 포인트로 다음 노드를 찾고 다시또 해당 노드를 찾는 과정을 거쳐야 하기 때문에 연결 정보를 찾는 시간이 필요하므로 접근 속도가 느림.
    // 연결된 데이터 중간에 노드를 추가하거나 제거하면 연결 구조를 바꿔야 함. 앞 뒤 데이터의 연결을 재구성해야하는 부가적인 작업 필요
    
    // 링크드 리스트 데이터 사이에 데이터 추가하기
    // A -> 추가 B -> C 일 경우
    // 1. 일단 A 노드를 찾아야 함
    // 2. A 노드의 포인터(다음 노드의 주소)를 추가하려고 하는 B의 주소로 바꿔주기
    // 3. 추가하려고 하는 B의 포인트가 C의 주소를 가리켜야 함
    //swift class 프로퍼티 디폴트 값 설정하는거 찾아보기
    //add
    // NodeManagement.class -> 프로퍼티로 헤드를 가지고 있어야함. 왜냐하면 맨 앞의 노드를 알고 있어야 전체 링크드 리스트를 검색하거나 추가, 제거 등의 작업을 할 수 있음. NodeManagement 객체로 만들 때 맨 앞 노드의 데이터값까지 받아서 맨 앞에 있는 노드를 생성하고 그 노드의 주소를 헤드값으로 설정.  add()- 맨 뒤에 넣는 것. (헤드값이 없다면 노드가 링크드리스트에 없다는 것을 의미하는 것으로 하고 코드짜기. 즉 빈 링크드 리스트이므로 빈 링크드리스트에서 add 를하면 헤드 노드로 설정해주기) point 가 null 인지 체크하기.null인 노드의 포인트에 삽입할 노드의 주소(노드 객체)를 넣어주면 됨. , desc() 만들어보기.
    //desc 함수는 헤더가 있는지 체크하고 있으면 노드 데이터 프린트. 프린트 후 노드를 node.next로 설정.
    // Node.class & NodeManagement.class 만들기
    
    // delete
    // 1.헤드 삭제. 링크드 리스트는 헤드값을 가지고 있어야 한다. 그런데 처음 벨류를 없애면 헤드가 바뀌어야 한다
    // 2. 마지막 노드 삭제하는 경우 그냥 삭제하고 그 전 노드의 주소값을 null로 바꿔야한다.
    // 3. 중간 노드 삭제시 앞에있는 노드의 포인트 주소를 삭제할 중간 노드의 다음 노드의 주소값으로 설정해줘야 한다. 즉, 앞에있는 노드의 다음 다음 포인트(주소값)을 설정해줘야 한다.
    
    
    
}

