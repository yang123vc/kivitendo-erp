# This file has been auto-generated. Do not modify it; it will be overwritten
# by rose_auto_create_model.pl automatically.
package SL::DB::RequirementSpecVersion;

use strict;

use parent qw(SL::DB::Object);

__PACKAGE__->meta->table('requirement_spec_versions');

__PACKAGE__->meta->columns(
  comment             => { type => 'text' },
  description         => { type => 'text', not_null => 1 },
  id                  => { type => 'serial', not_null => 1 },
  itime               => { type => 'timestamp', default => 'now()' },
  mtime               => { type => 'timestamp' },
  requirement_spec_id => { type => 'integer', not_null => 1 },
  version_number      => { type => 'integer' },
  working_copy_id     => { type => 'integer' },
);

__PACKAGE__->meta->primary_key_columns([ 'id' ]);

__PACKAGE__->meta->allow_inline_column_values(1);

__PACKAGE__->meta->foreign_keys(
  requirement_spec => {
    class       => 'SL::DB::RequirementSpec',
    key_columns => { requirement_spec_id => 'id' },
  },

  working_copy => {
    class       => 'SL::DB::RequirementSpec',
    key_columns => { working_copy_id => 'id' },
  },
);

1;
;
