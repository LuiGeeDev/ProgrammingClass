package baseballtracker;

import java.util.ArrayList;
import java.util.Iterator;

public class BaseballTeam {
    private String teamName;
    private int wins;
    private int losses;
    private MatchRecord[] matches;
    private int teamMatches;
    private static int totalMatches;
    private int totalRuns;
    private int totalRunsAllowed;

    public BaseballTeam(String teamName) {
        this.teamName = teamName;
        teamMatches = 0;
        matches = new MatchRecord[144];
    }

    public void win(BaseballTeam opponent, int runs, int runsAllowed) {
        if (teamMatches == 144) {
            System.out.println("한 시즌 최대 경기 수에 도달했습니다.");
            return;
        }
        totalMatches++;
        totalRuns += runs;
        totalRunsAllowed += runsAllowed;
        matches[teamMatches++] = new MatchRecord(opponent, "승리", runs, runsAllowed);
        opponent.lose(this, runsAllowed, runs);
    }

    private void lose(BaseballTeam opponent, int runs, int runsAllowed) {
        totalRuns += runs;
        totalRunsAllowed += runsAllowed;
        matches[teamMatches++] = new MatchRecord(opponent, "패배", runs, runsAllowed);
    }

    public void getMatchRecord() {
        System.out.println(teamName + "의 경기 기록");
        for (int i = 0; i < teamMatches; i++) {
            System.out.println(matches[i]);
        }
     }

    @Override
    public String toString() {
        return teamName;
    }

    public static int getTotalMatches() {
        return totalMatches;
    }
}