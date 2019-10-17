using DelimitedFiles

# Converting V_0 and wfc into formats easily plotted by gnuplot
function convert_to_gnuplot(xDim, wfc_file, wfci_file, outfile)
    wfc = reshape(readdlm(wfc_file) + readdlm(wfci_file)*im,256, 256)

    writedlm(outfile, abs2.(wfc[:,div(xDim,2)]))
end

data_dir = "./"
convert_to_gnuplot(256, data_dir*"wfc_g0_0",data_dir*"wfc_g0i_0",
                   data_dir*"wfc_g0.dat")
convert_to_gnuplot(256, data_dir*"wfc_g0.5_0",data_dir*"wfc_g0.5i_0",
                   data_dir*"wfc_g0.5.dat")
convert_to_gnuplot(256, data_dir*"wfc_g1_0",data_dir*"wfc_g1i_0",
                   data_dir*"wfc_g1.dat")
convert_to_gnuplot(256, data_dir*"wfc_g1.5_0",data_dir*"wfc_g1.5i_0",
                   data_dir*"wfc_g1.5.dat")
convert_to_gnuplot(256, data_dir*"wfc_g2_0",data_dir*"wfc_g2i_0",
                   data_dir*"wfc_g2.dat")
