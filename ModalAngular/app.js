var app = angular.module('plunker', ['ui.router', 'ui.bootstrap']);

app.config(function($stateProvider, $urlRouterProvider){
  $urlRouterProvider.otherwise("/");
  $stateProvider
  .state('index', {
    url: '/',
    template: '<h2>Hello world</h2>'
  })
  .state('terms', {
    url: '/terms',
  })
})

/**
 * Use a run block to ensure the modal will open from anywhere in the app.
 **/
app.run(function ($rootScope, $modal) {
  /**
   * Listen to the `$stateChangeStart` event
   */
  $rootScope.$on('$stateChangeStart', function (event, toState) {
    /**
     * if the new state is not "terms", then ignore it
     */
    if(toState.name !== 'terms') return;
    /**
     * Open the modal window
     */
    $modal.open({
        template: [
        '<div class="modal-content">',
          '<div class="modal-header">',
            '<h3 class="modal-title">Regulamin</h3>',
          '</div>',
          '<div class="modal-body">',
          '$1. Give us all your money!',
          '</div>',
          '<div class="modal-footer">',
            '<button class="btn btn-primary" ng-click="$dismiss()">OK</button>',
          '</div>',
        '</div>'
        ].join(''),
        controller: function($scope){
          // Do whatever you need here.
        }
      });
    /**
     * Prevent the transition to the dummy state, stay where you are
     */
    event.preventDefault();
  })
})