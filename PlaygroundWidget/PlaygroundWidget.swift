//
//  PlaygroundWidget.swift
//  PlaygroundWidget
//
//  Created by Marius Preikschat on 17.08.23.
//

import WidgetKit
import SwiftUI
import Intents

struct Provider: IntentTimelineProvider {
    // Provides a timeline entry representing a placeholder version of the widget.
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), configuration: ConfigurationIntent())
    }

    // Provides a timeline entry that represents the current time and state of a widget.
    func getSnapshot(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(date: Date(), configuration: configuration)
        completion(entry)
    }

    // Provides an array of timeline entries for the current time and, optionally, any future times to update a widget.
    func getTimeline(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [SimpleEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 5 {
            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
            let entry = SimpleEntry(date: entryDate, configuration: configuration)
            entries.append(entry)
        }

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
    let configuration: ConfigurationIntent
}

struct SystemSmall: View {
    var entry: Provider.Entry

    var body: some View {
        VStack {
            Label("Uhrzeit", systemImage: "clock")
            Text(entry.date, style: .time)
        }
    }
}

struct CircularWidget: View {
    @State private var current = 67.0
    @State private var min = 0.0
    @State private var max = 170.0
    
    var body: some View {
        Gauge(value: current, in: min...max) {
            Text("Heart rate")
        } currentValueLabel: {
            Text("\(Int(current))")
        } minimumValueLabel: {
            Text("\(Int(min))")
        } maximumValueLabel: {
            Text("\(Int(max))")
        }
        .gaugeStyle(.accessoryCircular)
    }
}

struct PlaygroundWidgetEntryView : View {
    @Environment(\.widgetFamily) var size
    
    var entry: Provider.Entry

    var body: some View {
        if #available(iOSApplicationExtension 16.0, *) {
            switch size {
                case .systemSmall:
                    SystemSmall(entry: entry)
                case .accessoryCircular:
                    CircularWidget()
                case .systemMedium:
                    EmptyView()
                case .systemLarge:
                    EmptyView()
                case .systemExtraLarge:
                    EmptyView()
                case .accessoryRectangular:
                    EmptyView()
                case .accessoryInline:
                    EmptyView()
                @unknown default:
                    EmptyView()
            }
        }
    }
}

struct PlaygroundWidget: Widget {
    let kind: String = "PlaygroundWidget"

    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
            PlaygroundWidgetEntryView(entry: entry)
        }
        .supportedFamilies([.systemSmall, .systemMedium, .accessoryCircular])
        .configurationDisplayName("My first widget")
        .description("This is an example widget.")
    }
}

struct PlaygroundWidget_Previews: PreviewProvider {
    static var previews: some View {
        PlaygroundWidgetEntryView(entry: SimpleEntry(date: Date(), configuration: ConfigurationIntent()))
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
