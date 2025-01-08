Return-Path: <blinux-list+bncBDP7P6HU4IERBEM77O5QMGQEEWL2YYI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 1897CA06532
	for <lists+blinux-list@lfdr.de>; Wed,  8 Jan 2025 20:18:43 +0100 (CET)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6dd43b16631sf2635816d6.2
        for <lists+blinux-list@lfdr.de>; Wed, 08 Jan 2025 11:18:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736363922; cv=pass;
        d=google.com; s=arc-20240605;
        b=bwILNq/mSAdX7EYMMaDBVjAV5SR/EJRLOkXJBf9JNvgIXgq/cUXLO/QxY33xxnQCrN
         /XVTKrywzarm9ieC0HTgFR3WwB9mab8HAHsXJOu8PvnyldMWiu8u+UdW6KgXzqqRFl8R
         tMCxlJ4neYLXfge67MZnRemz81r5OS3P/oHEYxvvmwlR3OixKWEEwhe0C25UPRS33Avm
         wr8QzT5+Nm6l4rX8/Qnua1LOHTKQhKrRRbF7R7xVxh884Av0L2Vcwmg061Ls/6/cifJP
         l4MtHPXkmAydXdWc3gfmuAiMnfIDzA9/ttBYXnKp7NkKUIpylMcQkUKIET0RpYeCvKNm
         mssg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-id:message-id:date:mime-version
         :comments:references:in-reply-to:subject:to:from:delivered-to;
        bh=5fmC2+rqU3hAdlLEgZqXLHeFLkg1349/dkxpgIrnaTg=;
        fh=PHuPG7b5nbvJjHIIHwD6LiriFGSU9WonIJ8w+3CmA2s=;
        b=ZGsSHb5AMEVpHb68Mes+QffekJcfMQl19D2yk52k6cbMLKJRVghKLeqmAMRm4SURQW
         H9ITf6pGmaf7R7w/gzVKXKu2bDNfSt3XvLq02nQawzNzqJs+1HIrUL5O7hVbIXGzDTdb
         mJV7h5uUOVTNV/AydRud/QeLMaAKswTF7jZ2i5RTpySXMU6tvUN/dTbsz6VGEufzHlAt
         ZFsQCUTzWiF+UzaUXJWjjnZh6ssB90Sp0H3IYaEeBMCvCHdAZZan5mkrtwYgNHjx0fPf
         sbmnCEeEFYEVBOjiThVm0toQIseqOBxfBk4uDbz9+B6ahM1Q4YhVCm7tJAGxHPb/zFPM
         BElg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.201 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736363922; x=1736968722;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:content-id
         :message-id:date:mime-version:comments:references:in-reply-to
         :subject:to:from:delivered-to:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5fmC2+rqU3hAdlLEgZqXLHeFLkg1349/dkxpgIrnaTg=;
        b=mG7N5wMJyeiKjEt3zzqQY/yNi1Z1rChn2qT7tHfMzVuB7Ffy/C+LxIdSayz9/+4Wae
         e5YSgFQhp3VglKGIpMZ2CJgWZOmOGM06K5SLeVC9MIjz55pxYc3g7CljPpX8wzTZauZA
         5eq00bIDdhbhgiSkZL12KAiCNjxQBc01+CifAnorw1XX62huMYzeiTuXDnNVKZdJ1niQ
         v3BGr3cYQg6jJUoQMw36hKksEYBeEDmI0WSxxRX61ee+X9jRN1uhibCtdx4WDHajss0h
         FVxmF37mrha+yosgTTbchkoRhT5dol1CS22+49ph8EBe9vHTJMBNHS/Hlvh1AapOC+rv
         1wYQ==
X-Forwarded-Encrypted: i=2; AJvYcCXCcNLAIkW1VK2CSzMbheq8vyN7/rPz8zrcTm5lsI/ZBjMpBTQYPFW2FtDqUcS+afumbnFeJg==@lfdr.de
X-Gm-Message-State: AOJu0YzxiXvQiWaN4W+uQXjC/VYKyZcMjYoOBakZK008yLa3V1G9S7ac
	dMnn9rcCYhig4jNbOmtEOZKJQ537UUMozdwMBnhNTB3dbFCNDjf6gdhYuDxk8JU=
X-Google-Smtp-Source: AGHT+IHQOTguZ2tf+u+jcHbjb8DERko+eZLgrhPxAVSyjINPiIuNX7Z5SxRLFXXmbX21tSeegw23lA==
X-Received: by 2002:a05:6214:dcb:b0:6da:dc79:a3c9 with SMTP id 6a1803df08f44-6df9b1d220amr76417976d6.9.1736363921648;
        Wed, 08 Jan 2025 11:18:41 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:3c9b:b0:6d8:aa9e:3e08 with SMTP id
 6a1803df08f44-6dfa382d326ls2531536d6.2.-pod-prod-08-us; Wed, 08 Jan 2025
 11:18:40 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVTBZ5i0rQNNOcOe0bse+9ltGDcwNDshKvy3zmTvfg7ecUga7RblRsK8hyawjyQcOi7F75LZv+u/LdDpg==@gapps.redhat.com
X-Received: by 2002:a05:6214:240d:b0:6da:da7b:c196 with SMTP id 6a1803df08f44-6df9b1ef794mr75146496d6.16.1736363920480;
        Wed, 08 Jan 2025 11:18:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736363920; cv=none;
        d=google.com; s=arc-20240605;
        b=Ba8KHmKa7g5ktJUDzCaIOpPbxQhMUTA+8mE4ndxJBziG+VAm4KTfST4Cm7XB/+8CBw
         aVtLgISXTQXmfFWEjHULUYm4Ph2VDpqATqNCwCYeB3I8Fao9oKleR19fq9AfyHYINWxi
         pTBniViX/u58mhYBFa8wr/2OTzrhe5+v0ldh9pd2srHys83QT0eDJyuDKmsGS/rdSmom
         HdYJz3RKWToF5b9dqi4lxzgQHvTexVhBf3FvBZVazL6hqlo0rtXPlgrMUpRNHLeULf8H
         CpH/cebhr93kRd+c4Y2Ke5chR+uwrMCBS7aGUG4kpZNOpH6+OSJqIcsdpt5ce4RRyN4H
         pnLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-id:message-id:date:mime-version:comments:references
         :in-reply-to:subject:to:from:delivered-to;
        bh=jqaDeOxBkZgH1bZy3Pd2Rtm5wkgYAGv1+sWeG2XR5Fo=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=HPgi5igazAmrT6tJ/COmXwAXIBCM+g979376Ve79Ps/xXTT0vhPThOrkE7HkM3hvqu
         Ib3ZekBXxrlPZbYtXjf9AcxwYdy5M57DmHxGmPkmcGFLNAQIYnyiBQUpOtR8saBfdyL+
         y4odiMfO0MdxEYAfy858ASX36ceaJ24FZGe+UqJ4o9OFVKdXpLk7gqf4mN7FWaZIZW9N
         EXkjGBbNVCP/aRQjS9mLZP4NCmrirtvZKwC/Mj6xtjJEFBxwjPNKVMbWznE5rqdcj+9u
         LaUDiVG8ig2+LT0KJtY8NzJFnkF7j+/em9SVs6BC3Em/6c9gkrXaSOTUNnkA4p9gd7ob
         Op3Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.201 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6dd1836fb3asi475290186d6.509.2025.01.08.11.18.40
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 11:18:40 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.201 as permitted sender) client-ip=65.20.63.201;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-21-acAQcWRWM5GzwiYq2NDHaA-1; Wed,
 08 Jan 2025 14:18:39 -0500
X-MC-Unique: acAQcWRWM5GzwiYq2NDHaA-1
X-Mimecast-MFC-AGG-ID: acAQcWRWM5GzwiYq2NDHaA
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3369C197732C
	for <blinux-list@gapps.redhat.com>; Wed,  8 Jan 2025 19:18:38 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 2F21D300019E; Wed,  8 Jan 2025 19:18:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2CA003000199
	for <blinux-list@redhat.com>; Wed,  8 Jan 2025 19:18:38 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B749C19153C1
	for <blinux-list@redhat.com>; Wed,  8 Jan 2025 19:18:37 +0000 (UTC)
Received: from altprdrgo02.altice.prod.cloud.openwave.ai
 (altprdrgo02.altice.prod.cloud.openwave.ai [65.20.63.201]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-570-4YlYOAGVPZCDttL_mt2ukw-2; Wed,
 08 Jan 2025 14:18:35 -0500
X-MC-Unique: 4YlYOAGVPZCDttL_mt2ukw-2
X-Mimecast-MFC-AGG-ID: 4YlYOAGVPZCDttL_mt2ukw
X-RG-VS-CS: clean
X-RG-VS-SC: 0
X-RG-VS: Clean
X-Originating-IP: [47.217.105.81]
X-RG-Env-Sender: martin.m@suddenlink.net
X-RG-Rigid: 677DFE85001D988F
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgeefuddrudeggedguddvvdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucetnffvkfevgfgfufdpggftfghnshhusghstghrihgsvgdpqfgfvfenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvffujghfgggtsehttddttddttddvnecuhfhrohhmpedfofgrrhhtihhnucfotgevohhrmhhitghkfdcuoehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeejudfftdehhffhudelgeefudefgfefffevieduuedukeehffdvvdejffekhefgveenucffohhmrghinheptghrohhsshhlihhnkhdrnhgvthenucfkphepgeejrddvudejrddutdehrdekudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhephhgvlhhopeifsgehrghgiidpihhnvghtpeegjedrvddujedruddthedrkedupdhmrghilhhfrhhomhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthdpnhgspghrtghpthhtohepuddprhgtphhtthhopegslhhinhhugidqlhhishhtsehrvgguhhgrthdrtghomhdprghuthhhpghushgvrhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthdpghgvohfkrfepfgfupdfovfetjfhoshhtpegrlhhtphhrughrghhotddv
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from wb5agz (47.217.105.81) by altprdrgo02.altice.prod.cloud.openwave.ai (5.8.812) (authenticated as martin.m@suddenlink.net)
        id 677DFE85001D988F for blinux-list@redhat.com; Wed, 8 Jan 2025 14:18:34 -0500
Received: from martin by wb5agz with local (Exim 4.96)
	(envelope-from <martin.m@suddenlink.net>)
	id 1tVbZV-000LwS-0M
	for blinux-list@redhat.com;
	Wed, 08 Jan 2025 13:18:29 -0600
From: "Martin McCormick" <martin.m@suddenlink.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: MiniPC's
In-reply-to: <CO6PR18MB4419E98A41E54508BCF9E949C7122@CO6PR18MB4419.namprd18.prod.outlook.com>
References: <E1tVF0W-000Hgp-2C@wb5agz> <4ff1d3a0-740f-4849-89f1-91bef9ac1616@gmx.it> <CO6PR18MB4419E98A41E54508BCF9E949C7122@CO6PR18MB4419.namprd18.prod.outlook.com>
Comments: In-reply-to cstrobel crosslink.net <cstrobel@crosslink.net>
   message dated "Wed, 08 Jan 2025 14:48:57 +0000."
MIME-Version: 1.0
Date: Wed, 08 Jan 2025 13:18:29 -0600
Message-Id: <E1tVbZV-000LwS-0M@wb5agz>
X-Mimecast-MFC-PROC-ID: PNdE6FYfdYwS5T0v0DOTxhXOMxg9OWlyjY9ZEZe9Afw_1736363914
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 0v_gBDe5K9RAv8Nc-fJqXW8EPkKeI-NN659CEpogAMk_1736363918
X-Mimecast-Originator: suddenlink.net
Content-Type: text/plain; charset="UTF-8"
Content-ID: <84346.1736363909.1@wb5agz.lan>
X-Original-Sender: martin.m@suddenlink.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of martin.m@suddenlink.net designates 65.20.63.201 as permitted
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

More good ideas.  Thanks.
cstrobel crosslink.net <cstrobel@crosslink.net> writes:
> It is a matter of how much you want to spend.  There are hundreds of mini 
> PCs that should work at this point.  Asus bought the rights to the NUC 
> line from Intel.  It seems that some of their PCs may have pin outs for a 
> tiny internal speaker so you could hear the beeps from the grub boot 
> loader

	Ah yes.  That brings back memories all right.  The
original IBM PC had an integrated circuit whose nomenclature
escapes me but it was a dual counter/timer chip.  One half or one
counter/timer generated the interrupt for the clock and possibly
the refresh for the dynamic memory but the other half was the
noise maker as ther was no sound card in the first PC's.

	Briefly, the clock source for the chip was an
approximately 1.7 MHZ square wave and one could stuff a 16-bit
value in to a register that was the deviser of 1.7 MHZ which
meant you could divide 1.7 million by any number from 0 to 65535
which meant the counter would reset to 0 or roll over every N
counts.  Your lowest number of resets per second was about
	~25.94033722438391699092 resets per second which meant
one could play musical notes by stuffing various values in to the
counter.  A reset clocked a 7400-series JK flipflop from on to
off or off to on each reset so you got square wave beeps at any
pitch from ultrasonic frequencies down to about 14 HZ.  Another
bit turned the square-wave output on and off or could turn a
steady DC signal on and off so you could modulate the signal with
Morse Code or decide to send 1000 cycles for 1-tenth of a second,
whatever your heart desired.

	When I was learning 8086 assembler, I played with this
chip and found all sorts of novel ways of crashing the PC.  That
wasn't my intention but let the results be the judge.

cstrobel crosslink.net <cstrobel@crosslink.net> continues:
> but I'm not exactly sure which model.  Many of the cheaper ones 
> have built in audio and a headphone jack.  I have a fanless mini-PC from 
> Lele I use for experimentation, that you can run on USB power and thus a 
> USB battery.

	Very interesting.  I like the idea of fanless and if that
PC-style noise maker is on one of those, I'd be happy because
those terminal beeps and noises one can make are nice to feed in
to your sound output for listening with headphones.

	One might need to add another channel to the audio mixer
for the beeps but that's probably the only way one will get them
sent to the outside world.

	Anyway, thanks for the help, all.

Martin	Amateur radio WB5AGZ

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

