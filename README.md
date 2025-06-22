# Crashing bug in Dart Analyzer

Currently using ```
Dart SDK version: 3.8.1 (stable) (Wed May 28 00:47:25 2025 -0700) on "macos_arm64"
```

I have not tried to reduce the bug.  This is from generating the GitHub API
from OpenAPI spec using my (incomplete) openapi generator.  The bug is clearly
in my generator, but also the analyzer isn't supposed to crash.

To reproduce:

```
➜  analyzer_crash git:(main) dart analyze .
Analyzing ....                          
An unexpected error was encountered by the Analysis Server.
Please file an issue at https://github.com/dart-lang/sdk/issues/new/choose with the following details:

Internal error: Null check operator used on a null value
#0      PrefixScope._merge (package:analyzer/src/dart/element/scope.dart:695:38)
#1      PrefixScope._addTo (package:analyzer/src/dart/element/scope.dart:672:15)
#2      PrefixScope._add (package:analyzer/src/dart/element/scope.dart:630:7)
#3      new PrefixScope (package:analyzer/src/dart/element/scope.dart:542:15)
#4      new LibraryFragmentScope (package:analyzer/src/dart/element/scope.dart:345:22)
#5      CompilationUnitElementImpl.scope (package:analyzer/src/dart/element/element.dart:1119:23)
#6      LibraryBuilder.resolveTypes (package:analyzer/src/summary2/library_builder.dart:331:29)
#7      Linker._resolveTypes (package:analyzer/src/summary2/link.dart:350:15)
#8      Linker._buildOutlines (package:analyzer/src/summary2/link.dart:242:5)
#9      Linker.link.<anonymous closure> (package:analyzer/src/summary2/link.dart:115:7)
#10     OperationPerformanceImpl.run (package:analyzer/src/util/performance/operation_performance.dart:155:23)
#11     Linker.link (package:analyzer/src/summary2/link.dart:114:17)
#12     link (package:analyzer/src/summary2/link.dart:42:10)
#13     LibraryContext.load.loadBundle.<anonymous closure> (package:analyzer/src/dart/analysis/library_context.dart:263:22)
#14     OperationPerformanceImpl.run (package:analyzer/src/util/performance/operation_performance.dart:155:23)
#15     LibraryContext.load.loadBundle (package:analyzer/src/dart/analysis/library_context.dart:262:42)
#16     LibraryContext.load.<anonymous closure> (package:analyzer/src/dart/analysis/library_context.dart:344:7)
#17     PerformanceLog.run (package:analyzer/src/dart/analysis/performance_logger.dart:38:15)
#18     LibraryContext.load (package:analyzer/src/dart/analysis/library_context.dart:343:12)
#19     AnalysisDriver._produceErrors.<anonymous closure>.<anonymous closure> (package:analyzer/src/dart/analysis/driver.dart:2058:26)
#20     OperationPerformanceImpl.run (package:analyzer/src/util/performance/operation_performance.dart:155:23)
#21     AnalysisDriver._produceErrors.<anonymous closure> (package:analyzer/src/dart/analysis/driver.dart:2057:21)
#22     OperationPerformanceImpl.run (package:analyzer/src/util/performance/operation_performance.dart:155:23)
#23     AnalysisDriver._produceErrors (package:analyzer/src/dart/analysis/driver.dart:2047:38)
#24     AnalysisDriver.performWork (package:analyzer/src/dart/analysis/driver.dart:1267:7)
#25     AnalysisDriverScheduler._run (package:analyzer/src/dart/analysis/driver.dart:2659:24)
<asynchronous suspension>


#0      LibraryContext._throwLibraryCycleLinkException (package:analyzer/src/dart/analysis/library_context.dart:419:5)
#1      LibraryContext.load.loadBundle (package:analyzer/src/dart/analysis/library_context.dart:294:11)
#2      LibraryContext.load.<anonymous closure> (package:analyzer/src/dart/analysis/library_context.dart:344:7)
#3      PerformanceLog.run (package:analyzer/src/dart/analysis/performance_logger.dart:38:15)
#4      LibraryContext.load (package:analyzer/src/dart/analysis/library_context.dart:343:12)
#5      AnalysisDriver._produceErrors.<anonymous closure>.<anonymous closure> (package:analyzer/src/dart/analysis/driver.dart:2058:26)
#6      OperationPerformanceImpl.run (package:analyzer/src/util/performance/operation_performance.dart:155:23)
#7      AnalysisDriver._produceErrors.<anonymous closure> (package:analyzer/src/dart/analysis/driver.dart:2057:21)
#8      OperationPerformanceImpl.run (package:analyzer/src/util/performance/operation_performance.dart:155:23)
#9      AnalysisDriver._produceErrors (package:analyzer/src/dart/analysis/driver.dart:2047:38)
#10     AnalysisDriver.performWork (package:analyzer/src/dart/analysis/driver.dart:1267:7)
#11     AnalysisDriverScheduler._run (package:analyzer/src/dart/analysis/driver.dart:2659:24)
<asynchronous suspension>

Unhandled exception:
Null check operator used on a null value
#0      PrefixScope._merge (package:analyzer/src/dart/element/scope.dart:695:38)
#1      PrefixScope._addTo (package:analyzer/src/dart/element/scope.dart:672:15)
#2      PrefixScope._add (package:analyzer/src/dart/element/scope.dart:630:7)
#3      new PrefixScope (package:analyzer/src/dart/element/scope.dart:542:15)
#4      new LibraryFragmentScope (package:analyzer/src/dart/element/scope.dart:345:22)
#5      CompilationUnitElementImpl.scope (package:analyzer/src/dart/element/element.dart:1119:23)
#6      LibraryBuilder.resolveTypes (package:analyzer/src/summary2/library_builder.dart:331:29)
#7      Linker._resolveTypes (package:analyzer/src/summary2/link.dart:350:15)
#8      Linker._buildOutlines (package:analyzer/src/summary2/link.dart:242:5)
#9      Linker.link.<anonymous closure> (package:analyzer/src/summary2/link.dart:115:7)
#10     OperationPerformanceImpl.run (package:analyzer/src/util/performance/operation_performance.dart:155:23)
#11     Linker.link (package:analyzer/src/summary2/link.dart:114:17)
#12     link (package:analyzer/src/summary2/link.dart:42:10)
#13     LibraryContext.load.loadBundle.<anonymous closure> (package:analyzer/src/dart/analysis/library_context.dart:263:22)
#14     OperationPerformanceImpl.run (package:analyzer/src/util/performance/operation_performance.dart:155:23)
#15     LibraryContext.load.loadBundle (package:analyzer/src/dart/analysis/library_context.dart:262:42)
#16     LibraryContext.load.<anonymous closure> (package:analyzer/src/dart/analysis/library_context.dart:344:7)
#17     PerformanceLog.run (package:analyzer/src/dart/analysis/performance_logger.dart:38:15)
#18     LibraryContext.load (package:analyzer/src/dart/analysis/library_context.dart:343:12)
#19     AnalysisDriver._produceErrors.<anonymous closure>.<anonymous closure> (package:analyzer/src/dart/analysis/driver.dart:2058:26)
#20     OperationPerformanceImpl.run (package:analyzer/src/util/performance/operation_performance.dart:155:23)
#21     AnalysisDriver._produceErrors.<anonymous closure> (package:analyzer/src/dart/analysis/driver.dart:2057:21)
#22     OperationPerformanceImpl.run (package:analyzer/src/util/performance/operation_performance.dart:155:23)
#23     AnalysisDriver._produceErrors (package:analyzer/src/dart/analysis/driver.dart:2047:38)
#24     AnalysisDriver.performWork (package:analyzer/src/dart/analysis/driver.dart:1267:7)
#25     AnalysisDriverScheduler._run (package:analyzer/src/dart/analysis/driver.dart:2659:24)
<asynchronous suspension>


#0      LibraryContext._throwLibraryCycleLinkException (package:analyzer/src/dart/analysis/library_context.dart:419:5)
#1      LibraryContext.load.loadBundle (package:analyzer/src/dart/analysis/library_context.dart:294:11)
#2      LibraryContext.load.<anonymous closure> (package:analyzer/src/dart/analysis/library_context.dart:344:7)
#3      PerformanceLog.run (package:analyzer/src/dart/analysis/performance_logger.dart:38:15)
#4      LibraryContext.load (package:analyzer/src/dart/analysis/library_context.dart:343:12)
#5      AnalysisDriver._produceErrors.<anonymous closure>.<anonymous closure> (package:analyzer/src/dart/analysis/driver.dart:2058:26)
#6      OperationPerformanceImpl.run (package:analyzer/src/util/performance/operation_performance.dart:155:23)
#7      AnalysisDriver._produceErrors.<anonymous closure> (package:analyzer/src/dart/analysis/driver.dart:2057:21)
#8      OperationPerformanceImpl.run (package:analyzer/src/util/performance/operation_performance.dart:155:23)
#9      AnalysisDriver._produceErrors (package:analyzer/src/dart/analysis/driver.dart:2047:38)
#10     AnalysisDriver.performWork (package:analyzer/src/dart/analysis/driver.dart:1267:7)
#11     AnalysisDriverScheduler._run (package:analyzer/src/dart/analysis/driver.dart:2659:24)
<asynchronous suspension>
Bad state: The analysis server crashed unexpectedly

The analysis server shut down unexpectedly.
Please report this at dartbug.com.
```