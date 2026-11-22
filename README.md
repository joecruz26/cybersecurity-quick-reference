# Cybersecurity & IT Support Quick Reference

A practical quick-reference guide for cybersecurity learners and IT support professionals.

## Windows Networking Commands

| Command | Purpose |
|---|---|
| `ipconfig /all` | Display detailed TCP/IP configuration |
| `ipconfig /flushdns` | Clear the DNS resolver cache |
| `ping <host>` | Test basic connectivity |
| `tracert <host>` | Trace the network path to a destination |
| `nslookup <domain>` | Query DNS information |
| `netstat -ano` | Show active connections, listening ports, and PIDs |

## Windows Support Commands

| Command | Purpose |
|---|---|
| `whoami` | Display the current user |
| `hostname` | Display the computer name |
| `systeminfo` | Display operating system and hardware details |
| `gpupdate /force` | Request a Group Policy refresh |
| `sfc /scannow` | Check protected Windows system files |

## Security Fundamentals

### CIA Triad
- **Confidentiality:** Information is accessible only to authorized users.
- **Integrity:** Information remains accurate and protected from unauthorized changes.
- **Availability:** Systems and data are accessible when authorized users need them.

### Authentication vs. Authorization
- **Authentication:** Verifies who you are.
- **Authorization:** Determines what an authenticated identity is allowed to access or do.

### Least Privilege
Give users, applications, and services only the permissions required to perform their responsibilities.

### Defense in Depth
Use multiple security controls so that failure of one control does not leave an environment relying on a single safeguard.

## Basic Incident Response Flow

1. Identify and document the reported issue.
2. Preserve relevant information and follow organizational procedures.
3. Escalate suspected security incidents through the approved security channel.
4. Avoid making unnecessary system changes that could destroy useful evidence.
5. Record actions taken and relevant observations.

## Help Desk Troubleshooting Flow

1. Gather symptoms and determine scope.
2. Check simple causes first: power, connections, credentials, connectivity, and configuration.
3. Reproduce the issue when practical and safe.
4. Change one variable at a time.
5. Test the result.
6. Document the resolution or escalate with useful troubleshooting notes.

## Safety Note

Commands and procedures in this repository are intended for systems you own or are explicitly authorized to administer. Always follow your organization's policies, change-management procedures, and security requirements.

## About

Built as a living reference for hands-on IT support and cybersecurity learning. More notes, troubleshooting examples, and labs can be added over time.
