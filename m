Return-Path: <blinux-list+bncBDP7P6HU4IERBO6GWOVQMGQE3PISBHA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f72.google.com (mail-oo1-f72.google.com [209.85.161.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 2212B80273A
	for <lists+blinux-list@lfdr.de>; Sun,  3 Dec 2023 21:21:17 +0100 (CET)
Received: by mail-oo1-f72.google.com with SMTP id 006d021491bc7-58d5bb052dfsf5050298eaf.3
        for <lists+blinux-list@lfdr.de>; Sun, 03 Dec 2023 12:21:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701634876; cv=pass;
        d=google.com; s=arc-20160816;
        b=WMclt/3Nc9hSs0aZ5vmoAsINX9AcFm58XZl8qJ9C6sOQ1V9PAFnpDFTQ0EPx2YBjtw
         HvtQR9qnPTLJ3a+gmE4nrR646JqlvlzwX3j7DYT0IUw/4AG+PdlP4nI2SDiYIPjk6WpY
         FG2okzWa3pSO47JmTLOnM2W+5UTDsWIlKqIlzvLa6VBk1fSMaY+QzIORoo9HjwmULT90
         eoeoYKIzwLQaLz2qaFeQFbEQY1RT6zQj+OEYIPV5JDymm1ZdgW00xDKhZohcf6UsuwiO
         f7M97EFSYzTb5UtoTd1KA/XTJ/yO616fozA+rveW8lwyaLZ+3m7mjKX0r4eGeObRpBnq
         oagA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-id:message-id:date:mime-version
         :subject:to:from:delivered-to;
        bh=vYhXR7YIdLJLBRDZl7Zu9ZZFlSJYDR5OLxtKh3BNjCc=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=zE8PQ3IwVLch7FmH9X6PDgwZ+ymzhURSySTOS1UcFW6fxbRVx5mjeDVfoUU0mrwtdi
         xA5GH0WytFtk8oEZDMzIGe64cGx/su1HUf2JODYXA1OURzNOTLP59prissQTqC8zMGcJ
         O2DzWn7lH0VnNt/x33irgwLGCKDCXZz84lIt2cCNdA/paMMy+RqJNB29THrYWnzC3YTc
         jhkkLiX/BraVtBlw+scUuWa+82KMX8ZHBrlKIWeqMyXRZiTJ9iwfi11KRd2T7NjUmhH1
         8nwYQZleQTpZzBu1awYkUXYKAHUO+OClFM+kSH+R46hefqobdaCEezIzUvXgfXnoelqQ
         DA8w==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.40 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701634876; x=1702239676;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:content-id
         :message-id:date:mime-version:subject:to:from:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vYhXR7YIdLJLBRDZl7Zu9ZZFlSJYDR5OLxtKh3BNjCc=;
        b=mHvWrmp9lwq0dLWZypL8QdMbCsuu5s9El2tH/hO52LvtyEZrRe+KWDsEefdduIaagW
         vY0umNfRx+RTUnbdudpQXnQHSkCSYi0uOotntHfLItWODBdul43mIZXftgROadTg9dsx
         ymk5cqmi4yT9dK0EUX0tMSXy4LyJUSzUp0zoWg+1GWz/8gLG7ancdoM3Ael2YI+i2S+w
         tnf6I/ImNaF6dHwOWA1SJuzjI4q9LPJq/+5cOKTGEcv++bh4hNZ6+mrb6970O9NBsDOD
         O2GL+0ToAIFXGUObIkVgZ7TRAzBk8BsTZScxg1x1bk5RWgd3AHqmVYttArCGwB3m7VsN
         mASw==
X-Gm-Message-State: AOJu0YypnlaJU7aNTDjSY2YH/dtwh+gH9EYQRe5V9dm2NsfuesUHPibs
	3Y2gw+eNPDNU2yIRwWFCdd4rpw==
X-Google-Smtp-Source: AGHT+IFMpSvBurXq9VIUIBzpgp2yAt2q49HLa5HsP6FPikFZmgSGkjEEzMfCFAq88SNHsGuQWwoBJg==
X-Received: by 2002:a4a:c289:0:b0:58e:1c48:39ac with SMTP id b9-20020a4ac289000000b0058e1c4839acmr3431855ooq.18.1701634875717;
        Sun, 03 Dec 2023 12:21:15 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6820:1c94:b0:581:f8a9:54e4 with SMTP id
 ct20-20020a0568201c9400b00581f8a954e4ls4860962oob.0.-pod-prod-08-us; Sun, 03
 Dec 2023 12:21:14 -0800 (PST)
X-Received: by 2002:a05:6830:3b84:b0:6d8:8077:8017 with SMTP id dm4-20020a0568303b8400b006d880778017mr2351123otb.4.1701634874731;
        Sun, 03 Dec 2023 12:21:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701634874; cv=none;
        d=google.com; s=arc-20160816;
        b=M18jwvZ6awuVF5/CtptouBlSND6nh5SS5XRp6uXr3behy91XAkD9dZYTYiZ2Urm7Bm
         lTbnZITIk85Y78Z7hhQXG3Q84V5GJl6t/yanGe0ijVnVQgts6JKoEWSctiuDpaZS2tvn
         1NVQ8vzL12Q6m6B33Ev6TsCwq1nlmjobC6XZBNcr0y99HX1yG64xXSvwZ16qiiacaq+i
         a8Poy2yQk673vQ4HhRokETrXugH0HKONBOJL0Z8T3OlkBFG+DZQYO52QFwzYKrSmSAG8
         AjKiSLfO7oHCJUA8NoUC/yV1qJrL1VDP8ncs31ASrYBUn2ChpPMbMP9863uxwG+I38jh
         Vr3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-id:message-id:date:mime-version
         :subject:to:from:delivered-to;
        bh=ppkbCSBCsB/nNhbKKD5hnf0PvyUn5zJEQ1RciQlMnD8=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=m0yyueXDQGdgMSJ2Yj39WcTa9Px3Rqdt/F4ad+1mBAXITf0u6CEb7+BlCbQ6pvRzm/
         s0V5OolMowSA2WEFookrNo5pif/ou1gFh71jyYVf+6W2hDjQZ89IPK6mFaojIZiaXrp8
         DhXwRY5JibYcDCqRhcYp37YAgLCteeCOuU6jfT2eoEq7MLDM+1Z+a8Ea3Uo433iStWs/
         cj5N8m/a8rwaKqKD+iRXq/AGzeRSwPXuEqsceNpRSwamIYVkAUlwztVLAmHabw559cz4
         /sgLBn5u7YlmA2T4vVljf9AtHqfMcEvkjEfmwx3Ss4yRTHT3kCYQH3ajt5WLOIk0JQky
         JsTw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.40 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id fy12-20020a05622a5a0c00b004238b1500easi8577985qtb.603.2023.12.03.12.21.14
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Dec 2023 12:21:14 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.40 as permitted sender) client-ip=65.20.63.40;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-537-A87gFz-tPLiZFA-BJaqBdQ-1; Sun, 03 Dec 2023 15:21:13 -0500
X-MC-Unique: A87gFz-tPLiZFA-BJaqBdQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 440B685A58A
	for <blinux-list@gapps.redhat.com>; Sun,  3 Dec 2023 20:21:13 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 413202026D68; Sun,  3 Dec 2023 20:21:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 398FA2026D4C
	for <blinux-list@redhat.com>; Sun,  3 Dec 2023 20:21:13 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 19D9F821981
	for <blinux-list@redhat.com>; Sun,  3 Dec 2023 20:21:13 +0000 (UTC)
Received: from altprdrgo06.altice.prod.msg.synchronoss.net
 (altprdrgo06.altice.prod.msg.synchronoss.net [65.20.63.40]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-679-DcpIYCRqPXO1DIQYDvrwcQ-1; Sun,
 03 Dec 2023 15:21:10 -0500
X-MC-Unique: DcpIYCRqPXO1DIQYDvrwcQ-1
X-RG-VS-CS: clean
X-RG-VS-SC: 0
X-RG-VS: Clean
X-Originating-IP: [47.217.109.117]
X-RG-Env-Sender: martin.m@suddenlink.net
X-RG-Rigid: 655881A00233B6F4
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedvkedrudejgedgudefiecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucetnffvkfevgfgfufdpggftfghnshhusghstghrihgsvgdpqfgfvfenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvffugggtgfesthhqtddttddtvdenucfhrhhomhepfdforghrthhinhcuofgtvehorhhmihgtkhdfuceomhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvtheqnecuggftrfgrthhtvghrnheplefgveegveevhfdufeefffeuvdduleduffekgedtieejheffffefveetieekffeknecukfhppeegjedrvddujedruddtledruddujeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhephhgvlhhopeifsgehrghgiidpihhnvghtpeegjedrvddujedruddtledruddujedpmhgrihhlfhhrohhmpehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtohepsghlihhnuhigqdhlihhsthesrhgvughhrghtrdgtohhmpdgruhhthhgpuhhsvghrpehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtpdhgvghokffrpegfufdpoffvtefjohhstheprghlthhprhgurhhgohdtie
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from wb5agz (47.217.109.117) by altprdrgo06.altice.prod.msg.synchronoss.net (5.8.812) (authenticated as martin.m@suddenlink.net)
        id 655881A00233B6F4 for blinux-list@redhat.com; Sun, 3 Dec 2023 15:21:10 -0500
Received: from martin by wb5agz with local (Exim 4.94.2)
	(envelope-from <martin.m@suddenlink.net>)
	id 1r9sxc-00D01F-D5
	for blinux-list@redhat.com; Sun, 03 Dec 2023 14:21:04 -0600
From: "Martin McCormick" <martin.m@suddenlink.net>
To: blinux-list@redhat.com
Subject: Alsa-compliant Sound Programs
MIME-Version: 1.0
Date: Sun, 03 Dec 2023 14:21:04 -0600
Message-Id: <E1r9sxc-00D01F-D5@wb5agz>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: suddenlink.net
Content-Type: text/plain; charset="UTF-8"
Content-ID: <3098339.1701634864.1@wb5agz.lan>
X-Original-Sender: martin.m@suddenlink.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of martin.m@suddenlink.net designates 65.20.63.40 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
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

I have written some sound recording programs in c, gcc to be
exact, and I want to modernize them to take advantage of the
better capabilities provided by alsa than one gets using the
older oss or Open Sound System API of days gone bye.

	If one searches on the web for examples, there are
several bits of sample code that use alsa functions rather than
/dev/dsp-based activity which the oss apps used.

	Every one I have tried fails in exactly the same way to
compile.

	For those who don't write your own programs, this
messagecan be skipped but I am hoping somebody can suggest what I
might be doing wrong since all samples reference snd_pcm
functions such as snd_pcm_open, etc.  All need a specific alsa
library called with
#include <alsa/asoundlib.h>

	That library is on the Raspberry pI and the desktop
systems I have tried these sample code blocks on.

	Both the Raspberry pI and the HP work station that uses
the AMD64 processor appear to be working normally but when I try
to compile anybody's test code, I always get errors like the
following:

/usr/bin/ld: /tmp/ccTjr3cU.o: in function `main':
tester.c:(.text+0x3c): undefined reference to `snd_pcm_stream_name'
/usr/bin/ld: tester.c:(.text+0x79): undefined reference to `snd_pcm_access_name'

	This means that gcc can't find any of those missing
functions.  There were several more lines, all referring to
snd_pcm_ calls but you get the idea.  Any snd_pcm_call produces a
squawk like the 2 I just showed.

	The author of the sample says:

   line. Some ALSA library functions use the dlopen function and
   floating-point operations, so you also may need to add -ldl and -lm.

	I ended up with the command

gcc -lasound -ldl -lm tester.c
	Which changed nothing and produced exactly the same
complaints.

	So, has anybody running debian bullseye on a Raspberry pI
or the same on a 64-bit desktop gotten alsa code to compile?

	I have looked for -dev versions of alsa libraries which
are the ones you want if you are programming and there are a
bunch but none of them touches those errors or I wouldn't be
posting this question to this and one other group.

	The alsa libraries allow one to more easily setup a sound
card to provide digital audio in several formats with several
sample rates that some sound cards won't give you in Linux either
because of hardware limitations or the fact that the Linux driver
is not fully compatible with the sound card.
	
The older sound programs I wrote let a PC or Raspberry pI store
audio from a police scanner or short wave radio on to a file and
only record when there is sound.  They are always recording but
the recording app sees silence on the line so just throws those
samples away.  A very small buffer keeps the last fraction of a
second of silence before the sound started in order not to clip
it off.

	I'll keep much of the old program but use the alsa
routines to feed the audio in instead of /dev/dspx where x is the
sound card in question.

Thanks

Martin McCormick

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

