ERD: 
1-Design decision: a decision have been made to add a booking_id to the the booking entity.Although it is a weak intity.

DDL:
1-unique was not needed for key attributes. Therefore only added in one remaining attribute that is not a key value (passenger email).


Error log:
1- Msg 1785, Level 16, State 0, Line 18
Introducing FOREIGN KEY constraint 'FK__FLIGHT__ArrAirpo__6477ECF3' on table 'FLIGHT' may cause cycles or multiple cascade paths. Specify ON DELETE NO ACTION or ON UPDATE NO ACTION, or modify other FOREIGN KEY constraints.
Msg 1750, Level 16, State 1, Line 18
Could not create constraint or index. See previous errors.
Reason: ON DELETE CASCADE and ON UPDATE CASCADE. on flight entity that has two relations to the airport(depart and arrive).
Since FLIGHT references AIRPORT twice (OriginAirport and DestinationAirport), both relationships cannot use ON DELETE CASCADE simultaneously. Therefore, ON DELETE NO ACTION must be used for at least one of these relationships to allow the schema to be created.

