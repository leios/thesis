using DelimitedFiles

# Converting V_0 and wfc into formats easily plotted by gnuplot
function convert_to_gnuplot(dx, mass, omegaX, Vfile, wfc_file, wfci_file)
    V = readdlm("V_0")
    wfc = readdlm("wfc_ev_0") + readdlm("wfc_evi_0")*im

    writedlm("Vfinal.dat", 2*V/mass/omegaX/omegaX/dx/dx)
    writedlm("wfcfinal.dat", abs2.(wfc))
end

convert_to_gnuplot(7.8125e-07, 1.44316e-25, 1, "V_0", "wfc_ev_0", "wfc_evi_0")
