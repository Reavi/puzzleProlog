n_member(_,[]).  
n_member(X,[H|L]) :-  
    dif(X,H),  
    n_member(X,L).  
 

nizej(X, Y, L):-  
  append(_, [X|Tail], L),  
  append(_, [Y|_], Tail).  
      
wyzej(Lewy,Prawy,Blok) :-  
    nizej(Prawy,Lewy,Blok).  
  
  
%Rozwiazanie  
rozwiazanie() :-  
        Blok = [[_,0,_],[_,1,_],[_,2,_],[_,3,_],[_,4,_],[_,5,_],[_,6,_]],  
        n_member([robert,_,kot], Blok),         %1. Robert nie ma kota.  
        member([_,1,kot], Blok),                %2. Właściciel kota mieszka na piętrze 1.  
        wyzej([robert,_,_],[albert,_,_], Blok), %3. Robert mieszka wyżej niż Albert.  
        member([_,6,papuga], Blok),             %4. Właściciel papugi mieszka na piętrze 6.  
        member([_,0,chomik], Blok),             %5. Właściciel chomika mieszka na piętrze 0.  
        n_member([albert,_,kot], Blok),         %6. Albert nie ma kota.  
        nizej([franek,_,_],[robert,_,_], Blok), %7. Franek mieszka niżej niż Robert.  
        n_member([robert,_,pies], Blok),        %8. Robert nie ma psa.  
        member([_,2,pies], Blok),               %9. Właściciel psa mieszka na piętrze 2.  
        n_member([szymon,_,chomik], Blok),      %10. Szymon nie ma chomika.  
        n_member([franek,_,waz], Blok),         %11. Franek nie ma węża.  
        member([_,3,waz], Blok),                %12. Właściciel węża mieszka na piętrze 3.  
        nizej([franek,_,_],[jarek,_,_], Blok),  %13. Franek mieszka niżej niż Jarek.  
        member([_,5,kanarek], Blok),            %14. Właściciel kanarka mieszka na piętrze 5.  
        wyzej([stefan,_,_],[franek,_,_], Blok), %15. Stefan mieszka wyżej niż Franek.  
        member([_,4,rybka],Blok),               %16. Właściciel rybki mieszka na piętrze 4.  
        nizej([szymon,_,_],[robert,_,_], Blok), %17. Szymon mieszka niżej niż Robert.  
        nizej([franek,_,_],[szymon,_,_], Blok), %18. Franek mieszka niżej niż Szymon.  
        n_member([marcin,_,rybka], Blok),       %19. Marcin nie ma rybki.  
        wyzej([jarek,_,_],[szymon,_,_], Blok),  %20. Jarek mieszka wyżej niż Szymon.  
        n_member([franek,_,kanarek], Blok),     %21. Franek nie ma kanarka.  
        wyzej([szymon,_,_],[albert,_,_],Blok),  %22. Szymon mieszka wyżej niż Albert.  
        wyzej([albert,_,_],[franek,_,_],Blok),  %23. Albert mieszka wyżej niż Franek.  
        nizej([marcin,_,_],[stefan,_,_],Blok),  %24. Marcin mieszka niżej niż Stefan.  
        n_member([franek,_,chomik],Blok),       %25. Franek nie ma chomika.  
        n_member([albert,_,waz], Blok),         %26. Albert nie ma węża.  
        nizej([albert,_,_],[jarek,_,_],Blok),   %27. Albert mieszka niżej niż Jarek.  
        wyzej([albert,_,_],[marcin,_,_],Blok),  %28. Albert mieszka wyżej niż Marcin.  
        n_member([albert,_,kanarek], Blok),     %29. Albert nie ma kanarka.  
        n_member([robert,_,chomik], Blok),      %30. Robert nie ma chomika.  
        nizej([stefan,_,_],[szymon,_,_],Blok),  %31. Stefan mieszka niżej niż Szymon.  
        wyzej([szymon,_,_],[marcin,_,_],Blok),  %32. Szymon mieszka wyżej niż Marcin.  
        wyzej([stefan,_,_],[albert,_,_],Blok),  %33. Stefan mieszka wyżej niż Albert.  
        n_member([stefan,_,pies],Blok),         %34. Stefan nie ma psa.  
        wyzej([robert,_,_],[stefan,_,_],Blok),  %35. Robert mieszka wyżej niż Stefan.  
        n_member([albert,_,papuga],Blok),       %36. Albert nie ma papugi.  
        wyzej([jarek,_,_],[stefan,_,_],Blok),   %37. Jarek mieszka wyżej niż Stefan.  
        wyzej([jarek,_,_],[marcin,_,_],Blok),   %38. Jarek mieszka wyżej niż Marcin.  
        n_member([stefan,_,papuga],Blok),       %39. Stefan nie ma papugi.  
        nizej([robert,_,_],[jarek,_,_],Blok),   %40. Robert mieszka niżej niż Jarek.  
        n_member([stefan,_,kanarek],Blok),      %41. Stefan nie ma kanarka.  
        nizej([marcin,_,_],[robert,_,_],Blok),  %42. Marcin mieszka niżej niż Robert.  
        wyzej([franek,_,_],[marcin,_,_],Blok),  %43. Franek mieszka wyżej niż Marcin.  
        n_member([robert,_,papuga],Blok),       %44. Robert nie ma papugi.  
        n_member([jarek,_,kot],Blok),           %45. Jarek nie ma kota.  
        n_member([robert,_,rybka],Blok),        %46. Robert nie ma rybki.  
        n_member([marcin,_,kanarek],Blok),      %47. Marcin nie ma kanarka.  
        n_member([franek,_,rybka],Blok),        %48. Franek nie ma rybki.  
        n_member([stefan,_,chomik],Blok),       %49. Stefan nie ma chomika.  
        n_member([szymon,_,pies],Blok),         %50. Szymon nie ma psa.  
        n_member([franek,_,papuga],Blok),       %51. Franek nie ma papugi.  
        n_member([marcin,_,kot],Blok),          %52. Marcin nie ma kota.  
        n_member([stefan,_,kot],Blok),          %53. Stefan nie ma kota.  
        n_member([albert,_,rybka],Blok),        %54. Albert nie ma rybki.  
        n_member([szymon,_,kanarek],Blok),      %55. Szymon nie ma kanarka.  
        n_member([robert,_,waz],Blok),          %56. Robert nie ma węża.  
        n_member([szymon,_,waz],Blok),          %57. Szymon nie ma węża.  
        n_member([franek,_,pies],Blok),         %58. Franek nie ma psa.  
        n_member([marcin,_,papuga],Blok),       %59. Marcin nie ma papugi.  
        n_member([marcin,_,waz],Blok),          %60. Marcin nie ma węża.  
        n_member([stefan,_,rybka],Blok),        %61. Stefan nie ma rybki.  
        n_member([szymon,_,kot],Blok),          %62. Szymon nie ma kota.  
        n_member([albert,_,chomik],Blok),       %63. Albert nie ma chomika.  
        n_member([szymon,_,papuga],Blok),       %64. Szymon nie ma papugi.  
        member([Imie,Pietro,Zwierze],Blok),  
        write(Imie),  
        write(' '),  
        write(Pietro),  
        write(' '),  
        write(Zwierze),nl.  
    
    