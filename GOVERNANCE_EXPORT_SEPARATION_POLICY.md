# Governance Export Separation Policy

## Canonical Git Transport
Permitted:
- markdown evidence
- telemetry json/jsonl
- checksum manifests
- workflow inventories
- release chronology
- governance timelines
- standards mappings
- replay metadata

Prohibited:
- oversized tar.gz replay archives
- raw runtime snapshots above transport limits
- duplicated nested inventories
- transient runtime artifacts

## Offline Survivability Layer
Permitted:
- replay-capable snapshots
- full runtime exports
- continuity recovery archives
- large replay bundles
- detached survivability evidence

## Operational Doctrine
- canonical state remains portable
- replay survivability preserved offline
- checksum continuity mandatory
- snapshot before mutation
- classify before cleanup
- preserve continuity before normalization
