Return-Path: <blinux-list+bncBDP7P6HU4IERBN546OXAMGQEPXETQSY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com [209.85.210.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EE1686801A
	for <lists+blinux-list@lfdr.de>; Mon, 26 Feb 2024 19:53:45 +0100 (CET)
Received: by mail-ot1-f70.google.com with SMTP id 46e09a7af769-6e4a0e445b6sf878881a34.2
        for <lists+blinux-list@lfdr.de>; Mon, 26 Feb 2024 10:53:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1708973624; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZqD/r1Me4GJA+9uG+qxPffMHXvsy7fjl6WtzTkSHFMcS16amJJizU8VwJ+9FnOXSD+
         Owx53YrxmSgwVwMZHZJwTpZbEFCNmyzsnnmQCtT+8G9ig458t9+Vk2pVdce/6dwuvAbh
         YLZ4lyjYmWVv7Tf6paitw4Ioi48YNB3LRPQo9WCR+X+6DmBj6V/WgdJIpZItD40YQH4w
         DZ05Se3LP1UD+sL79jexpqMlJ8P+1NeKkiJ2cGXkivcRLUFZFALC0zKrUxwUwlRaEZRW
         Fj6QflPsX5BrWhZ0TsEvKnWpHTH+fQ/a/MkOmWUm+fFZyBEWM0ZAvvABs+kWRJ6ZfwaV
         sKdQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-id:message-id:date:mime-version
         :subject:to:from:delivered-to;
        bh=VQiB+wP45U8LysZ2nTNi13P4in90p4EO5fPbvSaLkzg=;
        fh=h5a5CK6hvfeGF4sE/8QAGXfNtak2+G679lf58dPwryo=;
        b=SFuwx8gXoC2a6isiA5KpJMkFHUHq7aEPmHqe5MZlD2IzKJlsAgyVhSqSi0RpB1ncWV
         RUm7N1bL0WZRrC8ZkoaVJH0ieYYE8yMdqGlqbE4AQ8L+bpfuMwAGPz/DnmoiHK8RIA4Z
         QL/KQdaNPmmOREFn+IexjG3doBzctGyhiRG7uO8swQysKlpeqvO0S1jTctoVkDtXQThh
         UogRL/eoffChVoDdjsmFd+GuBeUixA/NgMUImccTJuR63r+gQBlXQolI0B/bF8a1kzMN
         WY1Dicx+IIOqrgIyl3u0N1YCo0eoR7UHSzS+Lnk9rch4IfIeL8MZZifw6wN5xEr2DsDw
         sM5w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.138 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708973624; x=1709578424;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:content-id
         :message-id:date:mime-version:subject:to:from:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VQiB+wP45U8LysZ2nTNi13P4in90p4EO5fPbvSaLkzg=;
        b=JO2hnB4+DEcNb90KdGqBWz1Zgsj7fNaKjYG+DF7TYhUG5FJV6rtzgg2iu7TDBXb2Pe
         qMArNJxb3oEPIkTDLIiIOhLt7xFfHUnyA8crAEScbpUHOcD93NFNYiDAvhosxjwBATN0
         OB5mBZiVCgZScezrHrALekNkHF4HY3fh2xaY6Gt2KCj4rjqILTITFHGsy4md40NrIhcU
         kfv0KmwYPDoQ2twWdxaOMELlBDq68TrqZo1iIu1ClqLul+m8Guv4FYC15MjxrmNrwcD3
         wjemRLOvVyluohjhMa5uGC3SMEbnNEQUUfynz1Kah3x/GkYNTo2EDw6HDxqkJ3vatc5l
         GE+A==
X-Forwarded-Encrypted: i=2; AJvYcCVX+VZt+dh9zPdvWFV8hOw+m8YuTUZLndommzwEQ0ao8AmTwr0v4RyoFmhyUEewSpSBaZGm2y7lahauraYbH8Su0v1Z9zgIqMB0
X-Gm-Message-State: AOJu0YzkxEPyJQj/OOAze04vAdtKRe2PepFwXwFF/xmxmKQEgbkX+Vrq
	78f7EuIT3cATaYoojWXHwq/mBOpuoUbpfCqLm2cXuxivqJ8mtq+IxlmwMb4IJ5c=
X-Google-Smtp-Source: AGHT+IE4NTqcWvOeOQeXRlXfPA1ip1Jd/p8vdGFOhHKzgzgoE0WcXS1MbjMFdqF//Bu2X287Y9OI4w==
X-Received: by 2002:a9d:7ad8:0:b0:6e4:76be:d4f1 with SMTP id m24-20020a9d7ad8000000b006e476bed4f1mr8017418otn.26.1708973623923;
        Mon, 26 Feb 2024 10:53:43 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5c0d:0:b0:42e:80cf:ed1f with SMTP id i13-20020ac85c0d000000b0042e80cfed1fls593040qti.0.-pod-prod-05-us;
 Mon, 26 Feb 2024 10:53:43 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVdqHLpB+cxsAQRpfGjWXiA8r97w6+txq9YXXeZyeGeqK/XWNTW111Xpq3uXwTbvdV19g6ZzmZCWkKoSSbx7hvuFZEAHTzcL5aVUzRU
X-Received: by 2002:a05:620a:4012:b0:787:c697:7dfb with SMTP id h18-20020a05620a401200b00787c6977dfbmr8643623qko.53.1708973622945;
        Mon, 26 Feb 2024 10:53:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1708973622; cv=none;
        d=google.com; s=arc-20160816;
        b=fNa8qZAjgPcQ4fYiLWSSE65LB+pdDEJyrHQUIgc8yITR7foxGVgU6TmCptAkZBPTka
         hIW3IrPY4gV2ZUAzR/YIBHze1oyqIHmlbxwkKie44EJbDaCxh2FCgyp/61rJ7Vhdxbfx
         VU8UsNUazirbqMx08f2xkjuXyCv59kS+Q2RMm1zPjybW2LwGhxzckbzqmj63rE7nqb6q
         V/Kag4KnNR7vtgEvPmiTHLTL1mDd/mTM9PjIpzRCwzagXbWj9rXSD7BK3T4ITKT8X4Hb
         V8eNhgbbmB+e/UeJKXsxksvILzojHX1POoIby0TqUYYjFw0UAeAnsFYXu51Tgessc0mX
         RMTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-id:message-id:date:mime-version:subject:to:from
         :delivered-to;
        bh=9iJL5hAt00V8P46UZX9D7d2JDKmqFkm3BpBI7FWyay0=;
        fh=UXMxI4s4Djxgk+RlX09cLFOW2BmKQ694I1DkcKIh55A=;
        b=yyVhxeDeVKQg9r8UOgK2lLsxy0QqcNbiSTmbSwEu34vsej0/3Mxr8DjtH2G0FkC7uN
         YyBQTNJC77vJcROt2cVtwmo6u5AyfD4hnf9xM+WLtlJww2NhNpWfNZoNUBWlnwxbpFFO
         DnZDcxBJdOS8X6OJkK/pa7MigtgWp/TWkKtQueb6xRX2FqBr/z2wcFVoha7uo4Yzqoy3
         B5RvbMu6HyFAM3Nco64wJdNR2/Xt6AsLkuaO+33wjTpw+tp85eNmvPSuJppV+iWEeew4
         fim0MVtFcDQcvmVPPo2DZ1oiI2LDSU7OO8wCYRDaZg/IlGD24dDJnohhJgPmt/aSm9Nb
         HdvQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.138 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id k13-20020a05620a07ed00b00787b99571ffsi5401859qkk.566.2024.02.26.10.53.42
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Feb 2024 10:53:42 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.138 as permitted sender) client-ip=65.20.63.138;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-335-iT1ww3cdOu2_4yAIIS4sAg-1; Mon,
 26 Feb 2024 13:53:40 -0500
X-MC-Unique: iT1ww3cdOu2_4yAIIS4sAg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6A4C33814E8D
	for <blinux-list@gapps.redhat.com>; Mon, 26 Feb 2024 18:53:40 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 672A0400D784; Mon, 26 Feb 2024 18:53:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2F11D40C1430
	for <blinux-list@redhat.com>; Mon, 26 Feb 2024 18:53:39 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C8B24185A784
	for <blinux-list@redhat.com>; Mon, 26 Feb 2024 18:53:39 +0000 (UTC)
Received: from altprdrgo03.altice.prod.msg.synchronoss.net
 (altprdrgo03.altice.prod.msg.synchronoss.net [65.20.63.138]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-665-FsFCAP-kP-m3U1qDK3jxig-1; Mon,
 26 Feb 2024 13:53:37 -0500
X-MC-Unique: FsFCAP-kP-m3U1qDK3jxig-1
X-RG-VS-CS: clean
X-RG-VS-SC: 0
X-RG-VS: Clean
X-Originating-IP: [47.217.109.117]
X-RG-Env-Sender: martin.m@suddenlink.net
X-RG-Rigid: 65BCFF4E04C7E36B
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedvledrgedvgdduudehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecutefnvffkvefgfgfupdggtfgfnhhsuhgsshgtrhhisggvpdfqfgfvnecuuegrihhlohhuthemuceftddtnecunecujfgurhephffvufggtgesthdttddttddtvdenucfhrhhomhepfdforghrthhinhcuofgtvehorhhmihgtkhdfuceomhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvtheqnecuggftrfgrthhtvghrnhephfektdektdeljedtvefhgfeuleeiveevffduieelieffueejteelledukeekhfeunecukfhppeegjedrvddujedruddtledruddujeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhephhgvlhhopeifsgehrghgiidpihhnvghtpeegjedrvddujedruddtledruddujedpmhgrihhlfhhrohhmpehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtohepsghlihhnuhigqdhlihhsthesrhgvughhrghtrdgtohhmpdgruhhthhgpuhhsvghrpehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtpdhgvghokffrpegfufdpoffvtefjohhstheprghlthhprhgurhhgohdtfe
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from wb5agz (47.217.109.117) by altprdrgo03.altice.prod.msg.synchronoss.net (5.8.812) (authenticated as martin.m@suddenlink.net)
        id 65BCFF4E04C7E36B for blinux-list@redhat.com; Mon, 26 Feb 2024 13:52:11 -0500
Received: from martin by wb5agz with local (Exim 4.94.2)
	(envelope-from <martin.m@suddenlink.net>)
	id 1reg56-0002ET-Pr
	for blinux-list@redhat.com; Mon, 26 Feb 2024 12:52:04 -0600
From: "Martin McCormick" <martin.m@suddenlink.net>
To: "Linux for blind general discussion" <blinux-list@redhat.com>
Subject: Keeping Orca Talking
MIME-Version: 1.0
Date: Mon, 26 Feb 2024 12:52:04 -0600
Message-Id: <E1reg56-0002ET-Pr@wb5agz>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: suddenlink.net
Content-Type: text/plain; charset="UTF-8"
Content-ID: <8583.1708973524.1@wb5agz.lan>
X-Original-Sender: martin.m@suddenlink.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of martin.m@suddenlink.net designates 65.20.63.138 as permitted
 sender) smtp.mailfrom=martin.m@suddenlink.net
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

I am really good at getting in my own way when it comes to
keeping orca speaking.

	The system running orca is a HP Pavillion desktop which
is about 2 years old, running debian bullseye and it sure cooks
right along very nicely except for sound where it's just one
thing after another.

	With this version of debian, I installed it from a debian
iso image placed on a usb thumb drive and it talks if you type
the lower-case s as soon as you hear the beep from the piezo
buzzer on the mother board.

	I wanted to adjust some sound levels yesterday so I fired
up alsamixer which I am not familiar with.  Alsamixer is not a
GUI application as such as uses a curses-based terminal interface
and can be accessed via command-line terminal.

	I logged in to mate's terminal and commanded alsamixer to
start using card 0 or -c 0.

	I am not sure what I did but about 2 or 3 key strokes in
to the session, I typed the Enter key and, poof! voice output was
gone.

	I finally logged in to that system from another Linux box
in text-based command-line mode, downloaded a backup of /var and
selected var/lib/alsa/asound.state which had that file in it.

	After copying /var/lib/alsa/asound.state from the backup,
I did

sudo alsactl store which seems to have stored this older version
of asound.state then I rebooted.

	I was able to log in as the login still talked but as
soon as I entered the password, everything went silent again.

	I finally got on the Linux box that has no GUI and ssh'd
into the gnome system and then called alsamixer as me and that's
when I realized more how this all works.

	One is supposed to press F3 to be in the playback setup
mode.  Apparently the function keys like F3 send a terminal code
sequence that is interpreted as F3 and then I noticed that the
volume slider for Master volume was all the way down to 0.

	The Up and Down arrows move that slider so I moved it up
and finally my orca console started speaking again.

	One then presses Escape once and alsamixer closes.

	Is there a faster and better way I could have done this?

	If I hadn't had a second Linux system, I'd still be
messing with it and the curses would be more than just in the
command-line interface.

	It's amazing how quickly one can go from hero to zero in
this game but finally I seem to have the talking orca terminal
back.

Martin

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

