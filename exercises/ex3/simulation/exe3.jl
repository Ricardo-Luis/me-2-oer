### A Pluto.jl notebook ###
# v0.20.18

using Markdown
using InteractiveUtils

# ╔═╡ 4acaff02-924d-11f0-109a-79120900a3b3
using Plots, PlutoUI, DelimitedFiles, LaTeXStrings 

# ╔═╡ e85b67df-f5d1-49a0-9144-c4581d1799ca
TableOfContents()

# ╔═╡ d47dbe01-6dcd-4c3c-a1a3-166ea674c857
typeof(π)

# ╔═╡ b178e345-0235-4147-8e96-661f58c7ad73
md"""
# Ex.3 DADOS:
"""

# ╔═╡ 31707835-1794-4e97-ac2c-bd174d119be3
p=3; a=3; z=624; s=8; J=3; btau=2/3; D=220;

# ╔═╡ 54b92611-c299-4e26-8460-2d7165d52722
md"""
## Resolução
"""

# ╔═╡ 47a54eae-ee7b-4e8b-b11d-e0bedebdf180
begin
	τ = (π*D/(2*p));
	b = 2*τ/3

	b, τ
end

# ╔═╡ d7c686ca-946d-41fb-a3d2-5aa96b07f539
typeof(τ)

# ╔═╡ 70741658-9f8b-42d0-bb0e-88d9aa213a78
typeof(b)

# ╔═╡ de291522-0fb3-4bfa-9b6e-af93e8705f72
arc_PA=15 # graus

# ╔═╡ a40ff378-d329-4ebd-b3a0-86bcb71952ad
dist_PA= arc_PA * π*D/360

# ╔═╡ f8e53320-1298-4289-b18d-e60c554bdb4f
md"""
---
"""

# ╔═╡ 68081023-65d3-4126-bd76-ebdc5b9257bd
md"""
a) Fi
"""

# ╔═╡ bc982658-fc0b-4cb8-900d-cccef2273535
Ia=s*J

# ╔═╡ 3336b8ed-482c-4dbb-a4db-95bb4cfdb0aa
I=Ia*2*a

# ╔═╡ 0e73bc01-f83e-4642-86d9-16f982f6885d
Fi=z*I/(8*a*p)

# ╔═╡ 9d7fbbaa-9021-4a6f-8359-4a8ae07e552b
md"""
---
"""

# ╔═╡ 5b5893a1-4e82-4164-bb97-25d00fc3479c
md"""
apenas pa:
"""

# ╔═╡ 9fa1a905-880f-476d-b946-fcf0ffee06e6
Nipa=Fi/I

# ╔═╡ 48c247de-eb4c-4095-9724-dec77270ec26
Fipa=9*I

# ╔═╡ f3fc25f9-7c46-485c-ab21-57f6a019c200
md"""
---
"""

# ╔═╡ 2759c16c-be86-4207-a885-034d54cd56c2
md"""
b) FEC, NEC, condutores/cava (6 cavas)
"""

# ╔═╡ 8e36c30e-8ed8-404b-ac0d-25b4422ee1f5
Fec = Fi* btau

# ╔═╡ e68e4359-2bd3-416b-b163-03246a71c9d9
Nec=Fec/I

# ╔═╡ c51ca547-cdde-433d-88bf-1e08d55a0850
FecC=6*I

# ╔═╡ 2ffdc2c7-a1d4-4609-bd7f-72788d5610aa
md"""
---
"""

# ╔═╡ 00237c29-1721-456b-908c-5e8ff7ee7198
md"""
c) Npa
"""

# ╔═╡ 53cdd8a6-6b8a-4aea-9c15-d298d6919eaf
Fpa=Fi-FecC

# ╔═╡ f823c6a7-3c21-4e4e-87d3-597d086b4b36
Npa=Fpa/I

# ╔═╡ 2127bdc8-77e8-424c-9a57-5dad614d6f0d
FpaC=3*I

# ╔═╡ 45b597fe-7218-4820-9a61-83ef26c1da33
md"""
---
"""

# ╔═╡ 7136b1f9-1126-4157-935e-9249e4083484
Fres=Fi-FecC-FpaC

# ╔═╡ d49569d8-0a10-46df-8e5e-b9e27d0d99d0
md"""
---
"""

# ╔═╡ 96a4db9c-64fa-4c64-862a-e1d69157713c
md"""
# FMM
"""

# ╔═╡ 89f2db9f-04c5-4be8-a72a-42b574694058
md"""
## ideal
"""

# ╔═╡ 17641b27-91de-4a31-81bd-7a61a7d85494
md"""
Fexc:
"""

# ╔═╡ 1be4dd36-81fe-44f6-b994-903d5e7688f8
begin
	# Define the segments
	t1 = 0:0.1:(τ-b)/2      # zero segment
	y1 = zeros(length(t1))
	
	t2 = (τ-b)/2:0.1:((τ-b)/2+b)      # positive segment
	y2 = ones(length(t2))
	
	t3 = ((τ-b)/2+b):0.1:(τ + (τ-b)/2)       # zero segment
	y3 = zeros(length(t3))
	
	t4 = (τ + (τ-b)/2):0.1: (τ + (τ-b)/2 + b)      # negative segment
	y4 = -ones(length(t4))
	
	t5 = (τ + (τ-b)/2 + b):0.1:((τ + (τ-b)/2 + b) + (τ-b)/2)      # zero segment
	y5 = zeros(length(t5))
end

# ╔═╡ 7d92c498-e293-44d7-8cd5-f88067a3fe6c
# Add vertical transition lines
    transition_points = [(τ-b)/2, ((τ-b)/2+b), (τ + (τ-b)/2), (τ + (τ-b)/2 + b)]

# ╔═╡ f75727f0-abe7-4780-8146-2539e96e2e95
transition_values = [[0,1500], [1500,0], [0,-1500], [-1500,0]]

# ╔═╡ dfffc693-53a4-4992-9786-9afa797454f6


# ╔═╡ cdb6695d-aa58-4e3f-9ddf-9068fd12dcfc


# ╔═╡ 1580b733-b8c7-4767-9cc4-74be8a034fd0
md"""
Fi:
"""

# ╔═╡ d668962f-67e9-488a-bd44-631b2565c4db
x1=0:0.1:τ ; x2= τ:0.1:2*τ

# ╔═╡ df424347-81f4-4261-aa6d-3daabb239879
RMI1 = (-2*Fi/τ) .* x1 .+ Fi

# ╔═╡ 5b9b93f7-7d06-4188-80f6-11a8de859d39
RMI2 = (2*Fi/τ) .* (x1 .- τ ) .+ Fi

# ╔═╡ 25b9a50c-efba-49c2-be38-8cdbbe61efa3
begin
	
	
	plot(t1,y1, lc=:blue, lw=2, label=:none, size=[800, 500], yaxis=[-2000, 2000], yticks = 9, xminorticks=10, yminorticks=4)
	ylabel!(L"\mathrm{FMM, } \mathcal{F} \mathrm{, (Acond)}")
	xlabel!(L"\mathrm{comprimento, (mm)}")
	plot!(t2,y2*1500, lc=:blue, lw=2, label=:none)
	plot!(t3,y3*1500, lc=:blue, lw=2, label=:none)
	plot!(t4,y4*1500, lc=:blue, lw=2, label=:none)
	plot!(t5,y5*1500, lc=:blue, lw=2, label=L"\mathcal{F}_{exc}", guidefontsize=14, tickfontsize=11,  legendfontsize=14)

	for (i, x_pos) in enumerate(transition_points)
        plot!([x_pos, x_pos], transition_values[i], 
              label=:none, linewidth=2, color=:blue)
    end


	plot!([(τ,1500), (2*τ, 1500)], arrow = arrow(:closed, 0.1, :both), color = :black; label=:none)
	annotate!(3*τ/2, 1600, text(L"\tau", :black, :center, 14))

	plot!([((τ-b)/2,1100), (((τ-b)/2+b), 1100)], arrow = arrow(:closed, 0.1, :both), color = :black; label=:none)
	annotate!((τ-b)/2 + b/2, 1200, text(L"b", :black, :center, 14))


	plot!([0, τ, 2*τ], seriestype = :vline, ls=:dash, lc=:black, lw=1.5, legend=:bottomleft, label=L"\mathrm{LNG}")
	
	#RMI
	plot!(x1, RMI1, lc=:red, lw=2, label=:none)
	plot!(x2, RMI2, lc=:red, lw=2, label=L"\mathcal{F}_{i}", guidefontsize=14)



	# total ideal
	#plot!(t2, )

end

# ╔═╡ 95ab1da2-d469-4326-a5a2-9144d8041e4d


# ╔═╡ 7ef1e38a-0ea1-41c0-912c-f8e9c9153424
md"""
## Maq Polos Aux.
"""

# ╔═╡ dc34e6f6-b002-4b66-ab33-a1b194d6e7a1
begin
	# Define the segments
	d1 = 0:0.1:dist_PA/2      
	yPA1 = -ones(length(d1))
	
	d2 = dist_PA/2:0.1:τ - dist_PA/2  
	yPA2 = zeros(length(d2))
	
	d3 = τ - dist_PA/2  :0.1:τ + dist_PA/2        
	yPA3 = ones(length(d3))
	
	d4 = τ + dist_PA/2 :0.1: 2*τ - dist_PA/2 
	yPA4 = zeros(length(d4))
	
	d5 = 2*τ - dist_PA/2 :0.1:2*τ
	yPA5 = -ones(length(d5))
end

# ╔═╡ e7465265-83b6-40ec-acd2-0d2008e81c64
# Add vertical transition lines
    transition_points_PA = [dist_PA/2, τ - dist_PA/2, τ + dist_PA/2, 2*τ - dist_PA/2]

# ╔═╡ 174e562f-4a94-4b11-a57c-12c19fdcfd9d
transition_values_PA = [[-Fipa,0], [0, Fipa], [Fipa,0], [0,-Fipa]]

# ╔═╡ 63195b8f-22d4-47be-8d7f-03f8d7364e81


# ╔═╡ bee6c6e0-f228-441b-a4b5-e11d854b7d5c


# ╔═╡ d9a0c125-1220-4510-85d7-e99148544735


# ╔═╡ b8c5593d-ca4f-4e96-a3a8-3d588d5337cc


# ╔═╡ 5ea69779-896a-48a8-9001-18c4cd5f3299
begin
	
	
	plot(t1,y1, lc=:blue, lw=2, label=:none, size=[800, 500], yaxis=[-2000, 2000], yticks = 9, xminorticks=10, yminorticks=4)
	ylabel!(L"\mathrm{FMM, } \mathcal{F} \mathrm{, (Acond)}")
	xlabel!(L"\mathrm{comprimento, (mm)}")
	plot!(t2,y2*1500, lc=:blue, lw=2, label=:none)
	plot!(t3,y3*1500, lc=:blue, lw=2, label=:none)
	plot!(t4,y4*1500, lc=:blue, lw=2, label=:none)
	plot!(t5,y5*1500, lc=:blue, lw=2, label=L"\mathcal{F}_{exc}", guidefontsize=14, tickfontsize=11,  legendfontsize=14)

	for (i, x_pos) in enumerate(transition_points)
        plot!([x_pos, x_pos], transition_values[i], 
              label=:none, linewidth=2, color=:blue)
    end


	plot!([0, τ, 2*τ], seriestype = :vline, ls=:dash, lc=:black, lw=1.5,  label=L"\mathrm{LNG}")
	
	#RMI
	plot!(x1, RMI1, lc=:red, lw=2, label=:none)
	plot!(x2, RMI2, lc=:red, lw=2, label=L"\mathcal{F}_{i}", guidefontsize=14)

	
	# maq PA
	
	for (i, x_pos) in enumerate(transition_points_PA)
        plot!([x_pos, x_pos], transition_values_PA[i], 
              label=:none, linewidth=2, color=:green)
    end

	plot!(d1,yPA1*Fipa, lc=:green, lw=2, label=:none, size=[800, 500], yaxis=[-2000, 2000])
	plot!(d2,yPA2*Fipa, lc=:green, lw=2, label=:none)
	plot!(d3,yPA3*Fipa, lc=:green, lw=2, label=:none)
	plot!(d4,yPA4*Fipa, lc=:green, lw=2, label=:none)
	plot!(d5,yPA5*Fipa, lc=:green, lw=2, label=L"\mathcal{F}_{PA}'", guidefontsize=14, tickfontsize=11,  legendfontsize=14, legend=:best)

end

# ╔═╡ f3dd508b-7b06-4393-b8f2-f9c7b2e626d1


# ╔═╡ b31a9387-b089-4e5c-afed-eeb2baf7a065
md"""
## Maq Enr. Comp
"""

# ╔═╡ 34f3bb56-8a87-4280-8396-a8169a7a3b26
h1=(τ-b)/2:0.1:(τ-b)/2+b ; h2= τ+(τ-b)/2:0.1:2*τ-(τ-b)/2

# ╔═╡ e8a088b1-9d53-4dbd-8268-58759dbf5cb3
yEC1 = (2*FecC/b) .* (h1 .- (τ-b)/2) .- FecC

# ╔═╡ 012975bd-b4b6-4eef-a8fa-4ed3b13acfa2
yEC2 = (-2*FecC/b) .* (h2 .- (τ+(τ-b)/2)) .+ FecC

# ╔═╡ 5e2f6ccf-6c41-4de3-9775-f186a1d995c3


# ╔═╡ 53457c51-c149-4f71-892b-0e5397b1e7d2
begin
	
	
	plot(t1,y1, lc=:blue, lw=2, label=:none, size=[800, 500], yaxis=[-2000, 2000], yticks = 9, xminorticks=10, yminorticks=4)
	ylabel!(L"\mathrm{FMM, } \mathcal{F} \mathrm{, (Acond)}")
	xlabel!(L"\mathrm{comprimento, (mm)}")
	plot!(t2,y2*1500, lc=:blue, lw=2, label=:none)
	plot!(t3,y3*1500, lc=:blue, lw=2, label=:none)
	plot!(t4,y4*1500, lc=:blue, lw=2, label=:none)
	plot!(t5,y5*1500, lc=:blue, lw=2, label=L"\mathcal{F}_{exc}", guidefontsize=14, tickfontsize=11,  legendfontsize=14)

	for (i, x_pos) in enumerate(transition_points)
        plot!([x_pos, x_pos], transition_values[i], 
              label=:none, linewidth=2, color=:blue)
    end


	plot!([0, τ, 2*τ], seriestype = :vline, ls=:dash, lc=:black, lw=1.5,  label=L"\mathrm{LNG}")
	
	#RMI
	plot!(x1, RMI1, lc=:red, lw=2, label=:none)
	plot!(x2, RMI2, lc=:red, lw=2, label=L"\mathcal{F}_{i}", guidefontsize=14)



	# maq EC
	plot!(h1, yEC1, lc=:purple, lw=2, label=:none)
	plot!(h2, yEC2, lc=:purple, lw=2, label=L"\mathcal{F}_{EC}'", guidefontsize=14, tickfontsize=11,  legendfontsize=14, legend=:topright)
	plot!([0, (τ-b)/2],[-FecC, -FecC], lc=:purple, lw=2, label=:none)
	plot!([τ-(τ-b)/2, τ+(τ-b)/2],[FecC, FecC], lc=:purple, lw=2, label=:none)
	plot!([2*τ-(τ-b)/2, 2*τ],[-FecC, -FecC], lc=:purple, lw=2, label=:none)

end

# ╔═╡ 4efb0248-e633-47bc-8c34-ff91a875a38f


# ╔═╡ 78b67d6e-2a19-4172-89b1-fafbf211a93a
md"""
## Maq. (enr. comp. + polos aux.)
"""

# ╔═╡ 8b8b413c-3d00-4dcb-9724-07a1c3dd5808
begin
	
	
	plot(t1,y1, lc=:blue, lw=2, label=:none, size=[800, 500], yaxis=[-2000, 2000], yticks = 9, xminorticks=10, yminorticks=4)
	ylabel!(L"\mathrm{FMM, } \mathcal{F} \mathrm{, (Acond)}")
	xlabel!(L"\mathrm{comprimento, (mm)}")
	plot!(t2,y2*1500, lc=:blue, lw=2, label=:none)
	plot!(t3,y3*1500, lc=:blue, lw=2, label=:none)
	plot!(t4,y4*1500, lc=:blue, lw=2, label=:none)
	plot!(t5,y5*1500, lc=:blue, lw=2, label=L"\mathcal{F}_{exc}", guidefontsize=14, tickfontsize=11,  legendfontsize=14)

	for (i, x_pos) in enumerate(transition_points)
        plot!([x_pos, x_pos], transition_values[i], 
              label=:none, linewidth=2, color=:blue)
    end


	plot!([0, τ, 2*τ], seriestype = :vline, ls=:dash, lc=:black, lw=1.5,  label=L"\mathrm{LNG}")
	
	#RMI
	plot!(x1, RMI1, lc=:red, lw=2, label=:none)
	plot!(x2, RMI2, lc=:red, lw=2, label=L"\mathcal{F}_{i}", guidefontsize=14)



	# maq EC + PA
	# - EC
	plot!(h1, yEC1, lc=:purple, lw=2, label=:none)
	plot!(h2, yEC2, lc=:purple, lw=2, label=L"\mathcal{F}_{EC}'", guidefontsize=14, tickfontsize=11,  legendfontsize=14, legend=:topright)
	plot!([0, (τ-b)/2],[-FecC, -FecC], lc=:purple, lw=2, label=:none)
	plot!([τ-(τ-b)/2, τ+(τ-b)/2],[FecC, FecC], lc=:purple, lw=2, label=:none)
	plot!([2*τ-(τ-b)/2, 2*τ],[-FecC, -FecC], lc=:purple, lw=2, label=:none)

	# - PA

	transition_values_maq_PA = [[-FpaC,0], [0, FpaC], [FpaC,0], [0,-FpaC]]
	for (i, x_pos) in enumerate(transition_points_PA)
        plot!([x_pos, x_pos], transition_values_maq_PA[i], 
              label=:none, linewidth=2, color=:green)
    end


	
	plot!(d1,yPA1*FpaC, lc=:green, lw=2, label=:none, size=[800, 500], yaxis=[-2000, 2000])
	plot!(d2,yPA2*FpaC, lc=:green, lw=2, label=:none)
	plot!(d3,yPA3*FpaC, lc=:green, lw=2, label=:none)
	plot!(d4,yPA4*FpaC, lc=:green, lw=2, label=:none)
	plot!(d5,yPA5*FpaC, lc=:green, lw=2, label=L"\mathcal{F}_{PA}'", guidefontsize=14, tickfontsize=11,  legendfontsize=14, legend=:topright)

end

# ╔═╡ 82213fd7-5059-484e-b4da-9b624e2aa4ae
md"""
# EXCIT.
"""

# ╔═╡ c4faa214-0da3-4358-bca1-60e11f34f7fe
# Carrega os dados ignorando as duas primeiras linhas (comentários)
data_exc = readdlm("excit_1A.txt", '\t', skipstart=2);

# ╔═╡ 1894f4a5-e672-4a2c-aea2-667ea93003e9
begin
	# Extrai as colunas
	length_mm = data_exc[:, 1]  # Coluna 0: Length, mm
	B_exc = data_exc[:, 2]  # Coluna 1: B.n, Tesla
end

# ╔═╡ 88bb0109-99de-40cf-99e4-05563af5c5a1


# ╔═╡ f6e1e01a-aa00-4778-a95b-525656242f47
md"""
# ROTOR
"""

# ╔═╡ a59d631a-68c2-4971-8278-e41bd42700f3
# Carrega os dados ignorando as duas primeiras linhas (comentários)
data_r = readdlm("rotor.txt", '\t', skipstart=2);

# ╔═╡ 75310486-34ad-4465-814a-10f693afa0d2
begin
	# Extrai as colunas
	length_r = data_r[:, 1]  # Coluna 0: Length, mm
	B_r = data_r[:, 2]  # Coluna 1: B.n, Tesla
end

# ╔═╡ e6811c7a-3ff4-4cbd-ac0e-bb772cae6c9c
md"""
---
"""

# ╔═╡ 3a2175a3-c1b6-4051-a2a1-0c6d533d0306
md"""
# EXC. + ROTOR
"""

# ╔═╡ c96d7229-49fc-4d7e-97ea-c0b19af0254d
# Carrega os dados ignorando as duas primeiras linhas (comentários)
data_exc_r = readdlm("excit_rotor.txt", '\t', skipstart=2);

# ╔═╡ 83037254-a746-4014-b2fc-3f94830e0672
begin
	# Extrai as colunas
	length_exc_r = data_exc_r[:, 1]  # Coluna 0: Length, mm
	B_exc_r = data_exc_r[:, 2]  # Coluna 1: B.n, Tesla
end

# ╔═╡ de14bbcb-7a28-4041-b02d-ace77d3a311a


# ╔═╡ 62d38302-eb4e-4f06-9ddb-7d148adcea5a
begin
	#excitação:
	plot(length_mm, B_exc, lw=2, size=[800, 550], yaxis=[-1.5, 1.5], label=L"B_{exc}", yticks = 9, xminorticks=10, yminorticks=4)
	ylabel!(L"B \mathrm{, (T)}")
	xlabel!(L"\mathrm{comprimento, (mm)}")
	plot!([0, τ, 2*τ], seriestype = :vline, ls=:dash, lc=:black, lw=1.5, legend=:bottomleft, label="LNG")

	#rotor:
	plot!(length_r, B_r, lw=2, lc=:red, label=L"B_{i} \mathrm{  (RMI)}")
	

	# EXC. + ROTOR
	plot!(length_exc_r, B_exc_r, lw=2, lc=:black, label=L"B_{res}", guidefontsize=14, tickfontsize=11,  legendfontsize=14)
	#plot!(length_r, B_exc + B_r)  

end

# ╔═╡ b7a9c2c6-e10d-4b0b-a056-216fc80f5ffd


# ╔═╡ c780317c-02a1-4ac4-8653-f3ad7b60efd0


# ╔═╡ 0ebf4c97-e43e-4db1-9f8e-2ef9b5599d87
md"""
---
"""

# ╔═╡ ea375e8d-1758-4d00-b472-a5f360836806
md"""
# Máquina só com polos aux
"""

# ╔═╡ 9c385574-6131-40d6-90ad-85184f5e7417
md"""
## polos
"""

# ╔═╡ 3e528ed6-5740-4156-9d30-f9519d149588
# Carrega os dados ignorando as duas primeiras linhas (comentários)
data_pa = readdlm("polos_aux.txt", '\t', skipstart=2);

# ╔═╡ efbc9bc8-0e53-4888-b48c-4475db6b58e5
begin
	# Extrai as colunas
	length_pa = data_pa[:, 1]  # Coluna 0: Length, mm
	B_pa = data_pa[:, 2]  # Coluna 1: B.n, Tesla
end

# ╔═╡ 1625806d-13cd-4221-ab3e-99731c12fd6d
md"""
## maq
"""

# ╔═╡ ea5a84a6-31e4-4126-af5c-529e45f6bf2c
# Carrega os dados ignorando as duas primeiras linhas (comentários)
data_maq_pa = readdlm("maq_pa.txt", '\t', skipstart=2);

# ╔═╡ 803331f0-29c0-4bc2-a288-5b4e08a197c8
begin
	# Extrai as colunas
	length_maq_pa = data_maq_pa[:, 1]  # Coluna 0: Length, mm
	B_maq_pa = data_maq_pa[:, 2]  # Coluna 1: B.n, Tesla
end

# ╔═╡ c8c7144a-d548-489e-a30d-31e31afca0e0


# ╔═╡ 1d34ded6-919c-425b-a18f-7b9619cd5d04
begin
	#excitação:
	plot(length_mm, B_exc, lw=2, size=[800, 550], yaxis=[-1.5, 1.5], label=L"B_{exc}", yticks = 9, xminorticks=10, yminorticks=4)
	ylabel!(L"B \mathrm{, (T)}")
	xlabel!(L"\mathrm{comprimento, (mm)}")
	plot!([0, τ, 2*τ], seriestype = :vline, ls=:dash, lc=:black, lw=1.5, legend=:topright, label="LNG")

	#rotor:
	plot!(length_r, B_r, lw=2, lc=:red, label=L"B_{i} \mathrm{  (RMI)}")
	

	# EXC. + ROTOR
	#plot!(length_exc_r, B_exc_r, lw=2, lc=:black, label="Bres")
	#plot!(length_r, B_exc + B_r)  

	# Polos Aux.
	plot!(length_pa, B_pa, lw=2, lc=:green, label=L"B_{PA}")
	#plot!(length_r, B_exc + B_r+ B_pa) 

	# maq_ polos_aux
	plot!(length_maq_pa, B_maq_pa, lw=2, lc=:black, label=L"B_{res}", guidefontsize=14, tickfontsize=11,  legendfontsize=14)
	

	
end

# ╔═╡ d9732fee-3151-4a59-865e-d4cab3052423


# ╔═╡ 43204f21-9ecf-4bb9-b59a-98bddbc6e6d7
md"""
---
"""

# ╔═╡ 0226afb8-d368-42ac-8bdd-18dc83ab79d7


# ╔═╡ 8825164c-3c18-40f2-99e7-b84186cf6a0d
md"""
# Compensação total RMI 
## Enr. Comp.
"""

# ╔═╡ ccf31be6-6465-483c-b0bf-a08c294fd235
# Carrega os dados ignorando as duas primeiras linhas (comentários)
data_enr_comp = readdlm("enr_comp.txt", '\t', skipstart=2);

# ╔═╡ e151ad85-679b-4db2-b5f0-c1dba970fa96
begin
	# Extrai as colunas
	length_enr_comp = data_enr_comp[:, 1]  # Coluna 0: Length, mm
	B_enr_comp = data_enr_comp[:, 2]  # Coluna 1: B.n, Tesla
end

# ╔═╡ 9e251670-c47b-48a5-b7bd-4050adb49b84


# ╔═╡ 08054794-1acb-45dc-ae59-7699d2415f5f
begin
	#excitação:
	plot(length_mm, B_exc, lw=2, size=[800, 550], yaxis=[-1, 1], label=L"B_{exc}", yticks = 9, xminorticks=10, yminorticks=4)
	ylabel!(L"B \mathrm{, (T)}")
	xlabel!(L"\mathrm{comprimento, (mm)}")
	plot!([0, τ, 2*τ], seriestype = :vline, ls=:dash, lc=:black, lw=1.5, legend=:topright, label="LNG")

	#rotor:
	plot!(length_r, B_r, lw=2, lc=:red, label=L"B_{i} \mathrm{  (RMI)}")
	

	# EXC. + ROTOR
	#plot!(length_exc_r, B_exc_r, lw=2, lc=:black, label="Bres")
	#plot!(length_r, B_exc + B_r)  

	# Enr. Comp
	plot!(length_enr_comp, B_enr_comp, lw=2, lc=:purple, label=L"B_{EC}", guidefontsize=14, tickfontsize=11,  legendfontsize=14)
	#plot!(length_r, B_exc + B_r+ B_enr_comp)

	# Maq (enr. comp. + polos aux.)
	#plot!(length_maq, B_maq, lw=3.5, lc=:cyan, label="Bᵣ")
end

# ╔═╡ f99590cd-ffbc-4d79-9e14-f83fafa5e785
md"""
## Polos aux
"""

# ╔═╡ 219a7e80-e928-4bae-808a-bf8945e20246
# Carrega os dados ignorando as duas primeiras linhas (comentários)
data_rmi_pa = readdlm("rmi_pa.txt", '\t', skipstart=2);

# ╔═╡ e231e638-154c-40e3-aa17-79570b495971
begin
	# Extrai as colunas
	length_rmi_pa = data_rmi_pa[:, 1]  # Coluna 0: Length, mm
	B_rmi_pa = data_rmi_pa[:, 2]  # Coluna 1: B.n, Tesla
end

# ╔═╡ a589dd74-a118-44b3-91ea-392befa8765e
begin
	#excitação:
	plot(length_mm, B_exc, lw=2, size=[800, 550], yaxis=[-1, 1], label=L"B_{exc}", yticks = 9, xminorticks=10, yminorticks=4)
	ylabel!(L"B \mathrm{, (T)}")
	xlabel!(L"\mathrm{comprimento, (mm)}")
	plot!([0, τ, 2*τ], seriestype = :vline, ls=:dash, lc=:black, lw=1.5, legend=:topright, label="LNG")

	#rotor:
	plot!(length_r, B_r, lw=2, lc=:red, label=L"B_{i} \mathrm{  (RMI)}")
	

	# EXC. + ROTOR
	#plot!(length_exc_r, B_exc_r, lw=2, lc=:black, label="Bres")
	#plot!(length_r, B_exc + B_r)  

	# Enr. Comp
	plot!(length_enr_comp, B_enr_comp, lw=2, lc=:purple, label=L"B_{EC}")
	#plot!(length_r, B_exc + B_r+ B_enr_comp)

	# Maq (enr. comp. = 0 + polos aux.)
	plot!(length_rmi_pa, B_rmi_pa, lw=2, lc=:green, label=L"B_{PA}", guidefontsize=14, tickfontsize=11,  legendfontsize=14)
end

# ╔═╡ ec45c674-5255-4cd8-9245-9578b79963af
md"""
## indução resultante
"""

# ╔═╡ 4c9abe1f-e234-412c-abc2-f5b68f577671


# ╔═╡ b4b9b46c-403c-4dd7-ac0e-ae5f9ce06201


# ╔═╡ 99f783f6-35ba-4882-96ae-041028686e9f


# ╔═╡ 1cb16354-b859-48c7-9d97-7fd2ab014b89
md"""
# Gráficos
"""

# ╔═╡ 540d4b1b-af9a-4e3d-9ebf-dec1902ddbf0
# Carrega os dados ignorando as duas primeiras linhas (comentários)
data_maq = readdlm("maq.txt", '\t', skipstart=2);

# ╔═╡ 785eb36f-bc7d-4f8d-b83c-5ae6b08dc753
begin
	# Extrai as colunas
	length_maq = data_maq[:, 1]  # Coluna 0: Length, mm
	B_maq = data_maq[:, 2]  # Coluna 1: B.n, Tesla
end

# ╔═╡ 2b306e10-4c1f-47ce-8a74-eb6696e38383
begin
	#excitação:
	plot(length_mm, B_exc, lw=2, size=[800, 550], yaxis=[-1, 1], label=L"B_{exc}", yticks = 9, xminorticks=10, yminorticks=4)
	ylabel!(L"B \mathrm{, (T)}")
	xlabel!(L"\mathrm{comprimento, (mm)}")
	plot!([0, τ, 2*τ], seriestype = :vline, ls=:dash, lc=:black, lw=1.5, legend=:topright, label="LNG")

	#rotor:
	plot!(length_r, B_r, lw=2, lc=:red, label=L"B_{i} \mathrm{  (RMI)}")
	

	# EXC. + ROTOR
	#plot!(length_exc_r, B_exc_r, lw=2, lc=:black, label="Bres")
	#plot!(length_r, B_exc + B_r)  

	# Enr. Comp
	plot!(length_enr_comp, B_enr_comp, lw=2, lc=:purple, label=L"B_{EC}")
	#plot!(length_r, B_exc + B_r+ B_enr_comp)

	# Maq (enr. comp. = 0 + polos aux.)
	plot!(length_rmi_pa, B_rmi_pa, lw=2, lc=:green, label=L"B_{PA}")

	
	# Maq, resultante
	plot!(length_maq, B_maq, lw=3.5, lc=:black, label=L"B_{res}", guidefontsize=14, tickfontsize=11,  legendfontsize=14)
end

# ╔═╡ 8030e00b-bda4-4387-80f5-fe975d822bf7


# ╔═╡ ba78dcec-2978-4508-ab1d-cffb6167cfee
begin
	#excitação:
	plot(length, B_exc, lw=2, size=[800, 550], ylabel= "B (T)", xlabel="comprimento (mm)", label="B")
	plot!([0, τ, 2*τ], seriestype = :vline, ls=:dash, lc=:black, lw=1.5, legend=:outerright, label="LNG")

	#rotor:
	plot!(length_r, B_r, lw=2, lc=:red, label="RMI")
	

	# EXC. + ROTOR
	plot!(length_exc_r, B_exc_r, lw=2, lc=:black, label="Bres")
	plot!(length_r, B_exc + B_r)  

	# Polos Aux.
	#plot!(length_pa, B_pa, lw=2, lc=:orange, label="Bₚₐ")
	#plot!(length_r, B_exc + B_r+ B_pa) 

	# maq_ polos_aux
	#plot!(length_maq_pa, B_maq_pa, lw=2, lc=:purple, label="Brₚₐ")
	

	# Enr. Comp
	#plot!(length_enr_comp, B_enr_comp, lw=2, lc=:orange, label="B_ec")
	#plot!(length_r, B_exc + B_r+ B_enr_comp)

	# Maq (enr. comp. + polos aux.)
	#plot!(length_maq, B_maq, lw=3.5, lc=:cyan, label="Bᵣ")
end

# ╔═╡ 0b18736d-d39d-4396-a53e-465dc57ee0b2


# ╔═╡ 125551dc-7e08-4d05-87b5-6655a26f241c


# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
DelimitedFiles = "8bb1440f-4735-579b-a4ab-409b98df4dab"
LaTeXStrings = "b964fa9f-0449-5b57-a5c2-d3ea65f4040f"
Plots = "91a5bcdd-55d7-5caf-9e0b-520d859cae80"
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
LaTeXStrings = "~1.4.0"
Plots = "~1.40.17"
PlutoUI = "~0.7.69"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.11.6"
manifest_format = "2.0"
project_hash = "4e59f325f31325b87a2b08b116cf63fbde9a200a"

[[deps.AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "6e1d2a35f2f90a4bc7c2ed98079b2ba09c35b83a"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.3.2"

[[deps.AliasTables]]
deps = ["PtrArrays", "Random"]
git-tree-sha1 = "9876e1e164b144ca45e9e3198d0b689cadfed9ff"
uuid = "66dad0bd-aa9a-41b7-9441-69ab47430ed8"
version = "1.1.3"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"
version = "1.1.2"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"
version = "1.11.0"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"
version = "1.11.0"

[[deps.BitFlags]]
git-tree-sha1 = "0691e34b3bb8be9307330f88d1a3c3f25466c24d"
uuid = "d1d4a3ce-64b1-5f1a-9ba4-7e7e69966f35"
version = "0.1.9"

[[deps.Bzip2_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "1b96ea4a01afe0ea4090c5c8039690672dd13f2e"
uuid = "6e34b625-4abd-537c-b88f-471c36dfa7a0"
version = "1.0.9+0"

[[deps.Cairo_jll]]
deps = ["Artifacts", "Bzip2_jll", "CompilerSupportLibraries_jll", "Fontconfig_jll", "FreeType2_jll", "Glib_jll", "JLLWrappers", "LZO_jll", "Libdl", "Pixman_jll", "Xorg_libXext_jll", "Xorg_libXrender_jll", "Zlib_jll", "libpng_jll"]
git-tree-sha1 = "fde3bf89aead2e723284a8ff9cdf5b551ed700e8"
uuid = "83423d85-b0ee-5818-9007-b63ccbeb887a"
version = "1.18.5+0"

[[deps.CodecZlib]]
deps = ["TranscodingStreams", "Zlib_jll"]
git-tree-sha1 = "962834c22b66e32aa10f7611c08c8ca4e20749a9"
uuid = "944b1d66-785c-5afd-91f1-9de20f533193"
version = "0.7.8"

[[deps.ColorSchemes]]
deps = ["ColorTypes", "ColorVectorSpace", "Colors", "FixedPointNumbers", "PrecompileTools", "Random"]
git-tree-sha1 = "a656525c8b46aa6a1c76891552ed5381bb32ae7b"
uuid = "35d6a980-a343-548e-a6ea-1d62b119f2f4"
version = "3.30.0"

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "67e11ee83a43eb71ddc950302c53bf33f0690dfe"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.12.1"
weakdeps = ["StyledStrings"]

    [deps.ColorTypes.extensions]
    StyledStringsExt = "StyledStrings"

[[deps.ColorVectorSpace]]
deps = ["ColorTypes", "FixedPointNumbers", "LinearAlgebra", "Requires", "Statistics", "TensorCore"]
git-tree-sha1 = "8b3b6f87ce8f65a2b4f857528fd8d70086cd72b1"
uuid = "c3611d14-8923-5661-9e6a-0046d554d3a4"
version = "0.11.0"

    [deps.ColorVectorSpace.extensions]
    SpecialFunctionsExt = "SpecialFunctions"

    [deps.ColorVectorSpace.weakdeps]
    SpecialFunctions = "276daf66-3868-5448-9aa4-cd146d93841b"

[[deps.Colors]]
deps = ["ColorTypes", "FixedPointNumbers", "Reexport"]
git-tree-sha1 = "37ea44092930b1811e666c3bc38065d7d87fcc74"
uuid = "5ae59095-9a9b-59fe-a467-6f913c188581"
version = "0.13.1"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "1.1.1+0"

[[deps.ConcurrentUtilities]]
deps = ["Serialization", "Sockets"]
git-tree-sha1 = "d9d26935a0bcffc87d2613ce14c527c99fc543fd"
uuid = "f0e56b4a-5159-44fe-b623-3e5288b988bb"
version = "2.5.0"

[[deps.Contour]]
git-tree-sha1 = "439e35b0b36e2e5881738abc8857bd92ad6ff9a8"
uuid = "d38c429a-6771-53c6-b99e-75d170b6e991"
version = "0.6.3"

[[deps.DataAPI]]
git-tree-sha1 = "abe83f3a2f1b857aac70ef8b269080af17764bbe"
uuid = "9a962f9c-6df0-11e9-0e5d-c546b8b5ee8a"
version = "1.16.0"

[[deps.DataStructures]]
deps = ["OrderedCollections"]
git-tree-sha1 = "76b3b7c3925d943edf158ddb7f693ba54eb297a5"
uuid = "864edb3b-99cc-5e75-8d2d-829cb0a9cfe8"
version = "0.19.0"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"
version = "1.11.0"

[[deps.Dbus_jll]]
deps = ["Artifacts", "Expat_jll", "JLLWrappers", "Libdl"]
git-tree-sha1 = "473e9afc9cf30814eb67ffa5f2db7df82c3ad9fd"
uuid = "ee1fde0b-3d02-5ea6-8484-8dfef6360eab"
version = "1.16.2+0"

[[deps.DelimitedFiles]]
deps = ["Mmap"]
git-tree-sha1 = "9e2f36d3c96a820c678f2f1f1782582fcf685bae"
uuid = "8bb1440f-4735-579b-a4ab-409b98df4dab"
version = "1.9.1"

[[deps.DocStringExtensions]]
git-tree-sha1 = "7442a5dfe1ebb773c29cc2962a8980f47221d76c"
uuid = "ffbed154-4ef7-542d-bbb7-c09d3a79fcae"
version = "0.9.5"

[[deps.Downloads]]
deps = ["ArgTools", "FileWatching", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"
version = "1.6.0"

[[deps.EpollShim_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "8a4be429317c42cfae6a7fc03c31bad1970c310d"
uuid = "2702e6a9-849d-5ed8-8c21-79e8b8f9ee43"
version = "0.0.20230411+1"

[[deps.ExceptionUnwrapping]]
deps = ["Test"]
git-tree-sha1 = "d36f682e590a83d63d1c7dbd287573764682d12a"
uuid = "460bff9d-24e4-43bc-9d9f-a8973cb893f4"
version = "0.1.11"

[[deps.Expat_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "d55dffd9ae73ff72f1c0482454dcf2ec6c6c4a63"
uuid = "2e619515-83b5-522b-bb60-26c02a35a201"
version = "2.6.5+0"

[[deps.FFMPEG]]
deps = ["FFMPEG_jll"]
git-tree-sha1 = "83dc665d0312b41367b7263e8a4d172eac1897f4"
uuid = "c87230d0-a227-11e9-1b43-d7ebe4e7570a"
version = "0.4.4"

[[deps.FFMPEG_jll]]
deps = ["Artifacts", "Bzip2_jll", "FreeType2_jll", "FriBidi_jll", "JLLWrappers", "LAME_jll", "Libdl", "Ogg_jll", "OpenSSL_jll", "Opus_jll", "PCRE2_jll", "Zlib_jll", "libaom_jll", "libass_jll", "libfdk_aac_jll", "libvorbis_jll", "x264_jll", "x265_jll"]
git-tree-sha1 = "3a948313e7a41eb1db7a1e733e6335f17b4ab3c4"
uuid = "b22a6f82-2f65-5046-a5b2-351ab43fb4e5"
version = "7.1.1+0"

[[deps.FileWatching]]
uuid = "7b1f6079-737a-58dc-b8bc-7a2ca5c1b5ee"
version = "1.11.0"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "05882d6995ae5c12bb5f36dd2ed3f61c98cbb172"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.5"

[[deps.Fontconfig_jll]]
deps = ["Artifacts", "Bzip2_jll", "Expat_jll", "FreeType2_jll", "JLLWrappers", "Libdl", "Libuuid_jll", "Zlib_jll"]
git-tree-sha1 = "301b5d5d731a0654825f1f2e906990f7141a106b"
uuid = "a3f928ae-7b40-5064-980b-68af3947d34b"
version = "2.16.0+0"

[[deps.Format]]
git-tree-sha1 = "9c68794ef81b08086aeb32eeaf33531668d5f5fc"
uuid = "1fa38f19-a742-5d3f-a2b9-30dd87b9d5f8"
version = "1.3.7"

[[deps.FreeType2_jll]]
deps = ["Artifacts", "Bzip2_jll", "JLLWrappers", "Libdl", "Zlib_jll"]
git-tree-sha1 = "2c5512e11c791d1baed2049c5652441b28fc6a31"
uuid = "d7e528f0-a631-5988-bf34-fe36492bcfd7"
version = "2.13.4+0"

[[deps.FriBidi_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "7a214fdac5ed5f59a22c2d9a885a16da1c74bbc7"
uuid = "559328eb-81f9-559d-9380-de523a88c83c"
version = "1.0.17+0"

[[deps.GLFW_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Libglvnd_jll", "Xorg_libXcursor_jll", "Xorg_libXi_jll", "Xorg_libXinerama_jll", "Xorg_libXrandr_jll", "libdecor_jll", "xkbcommon_jll"]
git-tree-sha1 = "fcb0584ff34e25155876418979d4c8971243bb89"
uuid = "0656b61e-2033-5cc2-a64a-77c0f6c09b89"
version = "3.4.0+2"

[[deps.GR]]
deps = ["Artifacts", "Base64", "DelimitedFiles", "Downloads", "GR_jll", "HTTP", "JSON", "Libdl", "LinearAlgebra", "Preferences", "Printf", "Qt6Wayland_jll", "Random", "Serialization", "Sockets", "TOML", "Tar", "Test", "p7zip_jll"]
git-tree-sha1 = "1828eb7275491981fa5f1752a5e126e8f26f8741"
uuid = "28b8d3ca-fb5f-59d9-8090-bfdbd6d07a71"
version = "0.73.17"

[[deps.GR_jll]]
deps = ["Artifacts", "Bzip2_jll", "Cairo_jll", "FFMPEG_jll", "Fontconfig_jll", "FreeType2_jll", "GLFW_jll", "JLLWrappers", "JpegTurbo_jll", "Libdl", "Libtiff_jll", "Pixman_jll", "Qt6Base_jll", "Zlib_jll", "libpng_jll"]
git-tree-sha1 = "27299071cc29e409488ada41ec7643e0ab19091f"
uuid = "d2c73de3-f751-5644-a686-071e5b155ba9"
version = "0.73.17+0"

[[deps.GettextRuntime_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "JLLWrappers", "Libdl", "Libiconv_jll"]
git-tree-sha1 = "45288942190db7c5f760f59c04495064eedf9340"
uuid = "b0724c58-0f36-5564-988d-3bb0596ebc4a"
version = "0.22.4+0"

[[deps.Glib_jll]]
deps = ["Artifacts", "GettextRuntime_jll", "JLLWrappers", "Libdl", "Libffi_jll", "Libiconv_jll", "Libmount_jll", "PCRE2_jll", "Zlib_jll"]
git-tree-sha1 = "35fbd0cefb04a516104b8e183ce0df11b70a3f1a"
uuid = "7746bdde-850d-59dc-9ae8-88ece973131d"
version = "2.84.3+0"

[[deps.Graphite2_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "8a6dbda1fd736d60cc477d99f2e7a042acfa46e8"
uuid = "3b182d85-2403-5c21-9c21-1e1f0cc25472"
version = "1.3.15+0"

[[deps.Grisu]]
git-tree-sha1 = "53bb909d1151e57e2484c3d1b53e19552b887fb2"
uuid = "42e2da0e-8278-4e71-bc24-59509adca0fe"
version = "1.0.2"

[[deps.HTTP]]
deps = ["Base64", "CodecZlib", "ConcurrentUtilities", "Dates", "ExceptionUnwrapping", "Logging", "LoggingExtras", "MbedTLS", "NetworkOptions", "OpenSSL", "PrecompileTools", "Random", "SimpleBufferStream", "Sockets", "URIs", "UUIDs"]
git-tree-sha1 = "ed5e9c58612c4e081aecdb6e1a479e18462e041e"
uuid = "cd3eb016-35fb-5094-929b-558a96fad6f3"
version = "1.10.17"

[[deps.HarfBuzz_jll]]
deps = ["Artifacts", "Cairo_jll", "Fontconfig_jll", "FreeType2_jll", "Glib_jll", "Graphite2_jll", "JLLWrappers", "Libdl", "Libffi_jll"]
git-tree-sha1 = "f923f9a774fcf3f5cb761bfa43aeadd689714813"
uuid = "2e76f6c2-a576-52d4-95c1-20adfe4de566"
version = "8.5.1+0"

[[deps.Hyperscript]]
deps = ["Test"]
git-tree-sha1 = "179267cfa5e712760cd43dcae385d7ea90cc25a4"
uuid = "47d2ed2b-36de-50cf-bf87-49c2cf4b8b91"
version = "0.0.5"

[[deps.HypertextLiteral]]
deps = ["Tricks"]
git-tree-sha1 = "7134810b1afce04bbc1045ca1985fbe81ce17653"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "0.9.5"

[[deps.IOCapture]]
deps = ["Logging", "Random"]
git-tree-sha1 = "b6d6bfdd7ce25b0f9b2f6b3dd56b2673a66c8770"
uuid = "b5f81e59-6552-4d32-b1f0-c071b021bf89"
version = "0.2.5"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"
version = "1.11.0"

[[deps.IrrationalConstants]]
git-tree-sha1 = "e2222959fbc6c19554dc15174c81bf7bf3aa691c"
uuid = "92d709cd-6900-40b7-9082-c6be49f344b6"
version = "0.2.4"

[[deps.JLFzf]]
deps = ["REPL", "Random", "fzf_jll"]
git-tree-sha1 = "82f7acdc599b65e0f8ccd270ffa1467c21cb647b"
uuid = "1019f520-868f-41f5-a6de-eb00f4b6a39c"
version = "0.1.11"

[[deps.JLLWrappers]]
deps = ["Artifacts", "Preferences"]
git-tree-sha1 = "0533e564aae234aff59ab625543145446d8b6ec2"
uuid = "692b3bcd-3c85-4b1f-b108-f13ce0eb3210"
version = "1.7.1"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "31e996f0a15c7b280ba9f76636b3ff9e2ae58c9a"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.4"

[[deps.JpegTurbo_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "eac1206917768cb54957c65a615460d87b455fc1"
uuid = "aacddb02-875f-59d6-b918-886e6ef4fbf8"
version = "3.1.1+0"

[[deps.LAME_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "059aabebaa7c82ccb853dd4a0ee9d17796f7e1bc"
uuid = "c1c5ebd0-6772-5130-a774-d5fcae4a789d"
version = "3.100.3+0"

[[deps.LERC_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "aaafe88dccbd957a8d82f7d05be9b69172e0cee3"
uuid = "88015f11-f218-50d7-93a8-a6af411a945d"
version = "4.0.1+0"

[[deps.LLVMOpenMP_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "eb62a3deb62fc6d8822c0c4bef73e4412419c5d8"
uuid = "1d63c593-3942-5779-bab2-d838dc0a180e"
version = "18.1.8+0"

[[deps.LZO_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "1c602b1127f4751facb671441ca72715cc95938a"
uuid = "dd4b983a-f0e5-5f8d-a1b7-129d4a5fb1ac"
version = "2.10.3+0"

[[deps.LaTeXStrings]]
git-tree-sha1 = "dda21b8cbd6a6c40d9d02a73230f9d70fed6918c"
uuid = "b964fa9f-0449-5b57-a5c2-d3ea65f4040f"
version = "1.4.0"

[[deps.Latexify]]
deps = ["Format", "InteractiveUtils", "LaTeXStrings", "MacroTools", "Markdown", "OrderedCollections", "Requires"]
git-tree-sha1 = "4f34eaabe49ecb3fb0d58d6015e32fd31a733199"
uuid = "23fbe1c1-3f47-55db-b15f-69d7ec21a316"
version = "0.16.8"

    [deps.Latexify.extensions]
    DataFramesExt = "DataFrames"
    SparseArraysExt = "SparseArrays"
    SymEngineExt = "SymEngine"
    TectonicExt = "tectonic_jll"

    [deps.Latexify.weakdeps]
    DataFrames = "a93c6f00-e57d-5684-b7b6-d8193f3e46c0"
    SparseArrays = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"
    SymEngine = "123dc426-2d89-5057-bbad-38513e3affd8"
    tectonic_jll = "d7dd28d6-a5e6-559c-9131-7eb760cdacc5"

[[deps.LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"
version = "0.6.4"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"
version = "8.6.0+0"

[[deps.LibGit2]]
deps = ["Base64", "LibGit2_jll", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"
version = "1.11.0"

[[deps.LibGit2_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll"]
uuid = "e37daf67-58a4-590a-8e99-b0245dd2ffc5"
version = "1.7.2+0"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"
version = "1.11.0+1"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"
version = "1.11.0"

[[deps.Libffi_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "c8da7e6a91781c41a863611c7e966098d783c57a"
uuid = "e9f186c6-92d2-5b65-8a66-fee21dc1b490"
version = "3.4.7+0"

[[deps.Libglvnd_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Xorg_libX11_jll", "Xorg_libXext_jll"]
git-tree-sha1 = "d36c21b9e7c172a44a10484125024495e2625ac0"
uuid = "7e76a0d4-f3c7-5321-8279-8d96eeed0f29"
version = "1.7.1+1"

[[deps.Libiconv_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "be484f5c92fad0bd8acfef35fe017900b0b73809"
uuid = "94ce4f54-9a6c-5748-9c1c-f9c7231a4531"
version = "1.18.0+0"

[[deps.Libmount_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "a31572773ac1b745e0343fe5e2c8ddda7a37e997"
uuid = "4b2f31a3-9ecc-558c-b454-b3730dcb73e9"
version = "2.41.0+0"

[[deps.Libtiff_jll]]
deps = ["Artifacts", "JLLWrappers", "JpegTurbo_jll", "LERC_jll", "Libdl", "XZ_jll", "Zlib_jll", "Zstd_jll"]
git-tree-sha1 = "4ab7581296671007fc33f07a721631b8855f4b1d"
uuid = "89763e89-9b03-5906-acba-b20f662cd828"
version = "4.7.1+0"

[[deps.Libuuid_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "321ccef73a96ba828cd51f2ab5b9f917fa73945a"
uuid = "38a345b3-de98-5d2b-a5d3-14cd9215e700"
version = "2.41.0+0"

[[deps.LinearAlgebra]]
deps = ["Libdl", "OpenBLAS_jll", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
version = "1.11.0"

[[deps.LogExpFunctions]]
deps = ["DocStringExtensions", "IrrationalConstants", "LinearAlgebra"]
git-tree-sha1 = "13ca9e2586b89836fd20cccf56e57e2b9ae7f38f"
uuid = "2ab3a3ac-af41-5b50-aa03-7779005ae688"
version = "0.3.29"

    [deps.LogExpFunctions.extensions]
    LogExpFunctionsChainRulesCoreExt = "ChainRulesCore"
    LogExpFunctionsChangesOfVariablesExt = "ChangesOfVariables"
    LogExpFunctionsInverseFunctionsExt = "InverseFunctions"

    [deps.LogExpFunctions.weakdeps]
    ChainRulesCore = "d360d2e6-b24c-11e9-a2a3-2a2ae2dbcce4"
    ChangesOfVariables = "9e997f8a-9a97-42d5-a9f1-ce6bfc15e2c0"
    InverseFunctions = "3587e190-3f89-42d0-90ee-14403ec27112"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"
version = "1.11.0"

[[deps.LoggingExtras]]
deps = ["Dates", "Logging"]
git-tree-sha1 = "f02b56007b064fbfddb4c9cd60161b6dd0f40df3"
uuid = "e6f89c97-d47a-5376-807f-9c37f3926c36"
version = "1.1.0"

[[deps.MIMEs]]
git-tree-sha1 = "c64d943587f7187e751162b3b84445bbbd79f691"
uuid = "6c6e2e6c-3030-632d-7369-2d6c69616d65"
version = "1.1.0"

[[deps.MacroTools]]
git-tree-sha1 = "1e0228a030642014fe5cfe68c2c0a818f9e3f522"
uuid = "1914dd2f-81c6-5fcd-8719-6d5c9610ff09"
version = "0.5.16"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"
version = "1.11.0"

[[deps.MbedTLS]]
deps = ["Dates", "MbedTLS_jll", "MozillaCACerts_jll", "NetworkOptions", "Random", "Sockets"]
git-tree-sha1 = "c067a280ddc25f196b5e7df3877c6b226d390aaf"
uuid = "739be429-bea8-5141-9913-cc70e7f3736d"
version = "1.1.9"

[[deps.MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"
version = "2.28.6+0"

[[deps.Measures]]
git-tree-sha1 = "c13304c81eec1ed3af7fc20e75fb6b26092a1102"
uuid = "442fdcdd-2543-5da2-b0f3-8c86c306513e"
version = "0.3.2"

[[deps.Missings]]
deps = ["DataAPI"]
git-tree-sha1 = "ec4f7fbeab05d7747bdf98eb74d130a2a2ed298d"
uuid = "e1d29d7a-bbdc-5cf2-9ac0-f12de2c33e28"
version = "1.2.0"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"
version = "1.11.0"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"
version = "2023.12.12"

[[deps.NaNMath]]
deps = ["OpenLibm_jll"]
git-tree-sha1 = "9b8215b1ee9e78a293f99797cd31375471b2bcae"
uuid = "77ba4419-2d1f-58cd-9bb1-8ffee604a2e3"
version = "1.1.3"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"
version = "1.2.0"

[[deps.Ogg_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "b6aa4566bb7ae78498a5e68943863fa8b5231b59"
uuid = "e7412a2a-1a6e-54c0-be00-318e2571c051"
version = "1.3.6+0"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.27+1"

[[deps.OpenLibm_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "05823500-19ac-5b8b-9628-191a04bc5112"
version = "0.8.5+0"

[[deps.OpenSSL]]
deps = ["BitFlags", "Dates", "MozillaCACerts_jll", "OpenSSL_jll", "Sockets"]
git-tree-sha1 = "f1a7e086c677df53e064e0fdd2c9d0b0833e3f6e"
uuid = "4d8831e6-92b7-49fb-bdf8-b643e874388c"
version = "1.5.0"

[[deps.OpenSSL_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "2ae7d4ddec2e13ad3bddf5c0796f7547cf682391"
uuid = "458c3c95-2e84-50aa-8efc-19380b2a3a95"
version = "3.5.2+0"

[[deps.Opus_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "c392fc5dd032381919e3b22dd32d6443760ce7ea"
uuid = "91d4177d-7536-5919-b921-800302f37372"
version = "1.5.2+0"

[[deps.OrderedCollections]]
git-tree-sha1 = "05868e21324cede2207c6f0f466b4bfef6d5e7ee"
uuid = "bac558e1-5e72-5ebc-8fee-abe8a469f55d"
version = "1.8.1"

[[deps.PCRE2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "efcefdf7-47ab-520b-bdef-62a2eaa19f15"
version = "10.42.0+1"

[[deps.Pango_jll]]
deps = ["Artifacts", "Cairo_jll", "Fontconfig_jll", "FreeType2_jll", "FriBidi_jll", "Glib_jll", "HarfBuzz_jll", "JLLWrappers", "Libdl"]
git-tree-sha1 = "275a9a6d85dc86c24d03d1837a0010226a96f540"
uuid = "36c8627f-9965-5494-a995-c6b170f724f3"
version = "1.56.3+0"

[[deps.Parsers]]
deps = ["Dates", "PrecompileTools", "UUIDs"]
git-tree-sha1 = "7d2f8f21da5db6a806faf7b9b292296da42b2810"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.8.3"

[[deps.Pixman_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "JLLWrappers", "LLVMOpenMP_jll", "Libdl"]
git-tree-sha1 = "db76b1ecd5e9715f3d043cec13b2ec93ce015d53"
uuid = "30392449-352a-5448-841d-b1acce4e97dc"
version = "0.44.2+0"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "FileWatching", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "Random", "SHA", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"
version = "1.11.0"
weakdeps = ["REPL"]

    [deps.Pkg.extensions]
    REPLExt = "REPL"

[[deps.PlotThemes]]
deps = ["PlotUtils", "Statistics"]
git-tree-sha1 = "41031ef3a1be6f5bbbf3e8073f210556daeae5ca"
uuid = "ccf2f8ad-2431-5c83-bf29-c5338b663b6a"
version = "3.3.0"

[[deps.PlotUtils]]
deps = ["ColorSchemes", "Colors", "Dates", "PrecompileTools", "Printf", "Random", "Reexport", "StableRNGs", "Statistics"]
git-tree-sha1 = "3ca9a356cd2e113c420f2c13bea19f8d3fb1cb18"
uuid = "995b91a9-d308-5afd-9ec6-746e21dbc043"
version = "1.4.3"

[[deps.Plots]]
deps = ["Base64", "Contour", "Dates", "Downloads", "FFMPEG", "FixedPointNumbers", "GR", "JLFzf", "JSON", "LaTeXStrings", "Latexify", "LinearAlgebra", "Measures", "NaNMath", "Pkg", "PlotThemes", "PlotUtils", "PrecompileTools", "Printf", "REPL", "Random", "RecipesBase", "RecipesPipeline", "Reexport", "RelocatableFolders", "Requires", "Scratch", "Showoff", "SparseArrays", "Statistics", "StatsBase", "TOML", "UUIDs", "UnicodeFun", "UnitfulLatexify", "Unzip"]
git-tree-sha1 = "3db9167c618b290a05d4345ca70de6d95304a32a"
uuid = "91a5bcdd-55d7-5caf-9e0b-520d859cae80"
version = "1.40.17"

    [deps.Plots.extensions]
    FileIOExt = "FileIO"
    GeometryBasicsExt = "GeometryBasics"
    IJuliaExt = "IJulia"
    ImageInTerminalExt = "ImageInTerminal"
    UnitfulExt = "Unitful"

    [deps.Plots.weakdeps]
    FileIO = "5789e2e9-d7fb-5bc7-8068-2c6fae9b9549"
    GeometryBasics = "5c1252a2-5f33-56bf-86c9-59e7332b4326"
    IJulia = "7073ff75-c697-5162-941a-fcdaad2a7d2a"
    ImageInTerminal = "d8c32880-2388-543b-8c61-d9f865259254"
    Unitful = "1986cc42-f94f-5a68-af5c-568840ba703d"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "Downloads", "FixedPointNumbers", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "MIMEs", "Markdown", "Random", "Reexport", "URIs", "UUIDs"]
git-tree-sha1 = "2d7662f95eafd3b6c346acdbfc11a762a2256375"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.69"

[[deps.PrecompileTools]]
deps = ["Preferences"]
git-tree-sha1 = "5aa36f7049a63a1528fe8f7c3f2113413ffd4e1f"
uuid = "aea7be01-6a6a-4083-8856-8a6e6704d82a"
version = "1.2.1"

[[deps.Preferences]]
deps = ["TOML"]
git-tree-sha1 = "0f27480397253da18fe2c12a4ba4eb9eb208bf3d"
uuid = "21216c6a-2e73-6563-6e65-726566657250"
version = "1.5.0"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"
version = "1.11.0"

[[deps.PtrArrays]]
git-tree-sha1 = "1d36ef11a9aaf1e8b74dacc6a731dd1de8fd493d"
uuid = "43287f4e-b6f4-7ad1-bb20-aadabca52c3d"
version = "1.3.0"

[[deps.Qt6Base_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Fontconfig_jll", "Glib_jll", "JLLWrappers", "Libdl", "Libglvnd_jll", "OpenSSL_jll", "Vulkan_Loader_jll", "Xorg_libSM_jll", "Xorg_libXext_jll", "Xorg_libXrender_jll", "Xorg_libxcb_jll", "Xorg_xcb_util_cursor_jll", "Xorg_xcb_util_image_jll", "Xorg_xcb_util_keysyms_jll", "Xorg_xcb_util_renderutil_jll", "Xorg_xcb_util_wm_jll", "Zlib_jll", "libinput_jll", "xkbcommon_jll"]
git-tree-sha1 = "eb38d376097f47316fe089fc62cb7c6d85383a52"
uuid = "c0090381-4147-56d7-9ebc-da0b1113ec56"
version = "6.8.2+1"

[[deps.Qt6Declarative_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Qt6Base_jll", "Qt6ShaderTools_jll"]
git-tree-sha1 = "da7adf145cce0d44e892626e647f9dcbe9cb3e10"
uuid = "629bc702-f1f5-5709-abd5-49b8460ea067"
version = "6.8.2+1"

[[deps.Qt6ShaderTools_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Qt6Base_jll"]
git-tree-sha1 = "9eca9fc3fe515d619ce004c83c31ffd3f85c7ccf"
uuid = "ce943373-25bb-56aa-8eca-768745ed7b5a"
version = "6.8.2+1"

[[deps.Qt6Wayland_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Qt6Base_jll", "Qt6Declarative_jll"]
git-tree-sha1 = "e1d5e16d0f65762396f9ca4644a5f4ddab8d452b"
uuid = "e99dba38-086e-5de3-a5b1-6e4c66e897c3"
version = "6.8.2+1"

[[deps.REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "StyledStrings", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"
version = "1.11.0"

[[deps.Random]]
deps = ["SHA"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"
version = "1.11.0"

[[deps.RecipesBase]]
deps = ["PrecompileTools"]
git-tree-sha1 = "5c3d09cc4f31f5fc6af001c250bf1278733100ff"
uuid = "3cdcf5f2-1ef4-517c-9805-6587b60abb01"
version = "1.3.4"

[[deps.RecipesPipeline]]
deps = ["Dates", "NaNMath", "PlotUtils", "PrecompileTools", "RecipesBase"]
git-tree-sha1 = "45cf9fd0ca5839d06ef333c8201714e888486342"
uuid = "01d81517-befc-4cb6-b9ec-a95719d0359c"
version = "0.6.12"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.RelocatableFolders]]
deps = ["SHA", "Scratch"]
git-tree-sha1 = "ffdaf70d81cf6ff22c2b6e733c900c3321cab864"
uuid = "05181044-ff0b-4ac5-8273-598c1e38db00"
version = "1.0.1"

[[deps.Requires]]
deps = ["UUIDs"]
git-tree-sha1 = "62389eeff14780bfe55195b7204c0d8738436d64"
uuid = "ae029012-a4dd-5104-9daa-d747884805df"
version = "1.3.1"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "0.7.0"

[[deps.Scratch]]
deps = ["Dates"]
git-tree-sha1 = "9b81b8393e50b7d4e6d0a9f14e192294d3b7c109"
uuid = "6c6a2e73-6563-6170-7368-637461726353"
version = "1.3.0"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"
version = "1.11.0"

[[deps.Showoff]]
deps = ["Dates", "Grisu"]
git-tree-sha1 = "91eddf657aca81df9ae6ceb20b959ae5653ad1de"
uuid = "992d4aef-0814-514b-bc4d-f2e9a6c4116f"
version = "1.0.3"

[[deps.SimpleBufferStream]]
git-tree-sha1 = "f305871d2f381d21527c770d4788c06c097c9bc1"
uuid = "777ac1f9-54b0-4bf8-805c-2214025038e7"
version = "1.2.0"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"
version = "1.11.0"

[[deps.SortingAlgorithms]]
deps = ["DataStructures"]
git-tree-sha1 = "64d974c2e6fdf07f8155b5b2ca2ffa9069b608d9"
uuid = "a2af1166-a08f-5f64-846c-94a0d3cef48c"
version = "1.2.2"

[[deps.SparseArrays]]
deps = ["Libdl", "LinearAlgebra", "Random", "Serialization", "SuiteSparse_jll"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"
version = "1.11.0"

[[deps.StableRNGs]]
deps = ["Random"]
git-tree-sha1 = "95af145932c2ed859b63329952ce8d633719f091"
uuid = "860ef19b-820b-49d6-a774-d7a799459cd3"
version = "1.0.3"

[[deps.Statistics]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "ae3bb1eb3bba077cd276bc5cfc337cc65c3075c0"
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"
version = "1.11.1"
weakdeps = ["SparseArrays"]

    [deps.Statistics.extensions]
    SparseArraysExt = ["SparseArrays"]

[[deps.StatsAPI]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "9d72a13a3f4dd3795a195ac5a44d7d6ff5f552ff"
uuid = "82ae8749-77ed-4fe6-ae5f-f523153014b0"
version = "1.7.1"

[[deps.StatsBase]]
deps = ["AliasTables", "DataAPI", "DataStructures", "LinearAlgebra", "LogExpFunctions", "Missings", "Printf", "Random", "SortingAlgorithms", "SparseArrays", "Statistics", "StatsAPI"]
git-tree-sha1 = "2c962245732371acd51700dbb268af311bddd719"
uuid = "2913bbd2-ae8a-5f71-8c99-4fb6c76f3a91"
version = "0.34.6"

[[deps.StyledStrings]]
uuid = "f489334b-da3d-4c2e-b8f0-e476e12c162b"
version = "1.11.0"

[[deps.SuiteSparse_jll]]
deps = ["Artifacts", "Libdl", "libblastrampoline_jll"]
uuid = "bea87d4a-7f5b-5778-9afe-8cc45184846c"
version = "7.7.0+0"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"
version = "1.0.3"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"
version = "1.10.0"

[[deps.TensorCore]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "1feb45f88d133a655e001435632f019a9a1bcdb6"
uuid = "62fd8b95-f654-4bbd-a8a5-9c27f68ccd50"
version = "0.1.1"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"
version = "1.11.0"

[[deps.TranscodingStreams]]
git-tree-sha1 = "0c45878dcfdcfa8480052b6ab162cdd138781742"
uuid = "3bb67fe8-82b1-5028-8e26-92a6c54297fa"
version = "0.11.3"

[[deps.Tricks]]
git-tree-sha1 = "372b90fe551c019541fafc6ff034199dc19c8436"
uuid = "410a4b4d-49e4-4fbc-ab6d-cb71b17b3775"
version = "0.1.12"

[[deps.URIs]]
git-tree-sha1 = "bef26fb046d031353ef97a82e3fdb6afe7f21b1a"
uuid = "5c2747f8-b7ea-4ff2-ba2e-563bfd36b1d4"
version = "1.6.1"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"
version = "1.11.0"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"
version = "1.11.0"

[[deps.UnicodeFun]]
deps = ["REPL"]
git-tree-sha1 = "53915e50200959667e78a92a418594b428dffddf"
uuid = "1cfade01-22cf-5700-b092-accc4b62d6e1"
version = "0.4.1"

[[deps.Unitful]]
deps = ["Dates", "LinearAlgebra", "Random"]
git-tree-sha1 = "6258d453843c466d84c17a58732dda5deeb8d3af"
uuid = "1986cc42-f94f-5a68-af5c-568840ba703d"
version = "1.24.0"

    [deps.Unitful.extensions]
    ConstructionBaseUnitfulExt = "ConstructionBase"
    ForwardDiffExt = "ForwardDiff"
    InverseFunctionsUnitfulExt = "InverseFunctions"
    PrintfExt = "Printf"

    [deps.Unitful.weakdeps]
    ConstructionBase = "187b0558-2788-49d3-abe0-74a17ed4e7c9"
    ForwardDiff = "f6369f11-7733-5829-9624-2563aa707210"
    InverseFunctions = "3587e190-3f89-42d0-90ee-14403ec27112"
    Printf = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.UnitfulLatexify]]
deps = ["LaTeXStrings", "Latexify", "Unitful"]
git-tree-sha1 = "af305cc62419f9bd61b6644d19170a4d258c7967"
uuid = "45397f5d-5981-4c77-b2b3-fc36d6e9b728"
version = "1.7.0"

[[deps.Unzip]]
git-tree-sha1 = "ca0969166a028236229f63514992fc073799bb78"
uuid = "41fe7b60-77ed-43a1-b4f0-825fd5a5650d"
version = "0.2.0"

[[deps.Vulkan_Loader_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Wayland_jll", "Xorg_libX11_jll", "Xorg_libXrandr_jll", "xkbcommon_jll"]
git-tree-sha1 = "2f0486047a07670caad3a81a075d2e518acc5c59"
uuid = "a44049a8-05dd-5a78-86c9-5fde0876e88c"
version = "1.3.243+0"

[[deps.Wayland_jll]]
deps = ["Artifacts", "EpollShim_jll", "Expat_jll", "JLLWrappers", "Libdl", "Libffi_jll"]
git-tree-sha1 = "96478df35bbc2f3e1e791bc7a3d0eeee559e60e9"
uuid = "a2964d1f-97da-50d4-b82a-358c7fce9d89"
version = "1.24.0+0"

[[deps.XZ_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "fee71455b0aaa3440dfdd54a9a36ccef829be7d4"
uuid = "ffd25f8a-64ca-5728-b0f7-c24cf3aae800"
version = "5.8.1+0"

[[deps.Xorg_libICE_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "a3ea76ee3f4facd7a64684f9af25310825ee3668"
uuid = "f67eecfb-183a-506d-b269-f58e52b52d7c"
version = "1.1.2+0"

[[deps.Xorg_libSM_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Xorg_libICE_jll"]
git-tree-sha1 = "9c7ad99c629a44f81e7799eb05ec2746abb5d588"
uuid = "c834827a-8449-5923-a945-d239c165b7dd"
version = "1.2.6+0"

[[deps.Xorg_libX11_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Xorg_libxcb_jll", "Xorg_xtrans_jll"]
git-tree-sha1 = "b5899b25d17bf1889d25906fb9deed5da0c15b3b"
uuid = "4f6342f7-b3d2-589e-9d20-edeb45f2b2bc"
version = "1.8.12+0"

[[deps.Xorg_libXau_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "aa1261ebbac3ccc8d16558ae6799524c450ed16b"
uuid = "0c0b7dd1-d40b-584c-a123-a41640f87eec"
version = "1.0.13+0"

[[deps.Xorg_libXcursor_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Xorg_libXfixes_jll", "Xorg_libXrender_jll"]
git-tree-sha1 = "6c74ca84bbabc18c4547014765d194ff0b4dc9da"
uuid = "935fb764-8cf2-53bf-bb30-45bb1f8bf724"
version = "1.2.4+0"

[[deps.Xorg_libXdmcp_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "52858d64353db33a56e13c341d7bf44cd0d7b309"
uuid = "a3789734-cfe1-5b06-b2d0-1dd0d9d62d05"
version = "1.1.6+0"

[[deps.Xorg_libXext_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Xorg_libX11_jll"]
git-tree-sha1 = "a4c0ee07ad36bf8bbce1c3bb52d21fb1e0b987fb"
uuid = "1082639a-0dae-5f34-9b06-72781eeb8cb3"
version = "1.3.7+0"

[[deps.Xorg_libXfixes_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Xorg_libX11_jll"]
git-tree-sha1 = "9caba99d38404b285db8801d5c45ef4f4f425a6d"
uuid = "d091e8ba-531a-589c-9de9-94069b037ed8"
version = "6.0.1+0"

[[deps.Xorg_libXi_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Xorg_libXext_jll", "Xorg_libXfixes_jll"]
git-tree-sha1 = "a376af5c7ae60d29825164db40787f15c80c7c54"
uuid = "a51aa0fd-4e3c-5386-b890-e753decda492"
version = "1.8.3+0"

[[deps.Xorg_libXinerama_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Xorg_libXext_jll"]
git-tree-sha1 = "a5bc75478d323358a90dc36766f3c99ba7feb024"
uuid = "d1454406-59df-5ea1-beac-c340f2130bc3"
version = "1.1.6+0"

[[deps.Xorg_libXrandr_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Xorg_libXext_jll", "Xorg_libXrender_jll"]
git-tree-sha1 = "aff463c82a773cb86061bce8d53a0d976854923e"
uuid = "ec84b674-ba8e-5d96-8ba1-2a689ba10484"
version = "1.5.5+0"

[[deps.Xorg_libXrender_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Xorg_libX11_jll"]
git-tree-sha1 = "7ed9347888fac59a618302ee38216dd0379c480d"
uuid = "ea2f1a96-1ddc-540d-b46f-429655e07cfa"
version = "0.9.12+0"

[[deps.Xorg_libxcb_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Xorg_libXau_jll", "Xorg_libXdmcp_jll"]
git-tree-sha1 = "bfcaf7ec088eaba362093393fe11aa141fa15422"
uuid = "c7cfdc94-dc32-55de-ac96-5a1b8d977c5b"
version = "1.17.1+0"

[[deps.Xorg_libxkbfile_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Xorg_libX11_jll"]
git-tree-sha1 = "e3150c7400c41e207012b41659591f083f3ef795"
uuid = "cc61e674-0454-545c-8b26-ed2c68acab7a"
version = "1.1.3+0"

[[deps.Xorg_xcb_util_cursor_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Xorg_xcb_util_image_jll", "Xorg_xcb_util_jll", "Xorg_xcb_util_renderutil_jll"]
git-tree-sha1 = "c5bf2dad6a03dfef57ea0a170a1fe493601603f2"
uuid = "e920d4aa-a673-5f3a-b3d7-f755a4d47c43"
version = "0.1.5+0"

[[deps.Xorg_xcb_util_image_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Xorg_xcb_util_jll"]
git-tree-sha1 = "f4fc02e384b74418679983a97385644b67e1263b"
uuid = "12413925-8142-5f55-bb0e-6d7ca50bb09b"
version = "0.4.1+0"

[[deps.Xorg_xcb_util_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Xorg_libxcb_jll"]
git-tree-sha1 = "68da27247e7d8d8dafd1fcf0c3654ad6506f5f97"
uuid = "2def613f-5ad1-5310-b15b-b15d46f528f5"
version = "0.4.1+0"

[[deps.Xorg_xcb_util_keysyms_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Xorg_xcb_util_jll"]
git-tree-sha1 = "44ec54b0e2acd408b0fb361e1e9244c60c9c3dd4"
uuid = "975044d2-76e6-5fbe-bf08-97ce7c6574c7"
version = "0.4.1+0"

[[deps.Xorg_xcb_util_renderutil_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Xorg_xcb_util_jll"]
git-tree-sha1 = "5b0263b6d080716a02544c55fdff2c8d7f9a16a0"
uuid = "0d47668e-0667-5a69-a72c-f761630bfb7e"
version = "0.3.10+0"

[[deps.Xorg_xcb_util_wm_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Xorg_xcb_util_jll"]
git-tree-sha1 = "f233c83cad1fa0e70b7771e0e21b061a116f2763"
uuid = "c22f9ab0-d5fe-5066-847c-f4bb1cd4e361"
version = "0.4.2+0"

[[deps.Xorg_xkbcomp_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Xorg_libxkbfile_jll"]
git-tree-sha1 = "801a858fc9fb90c11ffddee1801bb06a738bda9b"
uuid = "35661453-b289-5fab-8a00-3d9160c6a3a4"
version = "1.4.7+0"

[[deps.Xorg_xkeyboard_config_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Xorg_xkbcomp_jll"]
git-tree-sha1 = "00af7ebdc563c9217ecc67776d1bbf037dbcebf4"
uuid = "33bec58e-1273-512f-9401-5d533626f822"
version = "2.44.0+0"

[[deps.Xorg_xtrans_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "a63799ff68005991f9d9491b6e95bd3478d783cb"
uuid = "c5fb5394-a638-5e4d-96e5-b29de1b5cf10"
version = "1.6.0+0"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"
version = "1.2.13+1"

[[deps.Zstd_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "446b23e73536f84e8037f5dce465e92275f6a308"
uuid = "3161d3a3-bdf6-5164-811a-617609db77b4"
version = "1.5.7+1"

[[deps.eudev_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "c3b0e6196d50eab0c5ed34021aaa0bb463489510"
uuid = "35ca27e7-8b34-5b7f-bca9-bdc33f59eb06"
version = "3.2.14+0"

[[deps.fzf_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "b6a34e0e0960190ac2a4363a1bd003504772d631"
uuid = "214eeab7-80f7-51ab-84ad-2988db7cef09"
version = "0.61.1+0"

[[deps.libaom_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "4bba74fa59ab0755167ad24f98800fe5d727175b"
uuid = "a4ae2306-e953-59d6-aa16-d00cac43593b"
version = "3.12.1+0"

[[deps.libass_jll]]
deps = ["Artifacts", "Bzip2_jll", "FreeType2_jll", "FriBidi_jll", "HarfBuzz_jll", "JLLWrappers", "Libdl", "Zlib_jll"]
git-tree-sha1 = "125eedcb0a4a0bba65b657251ce1d27c8714e9d6"
uuid = "0ac62f75-1d6f-5e53-bd7c-93b484bb37c0"
version = "0.17.4+0"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.11.0+0"

[[deps.libdecor_jll]]
deps = ["Artifacts", "Dbus_jll", "JLLWrappers", "Libdl", "Libglvnd_jll", "Pango_jll", "Wayland_jll", "xkbcommon_jll"]
git-tree-sha1 = "9bf7903af251d2050b467f76bdbe57ce541f7f4f"
uuid = "1183f4f0-6f2a-5f1a-908b-139f9cdfea6f"
version = "0.2.2+0"

[[deps.libevdev_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "56d643b57b188d30cccc25e331d416d3d358e557"
uuid = "2db6ffa8-e38f-5e21-84af-90c45d0032cc"
version = "1.13.4+0"

[[deps.libfdk_aac_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "646634dd19587a56ee2f1199563ec056c5f228df"
uuid = "f638f0a6-7fb0-5443-88ba-1cc74229b280"
version = "2.0.4+0"

[[deps.libinput_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "eudev_jll", "libevdev_jll", "mtdev_jll"]
git-tree-sha1 = "91d05d7f4a9f67205bd6cf395e488009fe85b499"
uuid = "36db933b-70db-51c0-b978-0f229ee0e533"
version = "1.28.1+0"

[[deps.libpng_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Zlib_jll"]
git-tree-sha1 = "07b6a107d926093898e82b3b1db657ebe33134ec"
uuid = "b53b4c65-9356-5827-b1ea-8c7a1a84506f"
version = "1.6.50+0"

[[deps.libvorbis_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Ogg_jll"]
git-tree-sha1 = "11e1772e7f3cc987e9d3de991dd4f6b2602663a5"
uuid = "f27f6e37-5d2b-51aa-960f-b287f2bc3b7a"
version = "1.3.8+0"

[[deps.mtdev_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "b4d631fd51f2e9cdd93724ae25b2efc198b059b1"
uuid = "009596ad-96f7-51b1-9f1b-5ce2d5e8a71e"
version = "1.1.7+0"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"
version = "1.59.0+0"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
version = "17.4.0+2"

[[deps.x264_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "14cc7083fc6dff3cc44f2bc435ee96d06ed79aa7"
uuid = "1270edf5-f2f9-52d2-97e9-ab00b5d0237a"
version = "10164.0.1+0"

[[deps.x265_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "e7b67590c14d487e734dcb925924c5dc43ec85f3"
uuid = "dfaa095f-4041-5dcd-9319-2fabd8486b76"
version = "4.1.0+0"

[[deps.xkbcommon_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Xorg_libxcb_jll", "Xorg_xkeyboard_config_jll"]
git-tree-sha1 = "fbf139bce07a534df0e699dbb5f5cc9346f95cc1"
uuid = "d8fb68d0-12a3-5cfd-a85a-d49703b185fd"
version = "1.9.2+0"
"""

# ╔═╡ Cell order:
# ╠═4acaff02-924d-11f0-109a-79120900a3b3
# ╠═e85b67df-f5d1-49a0-9144-c4581d1799ca
# ╠═d7c686ca-946d-41fb-a3d2-5aa96b07f539
# ╠═70741658-9f8b-42d0-bb0e-88d9aa213a78
# ╠═d47dbe01-6dcd-4c3c-a1a3-166ea674c857
# ╟─b178e345-0235-4147-8e96-661f58c7ad73
# ╠═31707835-1794-4e97-ac2c-bd174d119be3
# ╟─54b92611-c299-4e26-8460-2d7165d52722
# ╠═47a54eae-ee7b-4e8b-b11d-e0bedebdf180
# ╠═de291522-0fb3-4bfa-9b6e-af93e8705f72
# ╠═a40ff378-d329-4ebd-b3a0-86bcb71952ad
# ╟─f8e53320-1298-4289-b18d-e60c554bdb4f
# ╠═68081023-65d3-4126-bd76-ebdc5b9257bd
# ╠═bc982658-fc0b-4cb8-900d-cccef2273535
# ╠═3336b8ed-482c-4dbb-a4db-95bb4cfdb0aa
# ╠═0e73bc01-f83e-4642-86d9-16f982f6885d
# ╟─9d7fbbaa-9021-4a6f-8359-4a8ae07e552b
# ╟─5b5893a1-4e82-4164-bb97-25d00fc3479c
# ╠═9fa1a905-880f-476d-b946-fcf0ffee06e6
# ╠═48c247de-eb4c-4095-9724-dec77270ec26
# ╟─f3fc25f9-7c46-485c-ab21-57f6a019c200
# ╟─2759c16c-be86-4207-a885-034d54cd56c2
# ╠═8e36c30e-8ed8-404b-ac0d-25b4422ee1f5
# ╠═e68e4359-2bd3-416b-b163-03246a71c9d9
# ╠═c51ca547-cdde-433d-88bf-1e08d55a0850
# ╟─2ffdc2c7-a1d4-4609-bd7f-72788d5610aa
# ╟─00237c29-1721-456b-908c-5e8ff7ee7198
# ╠═53cdd8a6-6b8a-4aea-9c15-d298d6919eaf
# ╠═f823c6a7-3c21-4e4e-87d3-597d086b4b36
# ╠═2127bdc8-77e8-424c-9a57-5dad614d6f0d
# ╟─45b597fe-7218-4820-9a61-83ef26c1da33
# ╠═7136b1f9-1126-4157-935e-9249e4083484
# ╟─d49569d8-0a10-46df-8e5e-b9e27d0d99d0
# ╟─96a4db9c-64fa-4c64-862a-e1d69157713c
# ╟─89f2db9f-04c5-4be8-a72a-42b574694058
# ╟─17641b27-91de-4a31-81bd-7a61a7d85494
# ╠═1be4dd36-81fe-44f6-b994-903d5e7688f8
# ╠═7d92c498-e293-44d7-8cd5-f88067a3fe6c
# ╠═f75727f0-abe7-4780-8146-2539e96e2e95
# ╠═dfffc693-53a4-4992-9786-9afa797454f6
# ╟─cdb6695d-aa58-4e3f-9ddf-9068fd12dcfc
# ╟─1580b733-b8c7-4767-9cc4-74be8a034fd0
# ╠═d668962f-67e9-488a-bd44-631b2565c4db
# ╠═df424347-81f4-4261-aa6d-3daabb239879
# ╠═5b9b93f7-7d06-4188-80f6-11a8de859d39
# ╠═25b9a50c-efba-49c2-be38-8cdbbe61efa3
# ╠═95ab1da2-d469-4326-a5a2-9144d8041e4d
# ╟─7ef1e38a-0ea1-41c0-912c-f8e9c9153424
# ╠═dc34e6f6-b002-4b66-ab33-a1b194d6e7a1
# ╠═e7465265-83b6-40ec-acd2-0d2008e81c64
# ╠═174e562f-4a94-4b11-a57c-12c19fdcfd9d
# ╠═63195b8f-22d4-47be-8d7f-03f8d7364e81
# ╠═bee6c6e0-f228-441b-a4b5-e11d854b7d5c
# ╠═d9a0c125-1220-4510-85d7-e99148544735
# ╠═b8c5593d-ca4f-4e96-a3a8-3d588d5337cc
# ╠═5ea69779-896a-48a8-9001-18c4cd5f3299
# ╠═f3dd508b-7b06-4393-b8f2-f9c7b2e626d1
# ╟─b31a9387-b089-4e5c-afed-eeb2baf7a065
# ╠═34f3bb56-8a87-4280-8396-a8169a7a3b26
# ╠═e8a088b1-9d53-4dbd-8268-58759dbf5cb3
# ╠═012975bd-b4b6-4eef-a8fa-4ed3b13acfa2
# ╠═5e2f6ccf-6c41-4de3-9775-f186a1d995c3
# ╠═53457c51-c149-4f71-892b-0e5397b1e7d2
# ╠═4efb0248-e633-47bc-8c34-ff91a875a38f
# ╟─78b67d6e-2a19-4172-89b1-fafbf211a93a
# ╠═8b8b413c-3d00-4dcb-9724-07a1c3dd5808
# ╟─82213fd7-5059-484e-b4da-9b624e2aa4ae
# ╠═c4faa214-0da3-4358-bca1-60e11f34f7fe
# ╠═1894f4a5-e672-4a2c-aea2-667ea93003e9
# ╠═88bb0109-99de-40cf-99e4-05563af5c5a1
# ╟─f6e1e01a-aa00-4778-a95b-525656242f47
# ╠═a59d631a-68c2-4971-8278-e41bd42700f3
# ╠═75310486-34ad-4465-814a-10f693afa0d2
# ╟─e6811c7a-3ff4-4cbd-ac0e-bb772cae6c9c
# ╟─3a2175a3-c1b6-4051-a2a1-0c6d533d0306
# ╠═c96d7229-49fc-4d7e-97ea-c0b19af0254d
# ╠═83037254-a746-4014-b2fc-3f94830e0672
# ╠═de14bbcb-7a28-4041-b02d-ace77d3a311a
# ╠═62d38302-eb4e-4f06-9ddb-7d148adcea5a
# ╠═b7a9c2c6-e10d-4b0b-a056-216fc80f5ffd
# ╠═c780317c-02a1-4ac4-8653-f3ad7b60efd0
# ╟─0ebf4c97-e43e-4db1-9f8e-2ef9b5599d87
# ╟─ea375e8d-1758-4d00-b472-a5f360836806
# ╟─9c385574-6131-40d6-90ad-85184f5e7417
# ╠═3e528ed6-5740-4156-9d30-f9519d149588
# ╠═efbc9bc8-0e53-4888-b48c-4475db6b58e5
# ╟─1625806d-13cd-4221-ab3e-99731c12fd6d
# ╠═ea5a84a6-31e4-4126-af5c-529e45f6bf2c
# ╠═803331f0-29c0-4bc2-a288-5b4e08a197c8
# ╠═c8c7144a-d548-489e-a30d-31e31afca0e0
# ╠═1d34ded6-919c-425b-a18f-7b9619cd5d04
# ╠═d9732fee-3151-4a59-865e-d4cab3052423
# ╟─43204f21-9ecf-4bb9-b59a-98bddbc6e6d7
# ╠═0226afb8-d368-42ac-8bdd-18dc83ab79d7
# ╟─8825164c-3c18-40f2-99e7-b84186cf6a0d
# ╠═ccf31be6-6465-483c-b0bf-a08c294fd235
# ╠═e151ad85-679b-4db2-b5f0-c1dba970fa96
# ╠═9e251670-c47b-48a5-b7bd-4050adb49b84
# ╠═08054794-1acb-45dc-ae59-7699d2415f5f
# ╟─f99590cd-ffbc-4d79-9e14-f83fafa5e785
# ╠═219a7e80-e928-4bae-808a-bf8945e20246
# ╠═e231e638-154c-40e3-aa17-79570b495971
# ╠═a589dd74-a118-44b3-91ea-392befa8765e
# ╠═ec45c674-5255-4cd8-9245-9578b79963af
# ╠═2b306e10-4c1f-47ce-8a74-eb6696e38383
# ╠═4c9abe1f-e234-412c-abc2-f5b68f577671
# ╠═b4b9b46c-403c-4dd7-ac0e-ae5f9ce06201
# ╠═99f783f6-35ba-4882-96ae-041028686e9f
# ╟─1cb16354-b859-48c7-9d97-7fd2ab014b89
# ╠═540d4b1b-af9a-4e3d-9ebf-dec1902ddbf0
# ╠═785eb36f-bc7d-4f8d-b83c-5ae6b08dc753
# ╠═8030e00b-bda4-4387-80f5-fe975d822bf7
# ╠═ba78dcec-2978-4508-ab1d-cffb6167cfee
# ╠═0b18736d-d39d-4396-a53e-465dc57ee0b2
# ╠═125551dc-7e08-4d05-87b5-6655a26f241c
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
