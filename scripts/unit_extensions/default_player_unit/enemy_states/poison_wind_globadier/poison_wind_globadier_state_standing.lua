PoisonWindGlobadierStateStanding = class(PoisonWindGlobadierStateStanding, EnemyCharacterStateStanding)

PoisonWindGlobadierStateStanding.init = function (self, character_state_init_context)
	PoisonWindGlobadierStateStanding.super.init(self, character_state_init_context)

	self._gas_ability_id = self._career_extension:ability_id("gas")
end

PoisonWindGlobadierStateStanding.update = function (self, unit, input, dt, context, t)
	local handled = self:common_state_changes()

	if handled then
		return
	end

	local csm = self._csm
	local career_extension = self._career_extension

	if career_extension:ability_was_triggered(self._gas_ability_id) then
		csm:change_state("globadier_throwing")

		return
	end

	self:_update_taunt_dialogue(t)

	handled = self:common_movement(t)
end
