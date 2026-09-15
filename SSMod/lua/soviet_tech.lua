-- lua
IT_LR_Artillery = 80;
IT_LR_RadMat = 81;
IT_LR_NonCombat = 82;
IT_LR_Cargo = 83;
IT_LR_Track = 84;
IT_LR_Crane = 85;
IT_LR_Bulldozer = 86;
IT_LR_Hovercraft = 87;
IT_LR_MultiBarrels = 88;
IT_LR_ManualTurrets = 90;
IT_LR_StaticCrane = 91; 
IT_LR_CalliopeRocketry = 92; 
IT_LR_SiberiteGun = 93; 
IT_LR_RussianRadar = 94;
IT_LR_RemoteTurret = 95;
IT_LR_Comp4 = 96;
IT_LR_Comp4 = 97;
IT_LR_SalvoGun = 98;
IT_LR_IonLaser = 99;
IT_LR_MineSweeper = 100;
IT_LR_Comp4 = 96;
IT_LR_Comp4 = 97;
IT_LR_SalvoGun = 98;
IT_LR_IonLaser = 99;
IT_LR_MineSweeper = 100;
IT_LR_MineDetector = 101;
IT_LR_Miner = 102;
IT_LR_PowOpt = 103;
IT_LR_OilOre = 104;
IT_LR_SibOre = 105;
IT_LR_Devastator = 106;

-- buttons.txt
SOS_TECH = {
	{
		TECH = IT_LR_Artillery,
		BUTTON = 1,
	},
	{
		TECH = IT_LR_RadMat,
		BUTTON = 56
	},
    {
        TECH = IT_LR_NonCombat,
        BUTTON = 42
    },
    {
        TECH = IT_LR_Cargo,
        BUTTON = 28
    },
    {
        TECH = IT_LR_Track,
        BUTTON = 27
    },
    {
        TECH = IT_LR_Crane,
        BUTTON = 72
    },
    {
        TECH = IT_LR_Bulldozer,
        BUTTON = 170
    },
    {
        TECH = IT_LR_Hovercraft,
        BUTTON = 173
    },
    {
        TECH = IT_LR_MultiBarrels,
        BUTTON = 174
    },
    {
        TECH = IT_LR_ManualTurrets,
        BUTTON = 84
    },
    {
        TECH = IT_LR_ManualTurrets,
        BUTTON = 55
    },
    {
        TECH = IT_LR_StaticCrane,
        BUTTON = 175
    },
    {
        TECH = IT_LR_CalliopeRocketry,
        BUTTON = 198
    },
    {
        TECH = IT_LR_SiberiteGun,
        BUTTON = 197
    },
    {
        TECH = IT_LR_RussianRadar,
        BUTTON = 181
    },
    {
        TECH = IT_LR_RemoteTurret,
        BUTTON = 176
    },
    {
        TECH = IT_LR_Comp4,
        BUTTON = 194
    },
    {
        TECH = IT_LR_Comp5,
        BUTTON = 195
    },
    {
        TECH = IT_LR_SalvoGun,
        BUTTON = 190
    },
    {
        TECH = IT_LR_IonLaser,
        BUTTON = 204
    },
    {
        TECH = IT_LR_MineSweeper,
        BUTTON = 114
    },
    {
        TECH = IT_LR_MineDetector,
        BUTTON = 52
    },
    {
        TECH = IT_LR_Miner,
        BUTTON = 7
    },
    {
        TECH = IT_LR_PowOpt,
        BUTTON = 65
    },
    {
        TECH = IT_LR_OilOre,
        BUTTON = 37
    },
    {
        TECH = IT_LR_SibOre,
        BUTTON = 61
    },
    {
        TECH = IT_LR_Devastator,
        BUTTON = 202
    }				
}

function GetLabQueueIcon(ID)
    if (ID <= -1) then
        return getIconTypeIndex(BudLab2IT(-ID));
    elseif (ID >= 80) then
    	return getCustomIconTypeIndex(ID);
    else
        return getIconTypeIndex(_Tech2ITTable[ID]);
    end;
end;

function getCustomIconTypeIndex(TECH)
    for i = 1, #SOS_TECH do
    	if (SOS_TECH[i].TECH == TECH) then
    		return SOS_TECH[i].BUTTON;
    	end;
    end;

    return -1;
end;