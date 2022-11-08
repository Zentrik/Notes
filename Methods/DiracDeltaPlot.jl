using Plots, LaTeXStrings
pgfplotsx()

εrange = [2^x for x in -3.:0]
pl = plot([x -> exp(-x^2 / ε^2) / (ε * √π) for ε in εrange], -3, 3, xlabel=L"x", ylabel=L"\delta_\varepsilon(x)", label=permutedims([L"ε = 2^{%$x}" for x in -3:0]))

savefig(pl, "$(@__DIR__)/figures/06-GaussianApproximation.tex")

εrange = [2^x for x in -3.:0]
pl = plot([x -> exp(-x^2 / ε^2) * (-2x) / (ε^3 * √π) for ε in εrange], -3, 3, xlabel=L"x", ylabel=L"\delta'_\varepsilon(x)", label=permutedims([L"ε = 2^{%$x}" for x in -3:0]))

savefig(pl, "$(@__DIR__)/figures/06-GaussianApproximationDerivative.tex")