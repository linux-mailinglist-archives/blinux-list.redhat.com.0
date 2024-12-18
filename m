Return-Path: <blinux-list+bncBDP7P6HU4IERBGVLRW5QMGQEW2V6VLQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C509F707C
	for <lists+blinux-list@lfdr.de>; Thu, 19 Dec 2024 00:07:08 +0100 (CET)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-46796f4d7c8sf1905461cf.3
        for <lists+blinux-list@lfdr.de>; Wed, 18 Dec 2024 15:07:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1734563227; cv=pass;
        d=google.com; s=arc-20240605;
        b=KpZaNKDmql0Z66SctCoWhoYkq/Ln2TNXjqGw60j/dySHakgQuVETB8+ZerLGtwZIU0
         3uytBnF8AcokDfbVAWH01rcE4oBFtN5FBeLwehMS0M3AlQRDZ1a3zC/tkW1fOdw1ysZr
         RyBxQ3UIMEXq0ioz9vNW6Pi7bH1YgGVDT14OIfJ1sFLGA/n0rn+D257jQrkDOqzjZC/4
         VephpCa5UljTBUw8K0Y6SvkoV7m/AXQS4Dpnpu5PAYeAJSZXFJ9FKpCtPajjtmFJUwZs
         nw0AXdCGazZQOhScLu/zzWs85Yte0x6clGWF/ubQGkp91fzw5nI22TfNiec7ti/vUXmu
         K1JQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-id:message-id:date:mime-version
         :comments:references:in-reply-to:subject:to:from:delivered-to;
        bh=i6pSB9Dy6lLvd0RORdj2rIGg0NleZ8x8a9N+ebi7cEo=;
        fh=wIWgkozhCBBDjEMjFXEENIy+qVACRg0ar20NrvxqpeQ=;
        b=X2dRa9Ow6i6tJcLORQwtDB/at5G/pdP6VdVsbs4ZnMRpEu+FQ7+ieDD7QWN7qHA7kd
         R/IHN/er5C/+/zutiHlgm1h9YrZ8GYZH/qjzpXpm1VNqROlT0Xr2/XzcjBakcwuGGjD4
         yTcfJaYU+4gCYocezVNJpArIx+k/08a6UHVWqPuGy19SDvmWNiovQvrUxPNgDT7JSWD+
         JKV2/OXYHu3d7ADTAl+JNqJi7oSmc71tEo9ZzhOpQr9+fkiD7JVcnchZ6x3LbOS8Vsss
         t9XuPiqSoJerFzKWFn2jGsqOqf2pxZ92NkugNhH6I5axRLR2a4jeeYFUeYRe96CpL6f5
         s13w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.60 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734563227; x=1735168027;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:content-id
         :message-id:date:mime-version:comments:references:in-reply-to
         :subject:to:from:delivered-to:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=i6pSB9Dy6lLvd0RORdj2rIGg0NleZ8x8a9N+ebi7cEo=;
        b=dmTTcY3rPOxk4IOadJC/ccC0cp3W9Kb3qp32ExuX0kMES6rtMe9QvYdM4aeDrTnU8o
         saTYNXwqiduyPZorTKDKLfsQ+MXrfj1LZnwvAGqlk/1WiHnL1IWqAo8jfLUsCcpoJXh2
         8KPBaCRuDbbuOwh01OopcEo3lixuyUe4p+MYUJUkzjXx5MVw1OKGBoGGoNa7vggt/1YC
         2Syw0KbCebUhrCmPipmQ9XQnto1/acmCRvr4/isBJ8aK1LIq6r+quIKy4UKtk3dSEDL0
         vsg7EGpxMhLLgr7x5vZYXua/+fXQklqg2ihFqOX/7W3+BDIlT523YzipFI3shAHAyiN1
         f7VQ==
X-Forwarded-Encrypted: i=2; AJvYcCVz3cqc32NsA+WRCuPWHwX25iwvIiujEsqut9Ar9Bg0zkrLs58kLibRBmyJJy7X6+p7s4RN4Q==@lfdr.de
X-Gm-Message-State: AOJu0YxfU9NtHEIZvAFQbzYJSUfn7tyoZ/PyzSWM7h7DtmePp33IA+Nc
	RdgQZgwJGdAtD63T1boS934LnedPIc3XrujbauOI9t08R81CjO6h6CLMejL2Ds0=
X-Google-Smtp-Source: AGHT+IFRmXXs0b4oTNKXh4+W/06ThqKj/UH5cbLNH6UThMZSmnkl3BBbhnMskR9TMI6CdXmsL7wJcg==
X-Received: by 2002:ac8:7f4e:0:b0:466:b29a:816d with SMTP id d75a77b69052e-46908db2144mr78522781cf.3.1734563227037;
        Wed, 18 Dec 2024 15:07:07 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:7d14:0:b0:466:b34c:880d with SMTP id d75a77b69052e-46a3b07580als4562591cf.0.-pod-prod-03-us;
 Wed, 18 Dec 2024 15:07:05 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVhN/Zwr21igz7Lt2JzpA/nSaji6hN7MFZJSAgDoMvqEDAShkxaV37IqFsPBSt4ar79vd3cnvVKSKQ25A==@gapps.redhat.com
X-Received: by 2002:a05:620a:28c3:b0:7b6:f997:1d41 with SMTP id af79cd13be357-7b863754fe6mr674621785a.29.1734563225727;
        Wed, 18 Dec 2024 15:07:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1734563225; cv=none;
        d=google.com; s=arc-20240605;
        b=QpdK94JGQX2O+DMZ43iTpor72bvCx84jMb0S1SM7jC8HrFh7DxarocRtw5Cx7ZfMJF
         XMPNbVntR8deVKDov+J6o6XqYzen3rxDn1NnRVKMHBLS+d9l8srVk98qclP5P9I75rmo
         HADl06kFR/FYYp9U1CJ5Qa3nJBhs4kEVA8Ar1DHO/92FFewQknuLXGCNj5uvjgnNTWag
         Mu7vyH4t/jTaH5QR0Po2QfoxGro4wN99L3c5Kj5GE0v+dwNQUL9oaHAtHu0ymleXz3M1
         KCPiImWeKmf0+rL39nAOMFGTNLdlDeVGSLHWXixftZeSqpjNCFaI+X/BtuDmsxgCaIoL
         83Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-id:message-id:date:mime-version:comments:references
         :in-reply-to:subject:to:from:delivered-to;
        bh=0873YVNEIt+CcHnmpwoc/FwqVqFMQJ/7T/drSzl6xfg=;
        fh=CiOVIf+yLaSSbmUIgxK+MKTbd7lxH6Vj0zK4DM0lhng=;
        b=CyPizt+hPA5h788wmV3kWhuOe9MW9YVoC5C10p6du3swgEI+5B2MsRe7dUv8N0MuVX
         NI/mg+aRYsV2P30pkpaND1wM/Bs28VuD3xpJXjAzqmY2tvRwWz0l1yrp6HPmzW9TqqVd
         XF15RkQoGbwTN4Cm118Me/QCb2AygLSBNpXS7TBao4js3SgI2QocVjdWJjqY4rGR8COC
         9pWzZifNWisu2CS+DyxHIE6lGVdjsC7dTepONqklvULRwNwWY65bxdSJ5067fZXYsgEz
         qEAVuWAShqEEwG/7r+BGjGVgUCnwqU79nKnNQTPRcNa3HGHgdnZPLyQX/8kaTKJgaPvS
         e56A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.60 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-7b9ac478674si13799785a.231.2024.12.18.15.07.05
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Dec 2024 15:07:05 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.60 as permitted sender) client-ip=65.20.63.60;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-386-gvxGHEz9OjmO1hK2cjuXtQ-1; Wed,
 18 Dec 2024 18:07:03 -0500
X-MC-Unique: gvxGHEz9OjmO1hK2cjuXtQ-1
X-Mimecast-MFC-AGG-ID: gvxGHEz9OjmO1hK2cjuXtQ
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E14C11956088
	for <blinux-list@gapps.redhat.com>; Wed, 18 Dec 2024 23:06:58 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id DA7D4195394B; Wed, 18 Dec 2024 23:06:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D781419560A2
	for <blinux-list@redhat.com>; Wed, 18 Dec 2024 23:06:58 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 521E61956088
	for <blinux-list@redhat.com>; Wed, 18 Dec 2024 23:06:58 +0000 (UTC)
Received: from altprdrgo06.altice.prod.cloud.openwave.ai
 (altprdrgo06.altice.prod.cloud.openwave.ai [65.20.63.60]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-80-SzYwuP89P6yPjXVafjFkDQ-1; Wed,
 18 Dec 2024 18:06:52 -0500
X-MC-Unique: SzYwuP89P6yPjXVafjFkDQ-1
X-Mimecast-MFC-AGG-ID: SzYwuP89P6yPjXVafjFkDQ
X-RG-VS-CS: clean
X-RG-VS-SC: 0
X-RG-VS: Clean
X-Originating-IP: [47.217.105.81]
X-RG-Env-Sender: martin.m@suddenlink.net
X-RG-Rigid: 67549D2502D9086C
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgeefuddrleelgddtjecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucetnffvkfevgfgfufdpggftfghnshhusghstghrihgsvgdpqfgfvfenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvffujghfgggtsehttddttddttddvnecuhfhrohhmpedfofgrrhhtihhnucfotgevohhrmhhitghkfdcuoehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeejudfftdehhffhudelgeefudefgfefffevieduuedukeehffdvvdejffekhefgveenucffohhmrghinheptghrohhsshhlihhnkhdrnhgvthenucfkphepgeejrddvudejrddutdehrdekudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhephhgvlhhopeifsgehrghgiidpihhnvghtpeegjedrvddujedruddthedrkedupdhmrghilhhfrhhomhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthdpnhgspghrtghpthhtohepuddprhgtphhtthhopegslhhinhhugidqlhhishhtsehrvgguhhgrthdrtghomhdprghuthhhpghushgvrhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthdpghgvohfkrfepfgfupdfovfetjfhoshhtpegrlhhtphhrughrghhotdei
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from wb5agz (47.217.105.81) by altprdrgo06.altice.prod.cloud.openwave.ai (5.8.812) (authenticated as martin.m@suddenlink.net)
        id 67549D2502D9086C for blinux-list@redhat.com; Wed, 18 Dec 2024 18:05:35 -0500
Received: from martin by wb5agz with local (Exim 4.96)
	(envelope-from <martin.m@suddenlink.net>)
	id 1tO36f-000F0c-3C
	for blinux-list@redhat.com;
	Wed, 18 Dec 2024 17:05:29 -0600
From: "Martin McCormick" <martin.m@suddenlink.net>
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: Re: My Sound-Cards Are out of Order Again
In-reply-to: <CO6PR18MB44198F8576A20363A7C5D0D5C7042@CO6PR18MB4419.namprd18.prod.outlook.com>
References: <b5d047ff-5695-bbaa-d3c3-41ca7fd56396@hubert-humphrey.com> <20241209.040341.694.24@[0.0.0.0]> <41ed14fc-97e7-bfd8-b13e-ad14d429cc1a@hubert-humphrey.com> <20241209.043800.647.26@[0.0.0.0]> <20ccc5fc-d10b-edab-7aa9-9ef3365491bc@hubert-humphrey.com> <20241209.050612.901.27@[0.0.0.0]> <40ebd47c-4d86-9d2b-7888-eb0ed70adafb@QuiteLikely.com> <E1tNZlg-0009xE-2c@wb5agz> <CO6PR18MB44198F8576A20363A7C5D0D5C7042@CO6PR18MB4419.namprd18.prod.outlook.com>
Comments: In-reply-to cstrobel crosslink.net <cstrobel@crosslink.net>
   message dated "Tue, 17 Dec 2024 17:11:09 +0000."
MIME-Version: 1.0
Date: Wed, 18 Dec 2024 17:05:29 -0600
Message-Id: <E1tO36f-000F0c-3C@wb5agz>
X-Mimecast-MFC-PROC-ID: Qd_ZV6ogKCGFlT7V3bCa9aEeTq0zls9EMoadfX3w_d0_1734563212
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: _ICdjq-ISwERneVElqp_NsD7AdH_32HQSeJQ96wi8mY_1734563219
X-Mimecast-Originator: suddenlink.net
Content-Type: text/plain; charset="UTF-8"
Content-ID: <57696.1734563129.1@wb5agz.lan>
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

Thanks for all the responses, group.  I did find out one new
factor.  I finally showed my wife the usb hub I am using and
asked her if the 4 ports had any numbers by them and they do.
She also commented that the numbers appear backwards as opposed
to what one might expect.  The extreme left port is labelled 4
and they go down as you move right with Port #1 closest to the
usb data port leading to the Raspberry Pi.

	I commented to her that that was interesting because that
was the way things always behaved with that hub.  If I plugged
all those Behringer sound cards in so that Card #1 is closest to
the data port leading back to the computer, all 3 cards always
seem to naturally come up in the same order every time I reboot.
If I start cold with the 3 Behringer cards plugged in to
different ports on the hub, they all still come ut as if all 4
ports always activate right to left.

	My test to see which port is which involves playing an
audio file using the alsa nomenclature and mplayer to define
which device to use.  Device 0 is always the Raspberry Pi's
built-in sound card which is a play-only card and feeds audio to
that 3.5 millimeter TRRS jack which carries composite video as
well as stereo audio.

	If I run the dmesg command which produces about 450 lines
of print, the  output simply lists the Behringer devices, not as
Behringer but by their codec chips which are all Texas
Instruments devices and identical so you see the same chip listed
3 times with Input1 being the first 1 and input3, the last.

	For those who might be curious, the 3 cards all record
continuously and capture radio calls to files when something
comes in.  If the cards came up in different orders, it would be
more of a nuisance than a show stopper but for now, they
certainly appear solid but I think I am just lucky that all 3
pieces of hardware are the same and all are using the usb audio
module.  I know for a fact that if at least one card is usb and
others are attached to the mother board one can get different
results fairly often when rebooting with out some sort of control
on boot order.

Martin McCormick
cstrobel crosslink.net <cstrobel@crosslink.net> writes:
> Martin I suspect if you use 'dmesg' you can see all the USB ID numbers 
> and that may answer your question.  If you are using Pulse audio, I think 
> you can have a simple script to set the default sound device.  Probably 
> Pipewire can do that also.  Maybe I don't understand what you are asking. 

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

