using DelimitedFiles
function to_phase(wfc_file, wfci_file, xDim, yDim)
    wfc = reshape(readdlm(wfc_file) + im*readdlm(wfci_file), xDim, yDim)
    hval = maximum(abs2.(wfc))
    return angle.(wfc).*(abs2.(wfc)/hval)
end

function to_density(wfc_file, wfci_file, xDim, yDim)
    wfc = reshape(readdlm(wfc_file) + im*readdlm(wfci_file), xDim, yDim)
    return abs2.(wfc)
end

wfc_file = "data_L10/wfc_L10"
wfci_file = "data_L10/wfci_L10"
xDim = 512
yDim = 512

writedlm("phase_L10.dat", to_phase(wfc_file, wfci_file, xDim, yDim))
writedlm("density_L10.dat", to_density(wfc_file, wfci_file, xDim, yDim))
