use core::starknet::ContractAddress;
#[starknet::interface]
pub trait ILandVerifier {
    // Function signature for land verification
    fn verify_land(self: @ContractState, land_id: u256, verifier: ContractAddress);

    // Function signature for rejecting land verification
    fn reject_land_verification(self: @ContractState, land_id: u256, verifier: ContractAddress);

    // Function signature for getting land verification status
    fn get_land_verification_status(self: @ContractState, land_id: u256) -> bool;

    // Function signature for getting the land verifier address
    fn get_land_verifier(self: @ContractState, land_id: u256) -> ContractAddress;

    // Function signature for getting land verification timestamp
    fn get_land_verification_timestamp(self: @ContractState, land_id: u256) -> u64;

    // Function signature for getting the reason for land verification
    fn get_land_verification_reason(self: @ContractState, land_id: u256) -> felt252;
}

