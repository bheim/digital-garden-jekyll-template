Over the past few weeks, I've taken part in an AI safety fundamentals group run by the Existential Risk group at UChicago. The field is dense and difficult to wrap one's head around, but it doesn't take much learning to understand its importance.

Its justification is a straightforward argument: there is a good chance that artificial super intelligence (ASI - which is AI that is more capable than all humans) poses a catastrophic risk to humans. When something more powerful than humans is created, we may become like the ants underneath the feet of humans. Moreover, this very well could happen in the next decade.

### AI Capabilities
How good will AI get and how will it happen?

[[Situational Awareness, The Decade Ahead]]
[[My Thoughts on AI Capabilities]]

### Alignment
IBM defines AI alignment as **the process of encoding human values and goals into AI models to make them as helpful, safe and reliable as possible**. Cracking what this means is difficult, if not impossible, due to the moving targets within it. Human "values" and "goals" are not static and they are not common. Different people and cultures will have different notions of what AI should do.

Defining the goal is a problem within itself. Over the next weeks, I'll document below 1. the attempts to solve this problem and also 2. how important this field is. I'll try to do that for each of the areas I list.

### Threats to Alignment
It may seem premature to identify what threats exist to alignment before we've defined alignment, but I don't think that's the case. Most of what will be covered below focuses on research that looks at the gap between "what we intended the AI to do" and "what AI actually did." I think a lot of the "what is alignment" question can be boiled down to how we define the "we" in the prior sentence.

The key point is that in ensuring any vision of alignment, intention will have to line up with execution. Distance between those is fundamentally misalignment.

#### AI Security
AI security studies how we can prevent adverse actors from using AI to do misaligned actions. Even really smart AI systems can be fallible and are able to be manipulated.

One of my favorite examples is how "adverse noise" can be added to images to entirely misclassify them. I.e., if you have an image classifier and you show it a picture of a panda, you can add noise to it so that it's classified as a gibbon even though it still looks exactly like a panda.

In this example, nothing catastrophic will happen. However, imagine a world in which AI is tasked with eliminating threats to humans. If adversarial noise is added to make humans come across as threats to humans, then the AI would eliminate the humans thinking they're threats. Perhaps a bit contrived, but nonetheless clearly a threat.

Jailbreaking is another part of AI security in which you can find ways to cleverly get an AI to help you build a bomb despite it being told not to help with such queries. Again, you can probably find out how to build a bomb with a textbook and AI wouldn't cause much damage here. However, once AI has agency, what would stop it from following a command to then create and use that bomb?

#### AI Safety
AI safety studies how we can prevent AI from itself being misaligned. To clarify, it's not mutually exclusive from AI security - it's intuitive to see how they're related. AI safety, however, focuses less on adversarial human actors and more on AI being the adversarial actor.

A key idea in this space is [[instrumental convergence]], which is the idea that no matter what goal we provide to AI, it will attempt to seek more power. Namely, the goal converges to be power-seeking. [[alignment faking]] is another key problem in which AI systems will pretend to be aligned with human values to protect itself from being shut down or re-trained.

#### AI Economics
AI economics studies how AI will shape the economy once we achieve ASI and seeks to minimize potential risks and negatives. I've found that AI economics tends to be on most people's minds when it comes to AI. This is likely due to the slowdown in entry-level hiring we've seen that AI is likely contributing to.

Currently, we have a system of fairly distributed wealth. It's not all equal, of course, but for the most part in America, people are pretty well off. Individuals can provide a good amount of value to society and are thus rewarded for it. However, what happens when humans can't provide any value? Namely, when the output / cost of computers is far greater than that of humans? Well, you have problems that traditional capitalism can't solve for, and AI economics attempts to address this.


#### AI Governance and Policy
AI governance and policy focuses on how to create and maintain institutions and regulations that push towards aligned AI. Whereas AI security and safety research is interested in the technical side of how we create aligned AI, governance relates to how we create systems in which we promote the creation of aligned AI and how that's managed.

This is the topic I know the very least about, so my above description is likely to change.





