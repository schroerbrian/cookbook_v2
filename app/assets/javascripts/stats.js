$(document).ready(function(){   //wait until everything is loaded before firing off functions

  $.ajax(
    '/data.json',     //anytime you see a route, check the route file.
    {                 // sent back here from the controller after the json's been grabbed
                      //jquery magic renders data into chart
      success: function(graph_data) {
        var container = $('.chart');
        var colors = ['red','skyblue','green','gold'];

        container.append('<div id="cook_chart" class="graph"/>');
        console.log(graph_data);
        Morris.Bar({
          element: 'cook_chart',
          data: graph_data,
          xkey: 'y',
          ykeys: ['a'],
          labels: ['count']
        });
      }
    }
  );
});
