# COURS PRATIQUE DE R

## plot()
L’utilisation de base est plot(x, y), où x et y sont 2 vecteurs de même longueur.
On construit alors un nuage de points dont le i-ème point est de coordonnées (x[i], y[i]).
Si un seul vecteur y est indiqué, on a un nuage de points dont le i-ème point est de coordonnées
(i, y[i]).

### Usage

plot(x, y, ...)

### Arguments
x	
the coordinates of points in the plot. Alternatively, a single plotting structure, function or any R object with a plot method can be provided.

y	
the y coordinates of points in the plot, optional if x is an appropriate structure.

...	
Arguments to be passed to methods, such as graphical parameters (see par). Many methods will accept the following arguments:

**type**
what type of plot should be drawn. Possible types are

**"p"** for points,

**"l"** for lines,

**"b"** for both (lines and points),

**"c"** for the lines part alone of "b",

**"o"** for both ‘overplotted’,

**"h"** for ‘histogram’ like (or ‘high-density’) vertical lines,

**"s"** for stair steps,

**"S"** for other steps, see ‘Details’ below,

**"n"** for no plotting.

All other types give a warning or an error; using, e.g., type = "punkte" being equivalent to type = "p" for S compatibility. Note that some methods, e.g. plot.factor, do not accept this.

**main**
an overall title for the plot: see title.

**sub**
a subtitle for the plot: see title.

**xlab**
a title for the x axis: see title.

**ylab**
a title for the y axis: see title.

**asp**
the y/xy/x aspect ratio, see plot.window.

```Pour voir toutes les options de la fonction **plot()**, il faut taper **?plot** ou help(plot)```

### Arguments

**x**, **y**	
les arguments x et y fournissent les coordonnées x et y du tracé. Toute façon raisonnable de définir les coordonnées est acceptable. Voir la fonction xy.coords pour plus de détails. S'ils sont fournis séparément, ils doivent être de la même longueur.

**type**	
Chaîne de 1 caractère donnant le type de tracé souhaité. Les valeurs suivantes sont possibles, pour plus de détails, voir plot: "p"pour les points, "l"pour les lignes, "b"pour les points et les lignes, "c"pour les points vides reliés par des lignes, "o"pour les points et lignes sur-représentés, "s"et "S"pour les marches d'escalier et "h"pour les lignes verticales de type histogramme. Enfin, "n"ne produit aucun point ou ligne.

**xlim**	
les x limites (x1, x2) du tracé. Notez que cela x1 > x2 est autorisé et conduit à un 'axe inversé'.

La valeur par défaut, NULL, indique que la plage des valeurs finies à tracer doit être utilisée.

**ylim**	
les limites y de la parcelle.

**log**	
une chaîne de caractères qui contient "x" si l'axe x doit être logarithmique, "y" si l'axe y doit être logarithmique et "xy"/ou "yx"si les deux axes doivent être logarithmiques.

**main**	
un titre principal pour le graphiaue, voir aussi title.

**sub**	
un sous-titre pour le graphiaue.

**xlab**	
une étiquette pour l'axe des x, par défaut une description de x.

**ylab**	
une étiquette pour l'axe y, par défaut une description de y.

**ann**	
une valeur logique indiquant si l'annotation par défaut (titre et libellés des axes x et y) doit apparaître sur le tracé.

**axes**	
une valeur logique indiquant si les deux axes doivent être dessinés sur le tracé. Utilisez le paramètre graphique "xaxt" ou "yaxt" pour supprimer un seul des axes.

**frame.plot**	
une logique indiquant si une boîte doit être dessinée autour du tracé.

**panel.first**
une 'expression' à évaluer après la mise en place des axes du tracé mais avant tout traçage. Cela peut être utile pour dessiner des grilles d'arrière-plan ou des lissages de nuage de points. Notez que cela fonctionne par évaluation paresseuse : passer cet argument à partir d'autres plotméthodes peut ne pas fonctionner car il peut être évalué trop tôt.

**panel.last**
une expression à évaluer après le traçage mais avant l'ajout des axes, du titre et de la boîte. Voir les commentaires sur panel.first.

**asp**	
le format d'image, voir .y/xy/xplot.window

**xgap.axis, ygap.axis**	
les facteurs d'écart d'axe, transmis pour les deux appels (quand est vrai, par défaut).x/yx/ygap.axisaxis()axes

...	
d'autres paramètres graphiques (voir paret section 'Détails' ci-dessous).

# Détails
Les paramètres graphiques couramment utilisés sont :

**col** (colour or color)
Les couleurs des lignes et des points. Plusieurs couleurs peuvent être spécifiées afin que chaque point puisse avoir sa propre couleur. S'il y a moins de couleurs que de points, elles sont recyclées de manière standard. Les lignes seront toutes tracées dans la première couleur spécifiée.

**bg** (background)
un vecteur de couleurs d'arrière-plan pour les symboles de tracé ouvert, voir points. Remarque : ce n'est pas le même paramètre que par("bg").

**pch** (points character)
un vecteur de caractères ou de symboles tracés : pointscf.

**cex**
un vecteur numérique indiquant la quantité de mise à l'échelle des caractères et des symboles de traçage par rapport à la valeur par défaut. Cela fonctionne comme un multiple de par("cex"). NULL et NA sont équivalents à 1.0. Notez que cela n'affecte pas l'annotation : voir ci-dessous.

**lty** (lines type)
un vecteur de types de lignes, voir par.

**cex.main**, **col.lab**, **font.sub**, etc.
paramètres pour le titre principal et le sous-titre et l'annotation d'axe, voir title et par.

**lwd** (lines width)
un vecteur d'épaisseurs de ligne, voir par.

Noter
La présence de panel.first et panel.last est une anomalie historique : les tracés par défaut n'ont pas de « panneaux », contrairement aux tracés pairs par exemple. Pour plus de contrôle, utilisez des fonctions de traçage de niveau inférieur : plot.default appelle tour à tour certains de plot.new, plot.window, plot.xy, axis, boxet title, et les tracés peuvent être construits en les appelant individuellement, ou en appelant plot(type = "n") et en ajoutant d'autres éléments.

Le plot générique a été déplacé du package graphique vers le package de base dans R 4.0.0. Il est actuellement réexporté depuis l' espace de noms Graphics pour permettre aux packages qui l'importent de continuer à fonctionner, mais cela peut changer dans les futures versions de R .


```R
plot() ==>
◦ si type = p, seul le nuage de point est construit (p est l’option par défaut),
◦ si type = n, seul l’encadrement est tracé,
◦ si type = l, les points sont reliés par une ligne,
◦ si type = h, des lignes verticales sont tracées,
◦ si type = o ou si type = b (both, Lines et Points) , les points sont marqués et reliés par une ligne.

# fonction de représentation graphique (traçage) des données Y en fonction de X (y=f(x))
plot(
    X, # les données X
    Y = NULL, # les données Y ou y peut egaler NULL
    type = "b", # mode d'afficage ou de traçage
    xlab = "numero", # nom de l'axe des abscisses X
    ylab = "numero", # nom de l'axe des ordonnées Y
    xlim= c(-10, 20), # graduation de l'axe des X
    ylim = c(30, 90) # graduation de l'axe des Y

)

# autre façon de faire

dt <- data.frame(z = x, w = y) ## extraction des données utiles

plot(
  w ~ z,  #  tracer w en fonction de z. Ce qui signifie w en ordonnées et z en abscisses
  data = dt, # le jeu de données (mixtes) appelé dataFrame
  type = "o", # type de tracé: points ("p"), lignes ("l"), les deux ("b" ou "o"), ...
  col = "blue", # couleur, tapez `colours()` pour la liste complète
  pch = 4, # type de symboles, un chiffre entre 0 et 25, tapez `?points`
  cex = 0.5, # taille des symboles
  lty = 3, # type de lignes, un chiffre entre 1 et 6
  lwd = 1.2, # taille de lignes
  xlim = c(-2.5, 2.5), # limites de l'axe des x
  ylim = c(-1.5, 1.5), # limites de l'axe des y)
  xlab = "La variable z", # titre pour l'axe des x
  ylab = "Le sinus  de z", # titre pour l'axe des y
  main = "La fonction sinus entre -pi et pi" # titre général pour le graphique. On peut utiliser "title" mais hors de la fonction plot()

) 


# fonction de représentation graphique (traçage) du nuage des données
plot( 
    poids, # les données
    type = "b", # mode d'afficage ou de traçage
    xlab = "numero", # nom de l'axe des abscisses X
    ylab = "numero", # nom de l'axe des ordonnées Y
    xlim= c(-10, 20), # graduation de l'axe des X
    ylim = c(30, 90) # graduation de l'axe des Y

)

# Titre et Légende d'un graphique
title("Proportions observées et ajustées") ## équivalent à "main" de plot
legend("topleft", c("obs","logit"),lwd=3,col=c("red","blue")) ## légende en haut et à gauche

voir l''aide pour les options en tapant "?legend"

# RAPPELS STATS

Définition

Une fonction est dite affine si elle est caractérisée par une formule de type f(x) = ax + b 
où:
- "a" est une constante réelle positive ou négative appelée **coefficient directeur**.
- "b"  est une constante réelle positive ou négative appelée **ordonnée à l''origine**. 
"b" doit être non nul sinon la formule devient f(x) = ax ce qui caractérise les fonctions linéaires.

```

# EXERCICES PRATIQUES

## Exercice 1

Soit l'ensemble de donnees constitue par ce qui suit :

Montants |	Chiffre d'affaire	| Charges totales
0		     |   0                |    500000 
580000	 |   580000	          |    580000
1000000	 |   1000000	        |    637931,03
2000000	 |   2000000	        |    775862,1
3000000	 |   3000000	        |    913793,1
4000000	 |   4000000	        |    1051724,14
5000000	 |   5000000	        |    1189655,18
6000000	 |   6000000	        |    1327586,21
7000000	 |   7000000	        |    1465517,24
7250000	 |   7250000	        |    1500000


### Correction exercice 1 METHODE 1

```R
## PREALABLE
## Créez un dossier nommé R dans votre distre C:// 
#
# Regler le répertoire de travail
getwd() ## voir le répertoire courant
setwd("C:/R/") ## regler le répertoire de travail à C:/R/. Cela permet de ne plus indiquer là où cela devrait.
# Importer les donnees
rm(list=ls(all=TRUE)) # effacer toutes les données
## mydata <- read.csv("C:/R/staCA.csv", header=TRUE, sep=",") # importation si setwd() absent
mydata <- read.csv("staCA.csv", header=TRUE, sep=",") # importation si setwd() présent
# Voir les noms des colonnes
names(mydata)
# Définir les variables utiles
y <- mydata$Charges.totales
x <- mydata$Chiffre.d.affaire
m <- mydata$Montant
fx = function(x){x} ## la fonction affine f(x)=x ou équation de droite  (E): y=x
# Tracer le nuage des points X et Y
plot(
x, ## abscisses
y, ## ordonnées
type="l",
col="red",
lwd="2",
xlab="Chiffres d'affaire (CA)", 
ylab="Charges totales (CT)", 
main="Représentation du seuil de rentabilité" ## équivaut à "title" mais en dehors de la fonction plot()
)

# Tracer  par superposition, la courbe ou droite représentative de y=x ou y=f(x)=x
curve(fx,0,5000000,col="blue",pch=4, add=TRUE) ## add=TRUE est important pour superposer les graphiques

# Ajouter une légende au graphique
## x et y indiquent les coordonnées à utiliser pour positionner la légende
## legend: texte de la légende
## fill: couleur de remplissage des carrés à côté de la légende
## col: couleurs des traits ou points qui apparaissent dans la légende
## bg : couleur de fond de la légende
## La position de la légende peut être spécifiée en utilisant les mots clés suivants:
## “bottomright”, “bottom”, “bottomleft”, “left”, “topleft”, “top”, “topright”, “right” et “center”.
legend("topleft",legend=c("CT~CA", "y=x"), title="Légende",  col=c("red", "blue"), lty=1)

# La droite d'équation y = ax + b est appelée droite de régression de Y en X , 
# qui peut s'obtenir par la méthode des moindres carrés où 'a' est le coefficient ou la pente 
# (slope en Anglais) et 'b' l'intersect ou l'ordonnée
# -------------------------------------------------------------
## Réalisation de la régression linéaire simple
# Pour déterminer la droite de régression, on ajuste un modèle linéaire simple aux données, 
# à l’aide de la fonction “lm”
equation <- lm(y~x) ## on peut ecrire aussi equation <- glm(y~x, family="binomial")
coefficientsEquation <- equation$coefficients ## ou bien taper directement ==>>  summary(equation)$coefficients

# pente ou coefficient
penteA <- equation$coefficients[2] # [2] correspond  à la pente
ordB <- equation$coefficients[1] # [1] correspond  à l'ordonnée à l'origine
a<-penteA ## facultatif
b<- ordB ## facultatif

# Afficher l'équation de la droite de régression de y en x via la concaténation de Strings
## using paste inside print()
### print(paste(penteA, "x + ",paste(ordB)))
## using paste0 inside print()
### print(paste0(penteA, "x + ",paste0(ordB)))
## using sprintf (string print)
sprintf("L'équation de la droite de régression de Y en X est :\n") ## de preference
sprintf("y = %fx + %f", penteA,ordB) ## de preference
## using cat
###cat(penteA, "x+",ordB) ## tres facile

# Determiner le point de croisement (intersection) des deux droites 
## pour trouver X, il suffit de resoudre l'equation : (E) y1=y2
## avec y1 = x et y2 = penteA*x+ordB = 0.137931 x+ 5e+05
## Finalement (E): y1=y2 <==> x = 0.137931 x+ 5e+05 ==> (1-0.137931)x + 5e+05
##
## la forme finale de notre equation est : "penteA %*% x - x = -ordB" soit (penteA-1)*x = -ordB
## x0 <- solve((penteA-1),-ordB) ## solve(a,b) permet de resoudre les equations du type "ax = b"
## ou encore
x0 <- solve((1-penteA),ordB) ## solve(a,b) permet de resoudre les equations du type "ax = b"
## On deduit de l''une des equations y1 et y2, la valeur de Y pour X=x0
## D''apres y2 ===> y=x donc Y =x0
y0 <- x0

## Affichons sur le graphique le seuil de rentabilité (SR) qui est le point de coordonnées (x0,y0)
points(x0,y0,col = "black", pch = 16, cex = 1.5)
text(x0, y0, labels="SR", pos=2) ## ajouter une étiquette sur le point appelée (SR) en position 2
#### pos indique : 1 --> BAS, 2 --> GAUCHE, 3 --> HAUT, 4 --> DROITE par rapport  à l'étiquette

################### SAUVEGARDE DU GRAPHIQUE EN TANT QU'IMAGE PNG  ####################################
#------------------------------------------------------------------------------------------------------
## Exportons (sauvegardons) le resultat final dans un dossier de notre ordinateur
### png("C:/R/seuilSTA.png") ## lancer l'exportation au format PNG image si setwd() absent
png("seuil_de_rentabilité_STA.png") ##... si setwd() présent
### tracé 1
plot(x,
y,
type="l",
col="red",
lwd=2,
xlab="Chiffres d'affaire (CA)", 
ylab="Charges totales (CT)", 
main="Représentation du seuil de rentabilité"
)
# Légende du tracé 1
legend("topleft",legend=c("CT~CA","y=x"), title="Légende",  col=c("red", "blue"), lty=1)
### Tracé 2
curve(fx,0,5000000,col="blue", lwd=2, pch=4, add=TRUE) ## add=TRUE est important pour superposer les graphiques
### Tracé 3
points(x0,y0,col = "black", pch = 16, cex = 1.5)
text(x0, y0, labels="SR", pos=2) ## ajouter une étiquette sur le point appelée (SR) en position 2

dev.off() ## arrêter l'exportation
#------------------------------------------------------------------------------------------------------
#######################################################################################################

```

## Correction exercice 1 METHODE 2

```R
## PREALABLE
## Créez un dossier nommé R dans votre distre C:// 
#
# Regler le répertoire de travail
getwd() ## voir le répertoire courant
setwd("C:/R/") ## regler le répertoire de travail à C:/R/. Cela permet de ne plus indiquer là où cela devrait.
# Importer les donnees
rm(list=ls(all=TRUE)) # effacer toutes les données
## mydata <- read.csv("C:/R/staCA.csv", header=TRUE, sep=",") # importation si setwd() absent
mydata <- read.csv("staCA.csv", header=TRUE, sep=",") # importation si setwd() présent
# Voir les noms des colonnes
names(mydata)
# Définir les variables utiles
y <- mydata$Charges.totales
x <- mydata$Chiffre.d.affaire
m <- mydata$Montant
fx = function(x){x} ## la fonction affine f(x)=x ou équation de droite  (E): y=x
## Réalisation de la régression linéaire simple
# Pour déterminer la droite de régression, on ajuste un modèle linéaire simple aux données, 
# à l’aide de la fonction “lm”
equation <- lm(y~x) ## on peut ecrire aussi equation <- glm(y~x, family="binomial")
coefficientsEquation <- equation$coefficients ## ou bien taper directement ==>>  summary(equation)$coefficients

# pente ou coefficient
penteA <- equation$coefficients[2] # [2] correspond  à la pente (Slope en Anglais)
ordB <- equation$coefficients[1] # [1] correspond  à l'ordonnée à l'origine (Intersect en Anglais)
a<-penteA ## facultatif
b<- ordB ## facultatif
# Déterminer SR(x0,y0) tel que y1=y2
x0 <- solve((1-penteA),ordB) ## solve(a,b) permet de resoudre les equations du type "ax = b"
y0 <- x0
# Tracer le nuage des points X et Y
library(ggplot2) ## importer la libairie (facilitatrice) de tracé
ggplot(data = data.frame(x = x, y = y), aes(x, y)) +
  geom_point() +
  geom_abline(intercept = ordB, slope = penteA) + ## y1 = penteA*x+ordoB
  geom_abline(intercept = 0, slope = 1) + ## y2 = x soit y2 = 1*x+0
  geom_segment(x = x0, xend = x0, y = -Inf, yend = y0, linetype = 2, colour = "red") +
  geom_segment(x = -Inf, xend = x0, y = y0, yend = y0, linetype = 2, colour = "red") +
  geom_label(x = x0, y = y0, label = "SR", size = 3, colour = "green")


```














# RAPPELS R : Resoudre les equations et systemes d'equation dans/avec R

Example 1: Basic Application of solve() Function in R
In this Example, I’ll illustrate how to apply the solve function to a single equation in R.

Let’s assume we want to solve the equation: 3x = 12. Then we can use the following R code:
```R
solve(3, 12)                     # Applying solve

```
# 4
The RStudio console returns the value 4, i.e. x = 4.

 

Example 2: Applying solve Function to Complex System of Equations
The solve command can also be used to solve complex systems of equations. Let’s assume that our system of equations looks as follows:

```
5x + y = 15
10x + 3y = 9
```
Then we can specify these equations in a right-hand side matrix…
```R
mat_a1 <- matrix(c(5, 10,        # Creating left-hand side matrix
                   1, 3),
                 nrow = 2)
mat_a1                           # Print matrix
#      [,1] [,2]
# [1,]    5    1
# [2,]   10    3
…and a left-hand side matrix:

mat_b1 <- matrix(c(15,           # Creating right-hand side matrix
                   9),
                 nrow = 2)
mat_b1                           # Print matrix
#      [,1]
# [1,]   15
# [2,]    9
Afterwards, we can apply the solve function to these matrices:

solve(mat_a1, mat_b1)            # Applying solve to matrices
#       [,1]
# [1,]   7.2
# [2,] -21.0
```
The previous output of the RStudio console shows our result: x = 7.2; y = -21.

 

Example 3: Using Identity Matrix as Right-hand Side of Linear System
The solve function sets the right-hand side matrix to the identity matrix, in case this matrix is not explicitly specified. In other words, the solve function is computing the inverse of a matrix, if no right-hand side matrix is specified.

Let’s do this in practice: First, we have to create another example matrix in R:
```R
set.seed(96743)                  # Creating complex matrix
mat_a2 <- matrix(rnorm(25),
                 nrow = 5)
mat_a2                           # Print matrix
#              [,1]       [,2]       [,3]       [,4]        [,5]
# [1,]  1.063239047 -1.4326992 -0.9790201 -0.4636753  1.37990358
# [2,]  0.254985749  0.4016807  1.1733589 -0.7508775  2.33918171
# [3,] -0.338361009 -0.1833490 -0.5049254  0.7144516 -1.86724624
# [4,] -0.009719763  0.2847016  0.8611929  0.7430495  0.01254588
# [5,]  0.380698865  0.8433700  1.5883904 -1.7543261 -0.29077861
Now, we can solve this matrix (i.e. computing the inverse) by using the solve function as follows:

solve(mat_a2)                    # Applying solve to single matrix
#             [,1]       [,2]       [,3]        [,4]       [,5]
# [1,]  0.15755772 -4.1085093 -5.0897583  1.93645828  0.4642408
# [2,] -0.84696305 -3.9617415 -5.5935527  1.01982458  0.0735072
# [3,]  0.33461449  2.0787370  2.8230927  0.02703553  0.1829891
# [4,] -0.06024530 -0.9485616 -1.1905739  0.95065045 -0.2303102
# [5,] -0.05892059  0.2084526 -0.2829356 -0.09461151 -0.2289467
```
The previous output shows the inverse of our input matrix.
