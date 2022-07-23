## Load libraries
library(kableExtra)
library(knitr)
library(magick)
library(webshot)

## Table 1. Data Types
data_types <- data.frame(
  "expression" = c(
    "42",
    "42 + 91 / 3.0",
    "42 / 5 + 2.0",
    "True",
    "42 < 45",
    "not 42 < 91",
    '"May the force be with you."',
    "float(3) < 9"
  ),
  "resultant value" = c(
    "42",
    "72.33333",
    "10.4",
    "True",
    "True",
    "False",
    '"May the force be with you."',
    "True"
  ),
  "data type" = c(
    "integer",
    "float",
    "float",
    "boolean",
    "boolean",
    "boolean",
    'string',
    "boolean"
  )
)

kable(data_types, col.names = c(
  "Expression", "Resultant Value", "Data Type")) %>%
  kable_styling(full_width = F, font_size = 12, 
                html_font = "Roboto Condensed", 
                bootstrap_options = c("striped", "hover")) %>%
  save_kable(file = "assets/static/data_type.html")

webshot::webshot("assets/static/data_type.html", 
                 file= "assets/static/data_type.png", 
                 vwidth = 400, vheight = 100, zoom = 12, 
                 expand = 20)





## Table 2. List to Range Function
list_to_range <- data.frame(
  "List" = c("[0, 1, 2, 3]",
             "[-4, -3, -2, -1, 0]",
             "[25, 20, 15, 10, 5]"),
  "Range Call" = c(
    "list(range(0, 4, 1))",
    "list(range(-4, 1, 1))",
    "list(range(25, 0, -5))"
  )
)

list_to_range <- kable(list_to_range, col.names = c("List", "Range"), escape = T) %>%
  kable_styling(full_width = F, font_size = 12, 
                html_font = "Roboto Condensed", 
                bootstrap_options = c("striped", "hover")) %>%
  column_spec(c(1:2), width = "7cm") %>%
  column_spec(1, extra_css = c("opacity: 0.65;")) %>%
  row_spec(0, extra_css = c("text-transform: uppercase; font-weight: 600;
                            font-family: Roboto; font-size: 8pt; 
                            letter-spacing: 0.5px; border-bottom: 1px solid #f0f0f0;"))

save_kable(list_to_range, 
           file = "assets/static/list.html")
webshot::webshot("assets/static/list.html", 
                 file= "assets/static/list.png", 
                 vwidth = 600, vheight = 100, 
                 zoom = 12, expand = 20)



## Table 3. Range to List Function
range_to_list <- data.frame(
  "Range Call" = c("list(range(0, 10, 2))", 
                   "list(range(2, 11, 3))", 
                   "list(range(600, 0, -100))"), 
  "List" = c("[0, 2, 4, 6, 8]", 
             "[2, 5, 8]", 
             "[600, 500, 400, 300, 200, 100]"))

range_to_list <- kable(range_to_list, col.names = c("Range", "List"), escape = T) %>%
  kable_styling(full_width = F, font_size = 12, 
                html_font = "Roboto Condensed", 
                bootstrap_options = c("striped", "hover")) %>%
  column_spec(c(1:2), width = "7cm") %>%
  column_spec(1, extra_css = c("opacity: 0.65;")) %>%
  row_spec(0, extra_css = c("text-transform: uppercase; font-weight: 600;
                            font-family: Roboto; font-size: 8pt; 
                            letter-spacing: 0.5px; border-bottom: 1px solid #f0f0f0;"))

save_kable(range_to_list, 
           file = "assets/static/range.html")
webshot::webshot("assets/static/range.html", 
                 file= "assets/static/range.png", 
                 vwidth = 600, vheight = 100, 
                 zoom = 12, expand = 20)




#################
## POKEMON TABLES


pokemon1 <- data.frame("id" = c(1), 
                       "name" = c("Bulbasaur"), 
                       "level" = c(12), 
                       "personality" = c("Jolly"), 
                       "type" = c("Grass"), 
                       "weakness" = c("Fire"), 
                       "atk" = c(45), 
                       "def" = c(50), 
                       "hp" = c(112), 
                       "stage" = c(1))


pokemon2 <- data.frame(
  "d" = c(1:10),
    # c(rep(" ", 10)),
  "variable" = c("id ", "name", "level", "pers",
                 "type", "wk", "atk", "def", 
                 "hp", "stage"),
  "type" = c("numeric", "string", "integer", "string",
             "string", "string", "integer", "integer",
             "integer", "integer"),
  "description" = c(
    "unique identifier corresponding to the species of a pokemon",
    "the name of the pokemon species",
    "integer level of the pokemon",
    "one-word describing the personality of the pokemon",
    "one-word describing the type of the pokemon",
    "enemy type that the pokemon is weak toward",
    "attack power of the pokemon",
    "defense power of the pokemon",
    "the pokemon's hit points",
    "particular developmental stage of the pokemon"))

pokemon2$d <- cell_spec(
  pokemon2$d,
  extra_css = ("content: ''; display: inline-flex; 
  width: 6pt; height: 6pt; border-radius: 18px;
  margin: 2pt -10pt 0px -2pt; color: hsl(0deg 0% 92%); 
  box-shadow: 0 1px 3px rgb(0 0 0 / 10%), 0 1px 2px rgb(0 0 0 / 20%), inset 1px 1px 1px hsl(0deg 0% 80% / 40%), inset -1px -1px 1px rgb(12 13 18 / 6%), -1px -1px 1px 0px rgb(255 255 255 / 60%), -1px -1px 4px 0px rgb(255 255 255 / 60%), -2px -2px 8px 0px rgb(255 255 255 / 60%), 1px 1px 1px 0px rgb(12 13 18 / 6%), 1px 1px 4px 0px rgb(12 13 18 / 6%), 2px 2px 8px 0px rgb(12 13 18 / 6%), inset -1px -1px 1px hsl(0deg 0% 0%); 
  background: hsl(0deg 0% 22% / 98%); float: right;
  padding: 1pt !important; justify-content: center; 
  align-items: center; font-size: 9pt; font-family: 'Inconsolata'; 
  font-weight: 600; width: 12pt; height: 12pt;
               border: 0.15px solid hsl(0deg 0% 45%);"))


pokemon2$variable <- cell_spec(
  pokemon2$variable,
  extra_css = (
    "float: left !important; padding: 3px 4px; background-color: #ebecf0;
  border-radius: 6px; text-shadow: 0.6px 0.6px 0 #fff;
  color: #61677c; font-family: 'Roboto'; font-size: 7.25pt;
  font-weight: 500; letter-spacing: 0.25px;
  min-width: 48pt; text-align: end;
  background: linear-gradient(-45deg,#fdfdfd,hsl(240deg 9% 85% / 50%),#fdfdfd);
    box-shadow: 1.5px 1.5px 2.5px #babecc, -2px -2px 5px #fff;
    color: hsl(233deg 5% 26%);
    text-shadow: 0.25px 0.25px 0.125px hsl(230deg 11% 48% / 75%), 0.4px 0.4px 0.35px hsl(230deg 31% 40% / 65%), 0px 1.25px 0px #fff, 0px -0.5px 0px #fff;"))


pokemon2$type <- cell_spec(
  pokemon2$type,
  extra_css = ("text-shadow: 0.6px 0.6px 0 #fff; color: #61677c;
  font-weight: 300; font-family: Roboto Condensed !important;"))
  
pokemon2$description <- cell_spec(
  pokemon2$description,
  extra_css = ("font-family: Roboto Condensed !important;
  color: #111111 !important; font-weight: 400; opacity: 0.85;"))




charmander_url <- '<img class="poke" src= "https://img.pokemondb.net/sprites/home/normal/charmander.png"'
charmeleon_url <- '<img class="poke" src= "https://img.pokemondb.net/sprites/home/normal/charmeleon.png"'
charizard_url <- '<img class="poke" src= "https://img.pokemondb.net/sprites/home/normal/charizard.png"'


pokemon3 <- data.frame(
  " " = c(charmander_url, charmeleon_url, charizard_url), 
  "name" = c("Charmander", "Charmeleon", "Charizard"), 
  "type" = c("Fire", "Fire", "Fire\n Flying"), 
  "weakness" = c("Ground", "Ground", "Ground"), 
  "atk" = c(52, 64, 84), 
  "def" = c(43, 58, 78), 
  "hp" = c(39, 58, 78), "stage" = c(1, 2, 3))

pokemon3$stage <- cell_spec(
  pokemon3$stage, 
  extra_css = ("font-size: 11pt; 
  text-shadow: 0.25px 0.25px 0.25px hsl(233deg 5% 26% / 85%), 0.35px 0.35px 0.35px hsl(233deg 5% 26% / 85%), 0 -1.1px 0px hsl(0deg 0% 0% / 90%), 0 1.2px 0 hsl(0deg 0% 0%); 
  background: hsl(0deg 0% 22% / 98%); 
  font-family: 'VT323', monospace; 
  color: hsl(0deg 0% 92%); font-weight: 300; 
  display: flex; margin: auto; border-radius: 10pt; 
  padding: 4px; width: 18pt; height: 18pt; 
  align-items: center; justify-content: center; 
  box-shadow: 0 1px 3px rgb(0 0 0 / 10%), 0 1px 2px rgb(0 0 0 / 20%), inset 1px 1px 1px hsl(0deg 0% 80% / 40%), inset -1px -1px 1px rgb(12 13 18 / 6%), -1px -1px 1px 0px rgb(255 255 255 / 60%), -1px -1px 4px 0px rgb(255 255 255 / 60%), -2px -2px 8px 0px rgb(255 255 255 / 60%), 1px 1px 1px 0px rgb(12 13 18 / 6%), 1px 1px 4px 0px rgb(12 13 18 / 6%), 2px 2px 8px 0px rgb(12 13 18 / 6%), inset -1px -1px 1px hsl(0deg 0% 0%); 
  margin-top: -2pt;"))

