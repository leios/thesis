using DelimitedFiles
using FFTW

function create_sine_wave(freq, res, filename)
    a = [sin(freq*2*pi*i/res) for i = 1:res]
    writedlm(filename, a)
end

function create_sine_fft(freq, res, filename)
    a = [sin(freq*2*pi*i/res) for i = 1:res]
    writedlm(filename, abs.(fft(a)))
end

function create_3_sine_waves(freq1, freq2, freq3, res, filename)
    a = [sin(freq1*2*pi*i/res) for i = 1:res]
    a += [sin(freq2*2*pi*i/res) for i = 1:res]
    a += [sin(freq3*2*pi*i/res) for i = 1:res]
    writedlm(filename, a)
end

function create_3_sine_fft(freq1, freq2, freq3, res, filename)
    a = [sin(freq1*2*pi*i/res) for i = 1:res]
    a += [sin(freq2*2*pi*i/res) for i = 1:res]
    a += [sin(freq3*2*pi*i/res) for i = 1:res]
    writedlm(filename, abs.(fft(a)))
end
