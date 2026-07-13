 

import SwiftUI

struct PerformanceTesting: View {

    @State private var cache = CacheTest()
    
    @State var alloc = AllocationTest()

    var body: some View {

        NavigationStack {

            ScrollView {

                VStack(spacing: 15) {

                    Button("🔥 CPU Stress") {
                        CPUStress().calculatePrimeNumbers()
                    }

                    Button("📦 Allocation Test") {
                        alloc.allocate()
                    }

                    Button("🪤 Memory Leak") {
                        MemoryLeak().createLeak()
                    }

                    Button("🧠 Cache Growth") {
                        cache.store()
                    }

                    Button("🌍 Network Request") {
                        NetworkTest().download()
                    }
//
//                    Button("💾 File Write") {
//                        FileTest().writeLargeFile()
//                    }
//
//                    Button("⚠️ Thread Race") {
//                        ThreadRace().start()
//                    }
//
//                    Button("🔋 Battery Drain") {
//                        BatteryDrain().start()
//                    }
//
//                    Button("🚀 Swift Concurrency") {
//                        ConcurrencyTest().run()
//                    }
//
//                    NavigationLink("🎬 Animation Stress") {
//                        AnimationStressView()
//                    }

                }
                .buttonStyle(.borderedProminent)

            }
            .navigationTitle("Performance Playground")
        }
    }
}
