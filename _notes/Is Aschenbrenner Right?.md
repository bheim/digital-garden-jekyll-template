I think Aschenbrenner's model for what could cause AI to asymptote are a good starting point. Of these, I'm most curious about compute and algorithms. I'm less interested in the nature of problems as this feels it relates more to post-AGI than getting to AGI. We're also going to run with his definition that AGI is achieved once AI researchers can be fully automated.

#### Compute Limits - Not a Huge Deal

Regarding compute, I don't think this is the biggest concern. I think the main problem here is that AI doesn't demonstrate enough impressive capability with the available compute. However, even if it doesn't, this (as I'll argue later) more of an algorithm problem than it is a compute problem. If AI is sufficiently impressive with the compute available to it, we'll build more chips and we'll more build energy infrastructure. This will delay things, yes, but it won't prevent AGI.

I will note that he forces himself to consider compute because of the timeline he proposes. I'm not as concerned with timelines as I am with the general direction of the argument (namely, exponential takeoff).

#### Algorithmic Progress - A Huge Deal

Key to Aschenbrenner's argument is that current algorithms and methods - such as chain-of-thought (COT) and scaffolding - coupled with a bunch of compute will get us to AGI. A significant part of his argument seems to be that we saw several magnitudes of increased capability from GPT 2 to GPT 4 and that we'll see a similar capability increase.

When we want to evaluate an argument like this, the most important assumption we tease out is how we measure progress in this space. I never used GPT 2, but obviously GPT 4 is way better than it (at least from what I've been shown). It was a huge jump. Since then, the jumps have felt smaller. However, the perception/feeling of an increase in quality is probably far from the best benchmark.

##### Why are LLMs so good?

Once we choose a metric, the second important question is why it's good at that test. Is it good because it was trained on a bunch of similar questions so that the logical extension is fairly basic? Or did it reason through the question from basic building blocks to generate a more complex thought?

This is, of course, really important. If it can only do the former, we'd expect an asymptotic growth in LLMs in which it will approach the level of being able to solve solved problems but unable to extrapolate and reason to achieve novel ideas. When we consider AGI, I don't see a world in which AI can automate an AI researcher without this ability.

From some research I've seen ([Lewis and Mitchell](https://openreview.net/pdf?id=t5cy5v9wph)), it seems that LLMs are largely doing the former. That's a problem because it seems immature to expect LLMs to suddenly be able to engage in the type of reasoning that allows for the iterative improvement in AI.

##### Is this not such a big deal?

A potential counterargument is that models show emergent capabilities at scale. At certain levels of parameters, the model can suddenly do/take advantage of things that smaller models simply couldn't do. To this, I say "Ok, sure." Maybe once we reach a certain scale of data, the LLM will gain the ability to reason analogously. However, I don't think this is something to bet on.

Another counterargument is that you don't need this ability to achieve AGI. For example, AI has already generated a paper (hypothesis to experiment to publication) that was accepted by a conference. This is a strong argument. "Reasoning" may work for humans, but it may not be necessary for AI to use the same strategies as us.

It's for this reason - that AI may approach things differently - that it becomes difficult to make predictions. Would AI be able to come up with evolution in the 1830s if it saw the same data that Darwin saw? Or would it simply interpret it through the lens of what was already agreed upon? At the moment, it would interpret it through the agreed upon lens. Counter-intuitively, if AI keeps progressing, there will reach a point where we think it's dumb, that it's the worst model we've ever seen. It will tell us things that most people disagree with. And it will be correct.

Let's assume, however, that AI will need to reason to reach the level of AGI. It's probably a reasonable (ha) assumption but keep in mind that we can relax it and the whole question can change.

#### How can we get it reason?

Chain-of-Thought (CoT) was a incredibly simple but revolutionary idea. It reflects a kind of thinking around AI that many people, myself included, tend to fall into: namely, we give it a task and then evaluate how it performs relative to humans without considering whether we gave AI the same resources we gave humans. In this instance, we let AI "think."

The problem is, even with CoT, we still aren't observing models that 'reason.' [Melanie Mitchell](https://melaniemitchell.me/) has done extensive work to study whether models are using reasoning as humans do (reasoning, her, meaning abstracting general principles and then applying them to new phenomena). Instead of reasoning, models engage in shortcuts from their training data.
#### But what does it mean to reason?

If we take cognition to mean the practice of managing and manipulating information and then creating new information, then perhaps we can understand reasoning to be a set of strategies used to 1) manage that information and 2) apply a set of thinking strategies to extract concepts 3) make accurate predictions based on those concepts.

For example, you learn a math theorem and you're given a math problem. Perhaps first you recognize that the math problem is referring to another concept (abstraction), and then you apply the math theorem to the abstracted concept, and then you reach the conclusion that the problem asked you to reach.

In this sense, you're identifying conclusions and building arguments for them that reflects an understanding and application of principles, not because you've seen a similar strategy employed before.

Whereas humans can use reasoning to extract and apply causal principles, LLMs fall short and engage in 'causal parroting.' To be clear, here, I actually think a huge deal of human thought is causal parroting. In many cases, reasoning is too time and energy costly to engage in and causal parroting comes out on top. However, humans can depart from causal parroting when necessary and engage in reason. For LLMs, it hasn't seemed possible.

#### What about AlphaProof?

AlphaProof did an impressive job on the International Math Olyimpiad, and its performance in such a reasoning-heavy field demands the question of whether it was reasoning. In training and execution, AlphaProof had the distinct advantage of ground truth feedback. As the language it coded in was mathematically verifiable, everything it did would receive correct/incorrect feedback which could lead to great training.

The researchers also helped AlphaProof out by giving it a proof strategy to effectively compartmentalize and build up proofs. The strategy resembles a tree-like reasoning structure.

While it would seem that when working in such an analytical, ground truth environment, AlphaProof necessarily would engage in reasoning, the counter argument is that it would simply continuously search for ways to prove the argument by employing causal parroting (it worked in X situation, so it may work here in this Y situation) and eventually it works.

The most 'reasoning' approach that AlphaProof employed was the tree-like argument structure, which wasn't even generated by the AI but rather imposed on to it by humans.

### So, is Aschenbrenner right?

I feel out of my depth evaluating the claims of Aschenbrenner. I know very little about AI and cognitive science and yet, here I am, making claims about it. However, it's also clear that many experts totally disagree with him. Frankly, I do, too.

I think it's essential for models to employ human-like reasoning to achieve AGI. Causal parroting can work to create small jumps in human knowledge but not leaps. To truly get there, we need a model that's robust enough to look at new data, understand that it contradicts with its training data and be willing to create a mental model to account for both. At the moment, it doesn't even seem that LLMs have mental models.

As far as whether AGI is possible, I have little doubt. However, when we think of timelines that argue it will happen by the end of the decade which largely rely on the idea of scaling up LLMs on more data, I don't think we're there.

Could we get AGI by 2030? Yes. But it would require revelations in understanding how we can push models from causal parrots to reasoning machines.
