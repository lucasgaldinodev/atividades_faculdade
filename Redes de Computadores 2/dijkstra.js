function solve(graph, s) {
  var solutions = {};
  solutions[s] = [];
  solutions[s].dist = 0;

  while(true) {
    var parent = null;
    var nearest = null;
    var dist = Infinity;

    for(var n in solutions) {
      if(!solutions[n])
        continue
      var ndist = solutions[n].dist;
      var adj = graph[n];
      for(var a in adj) {
        if(solutions[a])
          continue;
        var d = adj[a] + ndist;
        if(d < dist) {
          parent = solutions[n];
          nearest = a;
          dist = d;
        }
      }
    }

    if(dist === Infinity) {
        break;
    }

    solutions[nearest] = parent.concat(nearest);
    solutions[nearest].dist = dist;
  }

  return solutions;
}

var graph = {
  'A': { 'B': 7, 'D': 5},
  'B': { 'A': 7, 'C': 8, 'D': 9, 'E': 7 },
  'C': { 'B': 8, 'E': 5},
  'D': { 'A': 5, 'B': 8, 'E': 15, 'F': 6 },
  'E': { 'B': 7, 'C': 5, 'D': 15, 'F': 8, 'G': 9},
  'F': { 'D': 6, 'E': 8, 'G': 11 },
  'G': { 'E': 9, 'F': 11},
};


var start = 'A';
var solutions = solve(graph, start);

console.log("Começando do nó: '"+start+"' até");
for(var s in solutions) {
  if(!solutions[s]) continue;
  console.log(" -> " + s + ": [" + solutions[s].join(", ") + "]   (custo: " + solutions[s].dist + ")");
}