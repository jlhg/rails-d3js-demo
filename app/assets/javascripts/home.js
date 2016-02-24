function log10(val) {
  return val > 0 ? Math.log(val) / Math.LN10 : 0;
}

function wrap(text, width) {
  text.each(function() {
    var text = d3.select(this),
        words = text.text()
        .split(/\s+/).reverse(),
        word, line = [],
        lineNumber = 0,
        lineHeight = 1.4, // ems
        y = text.attr("y"),
        dy = parseFloat(text.attr("dy")),
        tspan = text
        .text(null).append("tspan").attr("x", 0).attr("y",
                                                      y).attr("dy", dy + "em");

    while (word = words.pop()) {
      line.push(word);
      tspan.text(line.join(" "));
      if (tspan.node().getComputedTextLength() > width) {
        line.pop();
        tspan.text(line.join(" "));
        line = [word];
        tspan = text.append("tspan").attr("x", 0).attr("y",
                                                       y).attr("dy",
                                                               ++lineNumber * lineHeight + dy + "em")
          .text(word);
      }
    }
  });
}

function drawChart() {
  var margin = {top: 60, right: 20, bottom: 110, left: 40},
      width = 960 - margin.left - margin.right,
      height = 550 - margin.top - margin.bottom;

  var x = d3.scale.ordinal()
      .rangeRoundBands([0, width], .1);

  var y = d3.scale.linear()
      .range([height, 0]);

  var xAxis = d3.svg.axis()
      .scale(x)
      .orient("bottom");

  var yAxis = d3.svg.axis()
      .scale(y)
      .orient("left")
      .ticks(0);

  var svg = d3.select("#chart").append("svg")
      .attr("width", width + margin.left + margin.right)
      .attr("height", height + margin.top + margin.bottom)
      .append("g")
      .attr("transform", "translate(" + margin.left + "," + margin.top + ")");

  svg.append("text")
    .attr("x", (width / 2))
    .attr("y", 0 - (margin.top / 2))
    .attr("text-anchor", "middle")
    .style("font-size", "20px")
    .style("font-weight", "bold")
    .text("Bioassays");

  d3.json("data", function(error, data) {
    if (error) {
      console.warn(error);
      throw error;
    }

    x.domain(data.map(function(d) {
      return d.AssayType;
    }));

    y.domain([0, d3.max(data, function(d) {
      var count = 0;
      var key;
      for (key in d.perturbationType) {
        count += d.perturbationType[key];
      }
      return log10(count);
    })]);

    svg.append("g")
      .attr("class", "x axis")
      .attr("transform", "translate(0," + height + ")")
      .call(xAxis)
      .selectAll("text")
      .attr("x", -10)
      .call(wrap, x.rangeBand());

    svg.append("g")
      .attr("class", "y axis")
      .call(yAxis)
      .append("text")
      .attr("transform", "rotate(-90)")
      .attr("y", -5)
      .style("text-anchor", "end")
      .text("Count of Perturbations");

    var bars = svg.selectAll(".bar")
        .data(data)
        .enter()
        .append("g")
        .attr("class", "bar");

    bars.append("rect")
      .attr("x", function(d) {
        return x(d.AssayType);
      })
      .attr("y", function(d) {
        var count = 0;
        var key;
        for (key in d.perturbationType) {
          count += d.perturbationType[key];
        }
        return y(log10(count));
      })
      .attr("width", x.rangeBand())
      .attr("height", function(d) {
        var count = 0;
        var key;
        for (key in d.perturbationType) {
          count += d.perturbationType[key];
        }
        return height - y(log10(count));
      });

    bars.append("text")
      .text(function(d) {
        var count = 0;
        var key;
        for (key in d.perturbationType) {
          count += d.perturbationType[key];
        }
        return d3.format(",")(count);
      })
      .attr("text-anchor", "middle")
      .attr("x", function(d) {
        return x(d.AssayType) + x.rangeBand() / 2;
      })
      .attr("width", x.rangeBand())
      .attr("y", function(d) {
        var count = 0;
        var key;
        for (key in d.perturbationType) {
          count += d.perturbationType[key];
        }
        return y(log10(count)) - 5;
      })
      .attr("height", function(d) {
        var count = 0;
        var key;
        for (key in d.perturbationType) {
          count += d.perturbationType[key];
        }
        return height - y(log10(count));
      });
  });
}

$(document).ready(function() {
  drawChart();
});
