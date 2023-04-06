Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E73D6D9DF0
	for <lists+blinux-list@lfdr.de>; Thu,  6 Apr 2023 18:51:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1680799874;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=FExJwB0SUWRkRKVMho8iQpx2nLUr+yB5d1+ieNtWEu4=;
	b=AiBo7gh7ooD3bAgKZ3QMuLzd6SfoEscVaETcCAFIvrnhwVDVTCnXhXgTKhah3nH5xJnWEY
	wURTvhj+lYHj3BUfokkk7Q2MfiTOJ1GMRNJTLdNZ7EapjhxIcqeKRKyjBlyi4pKivAHswx
	u4zvituDnWnNXmk475d9tXFKXP4mfoE=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-590-dDOLr6PsNbK27QTA6HKukw-1; Thu, 06 Apr 2023 12:51:10 -0400
X-MC-Unique: dDOLr6PsNbK27QTA6HKukw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 590153C0CD59;
	Thu,  6 Apr 2023 16:51:08 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 3F99B40C20FA;
	Thu,  6 Apr 2023 16:51:05 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id B01CD19465A2;
	Thu,  6 Apr 2023 16:51:04 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
Date: Thu, 6 Apr 2023 12:50:59 -0400
Subject: Still having issues with Orca not talking on fresh install of Debian.
To: Linux for blind general discussion <blinux-list@redhat.com>,
 orca@freelists.org
Message-ID: <mailman.2347.1680799864.558768.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Okay, so a few days ago, I did a clean CLI-only install of Debian
Bulls-eye, which I've since fully upgraded to Debian Testing. Everything
is working well in the command-line, but I'm having issues with
getting Orca to talk.

I have no interest in running a full desktop and my goal is to, as
needed, run a single GUI application(usually a web browser such as
Firefox or Seamonkey) with Orca and a lightweight window manager(I've
been using flwm).

I've been using a script that was posted on the audio games forum by
Storm Dragon, which worked flawlessly on the Knoppix install I
replaced with Debian and via a Knoppix live DVD environment, but when
I run the script on my Debian install, I get two problems:

1. Orca refuses to talk.

2. I lose the ability to use alt+Fx or ctrl+alt+Fx to switch to ttyx.

Based on some trouble shooting advice I got from a previous thread on
this issue, I think the issue might be with Speech Dispatcher. I've
tested with both Firefox(latest ESR packaged from Debian) and
Seamonkey(downloaded from the Seamonkey website and run from my home
directory, and best I can tell, The web browser launches and closing it
normally drops me back to the console that ran the script, Orca and
At-spi are loading, and in fact, seem to stay in memory until I log out
of the console that ran the script, but spd-say seems to hang whenever I
try running it from my Debian install, though even on the Knoppix
LiveDVD I'm using to web browse while I try to figure out what's up
with the Debian install, spd-say doesn't actually produce sound, but
it doesn't hang.

I did try installing Pulseaudio as someone suggested as well as purging
and reinstalling Orca and xserver-xorg and their dependencies, but that
didn't fix things, and if installing Pulseaudio had worked, I'd be
wondering how to cut it out as I've been getting by with just Alsa and
libpulseaudio0 for years and don't see the point of installing a
sizeable sound server if I don't need it.

I'm not sure if its relevant to the problem, especially since it only
shows up in the output some of the time, but here is some of what
startx prints to stderr some of the time:

TIMEOUT: something has hung. Aborting.

  File "/usr/bin/orca", line 285, in <module>
    sys.exit(main())
  File "/usr/bin/orca", line 282, in main
    return orca.main()
  File "/usr/lib/python3/dist-packages/orca/orca.py", line 818, in main
    init(pyatspi.Registry)
  File "/usr/lib/python3/dist-packages/orca/orca.py", line 613, in init
    loadUserSettings()
  File "/usr/lib/python3/dist-packages/orca/orca.py", line 436, in
loadUserSettings
    speech.init()
  File "/usr/lib/python3/dist-packages/orca/speech.py", line 90, in init
    _initSpeechServer(moduleName,
  File "/usr/lib/python3/dist-packages/orca/speech.py", line 71, in
_initSpeechServer
    _speechserver = factory.SpeechServer.getSpeechServer(speechServerInfo)
  File "/usr/lib/python3/dist-packages/orca/speechdispatcherfactory.py",
line 110, in getSpeechServer
    return SpeechServer._getSpeechServer(thisId)
  File "/usr/lib/python3/dist-packages/orca/speechdispatcherfactory.py",
line 102, in _getSpeechServer
    cls(serverId)
  File "/usr/lib/python3/dist-packages/orca/speechdispatcherfactory.py",
line 161, in __init__
    self._init()
  File "/usr/lib/python3/dist-packages/orca/speechdispatcherfactory.py",
line 172, in _init
    self._client = client = speechd.SSIPClient('Orca', component=self._id)
  File "/usr/lib/python3/dist-packages/speechd/client.py", line 579, in __init__
    self._initialize_connection(user, name, component)
  File "/usr/lib/python3/dist-packages/speechd/client.py", line 602,
in _initialize_connection
    self._conn.send_command('SET', Scope.SELF, 'CLIENT_NAME', full_name)
  File "/usr/lib/python3/dist-packages/speechd/client.py", line 327,
in send_command
    code, msg, data = self._recv_response()
  File "/usr/lib/python3/dist-packages/speechd/client.py", line 295,
in _recv_response
    self._ssip_reply_semaphore.acquire()
  File "/usr/lib/python3.11/threading.py", line 472, in acquire
    self._cond.wait(timeout)
  File "/usr/lib/python3.11/threading.py", line 320, in wait
    waiter.acquire()
  File "/usr/lib/python3/dist-packages/orca/orca.py", line 680, in timeout
    debug.printStack(debug.LEVEL_SEVERE)
  File "/usr/lib/python3/dist-packages/orca/debug.py", line 196, in printStack
    traceback.print_stack(None, 100, debugFile)


And here's the script I've been using:


#!/usr/bin/env bash

if [[ $# -eq 0 ]]; then
    echo "Usage $0 \"program name\" optional arguments."
    exit 1
fi

# Get the number of the current terminal
term=$(tty)
term="${term##*tty}"

if [[ "$term" =~ ^[1-9]+$ ]]; then
    echo
    # Uncomment to suspend Fenrir while the given application runs.
    # echo -n "setting set screen#suspendingScreen=$term" | socat -
UNIX-CLIENT:/tmp/fenrirscreenreader-deamon.sock
fi

programName="$1"
shift

# Accessibility variables
export ACCESSIBILITY_ENABLED=1
export GTK_MODULES=gail:atk-bridge
export GNOME_ACCESSIBILITY=1
export QT_ACCESSIBILITY=1
export QT_LINUX_ACCESSIBILITY_ALWAYS_ON=1
export SAL_USE_VCLPLUGIN=gtk3

# Uncomment to use xbindkeys
# command xbindkeys &

exec flwm &
# Try orca, but use orca -replace if it doesn't work.
pgrep orca || command orca &
command "$programName" $@

# Uncomment to resume Fenrir  after X closes.
# echo -n "setting set screen#suspendingScreen=" | socat -
UNIX-CLIENT:/tmp/fenrirscreenreader-deamon.sock

exit 0|


For what it's worth, I'm using espeakup as my console screen reader on
Debian and espeak-ng as my synthesizer. On Knoppix, I'm still using
espeak-ng, but the console screenreader is sbl on Knoppix.

Hoping I can find a solution to this issue as I really don't want to
return to using Knoppix as my daily driver as it limits me to a
outdated, 32-bit kernel and while I haven't yet been able to test GUI
performance because of this issue, I've already noticed huge performance
improvements with some of the CLI tools I use, so I'm hoping that
completing the transition will breath new life into this ancient
desktop of mine.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

