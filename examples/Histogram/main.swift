import SwiftPlot
import AGGRenderer
import SVGRenderer
import Foundation

var filePath = "examples/Reference/"
let fileName = "_20_histogram"

var agg_renderer = AGGRenderer()
var svg_renderer = SVGRenderer()

var histogram = Histogram<Float>(isNormalized: false)
histogram.addSeries(data: x, bins: 50, label: "Plot 1", color: .blue)
histogram.plotTitle = PlotTitle("HISTOGRAM")
histogram.plotLabel = PlotLabel(xLabel: "X", yLabel: "Frequency")

histogram.drawGraphAndOutput(fileName: filePath+"agg/"+fileName, renderer: agg_renderer)
histogram.drawGraphAndOutput(fileName: filePath+"svg/"+fileName, renderer: svg_renderer)