// Previously, the type information for A was not yet available at the point of
// "new A".
contract B {
	A a;
	function B() public {
		a = new A(address(this));
	}
}
contract A {
	function A(address) public {}
}
// ----
// Warning: (112-164): Defining constructors as functions with the same name as the contract is deprecated. Use "constructor(...) { ... }" instead.
// Warning: (181-210): Defining constructors as functions with the same name as the contract is deprecated. Use "constructor(...) { ... }" instead.
