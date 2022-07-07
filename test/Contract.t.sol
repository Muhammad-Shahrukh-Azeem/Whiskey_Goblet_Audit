// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "../lib/forge-std/src/Test.sol";
import "../lib/forge-std/src/console.sol";
import "../lib/forge-std/src/console2.sol";


import "../src/Goblet.sol";
import "../src/GobletMinter.sol";
import "../src/GemstoneMinter.sol";



contract WhiskeyV2 is Test{

    Goblet goblet;
    GobletMinter Gm;
    GemstoneMinter Gsm;
    Gemstone Gs;


    function setUp() public {
        vm.warp(1656204925);
        console.log("Deployed at ", block.timestamp);
        goblet = new Goblet();
        Gm = new GobletMinter();
        Gsm = new GemstoneMinter();
        Gs = new Gemstone();
    }

    // function testMinting() public {
        
    //     Gsm.addAddressToWhitelist(address(2), 0);
    //     Gsm.addAddressToWhitelist(address(2), 1);
    //     Gsm.addAddressToWhitelist(address(2), 2);
    //     Gsm.addAddressToWhitelist(address(2), 3);
    //     Gsm.addAddressToWhitelist(address(2), 4);
    //     Gsm.addAddressToWhitelist(address(2), 5);



    //     Gsm.addAddressToWhitelist(address(3), 0);
    //     Gsm.addAddressToWhitelist(address(3), 1);
    //     Gsm.addAddressToWhitelist(address(3), 2);
    //     Gsm.addAddressToWhitelist(address(3), 3);
    //     Gsm.addAddressToWhitelist(address(3), 4);
    //     Gsm.addAddressToWhitelist(address(3), 5);

    //     vm.deal(address(2), 2 ether );
    //     vm.startPrank(address(2));

    //     Gsm.whitelistMint{value: 0.1 ether}(address(2), 0);
    //     Gsm.whitelistMint{value: 0.1 ether}(address(2), 1);
    //     Gsm.whitelistMint{value: 0.1 ether}(address(2), 2);
    //     Gsm.whitelistMint{value: 0.1 ether}(address(2), 3);
    //     Gsm.whitelistMint{value: 0.1 ether}(address(2), 4);
    //     Gsm.whitelistMint{value: 0.1 ether}(address(2), 5);
    //     vm.stopPrank();

    //     vm.deal(address(3), 2 ether );
    //     vm.startPrank(address(3));

    //     Gsm.whitelistMint{value: 0.1 ether}(address(3), 0);
    //     Gsm.whitelistMint{value: 0.1 ether}(address(3), 1);
    //     Gsm.whitelistMint{value: 0.1 ether}(address(3), 2);
    //     Gsm.whitelistMint{value: 0.1 ether}(address(3), 3);
    //     Gsm.whitelistMint{value: 0.1 ether}(address(3), 4);
    //     Gsm.whitelistMint{value: 0.1 ether}(address(3), 5);



    //     // console.logBool(Gs.isEligibleToMintGoblet(address(2)));
        
    //     console.log(block.timestamp);

    //     Gm.mintGoblet(address(2), address(Gsm));
  
    //     vm.warp(block.timestamp + 31556954);
        
    //     console.log(block.timestamp);
    //     Gm.mintGoblet(address(3), address(Gsm));


    //     Gm.mintGoblet(address(2), address(Gsm));
    //     vm.warp(block.timestamp + 31556954);
    //     console.log(block.timestamp);

    //     // Gm.mintGoblet(address(3), address(Gsm));
    //     // uint x = goblet._daysToDate(100);
    //     // console.log("====================",x);

    //      }






     function testMintingmultipleTimesInYear2() public {
        
        Gsm.addAddressToWhitelist(address(2), 0);
        Gsm.addAddressToWhitelist(address(2), 1);
        Gsm.addAddressToWhitelist(address(2), 2);
        Gsm.addAddressToWhitelist(address(2), 3);
        Gsm.addAddressToWhitelist(address(2), 4);
        Gsm.addAddressToWhitelist(address(2), 5);



        Gsm.addAddressToWhitelist(address(3), 0);
        Gsm.addAddressToWhitelist(address(3), 1);
        Gsm.addAddressToWhitelist(address(3), 2);
        Gsm.addAddressToWhitelist(address(3), 3);
        Gsm.addAddressToWhitelist(address(3), 4);
        Gsm.addAddressToWhitelist(address(3), 5);

        vm.deal(address(2), 2 ether );
        vm.startPrank(address(2));

        Gsm.whitelistMint{value: 0.1 ether}(address(2), 0);
        Gsm.whitelistMint{value: 0.1 ether}(address(2), 1);
        Gsm.whitelistMint{value: 0.1 ether}(address(2), 2);
        Gsm.whitelistMint{value: 0.1 ether}(address(2), 3);
        Gsm.whitelistMint{value: 0.1 ether}(address(2), 4);
        Gsm.whitelistMint{value: 0.1 ether}(address(2), 5);
        vm.stopPrank();

        vm.deal(address(3), 2 ether );
        vm.startPrank(address(3));

        Gsm.whitelistMint{value: 0.1 ether}(address(3), 0);
        Gsm.whitelistMint{value: 0.1 ether}(address(3), 1);
        Gsm.whitelistMint{value: 0.1 ether}(address(3), 2);
        Gsm.whitelistMint{value: 0.1 ether}(address(3), 3);
        Gsm.whitelistMint{value: 0.1 ether}(address(3), 4);
        Gsm.whitelistMint{value: 0.1 ether}(address(3), 5);



        // console.logBool(Gs.isEligibleToMintGoblet(address(2)));
        console.log("Left", goblet.getYear(goblet.INITIAL_DATE() + goblet.VALIDITY_PERIOD()));
        console.log("Right", goblet.getYear(block.timestamp));
        console.log(block.timestamp);
        Gm.mintGoblet(address(2), address(Gsm));
               Gm.mintGoblet(address(2), address(Gsm));
  

        vm.warp(block.timestamp + 31556954);
        console.log("Left", goblet.getYear(goblet.INITIAL_DATE() + goblet.VALIDITY_PERIOD()));
        console.log("Right", goblet.getYear(block.timestamp));
        console.log(block.timestamp);
        Gm.mintGoblet(address(3), address(Gsm));
        Gm.mintGoblet(address(2), address(Gsm));
        //   Gm.mintGoblet(address(3), address(Gsm));




        vm.warp(block.timestamp + 31556954);
        console.log(block.timestamp);

        console.log("Left", goblet.getYear(goblet.INITIAL_DATE() + goblet.VALIDITY_PERIOD()));
        console.log("Right", goblet.getYear(block.timestamp));
        Gm.mintGoblet(address(3), address(Gsm));
                

        // Gm.mintGoblet(address(3), address(Gsm));

        // uint x = goblet._daysToDate(100);
        // console.log("====================",x);

         }



}