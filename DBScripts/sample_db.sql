BEGIN;

DELETE FROM `module`;
DELETE FROM `group2module`;
DELETE FROM `group`;
DELETE FROM `module`;
DELETE FROM `user2group`;
DELETE FROM `user`;

INSERT INTO `group` (`gid`, `groupname`, `type`) VALUES
(1, 'gold', 'premium'),
(2, 'silver', 'medium'),
(3, 'bronce', 'small');

INSERT INTO `group2module` (`grp2modulid`, `gid`, `mid`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3);

INSERT INTO `module` (`mid`, `moduleID`, `moduleName`) VALUES
(1, '1', 'Berechtigungsmanagement'),
(2, '', 'Verbrauchsübersicht'),
(3, '', 'Energiemanagement');

INSERT INTO `user` (`uid`, `userName`, `password`, `email`) VALUES
(1, 'timo', 'timo', 'emailhahaha');

INSERT INTO `user2group` (`user2grpid`, `uid`, `groupid`) VALUES
(1, 1, 1);

COMMIT;
