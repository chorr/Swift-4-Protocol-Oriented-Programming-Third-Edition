//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

class Animal {
    final var numberOfLegs = 0
    func sleeps() {
        print("zzzzz")
    }
    final func walking() {
        print("Walking on \(numberOfLegs) legs")
    }
    func speaking() {
        print("No sound")
    }
}


class Biped: Animal {
    override init() {
        super.init()
        numberOfLegs = 2
    }

}

class Quadruped: Animal {
    override init() {
        super.init()
        numberOfLegs = 4
    }
}

class Dog: Quadruped {
    override func speaking() {
        print("Barking")
    }
}

// 추가 설명
class Foo {
    func execute() {
        print("Foo.execute")
    }
}

class Bar: Foo {
    override func execute() {
        print("Bar.execute")
    }
}

class Baz: Foo {
    override func execute() {
        print("Baz.execute")
    }
}

class DynamicDispatch {
    var foo: Foo
    init(foo: Foo) {
        self.foo = foo
    }
    func run() {
        foo.execute()
    }
}

let dynamicDispatch = DynamicDispatch(foo: Bar())
dynamicDispatch.run()

class StaticDispatch {
    func run() {
        Foo().execute()
    }
}

let staticDispatch = StaticDispatch()
staticDispatch.run()

