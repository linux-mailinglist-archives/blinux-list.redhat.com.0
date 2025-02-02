Return-Path: <blinux-list+bncBCD3RKH4ZIBBBN67766AMGQEW6BZRPQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E4F7A25054
	for <lists+blinux-list@lfdr.de>; Sun,  2 Feb 2025 23:20:42 +0100 (CET)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7b7477f005esf886915885a.0
        for <lists+blinux-list@lfdr.de>; Sun, 02 Feb 2025 14:20:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1738534841; cv=pass;
        d=google.com; s=arc-20240605;
        b=VPw2W/46nopJtgLWyNHZGE2bI+aCAkTMN9OwwtvdEZ64Z4ZomanB7S9FHv3ooB7Wcq
         k3QqsexjlsHpj4tdd1gA9hRv0vdW79uGf28PBrE/pHZpbnGqgHcLFLryl8A52lPnnWG1
         dlpN4CKDqF/l11fBs8ZDjZ/ybV1FpDKdM0/ZsXDqmI4b4BOtwKrs8KxB/nzCU7wy7GYU
         LZQ0RMdrjHwmY72unCXck+wEnEGJsR3PQiFhLkkCkjg3Et2B2SO+HMn2lqFsFdx9UY0s
         E47yqzYwJAXK7Keo0dcFxktAZ/GHYhuqTqWvfPFdPNDdWlYHfxy/OoDbAuHjjRirXgZA
         AKKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:delivered-to;
        bh=+tWqj3QOAbfWIH5QLSb61DoT3td8B4NL/Dq8OKPWSgY=;
        fh=0z5VhNxu+zB+YueIvcwl/1JhAE9Izqd2o23AXj4JMqA=;
        b=D2Isj9+DpsTey0oYVlO3JXCwXaENTsIjrUlWi/f1qZoZtfJRtmF9BZD8tkC4nH/E69
         F4T0/iU+blrEuZYCN4NGzJm1B8uh2e8hVNU4AOe5M1J8ydp2p0gIHIfryhLoRzOS8pi/
         6cVwOQy0jpJp/BE9G7oytHzBrrPaVt1L2C/S5Q+cuvHyP/5KtMMakbQ7O08LGJXUmx95
         BHq2JNh+NHZD+/WSJYlTeZ/1MYH1CmzlmBJnB3JWSMj11YOcuBl+gj7gVbHuy69uS+W3
         Wlqdqpbt+nF3jr1SeNjv5ZkEWJFIqQO6B5kpO9suMv0qk9P9Y93g3TLV3hKNoHNg3JC+
         oFiA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of mewtamer@gmail.com designates 209.85.218.44 as permitted sender) smtp.mailfrom=mewtamer@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738534841; x=1739139641;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+tWqj3QOAbfWIH5QLSb61DoT3td8B4NL/Dq8OKPWSgY=;
        b=uc5H3w5nyDnsqOx0hP+e70T0mMrCRumKY4xqz0Kgrs7zl7re/OrLCGdJ2uLsCQL7Da
         mtMazQ9GWuDKhb5hXAm0d3QrbUKwDLA1t1gVbGSlxqXZLhDPYdiOFxbucQMagw+zB+Ir
         tNQja7bMYg3c2xRjJTo7C97IWkSRapGlzB68ZEIFXQ8NbaD3RjsBeA3V4ymfO3znmdLS
         T/Vj5DorCj6YY7k18T/swN/a8RsLciSqTDmKwKxhUrMPL1Qo7le/xb3ftoHNfP6m85cB
         KbtM5mvGcEuM3DUyQ15BohzCBLhndnpjQ1ldenC1cPYWEywxX+A5MaCus5w30cRPVL0i
         m7/Q==
X-Forwarded-Encrypted: i=2; AJvYcCUPlyF/pwe5o0ph+gOYnF4/3n+FBJnNEm44ayC+sDvF39hSRrYktYGDWUqdXd4b1wOn62Psbg==@lfdr.de
X-Gm-Message-State: AOJu0YzdufhCML/tFbHRz9QcjSn0IE7eRDCV/Kje1cYi+MZwCir2tABh
	qLwh7S9y2owNbae+DlW27xJ2iAlLxaxYsAZWd+ZYG8UEXYcBo24cyzSf0Cs2FOg=
X-Google-Smtp-Source: AGHT+IE/rYrWrykzjOVIRh4cGtLAF/1HG7nY+rGVLcXmm7OdBZCdY9TSHahUBSjtuy2oR0clIXyHrw==
X-Received: by 2002:a05:620a:24cc:b0:7b6:753b:9b5d with SMTP id af79cd13be357-7bffcd9b6b1mr3099663585a.36.1738534840424;
        Sun, 02 Feb 2025 14:20:40 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:e5c6:0:b0:6dd:1724:e378 with SMTP id 6a1803df08f44-6e251fe7327ls15730796d6.2.-pod-prod-06-us;
 Sun, 02 Feb 2025 14:20:39 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXKOlkex+dFNFyTyIEA0FZZ4+eb0v42Jedxj4nHm2VxfDqeqQID7abYjqgABruazLD52dHJl+/erNcquw==@gapps.redhat.com
X-Received: by 2002:a05:6214:226c:b0:6df:9771:978e with SMTP id 6a1803df08f44-6e243c5f242mr293141256d6.34.1738534839373;
        Sun, 02 Feb 2025 14:20:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1738534839; cv=none;
        d=google.com; s=arc-20240605;
        b=eByzEna4hRMDozNTO8GEpBf4ijrfkFGPN4l/3ogkImP/+ZJEV5g/V2tMUBr0Fv4/0J
         TXYLQPWWFzkv2znOTVKGs9xbU5Q+/hvB2cIGrqB7Xh33/guDkOkgCSrVk00gyIJAHyge
         Un5jMgMl1Px5JOYj/LXND+FXF+F1fYAtzXx+xvHav4TyW1GXeVQjQBJIdZbK9ukUTtqI
         W6xzjXSa999FFHs5FgSN/pB3OSi/91VnmiPkwRXGdzRMWAAuxS8tD01KWXqSNR5ENJT8
         5PN6nQOZrBeJqiSned4fxuWqKWFAafCk7dtgVBfknDLNNz7i6ZWW/6Z2yNK7w+WzGvIM
         sjEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:delivered-to;
        bh=kTsLAvSJUJCx/NUsUOyCiFiCMNivZXGSenMGHt08NkY=;
        fh=afeQqVKmYf9Me5LKKoc1/L+JG9TzQiygF/Tjngx+Kf8=;
        b=BXURgsrxaCErxbcvLjV2umumIBqiyTYkM4NxqSgIfJAQ0VkBaO/eZkoM8XH2OQU6Rr
         /R9k6kO9W1KS1V5BFqT5L5PQ1oDvAg/1OqvpNzKjCAj+SOPXITanI3DylMUimOas1Rf7
         7uJ1jPD+JerYieCyKYHtdhbPdyylsGcBnXiqe/+k/eGpO06vHV3o9mjf9PJ5OfYslGKc
         ojNv0gBoT93QcD1iOy87dZ3+tAO88zAm4yVjoDlWcjCeL+LPEs/8fydT/sQBCe4O+LnE
         3ueEv//m7ZavrnYq51MEWB1vqSEPH75NuTv/FZTG9Vb8rwsIA4d4Vykxgv8AFPWskFuN
         p3Tw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of mewtamer@gmail.com designates 209.85.218.44 as permitted sender) smtp.mailfrom=mewtamer@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6e2549702c1si78379426d6.212.2025.02.02.14.20.39
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Feb 2025 14:20:39 -0800 (PST)
Received-SPF: pass (google.com: domain of mewtamer@gmail.com designates 209.85.218.44 as permitted sender) client-ip=209.85.218.44;
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-623-jURC77s2M6GDjH8ePvvUWQ-1; Sun,
 02 Feb 2025 17:20:38 -0500
X-MC-Unique: jURC77s2M6GDjH8ePvvUWQ-1
X-Mimecast-MFC-AGG-ID: jURC77s2M6GDjH8ePvvUWQ
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3A1A5180035E
	for <blinux-list@gapps.redhat.com>; Sun,  2 Feb 2025 22:20:37 +0000 (UTC)
Received: by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 3582618008C8; Sun,  2 Feb 2025 22:20:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.124])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3298A180035E
	for <blinux-list@redhat.com>; Sun,  2 Feb 2025 22:20:37 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id AEA03180034D
	for <blinux-list@redhat.com>; Sun,  2 Feb 2025 22:20:36 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com
 [209.85.218.44]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-591-bAptXu3TPqGdJnCW3fZ5EA-1; Sun, 02 Feb 2025 17:20:34 -0500
X-MC-Unique: bAptXu3TPqGdJnCW3fZ5EA-1
X-Mimecast-MFC-AGG-ID: bAptXu3TPqGdJnCW3fZ5EA
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-aa67ac42819so557656666b.0
        for <blinux-list@redhat.com>; Sun, 02 Feb 2025 14:20:34 -0800 (PST)
X-Gm-Gg: ASbGnctgI2UF5B2sRmm0HIcM5qt2KBgC0jhpyjZJ7k90KRFpHru2gi6VujETC9pfG+C
	ZkFwPSs1oveoAJV538Jqj6j+EFqhWE6JNrDfJ20PV9bMwc5B/vX5MfjXy4wbVhwmggDk0LD/BnB
	FzilF9wEIQIEV/Ds6ki9Gc+SH3mi2x3g==
X-Received: by 2002:a17:906:57cf:b0:ab6:dd6b:2c3 with SMTP id
 a640c23a62f3a-ab6dd6b05a4mr1668069066b.16.1738534832570; Sun, 02 Feb 2025
 14:20:32 -0800 (PST)
MIME-Version: 1.0
References: <Z5_gsJcWqpCA0JmM@panix.com>
In-Reply-To: <Z5_gsJcWqpCA0JmM@panix.com>
From: Jeffery Mewtamer <mewtamer@gmail.com>
Date: Sun, 2 Feb 2025 22:21:41 +0000
X-Gm-Features: AWEUYZmzkUtSDHoxZuXSRkuJG3bQz_OyiJvTm134y6yBhGhSg_7n_LXNzz86jHY
Message-ID: <CAO2sX31iZ1LjTgXipe-tTX0--jStKRN6XvaZFXXQn5U_-y6dWg@mail.gmail.com>
Subject: Re: ever onward with firefox
To: Rudy Vener <salt@panix.com>
Cc: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-MFC-PROC-ID: sjxeutagDjxN5o_zxyaNIbPhSsdumLzoyPA-ESwu56Q_1738534833
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: adpTl3bf_8LWs2mI-NzdaiQaMnGwHr97Z1J5DSE07QI_1738534837
X-Mimecast-Originator: gmail.com
Content-Type: multipart/alternative; boundary="000000000000200abe062d302fe4"
X-Original-Sender: mewtamer@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of mewtamer@gmail.com designates 209.85.218.44 as permitted sender) smtp.mailfrom=mewtamer@gmail.com
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

--000000000000200abe062d302fe4
Content-Type: text/plain; charset="UTF-8"

As a general rule, once a textbox has focus, usually because you used
Orca's e navigation hotkey to jump to it and switched to focus mode or
tabbed to it from an adjacent form element, you should be able to just type
into it.

That said, I know console applications don't always use standard keyboard
shortcuts that are near universal across both Windows and Linux when it
comes to editing text, so here are some basic keyboard shortcuts when in a
textbox that should also apply to most GUI text editors, word processors,
etc.:

Textboxes in web forms come in two versions:  single line and multi-line,
and best I can tell, Orca doesn't make a distinction between them. In
either case, left/right arrow will move the insertion point one character
at a time, and ctrL+left/right arrow will move the insertion point to the
next whitespace or punctuation character, and home/end to the beginning/end
of the line. for Single line text entries, up/down arrow act like home/end,
while for multi line, they move by line. PageUp/PageDown will move by
multiple lines in a multi-line textbox, but they are rather unpredictable.

Hold shift and use arrow/navigation keys to select text, everything acting
like it does for moving the insertion point, including the ctrl+left/right
arrow to go by word/string.

ctrl+a: Select all. If a textbox is focused, this will select the contents
of the text box. If you are in browse mode, it will select everything on
the page.

delete/backspace: will delete whatever is selected, if anything, if nothing
is selected, they just delete the next/previous character relative to the
insertion point.
ctrl+c: copy selection
ctrl+x: cut selection
ctrl+v: paste last thing copy/pasted
ctrl+shift+v: This isn't useful when editing text in firefox, but if you
need to copy something from Firefox or another GUI application into a
terminal window, the normal ctrl+v to paste often won't work and you'll
need to use ctrl+shift+v to paste into the terminal.

Firefox has a built-in spell checker and Orca should announce an
unrecognized word when you press space at the end of the word or move the
insertion point into it, and Firefox's suggestions for correcting the
unrecognized word are part of the context menu when a textbox has focus.

As for copying the contents of a file into a textbox,, if you type:

file:///path/to/directory

into Firefox's address bar(accessed with ctrl+l), you can navigate local
directories, and if it's a file Firefox can read, you can open local files,
though Firefox will only open plain text files that have the .txt extension
as far as I know. I have several local directories where I'm likely to want
to copy the contents of a text file contained therein into a web form, and
when I want to do so, I open the appropriate bookmark to a local directory
in a new tab, open the file I want to copy, elect all, copy, switch tabs,
and paste. Firefox also has an open file option in the file menu, through I
personally find the generated directory listings easier to navigate than
the open file dialog. Sadly, I'm not aware of any way to just insert the
contents of a local file into a textbox without manually opening the file
and copying its contents, and naturally, you'd need another GUI app for
files that can't be opened directly in Firefox.

Hope that helps and sorry if some of this is super basic. I've been using
firefox since before Firefox 1.0, longer than I've been using Linux and I
was a long time Linux user when I went blind and I've never gotten the hang
of using a text-mode web browser, so I really don't know how much of this
is stuff you genuinely don't know coming from text browsers and how much is
stuff I take for granted becuase I struggle to remember a time before I
learned.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

--000000000000200abe062d302fe4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>As a general rule, once a textbox has focus, usually =
because you used Orca&#39;s e navigation hotkey to jump to it and switched =
to focus mode or tabbed to it from an adjacent form element, you should be =
able to just type into it.</div><div><br></div><div>That said, I know conso=
le applications don&#39;t always use standard keyboard shortcuts that are n=
ear universal across both Windows and Linux when it comes to editing text, =
so here are some basic keyboard shortcuts when in a textbox that should als=
o apply to most GUI text editors, word processors, etc.:</div><div><br></di=
v><div>Textboxes in web forms come in two versions:=C2=A0 single line and m=
ulti-line, and best I can tell, Orca doesn&#39;t make a distinction between=
 them. In either case, left/right arrow will move the insertion point one c=
haracter at a time, and ctrL+left/right arrow will move the insertion point=
 to the next whitespace or punctuation character, and home/end to the begin=
ning/end of the line. for Single line text entries, up/down arrow act like =
home/end, while for multi line, they move by line. PageUp/PageDown will mov=
e by multiple lines in a multi-line textbox, but they are rather unpredicta=
ble.<br></div><div><br></div><div>Hold shift and use arrow/navigation keys =
to select text, everything acting like it does for moving the insertion poi=
nt, including the ctrl+left/right arrow to go by word/string.<br></div><br>=
<div>ctrl+a: Select all. If a textbox is focused, this will select the cont=
ents of the text box. If you are in browse mode, it will select everything =
on the page.<br></div><div><br></div><div>delete/backspace: will delete wha=
tever is selected, if anything, if nothing is selected, they just delete th=
e next/previous character relative to the insertion point.<br></div><div>ct=
rl+c: copy selection</div><div>ctrl+x: cut selection</div><div>ctrl+v: past=
e last thing copy/pasted</div><div>ctrl+shift+v: This isn&#39;t useful when=
 editing text in firefox, but if you need to copy something from Firefox or=
 another GUI application into a terminal window, the normal ctrl+v to paste=
 often won&#39;t work and you&#39;ll need to use ctrl+shift+v to paste into=
 the terminal.</div><div><br></div><div>Firefox has a built-in spell checke=
r and Orca should announce an unrecognized word when you press space at the=
 end of the word or move the insertion point into it, and Firefox&#39;s sug=
gestions for correcting the unrecognized word are part of the context menu =
when a textbox has focus.</div><div><br></div><div>As for copying the conte=
nts of a file into a textbox,, if you type:</div><div><br></div><div>file:/=
//path/to/directory</div><div><br></div><div>into Firefox&#39;s address bar=
(accessed with ctrl+l), you can navigate local directories, and if it&#39;s=
 a file Firefox can read, you can open local files, though Firefox will onl=
y open plain text files that have the .txt extension as far as I know. I ha=
ve several local directories where I&#39;m likely to want to copy the conte=
nts of a text file contained therein into a web form, and when I want to do=
 so, I open the appropriate bookmark to a local directory in a new tab, ope=
n the file I want to copy, elect all, copy, switch tabs, and paste. Firefox=
 also has an open file option in the file menu, through I personally find t=
he generated directory listings easier to navigate than the open file dialo=
g. Sadly, I&#39;m not aware of any way to just insert the contents of a loc=
al file into a textbox without manually opening the file and copying its co=
ntents, and naturally, you&#39;d need another GUI app for files that can&#3=
9;t be opened directly in Firefox.</div><div><br></div><div>Hope that helps=
 and sorry if some of this is super basic. I&#39;ve been using firefox sinc=
e before Firefox 1.0, longer than I&#39;ve been using Linux and I was a lon=
g time Linux user when I went blind and I&#39;ve never gotten the hang of u=
sing a text-mode web browser, so I really don&#39;t know how much of this i=
s stuff you genuinely don&#39;t know coming from text browsers and how much=
 is stuff I take for granted becuase I struggle to remember a time before I=
 learned.<br></div></div>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--000000000000200abe062d302fe4--

