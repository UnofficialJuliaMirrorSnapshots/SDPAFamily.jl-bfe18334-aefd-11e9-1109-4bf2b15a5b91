function install_custom_WSL_binaries(prefix, verbose, variants)
    prefix = Prefix(joinpath(prefix, "bin"))
    products = Product[]
    if :sdpa_gmp ∈ variants
        BinaryProvider.download_verify(
            "https://github.com/ericphanson/SDPA_GMP_Builder/raw/master/deps/sdpa_gmp_wsl",  # url
            "f8ed0c3f2aefa1ab5a90f1999c78548625f6122f969972b8a51b54a0017b3a59", # hash
            joinpath(prefix.path, "sdpa_gmp");  # destination
            verbose = verbose
        )
        push!(products, FileProduct(prefix, "sdpa_gmp", :sdpa_gmp))
    end
    if :sdpa_dd ∈ variants
        BinaryProvider.download_verify(
            "https://github.com/JiazhengZhu/sdpa-dd/raw/master/sdpa_dd",  # url
            "8505d4a5c46e41c84909237420c4140e510e675232d7a22758e4ac1e1be2d82b", # hash
            joinpath(prefix.path, "sdpa_dd");  # destination
            verbose = verbose
        )
        push!(products, FileProduct(prefix, "sdpa_dd", :sdpa_dd))
    end
    if :sdpa_qd ∈ variants
        BinaryProvider.download_verify(
            "https://github.com/JiazhengZhu/sdpa-qd/raw/master/sdpa_qd",  # url
            "702b371a828d67fa199a5d23f4c231e7a85c676086d8c14a9614f814d920120a", # hash
            joinpath(prefix.path, "sdpa_qd");  # destination
            verbose = verbose
        )
        push!(products, FileProduct(prefix, "sdpa_qd", :sdpa_qd))
    end
    if :sdpa ∈ variants
        BinaryProvider.download_verify(
            "https://github.com/JiazhengZhu/sdpa/raw/master/sdpa",  # url
            "59425468dabcf46946e7afb845ff9269d6c1d6730781b7a5ed4eb43538638fa3", # hash
            joinpath(prefix.path, "sdpa");  # destination
            verbose = verbose
        )
        push!(products, FileProduct(prefix, "sdpa", :sdpa))
    end
    return products

end
