Return-Path: <blinux-list+bncBDP7P6HU4IERBVWO7CXAMGQEXTC7JKQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 00B4A869ED7
	for <lists+blinux-list@lfdr.de>; Tue, 27 Feb 2024 19:18:00 +0100 (CET)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-42e7e941c7dsf41286891cf.1
        for <lists+blinux-list@lfdr.de>; Tue, 27 Feb 2024 10:17:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709057879; cv=pass;
        d=google.com; s=arc-20160816;
        b=eqeOu9MhZM3zlu2oAzIZ6UWttmOyePMFBHRlb0JUQ89MdiMlSxpr7Dt2p47Tg5G61M
         lX75wwfYuQhDW0yGnMmwrMjFA+3ARnGXRzQ1IrE81ypovf64bjs00mT5wE5doubPIX03
         XGhcnXXwN7eTXioe4Rp0BOqaqU1wfS9b6/UOgNZ64exQyHoELNeTIn8N2eYSKAGgvnjn
         yxXt3rKA8yfOMFKDBS8/Ul2vwoYDPvgDX+nkjz004JTS6J9ByW+X6JZSIIIP1KFA0lX7
         kxwtL/9hUtWQJfguvEl7iTwEE4mBhnNhlnn9VISC6F3AfkaeUyZBVS8pcXtcDMr9aJhs
         oGMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-id:message-id:date:mime-version
         :comments:references:in-reply-to:subject:to:from:delivered-to;
        bh=F0qDmv4deVp0J4xr9VK1lnXyBRPwj/Zk30/WgTS1eTY=;
        fh=stunKMi8/3FK0gtGjXO2U1BduLVAaYvwqi93sqj2jE0=;
        b=UfweeOJq3JI7G4njTHJdLSGcV26t+61vD+l85GGjNt+rO0Uwu0hYDN4YaZle5sHBT4
         BLbVgHY0tlAWkycDLzgrplo6eoTxyftFmItp2eCX0ETHOR5Gu4FC2M58URmibQsat/nF
         NgWxKUoPo0H+8grUSkZb0b6ba35yugDjIpK5Ov3I8jySppAX07DWT3WcE7aXqbULsSGr
         6zyF58GNQwnCscXj7UdW+wb4F5GkY34KqhwTni1IU4k/ifW7yMd+Z9Jd9XL5bybqYTxA
         NHG0yEloYNYmLiCDi2IXorZulicgSPLPglaQ1VVhE4HD5WZDh9IWbqzYk8B7whcEUFdB
         Wg1A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.148 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709057879; x=1709662679;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:content-id
         :message-id:date:mime-version:comments:references:in-reply-to
         :subject:to:from:delivered-to:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=F0qDmv4deVp0J4xr9VK1lnXyBRPwj/Zk30/WgTS1eTY=;
        b=GRjD1L5zsSx6PdyXZJm3LY9FqitUCOM5sGPLFFOcOXYeDdfK8pshI/8DHpUVMs/k7Q
         Xd+3Zw7AbCo+WqZ7Jekda4Hclwzw848/yJCt2BgicwRo6tfKIhB1YuZEDPN6GWR5boI3
         E9FekLReh+sCXydMDU1w/Bwr65/9rUpOWu3Ny1r4CwuDjrSKRqCQ1UAM9i8BoSbAMNnY
         jLsnS/oZwSfjPoEOy+JxcEflzQJ0YkddJ3o4AdO+XUjXksMaspIg7yZXbXTylF0wwHkC
         QaNzMrfAc7v6Ejcb6qS7GYldAF8iUTCmGaNF9XIxkPMEh1yrlsZFqPEGdSKJO6P/n7KJ
         6+SQ==
X-Forwarded-Encrypted: i=2; AJvYcCVKk8Ntr+xOKnMWx3zwvzyRTa2fYwIGQgdvm4WKBRW5jHGhDQMLaQJQIti96N2Rw+gTpOzrSghyD5A1EkG2NQo2nEnW/txqtg29
X-Gm-Message-State: AOJu0YwochYWK/JyXDtFqjHWPOOZZp5g0Ofxd7aIwQEEoFCN6xXq0hGz
	8Jq615ZScEsxmhmILwlXKrnbg9yfQxXeGnLr33/JJF+6vjKKQSS3egsM9UurmPE=
X-Google-Smtp-Source: AGHT+IEMaDoJilaPN1qU6ukjPs8So9fL/oeV2k7dUU98Nh1vlyy22u5tjWaYzvHuIaQf0oefajinOA==
X-Received: by 2002:a05:622a:1c6:b0:42e:3cda:3d0e with SMTP id t6-20020a05622a01c600b0042e3cda3d0emr11083903qtw.60.1709057878746;
        Tue, 27 Feb 2024 10:17:58 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:7d0e:0:b0:42e:6b21:9dcf with SMTP id g14-20020ac87d0e000000b0042e6b219dcfls4420295qtb.0.-pod-prod-08-us;
 Tue, 27 Feb 2024 10:17:57 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCW5uLdMWmmy7dUltgpnSIUf+uYsmiH5lOQfCGzJuRRc3XTNhPD4qcaRLDXVvp2ll8uc4vDmJo40iDKoyKGyxHjayBoCW94jVs3W5QNv
X-Received: by 2002:ac8:7c52:0:b0:42e:a894:e9f6 with SMTP id o18-20020ac87c52000000b0042ea894e9f6mr334276qtv.61.1709057877771;
        Tue, 27 Feb 2024 10:17:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709057877; cv=none;
        d=google.com; s=arc-20160816;
        b=ZFeM2SLW2vrJQPBl7DBpqYyF/wI1thE5VqFdQtpUohY2XPiNngOGl+PtgrYWzcOxca
         0/h6RrEpUyymnPkYNLzfwr0of3ij9TStrdnO5g1yCWBCsg9YfPoHnjBcBgHw8MEqizTg
         5JfkGLOkfU+rwyeAB7WRApnpmPB5M29p5TJ6OolUg0XeBWjRJlGqTDRrH2o8n6bT0x/I
         VIssEVusPRBmytIhzoHCaIRb4QNOW1+U0GSSh20AIFFcdyB+0FEmPnP2zlbCr69n+oGo
         gam7f0okNyukoeloLMDl6nXgKdUlMA9X02tcsdfe/SEKJxSIk/qq7EtyI/TnSN305pGS
         RyiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-id:message-id:date:mime-version:comments:references
         :in-reply-to:subject:to:from:delivered-to;
        bh=HiPEPD6NbwZh7mAwlf2wKHvCKJeeFdrr5krKO/I2KhI=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=VTLZggnksovKs03GMiQIY/uZqZU9DZqwexn19q2+fQaHe5sGJw32wOygLBfv/mw1g/
         whcfvBykdl0LOMgJQ8iT8XYeg2xbtE++5XY9J3rodbHAto1F9W43YxLqsR1GvWeFDOLL
         zZ2+55/SDV500F/pyfXLn79kfqzptYxxX83/YywiVcPVtoLBG3NuoLveSh968KP28USZ
         61zN97Qp4CdYKFZc1xLx3EwI9+9VpWtSYYbC9AJ5TNsq+n6IqRqI5NsoIIz00kT0Take
         PiaE/w7lXU82lUI/8F4y7JAl0XkVq9jNxH728/OgmW0PmmrbyGeLfYvvk/ZGwZqI4Zrs
         szAg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.148 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id f8-20020ac84708000000b0042e77c1c89dsi7400922qtp.172.2024.02.27.10.17.57
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Feb 2024 10:17:57 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.148 as permitted sender) client-ip=65.20.63.148;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-637-tTtlxoxnPGWzvVVqHrS7sQ-1; Tue, 27 Feb 2024 13:17:55 -0500
X-MC-Unique: tTtlxoxnPGWzvVVqHrS7sQ-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 41A7486D4D3
	for <blinux-list@gapps.redhat.com>; Tue, 27 Feb 2024 18:17:54 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 3E2D8492BE3; Tue, 27 Feb 2024 18:17:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 04336492BD7
	for <blinux-list@redhat.com>; Tue, 27 Feb 2024 18:17:53 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A296685A58B
	for <blinux-list@redhat.com>; Tue, 27 Feb 2024 18:17:53 +0000 (UTC)
Received: from altprdrgo05.altice.prod.msg.synchronoss.net
 (altprdrgo05.altice.prod.msg.synchronoss.net [65.20.63.148]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-517-EDF5b35SM86B2ZW1UCcN8Q-1; Tue,
 27 Feb 2024 13:17:50 -0500
X-MC-Unique: EDF5b35SM86B2ZW1UCcN8Q-1
X-RG-VS-CS: clean
X-RG-VS-SC: 0
X-RG-VS: Clean
X-Originating-IP: [47.217.109.117]
X-RG-Env-Sender: martin.m@suddenlink.net
X-RG-Rigid: 65C6475F0373A8AA
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedvledrgeehgdekiecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucetnffvkfevgfgfufdpggftfghnshhusghstghrihgsvgdpqfgfvfenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvffujghfgggtsehttddttddttddvnecuhfhrohhmpedfofgrrhhtihhnucfotgevohhrmhhitghkfdcuoehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtqeenucggtffrrghtthgvrhhnpefgieejtdffvedtffdtgfekvdeufeetvdevleffgeejteeuledtfeeguedtieehgfenucfkphepgeejrddvudejrddutdelrdduudejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghlohepfigshegrghiipdhinhgvthepgeejrddvudejrddutdelrdduudejpdhmrghilhhfrhhomhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthdpnhgspghrtghpthhtohepuddprhgtphhtthhopegslhhinhhugidqlhhishhtsehrvgguhhgrthdrtghomhdprghuthhhpghushgvrhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthdpghgvohfkrfepfgfupdfovfetjfhoshhtpegrlhhtphhrughrghhotdeh
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from wb5agz (47.217.109.117) by altprdrgo05.altice.prod.msg.synchronoss.net (5.8.812) (authenticated as martin.m@suddenlink.net)
        id 65C6475F0373A8AA for blinux-list@redhat.com; Tue, 27 Feb 2024 13:17:50 -0500
Received: from martin by wb5agz with local (Exim 4.94.2)
	(envelope-from <martin.m@suddenlink.net>)
	id 1rf21P-00085h-Q5
	for blinux-list@redhat.com; Tue, 27 Feb 2024 12:17:43 -0600
From: "Martin McCormick" <martin.m@suddenlink.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Keeping Orca Talking
In-reply-to: <fc7ed743-6f4e-40d8-b41c-d95a3f8b06bc@gmx.it>
References: <E1reg56-0002ET-Pr@wb5agz> <fc7ed743-6f4e-40d8-b41c-d95a3f8b06bc@gmx.it>
Comments: In-reply-to "'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com>
   message dated "Mon, 26 Feb 2024 21:32:24 -0500."
MIME-Version: 1.0
Date: Tue, 27 Feb 2024 12:17:43 -0600
Message-Id: <E1rf21P-00085h-Q5@wb5agz>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: suddenlink.net
Content-Type: text/plain; charset="UTF-8"
Content-ID: <31103.1709057863.1@wb5agz.lan>
X-Original-Sender: martin.m@suddenlink.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of martin.m@suddenlink.net designates 65.20.63.148 as permitted
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

Your take on the terminal or command-line is very similar to
mine.  I began programming the Apple II back in 1979 and then
went to MSDOS in the eighties and did 6502 assembler on the Apple
and 8086 assembler on the IBM PC and clones during the eighties
and finally got a job in network operations for the last 25 years
before I retired and that job was my first encounter with unix,
shell scripting and C.  The unix command line was every wish I
had ever had about the command line being granted.  Try setting
the system's time, for instance, in a DOS bat file.

	At the age of 72, I have been using the graphical user
interface on Macs since voiceover came out in the first decade of
the 2000's and Windows with nvda since 2019 and I still like the
command-line best since it is like having a conversation and more
easily scripted and automated.

	As someone who was born blind, I sort of straddle the
days before personal computers and the days after their
introduction around 1980 and I did not even think of majoring in
computer science in college which started for me in the Fall of
1970.  Being interested in in electronics and amateur radio since I
was 5 years old ruled my life choices and I made a major mistake
as a freshman when I listened to an advisor who was a nice enough
fellow but a total ignoramus when it came to electronics and
engineering.  He talked me out of majoring in that and I had an
interesting 4 years and graduated but by the time I did so, I
realized that I didn't like the broadcasting industry much and
the traditional jobs for blind folks were totally unappealing to
me so I worked for our state's Library for the blind as a
technical person and saved up enough to go back to school.

	What does this have to do with Linux and blind people?
Not much but my hobbies were what got me in to computing kind of
by accident, unsuccessful job searching for something interesting
and my nack for graduating college just as the economy would tank.
It happened twice for crying out loud.

	While in Graduate school, I saw my first microcomputer
during a lecture and demonstration.  This would have been in 1977
and was a 6800-based PDP8 with 8 or 16  big toggle switches
across the front panel and a LED readout of a few characters.

	What it did not have is just as important as what it had.

	I don't remember how much RAM it had and it probably had
enough ROM to accept input from those toggle switches and also a
paper tape reperf machine (program storage) and the LED's were
one's output.  You had to decode the output depending on what you
were doing.  Did it talk?  Heck no!  In 1977, that would have
been science fiction.  Actually, it could have spoken individual
characters with a Telesensory Systems speech board but one was on
their own when it came to stuff like that back then.

	The lecture and presentation was given by a professor
from the University of Houston, Clear Lake City campus and he was
one of those guys who knew everything and was patient when you
asked him dumb questions like one I asked after the talk when I
came up to examine the computer.

	I asked him if it was connected to our university main
frame and he did not laugh but said that "no, this is a whole
computer."

	He also said that it could be connected to a main frame
with a modem, the first time I ever heard that acronym.  The
amateur radio hobby came in handy right then because I knew from
the world of amateur radio about what is called a TU or Terminal
Unit which is used for radio teletype and is just a modem by
another name.

	There may have even been elementary forms of basic on
rolls of paper tape that one could load in to that 6800 system.

	My memory is hazy from 45 years ago but the LED readouts
may have shown the address bus interspersed with data because one
frequently single-stepped through a running program in machine
language to study it.

	To make the long story shorter and to provide food for
thought for those at the beginning of their search for gainful
employment in something they can stand, I will just say that in
1989, I got layed off from a job as a repair technician but had
contacts with our university's computer center and had learned
enough about digital technology to be useful to them so I started
as a part-timer for a year and ended up there until I retired in
2015.

	It was the best full-time job I ever had.

	If you really enjoy technology but are blind, you've just
got to get your ducks in a row and know how to do something
useful and not take no for an answer.  Enough of the motivational
stuff and no, I don't "live in a van by the river."

	For those not familiar with American TV comedy shows,
that is a reference  to a skit that was once on a satirical
Saturday-night comedy show about a ne'er-do-well who, wait for
it, lives in a van by the river, has a gravelly voice and who
gives motivational speeches and describes where he lives.

Martin
"'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com> writes:
> I generally just use the sound settings available from my system
> preferences menu. But I'm running MATE on Fedora here, so your mileage
> with this may vary somewhat, or possibly quite a lot. These days I
> usually try to stay out of a terminal, as most things work as expected
> from the graphical desktop interface. Still, I do find some things are a
> little faster in a terminal since I still know my way around a shell
> just a bit. Sound though is not one of those things, at least not for
> me, as it is quite a lot less complicated now than it was 20 years or so
> ago when I started using Linux primarily, though not exclusively as I do
> now. Those were the days before Orca, even before Gnopernicus, when the
> Linux terminal brought me back to the days of DOS, but put it on
> steroids and made it much nicer than DOS ever dreamed of.
> 
> ~Kyle

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

