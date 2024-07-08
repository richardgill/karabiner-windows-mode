//---------//
// IMPORTS //
//---------//

local bundle = import 'lib/bundle.libsonnet';
local file_paths = import 'lib/file_paths.libsonnet';
local k = import 'lib/karabiner.libsonnet';
local devices = import 'lib/devices.libsonnet';


//------//
// MAIN //
//------//

{
  title: 'Windows Shortcuts',
  rules: [
    // Maps <C-Insert> to <Cmd-c> except in hypervisors, IDEs, and remote desktops
    k.rule('<C-Insert> (Terminal Emulators)',
           k.input('insert', ['control']),
           k.outputKey('c', ['command']),
           k.condition('unless', bundle.hypervisors + bundle.ides + bundle.remoteDesktops, file_paths.remoteDesktops)),
    // Maps <C-Insert> to <Cmd-c> in standard contexts
    k.rule('<C-Insert> (Standard)',
           k.input('insert', ['control']),
           k.outputKey('c', ['command']),
           k.condition('unless', bundle.standard, file_paths.standard)),
    // Maps <S-Insert> to <Cmd-v> except in hypervisors, IDEs, and remote desktops
    k.rule('<S-Insert> (Terminal Emulators)',
           k.input('insert', ['shift']),
           k.outputKey('v', ['command']),
           k.condition('unless', bundle.hypervisors + bundle.ides + bundle.remoteDesktops, file_paths.remoteDesktops)),
    // Maps <S-Insert> to <Cmd-v> in standard contexts
    k.rule('<S-Insert> (Standard)',
           k.input('insert', ['shift']),
           k.outputKey('v', ['command']),
           k.condition('unless', bundle.standard, file_paths.standard)),
    // Maps <Home> to <Cmd-Left Arrow> in standard contexts
    k.rule('<Home> (Standard)',
           k.input('home'),
           k.outputKey('left_arrow', ['command']),
           k.condition('unless', bundle.standard, file_paths.standard)),
    // Maps <C-Home> to <Cmd-Up Arrow> in standard contexts
    k.rule('<C-Home> (Standard)',
           k.input('home', ['control']),
           k.outputKey('up_arrow', ['command']),
           k.condition('unless', bundle.standard, file_paths.standard)),
    // Maps <S-Home> to <Cmd-Shift-Left Arrow> in standard contexts
    k.rule('<S-Home> (Standard)',
           k.input('home', ['shift']),
           k.outputKey('left_arrow', ['command', 'shift']),
           k.condition('unless', bundle.standard, file_paths.standard)),
    // Maps <C-S-Home> to <Cmd-Shift-Up Arrow> in standard contexts
    k.rule('<C-S-Home> (Standard)',
           k.input('home', ['control', 'shift']),
           k.outputKey('up_arrow', ['command', 'shift']),
           k.condition('unless', bundle.standard, file_paths.standard)),
    // Maps <End> to <Cmd-Right Arrow> in standard contexts
    k.rule('<End> (Standard)',
           k.input('end'),
           k.outputKey('right_arrow', ['command']),
           k.condition('unless', bundle.standard, file_paths.standard)),
    // Maps <C-End> to <Cmd-Down Arrow> in standard contexts
    k.rule('<C-End> (Standard)',
           k.input('end', ['control']),
           k.outputKey('down_arrow', ['command']),
           k.condition('unless', bundle.standard, file_paths.standard)),
    // Maps <S-End> to <Cmd-Shift-Right Arrow> in standard contexts
    k.rule('<S-End> (Standard)',
           k.input('end', ['shift']),
           k.outputKey('right_arrow', ['command', 'shift']),
           k.condition('unless', bundle.standard, file_paths.standard)),
    // Maps <C-S-End> to <Cmd-Shift-Down Arrow> in standard contexts
    k.rule('<C-S-End> (Standard)',
           k.input('end', ['control', 'shift']),
           k.outputKey('down_arrow', ['command', 'shift']),
           k.condition('unless', bundle.standard, file_paths.standard)),
    // Maps <C-Left Arrow> to <Opt-Left Arrow> in standard contexts
    k.rule('<C-Left Arrow> (Standard)',
           k.input('left_arrow', ['control']),
           k.outputKey('left_arrow', ['option']),
           k.condition('unless', bundle.standard, file_paths.standard)),
    // Maps <C-S-Left Arrow> to <Opt-Shift-Left Arrow> in standard contexts
    k.rule('<C-S-Left Arrow> (Standard)',
           k.input('left_arrow', ['control', 'shift']),
           k.outputKey('left_arrow', ['option', 'shift']),
           k.condition('unless', bundle.standard, file_paths.standard)),
    // Maps <C-Right Arrow> to <Opt-Right Arrow> in standard contexts
    k.rule('<C-Right Arrow> (Standard)',
           k.input('right_arrow', ['control']),
           k.outputKey('right_arrow', ['option']),
           k.condition('unless', bundle.standard, file_paths.standard)),
    // Maps <C-S-Right Arrow> to <Opt-Shift-Right Arrow> in standard contexts
    k.rule('<C-S-Right Arrow> (Standard)',
           k.input('right_arrow', ['control', 'shift']),
           k.outputKey('right_arrow', ['option', 'shift']),
           k.condition('unless', bundle.standard, file_paths.standard)),
    // Command Keys
    // Maps <C-Backspace> to <Opt-Backspace> in standard contexts
    k.rule('<C-Backspace> (Standard)',
           k.input('delete_or_backspace', ['control']),
           k.outputKey('delete_or_backspace', ['option']),
           k.condition('unless', bundle.standard, file_paths.standard)),
    // Maps <C-Delete> to <Opt-Delete> in standard contexts
    k.rule('<C-Delete> (Standard)',
           k.input('delete_forward', ['control']),
           k.outputKey('delete_forward', ['option']),
           k.condition('unless', bundle.standard, file_paths.standard)),
    // Maps <C-Enter> to <Cmd-Enter> in standard contexts
    k.rule('<C-Enter> (Standard)',
           k.input('return_or_enter', ['control']),
           k.outputKey('return_or_enter', ['command']),
           k.condition('unless', bundle.standard, file_paths.standard)),
    // Maps <C-S-Enter> to <Cmd-Shift-Enter> in standard contexts
    k.rule('<C-S-Enter> (Standard)',
           k.input('return_or_enter', ['control', 'shift']),
           k.outputKey('return_or_enter', ['command', 'shift']),
           k.condition('unless', bundle.standard, file_paths.standard)),
    // Alphanumeric Keys
    // Maps <C-a> to <Cmd-a> in standard contexts
    k.rule('<C-a> (Standard)',
           k.input('a', ['control']),
           k.outputKey('a', ['command']),
           k.condition('unless', bundle.standard, file_paths.standard)),
    // Maps <C-b> to <Cmd-b> in standard contexts
    k.rule('<C-b> (Standard)',
           k.input('b', ['control']),
           k.outputKey('b', ['command']),
           k.condition('unless', bundle.standard, file_paths.standard)),
    // Maps <C-c> to <Cmd-c> in standard contexts
    k.rule('<C-c> (Standard)',
           k.input('c', ['left_control']),
           k.outputKey('c', ['command']),
           k.condition('unless', bundle.standard, file_paths.standard)),
    // Maps <C-S-c> to <Cmd-c> in terminal emulators
    k.rule('<C-S-c> (Terminal Emulators)',
           k.input('c', ['control', 'shift']),
           k.outputKey('c', ['command']),
           k.condition('if', bundle.terminalEmulators)),
    // Maps <C-f> to <Cmd-f> in standard contexts
    k.rule('<C-f> (Standard)',
           k.input('f', ['control']),
           k.outputKey('f', ['command']),
           k.condition('unless', bundle.standard, file_paths.standard)),
    // Maps <C-h> to <Cmd-y> in web browsers
    k.rule('<C-h> (Web Browsers)',
           k.input('h', ['control']),
           k.outputKey('y', ['command']),
           k.condition('if', bundle.webBrowsers)),
    // Maps <C-i> to <Cmd-i> in standard contexts
    k.rule('<C-i> (Standard)',
           k.input('i', ['control']),
           k.outputKey('i', ['command']),
           k.condition('unless', bundle.standard, file_paths.standard)),
    // Maps <C-l> to <Cmd-l> in web browsers
    k.rule('<C-l> (Web Browsers)',
           k.input('l', ['control']),
           k.outputKey('l', ['command']),
           k.condition('if', bundle.webBrowsers)),
    // Lock Screen: Maps <Win-l> to <Ctrl-Cmd-q>
    k.rule('<Win-l> (Lock Screen)',
           k.input('l', ['command']),
           k.outputKey('q', ['control', 'command'])),
    // Sleep: Maps <Win-l> to <Ctrl-Shift-Power>
    k.rule('<Win-l> (Sleep)',
           k.input('l', ['command']),
           k.outputKey('power', ['control', 'shift'])),
    // Lock Screen: Maps <Alt-Ctrl-l> to <Ctrl-Cmd-q>
    k.rule('<Alt-Ctrl-l> (Lock Screen)',
           k.input('l', ['control', 'option']),
           k.outputKey('q', ['control', 'command'])),
    // Sleep: Maps <Alt-Ctrl-l> to <Ctrl-Shift-Power>
    k.rule('<Alt-Ctrl-l> (Sleep)',
           k.input('l', ['control', 'option']),
           k.outputKey('power', ['control', 'shift'])),
    // Maps <C-n> to <Cmd-n> in standard contexts
    k.rule('<C-n> (Standard)',
           k.input('n', ['control']),
           k.outputKey('n', ['command']),
           k.condition('unless', bundle.standard, file_paths.standard)),
    // Maps <C-o> to <Cmd-o> in standard contexts
    k.rule('<C-o> (Standard)',
           k.input('o', ['control']),
           k.outputKey('o', ['command']),
           k.condition('unless', bundle.standard, file_paths.standard)),
    // Maps <C-p> to <Cmd-p> in standard contexts
    k.rule('<C-p> (Standard)',
           k.input('p', ['control']),
           k.outputKey('p', ['command']),
           k.condition('unless', bundle.standard, file_paths.standard)),
    // Maps <C-r> to <Cmd-r> in standard contexts
    k.rule('<C-r> (Standard)',
           k.input('r', ['control']),
           k.outputKey('r', ['command']),
           k.condition('unless', bundle.standard, file_paths.standard)),
    // Maps <C-s> to <Cmd-s> in standard contexts
    k.rule('<C-s> (Standard)',
           k.input('s', ['control']),
           k.outputKey('s', ['command']),
           k.condition('unless', bundle.standard, file_paths.standard)),
    // Maps <C-t> to <Cmd-t> in standard contexts
    k.rule('<C-t> (Standard)',
           k.input('t', ['control']),
           k.outputKey('t', ['command']),
           k.condition('unless', bundle.standard, file_paths.standard)),
    // Maps <C-u> to <Cmd-u> in standard contexts
    k.rule('<C-u> (Standard)',
           k.input('u', ['control']),
           k.outputKey('u', ['command']),
           k.condition('unless', bundle.standard, file_paths.standard)),
    // Maps <C-v> to <Cmd-v> in standard contexts
    k.rule('<C-v> (Standard)',
           k.input('v', ['control']),
           k.outputKey('v', ['command']),
           k.condition('unless', bundle.standard, file_paths.standard)),
    // Maps <C-S-v> to <Cmd-v> in terminal emulators
    k.rule('<C-S-v> (Terminal Emulators)',
           k.input('v', ['control', 'shift']),
           k.outputKey('v', ['command']),
           k.condition('if', bundle.terminalEmulators)),
    // Maps <C-w> to <Cmd-w> in standard contexts
    k.rule('<C-w> (Standard)',
           k.input('w', ['control']),
           k.outputKey('w', ['command']),
           k.condition('unless', bundle.standard, file_paths.standard)),
    // Maps <C-x> to <Cmd-x> in standard contexts
    k.rule('<C-x> (Standard)',
           k.input('x', ['control']),
           k.outputKey('x', ['command']),
           k.condition('unless', bundle.standard, file_paths.standard)),
    // Maps <C-y> to <Cmd-y> in standard contexts
    k.rule('<C-y> (Standard)',
           k.input('y', ['control']),
           k.outputKey('y', ['command']),
           k.condition('unless', bundle.standard, file_paths.standard)),
    // Maps <C-z> to <Cmd-z> in standard contexts
    k.rule('<C-z> (Standard)',
           k.input('z', ['control']),
           k.outputKey('z', ['command']),
           k.condition('unless', bundle.standard, file_paths.standard)),
    // Punctuation Keys
    // Maps <C-/> to <Cmd-/> except in hypervisors, IDEs, and remote desktops
    k.rule('<C-/> (Terminal Emulators)',
           k.input('slash', ['control']),
           k.outputKey('slash', ['command']),
           k.condition('unless', bundle.hypervisors + bundle.ides + bundle.remoteDesktops, file_paths.remoteDesktops)),
    // Maps <C-Space> to <Cmd-Space> in standard contexts
    k.rule('<C-Space> (Standard)',
           k.input('spacebar', ['control']),
           k.outputKey('spacebar', ['command']),
           k.condition('unless', bundle.standard, file_paths.standard)),
    // Maps <Alt-Tab> to <Cmd-Tab> except in hypervisors and remote desktops
    k.rule('<Alt-Tab> (IDEs and Terminal Emulators)',
           k.input('tab', ['option']),
           k.outputKey('tab', ['command']),
           k.condition('unless', bundle.hypervisors + bundle.remoteDesktops, file_paths.remoteDesktops)),
    // Function Keys
    // Maps <F1> to <Cmd-Shift-/> in standard contexts
    k.rule('<F1> (Standard)',
           k.input('f1'),
           k.outputKey('slash', ['command', 'shift']),
           k.condition('unless', bundle.standard, file_paths.standard)),
    // Maps <F3> to <Cmd-g> in standard contexts
    k.rule('<F3> (Standard)',
           k.input('f3'),
           k.outputKey('g', ['command']),
           k.condition('unless', bundle.standard, file_paths.standard)),
    // Maps <Alt-F4> to <Cmd-q> except in hypervisors, IDEs, and remote desktops
    k.rule('<Alt-F4> (Terminal Emulators)',
           k.input('f4', ['option']),
           k.outputKey('q', ['command']),
           k.condition('unless', bundle.hypervisors + bundle.ides + bundle.remoteDesktops, file_paths.remoteDesktops)),
    // Maps <C-F4> to <Cmd-w> in web browsers
    k.rule('<C-F4> (Web Browsers)',
           k.input('f4', ['control']),
           k.outputKey('w', ['command']),
           k.condition('if', bundle.webBrowsers)),
    // Maps <F5> to <Cmd-r> in web browsers
    k.rule('<F5> (Web Browsers)',
           k.input('f5'),
           k.outputKey('r', ['command']),
           k.condition('if', bundle.webBrowsers)),
    // Special Functions
    // Maps Ctrl+Left Click to Cmd+Left Click
    {
      "description": "Ctrl+Left Click opens a new tab",
      "manipulators": [
        {
          "type": "basic",
          "from": {
            "pointing_button": "button1",
            "modifiers": {
              "mandatory": ["control"]
            }
          },
          "to": [
            {
              "pointing_button": "button1",
              "modifiers": ["command"]
            }
          ],
        }
      ]
    }
  ],
}

