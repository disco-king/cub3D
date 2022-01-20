/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   raycast.h                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: wabathur <wabathur@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/01/20 16:41:45 by wabathur          #+#    #+#             */
/*   Updated: 2022/01/20 17:45:21 by wabathur         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef RAYCAST_H
# define RAYCAST_H

# include <math.h>
# include <mlx.h>
# include <unistd.h>

typedef struct s_map
{
	char	**map;
}	t_map;

typedef struct s_player
{
	int	x;
	int	y;
	int	start_direction;
}	t_player;

typedef struct s_window
{
	void	*mlx;
	void	*window;
	int		floor_color;
	int		ceiling_color;
}	t_window;

void	init_window(t_window *window);
#endif
