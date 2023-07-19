#[starknet::contract]
mod Account {
  #[storage]
  struct Storage { }

  #[constructor]
  fn constructor(ref self: ContractState) {}

  #[external(v0)]
  fn supports_interface(self: @ContractState, interface_id: u32) -> bool {
    if (interface_id == rules_account::account::interface::IACCOUNT_ID) {
      true
    } else {
      false
    }
  }
}

#[starknet::contract]
mod CamelAccount {
  #[storage]
  struct Storage { }

  #[constructor]
  fn constructor(ref self: ContractState) {}

  #[external(v0)]
  fn supportsInterface(self: @ContractState, interfaceId: u32) -> bool {
    if (interfaceId == rules_account::account::interface::IACCOUNT_ID) {
      true
    } else {
      false
    }
  }
}
