#include <cstrike>
#include <sourcemod>
#include <sdktools>


public Plugin:myinfo =
{
  name = "ADMTags",
  description = "",
  author = "Mr.Kosmos",
  version = "1.0",
  url = "https://discord.gg/PvnVZ34HR2"
};

public OnPluginStart()
{
  HookEvent("player_spawn", Event_TagTable);
}

public Action:Event_TagTable(Handle:event, String:name[], bool:dontBroadcast)
{
  new client = GetClientOfUserId(GetEventInt(event, "userid"));
  if (GetAdminFlag(GetUserAdmin(client), Admin_Custom1))
  {
    CS_SetClientClanTag(client, "[OWNER]");
  }
  if (GetAdminFlag(GetUserAdmin(client), Admin_Custom2))
  {
    CS_SetClientClanTag(client, "[Opiekun H@]");
  }
  if (GetAdminFlag(GetUserAdmin(client), Admin_Custom6))
  {
    CS_SetClientClanTag(client, "[ADMIN]");
  }
  if (GetAdminFlag(GetUserAdmin(client), Admin_Custom5))
  {
    CS_SetClientClanTag(client, "[Test Admin]");
  }
  if (GetAdminFlag(GetUserAdmin(client), Admin_Custom3))
  {
    CS_SetClientClanTag(client, "★ SVIP ★");
  }
  if (GetAdminFlag(GetUserAdmin(client), Admin_Custom4))
  {
    CS_SetClientClanTag(client, "★ VIP ★");
  } 
}