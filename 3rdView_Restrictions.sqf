if (!isDedicated) then { //preventing start on server

   waitUntil {!isNull (findDisplay 46)}; //making sure player is spawned

   if (difficultyEnabled "3rdPersonView") then
   {
      while {true} do {

         waitUntil {cameraView == "EXTERNAL" || cameraView == "GROUP"};

         if  (((vehicle player) == player) && (speed ( player)) >= 0) then {
            player switchCamera "INTERNAL";
         };
         sleep 0.1;

         if (((vehicle player)isKindOf "LandVehicle") && (speed (vehicle player)) >= 500) then {
            (vehicle player) switchCamera "Internal";
         };
         sleep 0.1;

                        if ((vehicle player) isKindOf "Air" && (getPosATL (vehicle player) select 2) > 1500)then {
            (vehicle player) switchCamera "Internal";
         };
                                           sleep 0.1;

         if (((vehicle player)isKindOf "Ship") && (speed (vehicle player)) >= 200) then {
            (vehicle player) switchCamera "Internal";
         };
         sleep 0.1;
      };
   };

};
