<style>
    h1 {
        font-size: 50px;
    }
    h2 {
        font-size: 35px;
    }
    p {
        font-size: 20px;
    }
    strong {
        color: #a60303;
        font-size: 30px;
    }
</style>
<h1>RPA Life Cycle</h1>
<h2>Create phase</h2>
</br>
<p>This is a simple phase where a business user logs in to MuleSoft RPA Manager and creates a </br>
new RPA process proposal, which consists of a new RPA process name that is not already in </br>
use, and a description. The description should be detailed enough to
aid in the evaluation of the </br>
RPA process proposal by business analysts and other roles associated with funding the RPA </br>
process project. Users with the correct permission can manually move proposed RPA </br>
processes to the Evaluate phase. </p>
</br>
<h2>Evaluate phase. </h2>
</br>
<p>While RPA has great potential to help companies increase employee efficiency and reduce </br>
company costs, not all tasks are appropriate for RPA. If a process is very complex and variable, </br>
or perhaps infrequently performed and quick to complete, it may not be cost-effective to use an </br>
RPA bot to automate it. With this in mind, the first phase of the RPA lifecycle is to determine </br>
whether or not the process in question is suitable for being handled by an RPA bot. <strong>MuleSoft </br>
RPA Manager</strong> has a built-in evaluation tool that enables you(acting in the role of a business </br>
analyst or other job role with financial responsibility for the project) to quickly assess the </br>
potential of an RPA process. The tool takes inputs relating to the cost of performing the task </br>
manually and of transitioning it to an RPA process. Then, it uses these inputs to perform a </br>
simple cost-benefit analysis to determine the potential value gained (or perhaps lost) by </br>
deploying an RPA bot to carry out the process. The results of the Evaluate phase can be used </br>
to help responsible job roles decide to accept or reject the proposed MuleSoft RPA process </br>
project. If the RPA process is accepted, MuleSoft RPA Manager automatically moves the RPA </br>
process to the Design phase. </br></p>
<p><srong>Note:</strong> In the later lifecycle phases, the evaluation information can still be viewed, but cannot be </br>
edited unless the RPA process is returned to the Evaluate phase. </p>
</br>
<h2>Design phase</h2>
</br>
<p>Once you have decided that it is worth it to create an RPA process for a given task, what comes </br>
next? Just like any other project, you need to make a plan. As a result, the second phase is to </br>
design your RPA process. You can think of the design phase as taking the process in question, <br>
and breaking it down into a flow chart that corresponds to what actions will be performed under <br>
what conditions. You can create this flow chart (called the <strong>Business Process Model and <br>
Notation or BPMN</strong>) in the <strong>RPA BPMN editor</strong> in <strong>MuleSoft RPA Manager</strong>. The BPMN can be </br>
generated either manually using a simple drag and drop interface or can be automatically </br>
generated using a tool called the <strong>MuleSoft RPA Recorder</strong>, hich includes an <strong>RPA BPMN <br>
editor </strong>
that is very similar to the <strong>RPA BPMN editor</strong> in the <strong>MuleSoft RPA Manager</strong>. The version of <br>
the editor in the <strong>MuleSoft RPA Recorder</strong> has the additional ability to merge RPA BPMN <br>
diagram files together. You can import and export RPA BPMN diagram files between both <br>
versions of the RPA BPMN editors. <br>
<br>
The BPMN flow chart that you build connects together various flow elements, including a <strong>Start Event</strong> that is always the first element of a BPMN diagram flow, RPA Bot Tasks that <br>
automatically carry out a sequence of automated activities, manual <strong>User Tasks</strong>that stop the 
RPA process until a user manually signals to continue executing the RPA process, <strong>External <br>
Tasks</strong> that like a User Task will stop the RPA process execution until a response is received on <br>
an external REST endpoint, as well as <strong>Gateways</strong> that can conditionally route the flow to various <br>
other flow element choices.<br>
The BPMN diagram file can specify include <strong>Activity Parameters</strong> that act as variables in the <br>
actual implementation to share data between flow elements. <br>
<br>
In addition, you can annotate any other documentation to the BPMN diagram to give instructions <br>
to RPA developers. In a similar way, the <strong>MuleSoft RPA Recorder</strong> automatically annotates<br>
documentation for an individual RPA Bot Task, which is all the user actions carried out while the <br>
MuleSoft RPA Recorder is actively recording. The MuleSoft RPA Recorder annotations are <br>
highly structured and can be used by MuleSoft RPA Builder to convert the annotations into <br>
detailed code blocks that can actually be executed to replay all the capture user actions. <br>
<br>
Once the RPA process BPMN design is complete, users with the correct permissions can move <br>
the RPA process to the Build phase, where the RPA process design is then blocked from further <br>
editing of the BPMN diagram.</p>
<br>
<h2>Build phase</h2>
<br>
<p>
After you have the process fully mapped out, you are ready to build the logic behind the <br>
process. For this task, you must transition from working online to working locally in <strong>MuleSoft <br>
RPA Builder</strong>. To simplify the design process, you can directly download your BPMN from <br>
<strong>MuleSoft RPA Manager</strong> into <strong>MuleSoft RPA Builder</strong> by browsing for it in the <strong>MuleSoft RPA <br>
Manager repository</strong>. Once an RPA BPMN file is loaded in to MuleSoft RPA Builder, any <br>
detailed documentation captured by the MuleSoft RPA Recorder is converted into blocks of <br>
executable code. At a high level, each BPMN symbol is converted to a flow element that is <br>
connected together. These flow elements can use variables (called <strong>Activity Parameters</strong>) that <br>
were specified in the BPMN diagram to shared data with each other across the RPA flow. <br>
<br>
The RPA BPMN diagram then acts as the skeleton of your RPA process. <br>
<br>
In the autogenerated code, the Start Event and RPA Bot Tasks are the most complex. Each of <br>
these elements has their BPMN documentation converted into detailed blocks of code called <br>
<strong>workflows</strong> that combinecode blocks from a Toolbox library that can actually execute the <br>
capture user actions to replay all the steps. The MuleSoft RPA Recorder usually literally <br>
captures the exact mouse actions and keyboard actions using absolute coordinates within either <br>
the particular application or in the Windows desktop. This is a good way to 
capture specific <br>
typed values and to track the user's navigation through the Windows system, but these literal <br>
recordings are often not the most stable (robust) or flexible representations of the user's actions.  <br>
For this reason, during the Build phase, an RPA developer will usually replace most of the <br>
autogenerated Action Step elements with other options from the Toolbox. <br>
<br>
Within <strong>MuleSoft RPA Builder</strong>, you then build out each of the steps in the BPMN either by using <br>
a drag and drop coding procedure or through a combination of drag and drop coding and <br>
recording of key operations. In the autogenerated implementation, In addition to creating actual <br>
elements for each BPMN element and connecting them together into flows, the documentation <br>
generated by the MuleSoft RPA Recorder contains instructions that are converted into actual <br>
executable components. For RPA Bot Task components and Start Event components, each <br>
component contains a <strong>workflow</strong> with detailed <strong>action steps</strong> to execute the captured user <br>
actions to exactly replay and automate the user actions. However, in practice, it is very common <br>
to replace most of the autogenerated action step elements with other options that are more <br>
robust and flexible. <br>
<br>
Additionally, within RPA Builder you can test individual Action Step elements, individual RPA <br>
Bot Tasks and Start Event elements (with all their Action Step and other Toolbox components <br>
combined), as well as the full  RPA process, in order to ensure the automation performs as <br>
expected.<br>
<br>
MuleSoft RPA Builder also has the RPA BPMN editor, so you can modify the BPMN diagram <br>
however you like as you enrich the implementation details. For example, you can edit or <br> 
completely replace any of the flow elements. You can easily copy and paste specific workflow <br>
components between workflows in other RPA Bot Tasks and RPA Start Event elements. <br>
<br>
In addition, you can export the entire workflow for a Start Event or RPA Bot 
Task to the Activity <br>
Library, and you can also import the entire workflow from the <strong>Activity Library</strong> to replace the <br>
workflow of a Start Event or RPA Bot Task. You can import workflows from the Activity library by <br>
reference, where they cannot be edited, or as a copy, where they serve as a template that you <br>
can then modify. <br>
<br>
MuleSoft RPA Builder can also store and reuse particular steps within a workflow as <strong>templates</strong>. <br>
Templates are stored as binary files with a tptx suffix and can then be imported to another <br>
MuleSoft RPA Builder installation. Templates appear as an additional
component in the Toolbox <br>
and are dragged and dropped to specific points in a workflow just like any other Toolbox <br>
component. <br>
</p>
<br>
<h2>Test phase</h2>
<br>
<p>
When you have finished building your RPA process, you upload it back to the <strong>MuleSoft RPA <br>
Manager</strong>. However, it is incredibly important that you do not immediately publish your process <br>
to a production <strong>MuleSoft RPA Bot</strong> without further 
testing. Due to the complex nature of the <br>
tasks being performed by the <strong>MuleSoft RPA Bot</strong>, it is critical that you thoroughly test the <br>
process to ensure it operates properly under all anticipated conditions. Fortunately, <strong>MuleSoft <br>
RPA Manager</strong> allows you to quickly create a series of <strong>Test Plan</strong> configurations. Each Test Plan<br>
should test the process under a different condition. If a <strong>MuleSoft RPA Bot</strong> successfully passes <br>
each of the test plans, then you can be confident that it is ready to be deployed. Otherwise, you <br>
likely need to modify your process logic or potentially even the BPMN itself.<br>
<br>
Each Test Plan configuration sets initial values for any Activity Parameters, specifies one or <br>
more available RPA Bots to run the RPA process, and specifies what type of user or Windows <br>
session should be used to execute the test. This is needed because the MuleSoft RPA Bot is <br>
using the Windows system's keyboard and mouse to execute all the action steps in the RPA <br>
process, so normally you need a dedicated session to run the RPA process so that the RPA <br>
process execution doesn't conflict with other users on the Windows system, such as being able <br>
to close all open windows, and being able to reproduce the correct screen resolution and other <br>
Windows configuration settings.<br> 
<br>
A Test Plan is manually triggered when a MuleSoft RPA Manager runs the test. <br>
<br>
MuleSoft RPA Manager provides other tools to help you monitor the RPA 
process in near-real <br>
time while it is running. This will show you tables of each flow element and action step as it <br>
executes, as well as a visual viewer that shows near-real time screenshots and an animated <br>
progress indicator in the BPMN diagram. <br>
<br>
When errors are reported by the MuleSoft RPA Bot that is running the RPA process during the <br>
test, MuleSoft RPA Manager can help you download a detailed diagnostic report called an <br>
<strong>analysis package</strong> that can be imported in to MuleSoft RPA Builder to see exactly where the <br>
error occurred and allow developers to begin troubleshooting for the root cause and work on <br>
solutions. <br>
<br>
After testing is completed, the RPA process is published to the next phase, where you schedule <br>
when and how often the RPA process should be triggered in a production environment. <br>
</p>
<br>
<h2>Deploy phase</h2>
<br>
<p>
Now is the moment that you have been waiting for. Once your process has passed all of your <br>
tests, it can be deployed to one or more <strong>MuleSoft RPA Bots</strong>. Just like the test phase, this task <br>
can be done directly from <strong>MuleSoft RPA Manager</strong>. To deploy your process, you organize all <br>
the required configuration into a deployment configuration called an <strong>Execution Plan</strong>. The steps <br>
to configure an Execution Plan are nearly identical to creating a Test Plan with one difference: <br>
an Execution plan contains <strong>Schedulers</strong> to decide when and how often to trigger the RPA <br>
process. A Scheduler is often configured to coincide with the availability of external systems that <br>
will be accessed by the RPA process, or availability of users wh
o are expected to carry out User <br>
Tasks in the RPA process in a timely manner. Once an Execution Plan is run, the RPA process <br>
automatically advances to the final Production phase. <br>
</p>
<br>
<h2>Production phase (Manage and Monitor)</h2>
<br>
<p>
After deploying your RPA process to a bot, you are likely incredibly excited. Because of the well-<br>
thought-out design, the bot immediately starts saving countless work hours. However, just like <br>
any code, it is important that you monitor the RPA process and respond to any issues as they <br> 
arise. Fortunately, <strong>MuleSoft RPA Manager</strong> has built-in monitoring capabilities. These features <br>
allow you to quickly assess the performance of the bot. <strong>MuleSoft RPA Manager</strong> can even send <br>
out automated alerts should errors arise. <br>
<br>
Just like during testing, when error s are reported from a MuleSoft RPA Bot, MuleSoft RPA <br>
Manager can help you download a detailed diagnostic report called an <strong>analysis package</strong> that <br>
can be imported in to MuleSoft RPA Builder to see exactly where the error occurred and allow <br>
developers to begin troubleshooting for the root cause and work on solutions.
</p>