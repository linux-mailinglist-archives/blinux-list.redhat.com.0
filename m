Return-Path: <blinux-list+bncBDP7P6HU4IERBCNSZSVQMGQECSLCKAY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 0194380A464
	for <lists+blinux-list@lfdr.de>; Fri,  8 Dec 2023 14:24:27 +0100 (CET)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-67ab7e9d393sf25524966d6.1
        for <lists+blinux-list@lfdr.de>; Fri, 08 Dec 2023 05:24:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1702041865; cv=pass;
        d=google.com; s=arc-20160816;
        b=C6YghbLbMLFxhVE4SyV5eOXNF2mCGd+rXcHIGo+XQ6RLNw/RU2hjOvVQne/lEL6Xdy
         WAhR3cgdZGomlcMDyTo2p9gJSDxAqWIUS3veWp08U8DjZdgyjMIO7MtpdOPM49LEB9g8
         pMH0RHQZ45JVjfjnnsoVfdnhSFqIhfim5XneEx1RF0/15qrBcYrAdo2RGFdlfV1gUoW5
         LrxlB3AMrO2yrltskON8jS4lzeK7KaIzHjk0d4gMoMLsO5P+St2dNdJ4reH6giR7dXED
         YHatNUo+vkezeUadUotRc9uttT0f+zuIT9yZut4zO0VCM5cZXWd/l/DMFVYCgG3n47+g
         Ph9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-id:message-id:date:mime-version
         :comments:references:in-reply-to:subject:to:from:delivered-to;
        bh=Cnw0/frnbZX7aXmwe/XCi1nQeNoWjQJfIRbGsz9MLA4=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=Bk6E5FLn7U2zPQomEINlRzsPp6BlPQzsarGmUkOBmeAqo2rDOsRi/7GACZ01G6DzBO
         +Vu1Pyq8o1GvukHcRkYN5vS3+MssBEXkOarLLuI63lPpXVf/W/joBIylYsYwsYGFT1XF
         EGAfvC3iHhMM4iCLUe8JoU8NgdlLl+GOAC59lF4PVh500srsjbA4ian8aU2/FC9t+uFX
         EpaZNdRGpwBcBuNxu2JcX+2+HUStmNM6Vtf7/YI96+YMZEGQsCbdiFQg9tPA/PNBYUls
         yDR0NbgGhoVFJcaTbMYG6yQZp+Lzqq0XTDzibNB9UEjFBeqnC1y1Kbyp+BAm6bx4+hLU
         vrfw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.204 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702041865; x=1702646665;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:content-id
         :message-id:date:mime-version:comments:references:in-reply-to
         :subject:to:from:delivered-to:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Cnw0/frnbZX7aXmwe/XCi1nQeNoWjQJfIRbGsz9MLA4=;
        b=VMtZpfEkHupwixcRj5pHM3FBWixvb1Mi7rKFdzrpQwWB5b1Yoc4tTWsB+E+196LYUz
         i3c2kbFHEIHAywFUD1iTegUDYQ1GsiZ8PpyGB3UHWTyLHA2PrsoxQo3JRl1njh++SrXg
         +g5mt6o8jWhBICewwvp9aaFgmORskwc+dnk1AIwC/ZpWXqaVB2kMxmDqV2p0BV7oWkQq
         m1IDZLIrY+PLXPJBFQ0iklejjU4YbIw6CS4oN0v6LYDWccfFhG2VN++hvJ6N7HuFwLHA
         xhphvD8YCbwQxMzqOWcoCiYss/9Bo04ZF/slRwvxMae4dz6dF3Tin5z3SiyjMGGKLWGV
         +ttQ==
X-Gm-Message-State: AOJu0YyKpCfDLyAJrGwSc3KsvF5HvORlU/ECvJTUAC+TpeIGf0oUc9zM
	0fCMMc/5hflJVCVJ9p6/KqnoJQ==
X-Google-Smtp-Source: AGHT+IEQdmNb4/RLpL/GEUGkYmj8V3ACeWg5LMSSx0huE/HmDf0n1eyD4Y/v01GsvybzQ5bAcVERJQ==
X-Received: by 2002:a0c:f644:0:b0:67a:a721:b1b8 with SMTP id s4-20020a0cf644000000b0067aa721b1b8mr3845087qvm.115.1702041865646;
        Fri, 08 Dec 2023 05:24:25 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:2b50:b0:670:a1c0:e4e2 with SMTP id
 jy16-20020a0562142b5000b00670a1c0e4e2ls294360qvb.1.-pod-prod-04-us; Fri, 08
 Dec 2023 05:24:24 -0800 (PST)
X-Received: by 2002:a05:6122:983:b0:4b2:a958:c1e8 with SMTP id g3-20020a056122098300b004b2a958c1e8mr146858vkd.14.1702041864733;
        Fri, 08 Dec 2023 05:24:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1702041864; cv=none;
        d=google.com; s=arc-20160816;
        b=ImfBuTEGehv8lhmHZIjh2tD8Zd7ytTnDdrMWlk4Dn+c1puX64mwvSkgOR+NwzUbKKT
         JaOMp2lVKtKjAY4BGhPceUK7A/IbsPqhCgRgLAypCWaRBT3JaDuzGUCVK/JBwdrPitI6
         KAt7PuQ/omk6thSZyIL7X9FqHn5R+JmXfJHAQly6CkbXwtLcQ4YulQ14cRGJhbcUhYiW
         k3DYWROUPqPh/uYPTPqGybsLzgdeeKLbHvcfxoXNS0S2YNQyPS+P/1kVhVI8GzIsAqVH
         hiz9HGSaLoTKT5ZGQJNJZ14V8K5/LLeK9cnzinM1NuZCdrzmYrueXIYrZ9yvs27jVWkp
         ixEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-id:message-id:date:mime-version:comments:references
         :in-reply-to:subject:to:from:delivered-to;
        bh=6nUeH0v8a8KgjHcyoncT8O/pJP0L+UJtdCbAr0VoBEY=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=0vhx7RLieeqpNoY89iPTD1a8CaVTmfe9USoAQv817FGw9sQuO8yWv9+lT+YiGe/T+I
         nNCW80igyFfG1hO2IojocN6POgNT8/QGesOdOJGXizSxhHRv0rOFwZ5gfpDA4aV3VS40
         OpnNqt2lruazLyInUh718FbRkpCiEfbHYH8O+xr08aSTjC52T+AruuVjRcegGfbtd1+9
         5IYbqnNstRsVkI9WbOa3o0iDk/3w6eaztsqIr8xP5zJnZnB5cBnihJbvzROu55trm3xC
         r+0HggfKVOUkb6GWpEVDDW3R7n5HJifgMq0zPcDJvoULrWAtDjEJWS2zow6cTyoiBIlG
         oqCQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.204 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id fa7-20020a0561224a8700b004b2d903ede3si524214vkb.48.2023.12.08.05.24.24
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Dec 2023 05:24:24 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.204 as permitted sender) client-ip=65.20.63.204;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-84-gtOPxUpNOW-lzipvTt3y1Q-1; Fri, 08 Dec 2023 08:24:23 -0500
X-MC-Unique: gtOPxUpNOW-lzipvTt3y1Q-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F13C7185A782
	for <blinux-list@gapps.redhat.com>; Fri,  8 Dec 2023 13:24:22 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id EE8DE1C060B1; Fri,  8 Dec 2023 13:24:22 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E6B341C060AF
	for <blinux-list@redhat.com>; Fri,  8 Dec 2023 13:24:22 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C599A845E38
	for <blinux-list@redhat.com>; Fri,  8 Dec 2023 13:24:22 +0000 (UTC)
Received: from altprdrgo06.altice.prod.msg.synchronoss.net
 (altprdrgo06.altice.prod.msg.synchronoss.net [65.20.63.204]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-685-jlAKiSIyPymcYm8bYk1Yhg-1; Fri,
 08 Dec 2023 08:24:21 -0500
X-MC-Unique: jlAKiSIyPymcYm8bYk1Yhg-1
X-RG-VS-CS: clean
X-RG-VS-SC: 10
X-RG-VS: Clean
X-Originating-IP: [47.217.109.117]
X-RG-Env-Sender: martin.m@suddenlink.net
X-RG-Rigid: 655881A002DFB506
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedvkedrudekiedghedvucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecutefnvffkvefgfgfupdggtfgfnhhsuhgsshgtrhhisggvpdfqfgfvnecuuegrihhlohhuthemuceftddtnecufghrlhcuvffnffculddutddmnecujfgurhephffvufgjfhggtgesthdttddttddtvdenucfhrhhomhepfdforghrthhinhcuofgtvehorhhmihgtkhdfuceomhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvtheqnecuggftrfgrthhtvghrnhepgfeijedtffevtdfftdfgkedvueeftedvveelffegjeetueeltdefgeeutdeihefgnecukfhppeegjedrvddujedruddtledruddujeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhephhgvlhhopeifsgehrghgiidpihhnvghtpeegjedrvddujedruddtledruddujedpmhgrihhlfhhrohhmpehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtohepsghlihhnuhigqdhlihhsthesrhgvughhrghtrdgtohhmpdgruhhthhgpuhhsvghrpehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtpdhgvghokffrpegfufdpoffvtefjohhstheprghlthhprhgurhhgohdtie
X-RazorGate-Vade-Verdict: clean 10
X-RazorGate-Vade-Classification: clean
Received: from wb5agz (47.217.109.117) by altprdrgo06.altice.prod.msg.synchronoss.net (5.8.812) (authenticated as martin.m@suddenlink.net)
        id 655881A002DFB506 for blinux-list@redhat.com; Fri, 8 Dec 2023 08:24:20 -0500
Received: from martin by wb5agz with local (Exim 4.94.2)
	(envelope-from <martin.m@suddenlink.net>)
	id 1rBapy-000BtS-L8
	for blinux-list@redhat.com; Fri, 08 Dec 2023 07:24:14 -0600
From: "Martin McCormick" <martin.m@suddenlink.net>
To: blinux-list@redhat.com
Subject: Re: Alsa-compliant Sound Programs
In-reply-to: <72cb02e8-3cac-a811-fdab-4a89923c17a8@csir.co.za>
References: <E1r9sxc-00D01F-D5@wb5agz> <eb293e4c-cd90-4f35-973c-d7b64ee3b7c1@jasonjgw.net> <E1rAE0r-00D5Pd-LA@wb5agz> <72cb02e8-3cac-a811-fdab-4a89923c17a8@csir.co.za>
Comments: In-reply-to Willem van der Walt <wvdwalt@csir.co.za>
   message dated "Tue, 05 Dec 2023 09:46:07 +0200."
MIME-Version: 1.0
Date: Fri, 08 Dec 2023 07:24:14 -0600
Message-Id: <E1rBapy-000BtS-L8@wb5agz>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: suddenlink.net
Content-Type: text/plain; charset="UTF-8"
Content-ID: <45720.1702041854.1@wb5agz.lan>
X-Original-Sender: martin.m@suddenlink.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of martin.m@suddenlink.net designates 65.20.63.204 as permitted
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

I haven't figured it all out yet but thanks to Willem who pointed
out the obvious
Willem van der Walt <wvdwalt@csir.co.za> writes:
> Hi Martin,
> 
> I suggest you grab the source of amixer and look at what they include in
> their gcc command.

	I downloaded the source package on both the Raspberry Pi
and a 64-bit desktop running bullseye as there are differences
between the two.  What one gets is the alsa-utils package which
contains source for all the basic alsa apps such as amixer,
aplay/record and a midi interface.  There's even a README.md file
explaining what is there.  Open source is just wonderful.  

	Now the real work starts.  The programs that I started
working on around 2010, give or take a few years can probably be
simplified for some operations such as deinterlacing a stereo
signal which doesn't really need to be stereo since I treat each
sound card as two independent A/D converters.  At any given time,
one may be receiving audio while the other is just sitting there
reading empty sample after empty sample until it hears something.
Silence is just the mid-point voltage of an A to D converter.
For 8-bit audio which is good enough for voice communications,
that value flickers between hex 7F and80 due to the way
analog-to-digital converters do their job.  Sometimes, slight
line noise and the nature of successive approximation, it self
produces a random error of plus or minus one count.  Full audio
will sometimes give readings of hex FF and 0 which is not really
a good thing since those are the hard limits of digital signal
processing and we need a bit of head room for the loud stuff.

	What I hope to do is process 16-bit samples to get all
65536 steps and then go to 8-bit recording for storage.  Believe
me when I say that short wave radios and scanner receivers have
such limited audio frequency response that they sound almost
identical when recorded at 8-bit resolution with an 8-KHZ
sampling rate as they would when recorded at a 96-KHZ 16-bit
sampling rate but one sure uses a lot more storage space for
basically nothing if you do that.  You must, however, make Mr.
Nyquist happy or things will sound weird.

Martin

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

