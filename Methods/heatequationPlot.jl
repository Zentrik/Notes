using Plots, LaTeXStrings
pgfplotsx()

using SpecialFunctions
surface(-3:.1:3, 0:0.1:20, (x, t) -> 1 * erf(x / (2 * (1 * t)^.5)), camera = (-50,50))

trange = [0; [10^x for x in -3.:2]]
pl = plot([x -> 1 * erf(x / (2 * (1 * t)^.5)) for t in trange], -3, 3, xlabel=L"x", ylabel=L"\theta", label=[L"t=0" permutedims([L"t = 10^{%$x}" for x in -3:2])], title = L"D=1")

savefig(pl, "$(@__DIR__)/figures/HeatEquation2D.tex")

plot!([x -> 1 * erf(x / (2 * (1 * t)^.5)) for t in trange], -3, 3, label=[L"t=0" permutedims([L"t = 10^{%$x}" for x in -3:2])], title = L"D=1")