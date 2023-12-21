var myProperty: Int = 20 {
    didSet(oldVal) {
        // myProperty의 값이 변경된 직후에 호출, oldVal은 변경 전 myProperty의 값
    }
    
    willSet(newVal) {
        // myProperty의 값이 변경되기 직전에 호출, newVal은 변경 될 새로운 값
    }
}

var name: String = "Unknonw" {
    willSet {
        print("현재 이름 = \(name), 바뀔 이름 = \(newValue)")
    }
    
    didSet {
        print("현재 이름 = \(name), 바뀌기 전 이름 = \(oldValue)")
    }
}

name = "Peter"
print(name)


class UserAccount {
    var username: String
    var password: String
    var loginAttempts: Int = 0 {
        didSet {
            if loginAttempts >= 3 {
                print("로그인 시도가 3회 이상 실패")
                lockAccount()
            }
        }
    }
    
    var isLocked: Bool = false {
        didSet {
            if isLocked {
                print("계정이 잠기")
            } else {
                print("계정 자금 해제")
            }
        }
    }
    
    init(username: String, password: String) {
        self.username = username
        self.password = password
    }
    
    func login(with enteredPassword: String) {
        if enteredPassword == password {
            print("로그인 성고")
            loginAttempts = 0
        } else {
            print("잘못된 비밀번호")
            loginAttempts += 1
        }
    }
    
    private func lockAccount() {
        isLocked = true
    }
    
    func unlockAccount() {
        isLocked = false
    }
}

let user = UserAccount(username: "user123", password: "password123")
user.login(with: "wrongpassword")
user.login(with: "wrongpassword")
user.login(with: "wrongpassword")

user.unlockAccount()
