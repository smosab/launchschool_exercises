
PIONEERS = %s(Nqn Ybirynpr
Tenpr Ubccre
Nqryr Tbyqfgvar
Nyna Ghevat
Puneyrf Onoontr
Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv
Wbua Ngnanfbss
Ybvf Unyog
Pynhqr Funaaba
Fgrir Wbof
Ovyy Tngrf
Gvz Orearef-Yrr
Fgrir Jbmavnx
Xbaenq Mhfr
Wbua Ngnanfbss
Fve Nagbal Ubner
Zneiva Zvafxl
Lhxvuveb Zngfhzbgb
Unllvz Fybavzfxv
Tregehqr Oynapu).to_s.split("\n").map {|p| p.split ""}


def key(char)
  13.times do |n|
    char = char.next[0] unless char == " "
  end
  char
end

def decode
  PIONEERS.map { |p| p.map {|c| key(c)} }.each {|p| puts p.join}
end

decode