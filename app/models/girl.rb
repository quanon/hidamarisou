class Girl < ApplicationRecord
  enum soul_gem_status: { clean: 0, lightly_tainted: 1, moderately_tainted: 2, heavily_tainted: 3 }
end
