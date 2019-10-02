using DelimitedFiles

# Converting V_0 and wfc into formats easily plotted by gnuplot
function convert_to_gnuplot(dx, mass, omegaX, Vfile, wfc_file, wfci_file)
    V = readdlm(Vfile)
    wfc = readdlm(wfc_file) + readdlm(wfci_file)*im

    writedlm("Vfinal.dat", 2*V/mass/omegaX/omegaX/dx/dx)
    writedlm("wfc_GPEfinal.dat", abs2.(wfc))
end

data_dir = "/home/james/projects/GPUE/data_GPE/"
convert_to_gnuplot(7.8125e-07, 1.44316e-25, 1,
                   data_dir*"V_0",
                   data_dir*"wfc_ev_0",
                   data_dir*"wfc_evi_0")
