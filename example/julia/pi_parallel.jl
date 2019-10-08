using Distributed

# Launch worker processes
num_cores = parse(Int, ENV["SLURM_CPUS_PER_TASK"])
# num_cores = 2
addprocs(num_cores)

# For the function that should be executed on each single core, use @everywhere macro
@everywhere function myf(x)
    return 4.0 / (1.0 + x * x)
end

function mypi_par(n)

a = 0.0
b = 1.0
dx = (b - a) / (n - 1)

cur_range = range(a, b, step = dx)
tmpres = pmap(myf, cur_range)

s = sum(tmpres)
s = (s - 0.5 * (myf(a) + myf(b))) * dx
return s

end

N = 33554432
for i = 1 : 50
    @time tmp = mypi_par(N)
end

for i in workers()
    rmprocs(i)
end
