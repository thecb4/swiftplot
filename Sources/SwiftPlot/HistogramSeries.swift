public class HistogramSeries<T> {
    public var data = [T]()
    public var bins: Int = 0
    public var binFrequency = [Float]()
    public var scaledBinFrequency = [Float]()
    public var maximumFrequency: Float = 0
    public var minimumX: T?
    public var maximumX: T?
    public var binInterval: T?
    public var label = ""
    public var color: Color = .lightBlue
    public var histogramSeriesOptions = HistogramSeriesOptions()
    public var isNormalized = false
    public init() {}
    public init(data: [T],
                bins: Int,
                isNormalized: Bool,
                label: String,
                color: Color,
                histogramType: HistogramSeriesOptions.HistogramType,
                binFrequency: [Float],
                maximumFrequency: Float,
                minimumX: T,
                maximumX: T,
                binInterval: T) {
        self.data = data
        self.bins = bins
        self.isNormalized = isNormalized
        self.label = label
        self.color = color
        histogramSeriesOptions.histogramType = histogramType
        self.binFrequency = binFrequency
        self.maximumFrequency = maximumFrequency
        self.minimumX = minimumX
        self.maximumX = maximumX
        self.binInterval = binInterval
    }
}
