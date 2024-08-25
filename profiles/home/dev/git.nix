{
  programs.git = {
    enable = true;
    extraConfig = {
      blame = {
        date = "iso";
        markIgnoredLines = true;
        markUnblamableLines = true;
      };
      branch.sort = "-committerdate";
      color.ui = "auto";
      column.ui = "auto";
      commit = {
        gpgSign = true;
        verbose = true;
      };
      core = {
        fsmonitor = true;
        untrackedCache = true;
      };
      diff = {
        algorithm = "histogram";
        colorMoved = "default";
        colorMovedWS = "allow-indentation-change";
        context = 10;
        mnemonicPrefix = true;
        renames = "copy";
      };
      feature.experimental = true;
      fetch = {
        fsckObjects = true;
        prune = true;
        pruneTags = true;
        writeCommitGraph = true;
      };
      grep = {
        lineNumber = true;
        extendedRegexp = true;
        fallbackToNoIndex = true;
      };
      gpg.format = "ssh";
      help.autoCorrect = "prompt";
      init.defaultBranch = "main";
      log = {
        abbrevCommit = true;
        date = "iso";
        follow = true;
      };
      maintenance = {
        auto = true;
        strategy = "incremental";
      };
      merge.conflictStyle = "zdiff3";
      pull.ff = "only";
      push = {
        autoSetupRemote = true;
        followTags = true;
      };
      rebase = {
        autoSquash = true;
        autoStash = true;
        missingCommitsCheck = "error";
        updateRefs = true;
      };
      receive.fsckObjects = true;
      rerere = {
        enabled = true;
        autoUpdate = true;
      };
      stash.showIncludeUntracked = true;
      status = {
        showStash = true;
        showUntrackedFiles = "all";
      };
      tag.sort = "-v:refname";
      transfer.fsckObjects = true;
    };
  };
}
