#include <amxmodx>
#include <reapi>

#pragma semicolon 1

public plugin_init() {
	register_plugin("No fall damage", "0.1", "s1lent");
	RegisterHookChain(RG_CSGameRules_PlayerFallDmg, "FwdTakeDamagePost", 1);
}

public FwdTakeDamagePost() {
	SetHookChainReturn(ATYPE_FLOAT, 0.0);
}
