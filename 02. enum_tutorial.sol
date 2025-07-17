/*
Enum (enumeration) is a user-defined data type that lets you assign names to a set of predefined constant values.
Used to represent states, modes, choices, or steps in a process clearly.

Following code defines an enum called RandomPractice with 3 values - Waiting, Ready, Active. This is equivalent to saying:
RandomPractice.Waiting == 0
RandomPractice.Ready   == 1
RandomPractice.Active  == 2

(because enums are internally represented as unsigned integers starting from 0)
*/



pragma solidity 0.5.1;

contract enum_tutorial {
    enum RandomPractice { Waiting, Ready, Active }     // way to manage states instead of using numbers or strings.
    RandomPractice public state;                       // RandomPractice is just the name of the enum type (state is public state variable named state of custom enum type)
                                                       // RandomPractice is the data type.
                                                       // enum is the keyword used to create that data type.                   

    constructor() public {                             // When the contract is deployed, the constructor runs once and sets the state to Waiting.
        state = RandomPractice.Waiting;
    }

    // Move from Waiting → Ready
    function prepare() public {
        if (state == RandomPractice.Waiting) {
            state = RandomPractice.Ready;
        }
    }

    // Move from Ready → Active
    function activate() public {
        if (state == RandomPractice.Ready) {
            state = RandomPractice.Active;
        }
    }

    // Reset back to Waiting (only from Active)
    function reset() public {
        if (state == RandomPractice.Active) {
            state = RandomPractice.Waiting;
        }
    }

    // Return true if current state is Active
    function isActive() public view returns (bool) {
        return state == RandomPractice.Active;
    }

    // Return state as a number: 0, 1, or 2
    function getStateAsNumber() public view returns (uint8) {
        return uint8(state);
    }
}
