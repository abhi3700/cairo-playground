//! This example shows how to convert a u8 to a felt252 & vice versa

// imports
use core::option::OptionTrait;
use core::debug::PrintTrait;
use core::traits::Into;
use core::traits::TryInto;

// This function is to show how to convert a u8 to a felt252
fn convert_u8_to_felt252(value: u8) -> felt252 {
    value.into()
}

// This function is to show how to convert a felt252 to a u8
fn convert_felt252_to_u8(value: felt252) -> u8 {
    value.try_into().unwrap()   // here it might overflow so we use try_into as converting from large to small value.
}

fn main() {
    let value_felt = convert_u8_to_felt252(50);
    value_felt.print();

    let value_u8 = convert_felt252_to_u8(value_felt);
    value_u8.print();
}