# Joe Leonard - ymd3tv
# DS 2002 (1:00PM MWF)
# Midterm Project - Player Pitch Performance Analysis

# The business process I will be moving forward with will be to aggregate the data I found into SQL Tables, use an ETL Pipeline 
# through MongoDB and MySQL to put the data into a usable form, and then finally perform queries on the data to highlight
# different stats related to pitches such as average pitch speed thrown, total number of pitches thrown, etc.

# This is the query I'll be using to load in the CSV data to my 'pitch_analysis' schema. The CSV data is from a Kaggle dataset
# called "MLB Pitch Data 2015-2018, found at this link: https://www.kaggle.com/datasets/pschale/mlb-pitch-data-20152018
# It has 8 CSV files with over 350 MB of data that I will be condusing into various tables for later use. 

# It is key to note that I am using my local computer's necessary paths when loading in these CSV files, and you may
# need to do the same when performing queries on your computer. Some tables may be missing the full information due to 
# long wait times for import. 


USE `pitch_analysis`;

# Data Dumping into 'players' Table
CREATE TABLE `players` (
  `id` int NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


# Data Dumping into 'games' Table
CREATE TABLE `games` (
  `attendance` int DEFAULT NULL,
  `away_final_score` int DEFAULT NULL,
  `away_team` varchar(255) DEFAULT NULL,
  `game_date` date DEFAULT NULL,
  `elapsed_time` int DEFAULT NULL,
  `game_id` int NOT NULL,
  `home_final_score` int DEFAULT NULL,
  `home_team` varchar(255) DEFAULT NULL,
  `start_time` varchar(255) DEFAULT NULL,
  `umpire_1B` varchar(255) DEFAULT NULL,
  `umpire_2B` varchar(255) DEFAULT NULL,
  `umpire_3B` varchar(255) DEFAULT NULL,
  `umpire_HP` varchar(255) DEFAULT NULL,
  `venue_name` varchar(255) DEFAULT NULL,
  `weather` varchar(255) DEFAULT NULL,
  `wind` varchar(255) DEFAULT NULL,
  `delay` int DEFAULT NULL,
  PRIMARY KEY (`game_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

# Data Dumping into 'pitches' Table
CREATE TABLE `pitches` (
  `px` double DEFAULT NULL,
  `pz` double DEFAULT NULL,
  `start_speed` double DEFAULT NULL,
  `end_speed` double DEFAULT NULL,
  `spin_rate` double DEFAULT NULL,
  `spin_dir` double DEFAULT NULL,
  `break_angle` double DEFAULT NULL,
  `break_length` double DEFAULT NULL,
  `break_y` double DEFAULT NULL,
  `ax` double DEFAULT NULL,
  `ay` double DEFAULT NULL,
  `az` double DEFAULT NULL,
  `sz_bot` double DEFAULT NULL,
  `sz_top` double DEFAULT NULL,
  `type_confidence` double DEFAULT NULL,
  `vx0` double DEFAULT NULL,
  `vy0` double DEFAULT NULL,
  `vz0` double DEFAULT NULL,
  `x` double DEFAULT NULL,
  `x0` double DEFAULT NULL,
  `y` double DEFAULT NULL,
  `y0` int DEFAULT NULL,
  `z0` double DEFAULT NULL,
  `pfx_x` double DEFAULT NULL,
  `pfx_z` double DEFAULT NULL,
  `nasty` int DEFAULT NULL,
  `zone` int DEFAULT NULL,
  `code` text,
  `type` text,
  `pitch_type` text,
  `event_num` int DEFAULT NULL,
  `b_score` double DEFAULT NULL,
  `ab_id` double DEFAULT NULL,
  `b_count` double DEFAULT NULL,
  `s_count` double DEFAULT NULL,
  `outs` double DEFAULT NULL,
  `pitch_num` double DEFAULT NULL,
  `on_1b` double DEFAULT NULL,
  `on_2b` double DEFAULT NULL,
  `on_3b` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

# Dat Dumping into 'atbats' Table
CREATE TABLE `atbats` (
  `ab_id` int DEFAULT NULL,
  `batter_id` int DEFAULT NULL,
  `event` text,
  `g_id` int DEFAULT NULL,
  `inning` int DEFAULT NULL,
  `o` int DEFAULT NULL,
  `p_score` int DEFAULT NULL,
  `p_throws` text,
  `pitcher_id` int DEFAULT NULL,
  `stand` text,
  `top` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

# Data Dumping into 'ejections' Table
CREATE TABLE `ejections` (
  `ab_id` int DEFAULT NULL,
  `des` text,
  `event_num` int DEFAULT NULL,
  `g_id` int DEFAULT NULL,
  `player_id` int DEFAULT NULL,
  `date` text,
  `BS` text,
  `CORRECT` text,
  `team` text,
  `is_home_team` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;




	