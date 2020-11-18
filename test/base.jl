@testset "src/core/base.jl" begin
    g_file = "../test/data/matgas/GasLib-11-GPF.m"
    p_file = "../test/data/matpower/case5-GPF.m"
    link_file = "../test/data/json/GasLib-11-case5.json"
    g_type, p_type = CRDWPGasModel, SOCWRPowerModel

    @testset "instantiate_model (with file inputs)" begin
        gpm_type = GasPowerModel{CRDWPGasModel, SOCWRPowerModel}
        gpm = instantiate_model(g_file, p_file, link_file, gpm_type, build_gpf)
    end

    @testset "instantiate_model (with network inputs)" begin
        data = parse_files(g_file, p_file, link_file)
        gpm_type = GasPowerModel{CRDWPGasModel, SOCWRPowerModel}
        gpm = instantiate_model(data, gpm_type, build_gpf)
    end

    @testset "run_model (with file inputs)" begin
        gpm_type = GasPowerModel{CRDWPGasModel, SOCWRPowerModel}
        result = run_model(g_file, p_file, link_file, gpm_type, juniper, build_gpf)
        @test result["termination_status"] == LOCALLY_SOLVED
    end

    @testset "run_model (with network inputs)" begin
        data = parse_files(g_file, p_file, link_file)
        gpm_type = GasPowerModel{CRDWPGasModel, SOCWRPowerModel}
        result = run_model(data, gpm_type, juniper, build_gpf)
        @test result["termination_status"] == LOCALLY_SOLVED
    end
end
