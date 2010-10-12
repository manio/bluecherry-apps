CREATE TABLE AvailableSources (
	id integer PRIMARY KEY NOT NULL,
	devicepath varchar(255),
	name varchar(255),
	driver varchar(255),
	status boolean,
	alsasounddev varchar(255)
);

CREATE TABLE Devices (
	id integer PRIMARY KEY NOT NULL,
	device_name varchar(100),
	resolutionX smallint,
	resolutionY smallint,
	framerate smallint,
	contol_path varchar(255),
	protocol varchar(50),
	remote_host varchar(255),
	remote_path varchar(255),
	remote_port varchar(5),
	invert boolean,
	source_video varchar(255),
	channel varchar(255),
	source_audio_in varchar(255),
	source_audio_out varchar(255),
	audio_volume smallint,
	audio_rate integer,
	audio_format integer,
	audio_channels smallint,
	saturation smallint,
	brightness smallint,
	hue smallint,
	contrast smallint,
	video_quality smallint DEFAULT 2,
	video_interval smallint,
	signal_type varchar(6),
	buffer_prerecording smallint DEFAULT 5,
	buffer_postrecording smallint DEFAULT 5,
	ptz_contol_path varchar(255),
	ptz_control_protocol varchar(15),
	ptz_baud_rate varchar(6),
	ip_ptz_control_type smallint,
	preset_type_ID smallint,
	motion_detection_on boolean,
	motion_detection_threshold integer,
	file_chop_interval smallint,
	disabled boolean DEFAULT FALSE,
	UNIQUE (device_name)
);
