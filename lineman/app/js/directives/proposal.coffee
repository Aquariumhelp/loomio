angular.module('loomioApp').directive 'proposal', ->
  scope: {proposal: '='}
  restrict: 'E'
  templateUrl: 'generated/templates/proposal.html'
  replace: true
  controller: 'ProposalController'
  link: (scope, element, attrs) ->
