import AppConfig from '@/shared/services/app_config'
import Records   from '@/shared/services/records'
import i18n from '@/i18n.coffee'
import {compact, head, sortBy} from 'lodash'

export optionColors = ->
  agree: AppConfig.pollColors.proposal[0]
  abstain: AppConfig.pollColors.proposal[1]
  disagree: AppConfig.pollColors.proposal[2]
  block: AppConfig.pollColors.proposal[3]
  consent: AppConfig.pollColors.proposal[0]
  tension: AppConfig.pollColors.proposal[1]
  objection: AppConfig.pollColors.proposal[2]

export optionImages = ->
  agree: 'agree'
  abstain: 'abstain'
  disagree: 'disagree'
  block: 'block'
  consent: 'agree'
  objection: 'disagree'
  yes: 'yes'
  no: 'no'

export myLastStanceFor = (poll) ->
  head sortBy(Records.stances.find(
    pollId: poll.id,
    participantId: AppConfig.currentUserId,
    revokedAt: null,
    latest: true
  ), 'createdAt')
