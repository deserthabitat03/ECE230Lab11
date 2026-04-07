# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names

## Summary

## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?

Each full clock cycle requires two counter resets, one to toggle HIGH, one to toggle LOW, so you divide by 2 × count.

### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?

The Ripple counter counts backwards (down count) from 7 to 0, so the first state is 111 = 7. The Q outputs all start at 1 after reset, giving 111 = 7, and each T flip-flop toggles on the falling edge of the previous one's output as it counts down.

### 3 - What width of ring counter would you use to get to an output of ~1KHz?

