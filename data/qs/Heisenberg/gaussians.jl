using DelimitedFiles
using FFTW

function create_gaussian(xmax, sigma, res)
    x = [(-xmax + 2*xmax*i/res) for i = 1:res]
    g = (1/(sqrt(2*pi)*sigma))*exp.(-(x/sigma).^2/2)
end

function normalize(a,dx)
    factor = sum(a)
    return a/factor/dx
end

function create_gaussian_file(filename)
    res = 1024
    file = open(filename, "w")
    for i = 1:10
        sigma = i/10
        g = create_gaussian(10, sigma, res)
        println(sum(g))
        for j = 1:res
            write(file, string(g[j])*'\n')
        end
        write(file, "\n\n")
    end

    close(file)
end

function create_fft_gaussian_file(filename)
    res = 1024
    file = open(filename, "w")
    for i = 1:10
        sigma = i/10
        g = create_gaussian(10, sigma, res)
        g = normalize(abs.(fftshift(fft(g))), 20/res)
        println(sum(g))
        for j = 1:res 
            write(file, string(g[j])*'\n')
        end
        write(file, "\n\n")
    end

    close(file)
end
