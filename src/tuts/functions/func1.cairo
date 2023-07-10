//! This shows how to write functions that use types: `u8` and `felt252`.
//! It also shows how to write tests for these functions.
//! It also shows how to use the `debug::PrintTrait` trait to print values.
//! To run the tests, use `cairorun --single-file func1.cairo` or use `scarb` script.

use debug::PrintTrait;

fn add_u8(x: u8, y: u8) -> u8 {
    x + y
}

fn add_felt252(x: felt252, y: felt252) -> felt252 {
    x + y
}

fn main() {
    let x = 1;
    let y = 40;
    let z = x + y;
    'z: '.print();
    z.print();
}

#[cfg(test)]
mod tests {
    use super::{add_u8, add_felt252};

    #[test]
    fn test_add_u8() {
        assert(add_u8(1, 2) == 3, '1+2 should be 3');
    }

    #[test]
    fn test_add_felt252() {
        assert(add_felt252(1_000_000, 2) == 1_000_002, '1_000_000+2 should be 1_000_002');
    }

    #[test]
    #[should_panic(expected: ('1_000_000+2 should be 1_000_002', ))]
    fn test_add_felt252_fails() {
        assert(add_felt252(1_000_000, 2) == 1_000_003, '1_000_000+2 should be 1_000_002');
    }
}
