-- Event - Located At - Venue
ALTER TABLE events
ADD CONSTRAINT fk_event_venue
FOREIGN KEY (venue_id) REFERENCES venues(venue_id);

-- Organization - Organizes - Event
ALTER TABLE events
ADD COLUMN organization_id INT,
ADD CONSTRAINT fk_event_organization
FOREIGN KEY (organization_id) REFERENCES organizations(organization_id);

-- User - Has Role
CREATE TABLE user_roles (
    user_id INT,
    role_id INT,
    PRIMARY KEY (user_id, role_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (role_id) REFERENCES roles(role_id)
);

-- Role - Associated with Organization
CREATE TABLE organization_roles (
    organization_id INT,
    role_id INT,
    PRIMARY KEY (organization_id, role_id),
    FOREIGN KEY (organization_id) REFERENCES organizations(organization_id),
    FOREIGN KEY (role_id) REFERENCES roles(role_id)
);