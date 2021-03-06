using Test, Compat, Dates, Random, SeisIO

path = Base.source_dir()
println(stdout, "Tests require up to 20 minutes to execute.")
println(stdout, Dates.now(), ": tests begin, source_dir = ", path)

include(path*"/../src/SeisIO.jl")
include("get_ts_data.jl") # Handler for timeseries data functions

println("begin tests:")

println("time (test_time.jl)...")
include(path*"/test_time.jl")

println("read/write \"misc\" dictionary (test_misc_rw.jl)...")
include(path*"/test_misc_rw.jl")

println("SAC (test_sac.jl)...")
include(path*"/test_sac.jl")

println("SeisData test 1 (test_seisdata_1.jl)...")
include(path*"/test_seisdata_1.jl")

println("seisdata test 2 (test_seisdata_2.jl)...")
include(path*"/test_seisdata_2.jl")

println("randseis and native format i/o (test_native_io.jl)...")
include(path*"/test_native_io.jl")

println("annotation and processing (test_note_proc.jl) ...")
include(path*"/test_note_proc.jl")

println("other (non-SAC) file formats (test_file_formats.jl)...")
include(path*"/test_file_formats.jl")

println("FDSN XML parsing (test_xml.jl)...")
include(path*"/test_xml.jl")

println("FDSN data queries (test_fdsn.jl)...")
include(path*"/test_fdsn.jl")

println("IRIS web services (test_iris.jl)...")
include(path*"/test_iris.jl")

println("SEEDlink client (test_seedlink.jl)...")
include(path*"/test_seedlink.jl")

println("To run some canonical examples, execute this command: include(\"", path, "/examples.jl\")")
