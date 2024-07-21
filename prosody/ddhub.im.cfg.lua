-- Section for ddhub.im

VirtualHost "ddhub.im"
	-- enabled = false -- Remove this line to enable this host -- EDITED
	allow_registration = true -- EDITED

	-- Assign this host a certificate for TLS, otherwise it would use the one
	-- set in the global section (if any).
	-- Note that old-style SSL on port 5223 only supports one certificate, and will always
	-- use the global one.
	ssl = {
		key         = "/etc/prosody/certs/ddhub.im.key";
		certificate = "/etc/prosody/certs/ddhub.im.crt";
		} -- EDITED

------ Components ------
-- You can specify components to add hosts that provide special services,
-- like multi-user conferences, and transports.
-- For more information on components, see http://prosody.im/doc/components

-- Set up a MUC (multi-user chat) room server on conference.example.com: -- EDITED
Component "rooms.ddhub.im" "muc"
          name = "Dandelion Hub Rooms"
	  restrict_room_creation = false
	  component_admins_as_room_owners = true
	  max_history_messages = 20
	  muc_tombstones = false
	  muc_tombstone_expiry = 86400 * 31

	  muc_room_default_public = true
	  muc_room_default_persistent = false
	  muc_room_default_members_only = false
	  muc_room_default_moderated = false
	  muc_room_default_public_jids = false
	  muc_room_default_change_subject = false
	  muc_room_default_history_length = 20
	  muc_room_default_language = "en"
	  
	  enforce_registered_nickname = false -- the default

-- Set up a SOCKS5 bytestream proxy for server-proxied file transfers:
-- Component "proxy.example.com" "proxy65"

---Set up an external component (default component port is 5347)
-- Component "gateway.example.com"
--	component_secret = "password"

