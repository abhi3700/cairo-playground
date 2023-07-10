use core::debug::PrintTrait;

/// function for printing hello, world!
fn main() {
    'Hello, world!'.print();
}

#[test]
fn test_works() {
    let msg = 'Hello, world!';
    assert(msg == 'Hello, world!', 'msg should be Hello, world!');
}

#[test]
#[should_panic]
fn test_fails() {
    let msg = 'Hello, world!';
    assert(msg == 'Hello, wold!', 'msg should be Hello, world!');
}