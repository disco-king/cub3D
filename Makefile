NAME = cub3D

NAME_B = cub3D_bonus

LIBFT = ./libft/libft.a

UNAME = $(shell uname)

MLX = ./minilibx/libmlx.a
MLX_DIR = ./minilibx
LFLAGS = -L ./minilibx -lmlx -lm -lX11 -lXext

ifeq ($(UNAME), Darwin)
MLX = ./mlx_darwin/libmlx.a
MLX_DIR = ./mlx_darwin/
LFLAGS = -L ./minilibx -lmlx -lm -framework OpenGL -framework AppKit
endif

SRC = start_events.c key_hooks.c

SRC_B = bonus/start_events.c bonus/mouse_hook.c \
		bonus/map_staff.c bonus/key_hooks.c

MAIN_SRC = main.c draw_ray_on_map.c \
		direction_manipulations.c draw_walls.c drawing.c new_engine.c \
		simple_hooks_part_two.c new_engine_part_two.c \
		texture_handling.c

SRC_P = map_parsing/param_parse.c map_parsing/map_parse.c \
		map_parsing/gnl.c map_parsing/param_checks.c \
		map_parsing/line_parsing.c map_parsing/column_parsing.c \
		map_parsing/map_utils.c

OBJ = $(SRC:.c=.o)

OBJ_B = $(SRC_B:.c=.o)

MAIN_OBJ = $(MAIN_SRC:.c=.o) $(SRC_P:.c=.o)

CC = gcc

FLAGS = -Wall -Wextra -Werror


HEADER = raycast.h ./map_parsing/parse.h

all: $(NAME)

%.o : %.c $(HEADER)
		$(CC) -c $< -o $@

$(LIBFT):
		$(MAKE) -C ./libft

$(MLX):
		$(MAKE) -C $(MLX_DIR) 

$(NAME): $(OBJ) $(MAIN_OBJ) $(LIBFT) $(MLX)
		$(CC) $(OBJ) $(MAIN_OBJ) -L ./libft/ -lft $(LFLAGS) -o $@

$(NAME_B): $(OBJ_B) $(MAIN_OBJ) $(LIBFT) $(MLX)
		$(CC) $(OBJ_B) $(MAIN_OBJ) -L ./libft/ -lft $(LFLAGS) -o $@

clean:
		$(MAKE) clean -C ./libft
		$(MAKE) clean -C $(MLX_DIR) 
		rm -rf $(OBJ) $(MAIN_OBJ) $(OBJ_B)

fclean: clean
		$(MAKE) fclean -C ./libft
		rm -rf $(NAME) $(NAME_B)

re:	fclean all

bonus: $(NAME_B)
