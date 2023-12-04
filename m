Return-Path: <blinux-list+bncBDP7P6HU4IERBWV6XCVQMGQESVC6LDI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id D3AEE803D70
	for <lists+blinux-list@lfdr.de>; Mon,  4 Dec 2023 19:50:03 +0100 (CET)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-423950ce84asf66557181cf.0
        for <lists+blinux-list@lfdr.de>; Mon, 04 Dec 2023 10:50:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701715802; cv=pass;
        d=google.com; s=arc-20160816;
        b=ynxq66s/17kJNPd/IW7nIzrUqOCs/zHLd1NLK9FnpcubeBAYulsa1WdP1eWg14qNdO
         xR+1vsiCsSX290WDl6J0lt+bli+/7VDiT/qGZcdV1V2IbbWbDh5ifiZvWLm/SAPOHVZz
         bOUBvRe9yRo3iUW783ZQOKe70gqYHl+wMXoCemZHILx07K+AsfzospnifBzcj5by10Jg
         RxRsWDFC18EC1/fJgtNfE59BB7a0ycGYCYDUhCT1sCuPLpd29J4lUDvJkOfWpBaDOWC1
         ccyOOTgxsq/ATI72lsBCgGSiLG3a+pM+eDB753yVN9PzmI6t5iDmms0NAgixK3s7QjXO
         OspQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-id:message-id:date:mime-version
         :comments:references:in-reply-to:subject:cc:to:from:delivered-to;
        bh=M3DnnufOucR75iJRW2AUWULs2SVnf/F5y3aW3FoAi1I=;
        fh=K9KbUIAdR2VBm2UkIEKsRFlcsRMjWRpjSALH8MBk7H0=;
        b=iu4YsxZw+08nzArZJ8sQOhEphBygeHnHmRmodh3iW9HDQyeHoGYFUYmHv2yedTeYJK
         XUdMvyKcPwMqzkib36iwGibTWbcPP7LCDC5rtX5e4stm+gI0jfI2oyTHn9Yl99zhVBld
         nrEy6V2MmTBkibQaSC5bKDsLJnEr4xTHXhO31D8lvg/mph3gbwz/Dw21SFWd4XdtK43F
         ZW9IbxyuARVAHTqb60HgSyQcdyrpgUxMlN+6eSs0qcoElHts9mB7FG/0QByYzCLuyo+h
         LcXlJDXD2rwOwT6ZpE3EmZUZpSiX8SquR2w1Lxm7RybpxQuj2h+y0LfHNOcVhw2RPWPY
         O3xA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.60 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701715802; x=1702320602;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:content-id
         :message-id:date:mime-version:comments:references:in-reply-to
         :subject:cc:to:from:delivered-to:x-beenthere:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=M3DnnufOucR75iJRW2AUWULs2SVnf/F5y3aW3FoAi1I=;
        b=pnp59XIkDdMSd3AJMPWngXbX/6CRFfGTwYCkUZZ1S9SSA3WmOgl/NIaCuLaC1BuCiL
         X7m49/vuKYCGvx1GETDFazZRM2jLceHFtT51ORDAeO+PgbW+XuxrvwjFAp4ab5JwQnoq
         19FRqorVvSVzyV+Vo198tYIVsecFKnZfk6kZwASHlVtgx66vW1DeN3lsSmE9vUhjAl3a
         ipkndzmOlMHXKNxv7ekZA48EXhwpYRcCoO0d/6vtj3KZ+FuVgGe/877xijz1aVREfTuv
         pEouhbM2nGJpq6ujlD1xEhX91M19wHDSRcHYd/gN+VB6oYTjZwzXikWHnIakWAgA5Pa1
         dMNw==
X-Gm-Message-State: AOJu0YyJo4D5cRfYl6Y+9rp767df6zX+FnskgFHMfmB127nXvzkclWCA
	2gZlVBDCj9NdLxcluAjNmWD+BA==
X-Google-Smtp-Source: AGHT+IGqXFW1WO7tpCqA0435MzLExEYTiwv7wrLqALaV54EQh6eCFgYEbkfWWyj9/6layz08C2ZBdQ==
X-Received: by 2002:a05:622a:110e:b0:423:6fc5:9650 with SMTP id e14-20020a05622a110e00b004236fc59650mr22040qty.18.1701715802712;
        Mon, 04 Dec 2023 10:50:02 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5d01:0:b0:421:c71a:9295 with SMTP id f1-20020ac85d01000000b00421c71a9295ls803500qtx.0.-pod-prod-01-us;
 Mon, 04 Dec 2023 10:50:02 -0800 (PST)
X-Received: by 2002:a05:620a:3f03:b0:77f:948:8a09 with SMTP id tx3-20020a05620a3f0300b0077f09488a09mr10703qkn.114.1701715801888;
        Mon, 04 Dec 2023 10:50:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701715801; cv=none;
        d=google.com; s=arc-20160816;
        b=a7G9q10zVnlgZ4ZTsjrucMVxmO3c4Z0mVzkEkMZmOsz1iXbxfZleZUXgKh9ipcxgqU
         4TrGN2Ml+Lqm3mbIxjGyRbSg4GXV2uKMsMVRPClLNQp0kkq0sCWjbSYRdH/s7qv9kH+k
         hXlFuydv8PCDqm85xsO6HdZ/dprODS/NIBIeDPcIMBsBmE8axYRcbKeVyXIpd2S8ht8I
         Vr5RlnMXgYoFPIuG73v3lL0gLbKv48IdpihYyBRZnGEyBcxRlV3jWZ6/RLScTcbIizgY
         0jDJZGhpLEz6tpzbX20VGZQkuGgZ76ZRkROdk4XQ0U9WL0PwvtfeptudKwBqTCQsqtcx
         lgPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-id:message-id:date:mime-version
         :comments:references:in-reply-to:subject:cc:to:from:delivered-to;
        bh=0h4IR0y3x3DcGHCcdcJIJ8f4VISnEUYc3WZKmKl+2NQ=;
        fh=K9KbUIAdR2VBm2UkIEKsRFlcsRMjWRpjSALH8MBk7H0=;
        b=roas7u/TfgMWYXbQgy/ONNSxcdfX0kKczydBLN9s02RB6Kl7VwBQHBpZ0VRC9ibq69
         q5mi+UkdI45yU84FdHaARXEwWwQFogoPWhIdZPXff1FqFOpgIsPedyKL5cGWViLKuaHW
         0Kfx9NAfWNqUuO7Lb+10YCoLm/UxEqPkKA++dPhfLxTaGGFofXhXwB1HcN1ybIzjPTkb
         3a/rOnqqrt1Ill6CrNJSCp2w2SGPZJSthkT2T5Jpy+9z8eR0Sw6dS7aOjeN7PNx+XajZ
         PBh9XQtOy8HOWn5meOdNg4xh6jlIfAWOnwttAHaipcgOp385u+k9NFUqfpI8w0QTaa97
         3ZAQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.60 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id os17-20020a05620a811100b0077db457b362si9541179qkn.777.2023.12.04.10.50.01
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 10:50:01 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.60 as permitted sender) client-ip=65.20.63.60;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-452-crulQIiAMMC3AqA-U4VGzQ-1; Mon, 04 Dec 2023 13:50:00 -0500
X-MC-Unique: crulQIiAMMC3AqA-U4VGzQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E47E6811E7E
	for <blinux-list@gapps.redhat.com>; Mon,  4 Dec 2023 18:49:59 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id E166F1121308; Mon,  4 Dec 2023 18:49:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D8E3F1121307
	for <blinux-list@redhat.com>; Mon,  4 Dec 2023 18:49:59 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B7473101A52D
	for <blinux-list@redhat.com>; Mon,  4 Dec 2023 18:49:59 +0000 (UTC)
Received: from altprdrgo06.altice.prod.msg.synchronoss.net
 (altprdrgo06.altice.prod.msg.synchronoss.net [65.20.63.60]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-517-eSW6xvUqPzKP0Yyi3NrWEw-1; Mon,
 04 Dec 2023 13:49:57 -0500
X-MC-Unique: eSW6xvUqPzKP0Yyi3NrWEw-1
X-RG-VS-CS: clean
X-RG-VS-SC: 0
X-RG-VS: Clean
X-Originating-IP: [47.217.109.117]
X-RG-Env-Sender: martin.m@suddenlink.net
X-RG-Rigid: 655881A00259F1BA
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedvkedrudejiedguddukecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucetnffvkfevgfgfufdpggftfghnshhusghstghrihgsvgdpqfgfvfenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhephffvvefujghfgggtgfesthhqtddttddtvdenucfhrhhomhepfdforghrthhinhcuofgtvehorhhmihgtkhdfuceomhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvtheqnecuggftrfgrthhtvghrnhepkeekheffueeivdeukedtjeejvdeigedtvdeihfeffffffeelgfefhfelhfefgfejnecukfhppeegjedrvddujedruddtledruddujeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhephhgvlhhopeifsgehrghgiidpihhnvghtpeegjedrvddujedruddtledruddujedpmhgrihhlfhhrohhmpehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtpdhnsggprhgtphhtthhopeefpdhrtghpthhtohepsghlihhnuhigqdhlihhsthesrhgvughhrghtrdgtohhmpdhrtghpthhtohepjhgrshhonhesjhgrshhonhhjghifrdhnvghtpdhrtghpthhtohepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthdprghuthhhpghushgvrhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthdpghgvohfkrfepfgfupdfovfetjfhoshhtpegrlhhtphhrughr
	ghhotdei
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from wb5agz (47.217.109.117) by altprdrgo06.altice.prod.msg.synchronoss.net (5.8.812) (authenticated as martin.m@suddenlink.net)
        id 655881A00259F1BA; Mon, 4 Dec 2023 13:49:56 -0500
Received: from martin by wb5agz with local (Exim 4.94.2)
	(envelope-from <martin.m@suddenlink.net>)
	id 1rAE0r-00D5Pd-LA; Mon, 04 Dec 2023 12:49:49 -0600
From: "Martin McCormick" <martin.m@suddenlink.net>
To: "Jason J.G. White" <jason@jasonjgw.net>
cc: Martin McCormick <martin.m@suddenlink.net>, blinux-list@redhat.com
Subject: Re: Alsa-compliant Sound Programs
In-reply-to: <eb293e4c-cd90-4f35-973c-d7b64ee3b7c1@jasonjgw.net>
References: <E1r9sxc-00D01F-D5@wb5agz> <eb293e4c-cd90-4f35-973c-d7b64ee3b7c1@jasonjgw.net>
Comments: In-reply-to "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
   message dated "Sun, 03 Dec 2023 17:45:12 -0500."
MIME-Version: 1.0
Date: Mon, 04 Dec 2023 12:49:49 -0600
Message-Id: <E1rAE0r-00D5Pd-LA@wb5agz>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: suddenlink.net
Content-Type: text/plain; charset="UTF-8"
Content-ID: <3119071.1701715789.1@wb5agz.lan>
X-Original-Sender: martin.m@suddenlink.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of martin.m@suddenlink.net designates 65.20.63.60 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
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

There simply hasn't been anything else I can find that gives
snd_pcm.  I know what the errors mean but I haven't found any
other libraries that cause any of the 2 or 3 code samples I have
found to see the snd_pcm functions.  Since the system I was most
interested in is a Raspberry pI, I have looked for any libraries
whose names include -dev:armfs.  There are many of those but none
open up snd_pcm functions of which there are many.  Basically, if
these code samples ask for any snd_pcm functions, one is
guaranteed to throw this error right now.

	One sample is for a 64-bit desktop system sound system
and it throws the same errors on a 64-bit desktop.  What I am
thinking is that there may have been some change in thesound
libraries and their contents so stay tuned.  I know it's here
somewhere.

	In searching among lots of dead ends, I have run across a
couple of other people complaining about the same issue but no
answers at all.

	Oh, and don't you just love the net cops who will post a
whole diatribe in some list about how X Y or Z is not the
appropriate question for the list.  That shows up in searches,
also and you have to waste time to determine that this spigot is
dry, also.  It just makes faucet noises but produces no actual water.

	Anyway, Thank all who responded and I'll keep trying to
see how to get snd_pcm to show it's face, so to speak.

Martin
"'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com> writes:
> Those errors from the linker typically mean that you aren't linking to the
> required library in the command that links the executable.
> 
> 
> 
> You have to include the appropriate header file in compiling your program,
> and link to the shared library. Try adding -l asound to the command that
> builds the executable.

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

