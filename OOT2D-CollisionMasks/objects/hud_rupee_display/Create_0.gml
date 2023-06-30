if ((global.unlocked_adult_wallet == false) && (global.unlocked_giants_wallet == false))
{
global.max_rupees = 99;
}

if ((global.unlocked_adult_wallet == true) && (global.unlocked_giants_wallet == false))
{
global.max_rupees = 200;
}

if ((global.unlocked_adult_wallet == true) && (global.unlocked_giants_wallet == true))
{
global.max_rupees = 500;
}


draw_green = false;