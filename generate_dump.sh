#!/usr/bin/env bash


psql -h "$KNOWLEDGE_GRAPH_HOST" -p "$KNOWLEDGE_GRAPH_PORT" --username=postgres < "$DUMP_NAME"
psql -d "$KNOWLEDGE_GRAPH_DATABASE" -h "$KNOWLEDGE_GRAPH_HOST" -p "$KNOWLEDGE_GRAPH_PORT" --U "$KNOWLEDGE_GRAPH_USER"

psql -d "$KNOWLEDGE_GRAPH_DATABASE" -h "$KNOWLEDGE_GRAPH_HOST" -p "$KNOWLEDGE_GRAPH_PORT" -U "$KNOWLEDGE_GRAPH_USER" -c 'DROP TABLE IF EXISTS kebechet_github_installations'
psql -d "$KNOWLEDGE_GRAPH_DATABASE" -h "$KNOWLEDGE_GRAPH_HOST" -p "$KNOWLEDGE_GRAPH_PORT" -U "$KNOWLEDGE_GRAPH_USER" -c 'DROP TABLE IF EXISTS adviser_run'
psql -d "$KNOWLEDGE_GRAPH_DATABASE" -h "$KNOWLEDGE_GRAPH_HOST" -p "$KNOWLEDGE_GRAPH_PORT" -U "$KNOWLEDGE_GRAPH_USER" -c 'UPDATE python_package_metadata SET author="deducted", maintainer="deducted", maintainer_email="deducted", author_email="deducted"'
psql -d "$KNOWLEDGE_GRAPH_DATABASE" -h "$KNOWLEDGE_GRAPH_HOST" -p "$KNOWLEDGE_GRAPH_PORT" -U "$KNOWLEDGE_GRAPH_USER" -c 'DELETE FROM solved WHERE document_id ~ "^(?!solver-rhel-8-py38)"'

pg_dump -h "$KNOWLEDGE_GRAPH_HOST" -p "$KNOWLEDGE_GRAPH_PORT" -U "$KNOWLEDGE_GRAPH_USER" -d "$KNOWLEDGE_GRAPH_DATABASE" -f pg_dump.sql
