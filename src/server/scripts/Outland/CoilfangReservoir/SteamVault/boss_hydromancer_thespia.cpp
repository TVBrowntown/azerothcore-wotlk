/*
 * This file is part of the AzerothCore Project. See AUTHORS file for Copyright information
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Affero General Public License as published by the
 * Free Software Foundation; either version 3 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "steam_vault.h"

enum HydromancerThespia
{
    SAY_SUMMON                  = 0, // Unused or Unknown Use
    SAY_AGGRO                   = 1,
    SAY_SLAY                    = 2,
    SAY_DEAD                    = 3,
    SAY_SPELL                   = 4,

    SPELL_LIGHTNING_CLOUD       = 25033,
    SPELL_LUNG_BURST            = 31481,
    SPELL_ENVELOPING_WINDS      = 31718,

    EVENT_SPELL_LIGHTNING       = 1,
    EVENT_SPELL_LUNG            = 2,
    EVENT_SPELL_ENVELOPING      = 3
};

struct boss_hydromancer_thespia : public BossAI
{
    boss_hydromancer_thespia(Creature* creature) : BossAI(creature, DATA_HYDROMANCER_THESPIA) { }

    void JustDied(Unit* /*killer*/) override
    {
        _JustDied();
        Talk(SAY_DEAD);
    }

    void KilledUnit(Unit* victim) override
    {
        if (victim->IsPlayer())
            Talk(SAY_SLAY);
    }

    void JustEngagedWith(Unit* /*who*/) override
    {
        Talk(SAY_AGGRO);
        _JustEngagedWith();
        events.ScheduleEvent(EVENT_SPELL_LIGHTNING, 9800);
        events.ScheduleEvent(EVENT_SPELL_LUNG, 13300);
        events.ScheduleEvent(EVENT_SPELL_ENVELOPING, 14500);
    }

    void UpdateAI(uint32 diff) override
    {
        if (!UpdateVictim())
            return;

        events.Update(diff);
        switch (events.ExecuteEvent())
        {
        case EVENT_SPELL_LIGHTNING:
            Talk(SAY_SPELL);
            DoCastRandomTarget(SPELL_LIGHTNING_CLOUD);
            events.RepeatEvent(urand(12100, 14500));
            break;
        case EVENT_SPELL_LUNG:
            DoCastRandomTarget(SPELL_LUNG_BURST);
            events.RepeatEvent(urand(21800, 25400));
            break;
        case EVENT_SPELL_ENVELOPING:
            DoCastRandomTarget(SPELL_ENVELOPING_WINDS);
            events.RepeatEvent(urand(30000, 40000));
            break;
        }

        DoMeleeAttackIfReady();
    }
};

void AddSC_boss_hydromancer_thespia()
{
    RegisterSteamvaultCreatureAI(boss_hydromancer_thespia);
}
