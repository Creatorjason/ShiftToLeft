//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ShiftToLeft{
    uint[] internal arr = [1,2,3,4,5];

    function remove(uint _index) public{
        require(_index < arr.length, "Index out of bound");
        for(uint i = _index; i < arr.length - 1; i++){
            arr[i] = arr[i + 1];
        }
        arr.pop();
    }
    function test() external{
        remove(2);
        assert(arr[0] == 1);
        assert(arr[1] == 2);
        assert(arr[2] == 3);
        assert(arr[3] == 5);
        assert(arr.length == 4);
    }
}
