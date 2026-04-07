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

Seth Walowski
Will White

## Summary

In this lab, we demonstrated the functionality of counters, and how they can act as frequency dividers. Our ripple counter counts from 0 to 7 while the modulo counter counts up to 6 and then resets. the module counter acts as a frequency divider because it changes the clock cycle to be 12 times longer.

## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?

Each full clock cycle requires two counter resets, one to toggle HIGH, one to toggle LOW, so you divide by 2 × count.

### 2 - Why does the ripple counter's output go to all 1s on the first clock cycle?

The Ripple counter counts backwards (down count) from 7 to 0, so the first state is 111 = 7. The Q outputs all start at 1 after reset, giving 111 = 7, and each T flip-flop toggles on the falling edge of the previous one's output as it counts down.

### 3 - What width of ripple counter would you use to get to an output of ~1KHz?

This question depends on the input clock frequency. If we start with a 1 MHz frequency, we would need about 10 flip flips
