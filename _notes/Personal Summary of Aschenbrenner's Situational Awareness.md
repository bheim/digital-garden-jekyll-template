[[Is Aschenbrenner Right?]]

*A Personal Summary of Aschenbrenner's Situational Awareness*

We can build out a fairly simple model (as developed by Leopold Aschenbrenner in Situational Awareness, The Decade Ahead) for how to think about AI capabilities and where it will trend.

When discussing AI advancement, every claim will relate back to an order of magnitude (an OOM). So 1 OOM is a 10xing, .5 OOMs is a ~3.2xing, .75 OOMs is a ~5.6xing and so on. It's exciting to talk about OOMs and reflects the general theory of a superintelligence takeoff.

Aschenbrenner defines AGI as an AI System that can automate an AI researcher. Once we reach this point and assuming it's cost-effective, we can enlist hundreds of millions of AI researchers (who are also AI) and we will compress AI advancement to occur at a breakneck speed. Namely, the speed of AI advancement depends on the current level of AI - as AI gets smarter, AI will advance quicker. This is exponential.

There's two responses I've heard from people in reaction to this claim. The first is "Wow! Super-intelligence is fast approaching and will change everything so quickly." The second is "Ok, I get that the math works out this way but surely there's something that will limit it."

The truth is that there may be asymptotes and there is a pretty good notion of what they'll be. Aschenbrenner presents what we can call a 3-factor model for potential bottlenecks
1. Compute limitations
2. The nature of problems
3. Algorithmic limitations
##### Compute Limitations
AI development will take a whole lot of energy and computing power. The idea of hundreds of millions of (AI) AI researchers quickly deployed makes a compelling story for rapid advancement to artificial super intelligence, but will we even have enough energy and compute for these AIs to run?

First, to define what what I mean by compute limitations: you can either have a limitation on 1) power generation or 2) chips.

[This post by epoch.AI](https://epoch.ai/blog/can-ai-scaling-continue-through-2030) suggests that this will be the biggest limitation for the next few years. A couple countervailing factors include that 1) GPUs are becoming more efficient per watt, 2) AI researchers will and have identified ways to more efficiently use GPUs beyond increases in pure hardware efficiency (point 1) and 3) we can spread out training so that the compute required at a single point in time is less.

On the energy side, the hyperscalars are investing significantly in the power rights to solar farms and nuclear plants. But, power plants and energy infrastructure is difficult to stand up in short amounts of time and may lengthen the process to get to superintelligence.

One important note to consider is that the post by epoch.AI is estimtaing that we'll see a 10,000 fold increase in the number of FLOPs (floating point operations - used to quantify training volume) from the 2024 benchmark. This is still a pretty large increase.

#### The nature of problems
One common argument is that while superintelligence may become exponentially more intelligent and capable, problems also become exceptionally more difficult to solve (perhaps at a quicker rate than capabilities).

This is hard to know because who knows what the frontier of problems looks like once we have superintelligent AI. Aschenbrenner frames the question simply: for every 10x of progress, does further progress become more or less than 10x harder?

Again, [epoch.AI](https://epoch.ai/blog/do-the-returns-to-software-rnd-point-towards-a-singularity#conclusion) has done some thinking about this and found that based on recent technological advancement, we're seeing that there seems to be hyperbolic growth in the ability to solve problems with software.

Personally, I'm not quite satisfied with setting this bottleneck aside because it's imprecise to extrapolate this trend so far down the line. That said, if you're thinking in a probability distribution, it seems like you'd want to center your prediction on the "AI capabilities will outpace problem difficulty" side.

#### Algorithmic Limitations
We've seen significant algorithmic progress (which explains why AI models are getting so much cheaper to use), but there's a question of whether we'll be able to keep it up.

He points out that models have become increasingly effective on the the algorithm side due to some pretty basic (in retrospect) changes. I think chain of thought is particularly interesting because it feels remarkably intuitive that telling a model to "think through this step by step" would lead to a better outcome. At the same time however, that requires approaching the model as something that can "think."

He points to biology as offering an optimistic story. The difference between human brains and other animal brains have many basic similarities. With a few tweaks, human intelligence completely dominates that of other animals. Perhaps, this is the same way with AI.

Algorithms are increasingly important as we run out of internet data. I could have included "data" as a limiting factor when it comes to AI advancement, but I think that's looking at the wrong place. The real limiting factor is the algorithms we use on that data.

Google's AlphaProof gives a taste of why I'm not too concerned about data limitations. Initially trained on some proofs in a special language called Lean (which is used to write verifiably correct proofs in math), it then tries to prove a bunch of proofs and gets rewards for doing so. Reinforcement learning from human feedback works somewhat similarly in that the model will generate an output and then humans will mark whether it's good or not. The problem with that, which Lean doesn't have, is that you need a lot of humans.

And this is where things get exciting! What if we gave the model significant agency? What if we allowed it to make predictions, run experiments, and test them? And unlike humans who get too old and have to phase out of research and teach new humans, this one never dies, never loses its sharpness.

The key here is verification. In math, it's easy to verify. Same thing with code. Once we leave this space, things get much murkier. Let's take psychology, for example. We still have a lot of data in that space. If we train it on a subset of papers, provide it with a research question, and have it make a prediction, we can then use its prediction and compare it to the actual data. Even when we get to wider-reaching topics like sociology, there's significant amounts of data to test hypotheses.

For the superintelligence argument in which AI will overcome all of human intelligence, I wonder how long it will take it to do this in the humanities in particular. Without ground truth and requiring human input, it may be very difficult to grow at a quick pace. Perhaps these hyper-ambiguous questions are left to humans. Or, which I think is perhaps more likely, AI develops strong internal models of human behavior and interaction and then uses itself through self-play to grow in intelligence beyond humans.

One thought that changed my perspective is that while thinking through how AI may struggle in these spaces without much data, I began to realize how terrible humans must be at figuring things out in these fields. For example, people who study international relations are probably terrible at international relations compared to how good you could be. They simply don't have much data - they aren't able to run experiments. So, perhaps it's totally fine that AI won't have much data. It doesn't need to be perfect, or anywhere near it, to be better than humans.
#### What's next?
One conclusion I've drawn from reading Aschenbrenner's paper and writing this post is that superintelligence will very likely come quick once we get cost-effective AGI and if it doesn't, well it may be impossible. Exponential takeoff requires that the speed at which AI increases in intelligence must be a function of how much intelligence it currently has. So, for this whole thing to work out, AGI -> superintelligence has to happen quickly.