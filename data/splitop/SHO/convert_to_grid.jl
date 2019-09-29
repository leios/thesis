using DelimitedFiles

# Converting V_0 and wfc into formats easily plotted by gnuplot
function convert_to_grid(xDim, filebase, start, incr, final)
    arr = zeros(xDim, div((final-start),incr)+1)
    count = 1
    for i = start:incr:final
        wfc = readdlm(filebase * "_" * string(i)) +
              readdlm(filebase * "i_" * string(i))*im
        arr[:,count] = abs2.(wfc)
        count += 1

    end
    writedlm("wfcgrid.dat", arr)
end

#convert_to_grid(256, "data/wfc_0_const", 0, 100, 10000)
convert_to_grid(256, "data/wfc_ev", 0, 100, 10000)
