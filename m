Return-Path: <blinux-list+bncBDP7P6HU4IERBQN2Q25QMGQE2KBIA3Y@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 46DC59F4FE8
	for <lists+blinux-list@lfdr.de>; Tue, 17 Dec 2024 16:48:21 +0100 (CET)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-468f80df8casf23764831cf.2
        for <lists+blinux-list@lfdr.de>; Tue, 17 Dec 2024 07:48:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1734450499; cv=pass;
        d=google.com; s=arc-20240605;
        b=QZMvn2Jrt9zOpOOaev0z8py8NxEiXu8ixMPwCimUrD7+k5efCmeAmqK3oOADpjrFwH
         cxlVsl09yJxzISp+SsEK+XaZOclglMh05ZXpkwxNhspYvStLnLnP1dp06ejFyAakDtm8
         tnRquUc0Vudeb8BwWzatItXDmxq35On1AldetT7Wx3r3TD6wpZ25MparykaVC1i1VTPN
         qa19yPtmH9hLAv/TkHepvoq8jMQSeryvfL3RQpFyshtS3+0PySLJsm+nJiN1vdMf+cIn
         jj+NGK/exgVjcah2f1nRQLj3onqKhM5dRHKasPQ7/vomSGv05H4c9guzOwLzn19woLFI
         KSxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-id:message-id:date:mime-version
         :comments:references:in-reply-to:subject:to:from:delivered-to;
        bh=PjuNR/seayDAvswvDmgb3BpATHdq4dlSiJ76QAMJexs=;
        fh=l2fg5hmSovpKz8BVXGyKeCyAcyLHhSvfNtt0zrRxzm0=;
        b=jAZompUNavwpe4xLMPxdyFndWPl6LivY8vQ4eI3rAlJmq7fqH+qbiYc0mBT/ip7E63
         BCbc0ooqrV/cJPLasf+lgupYVQsd7kLquf8Dqr56Q2iK+xQPtpJVdLI0etjkglNP/xMm
         jwlLiubd2adDXEtpuR8Tcr0iEAgzS6EvQDcn4pVzyEbt98XgSVSCzHIKztOA3LwlTzDP
         FGAULxXQ/BjzUq4fSKfHmQI0cZo50Qnlvee+uVKB8QaFCJ0rP06KvF7E9SkAtZ0cwv5T
         isNi3ld2ktxhf4Y29yu7pI9N49P1aqRnuBlqJ+doGytoVmvSPTnd8hi5JjjHcnJLBXTe
         eD7g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.73 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734450498; x=1735055298;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:content-id
         :message-id:date:mime-version:comments:references:in-reply-to
         :subject:to:from:delivered-to:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PjuNR/seayDAvswvDmgb3BpATHdq4dlSiJ76QAMJexs=;
        b=qp6BCgo8UlvTbp0Gy00kuLYvcRh9q7Sp/0dGzcoTX4c+Vnb2yZzlJfIa6brqi50gHJ
         85JRQ2ayUDtzWNdCYxAO+7q5y/TlpwevnAyNhQSaSQYh0sBodc0gVsj1a5nqtjfESAJT
         sFXW+5mxri2kfTclq+fiSr+Pfrn90TRopg2a9CKfNRK75NlIXHBaHABt6mA+eGIZx/Or
         0546R6K0B512JYR30Ti3Yjw+EH4UpjC0wLeASXyqvf+POIeMQNABJoaSWzjDhANmBSDX
         NU5mTS36QipOnWmd+26J6ZKR5Jt+4UqhewnJzNYMh6HX66Mh80R9QxFEtlI6nmgGZAid
         a+dQ==
X-Forwarded-Encrypted: i=2; AJvYcCX8fjbzDc5aApHDaZ8FH6glFxO1rrHytc7GFm/t7iwiDA65L/kRrG3im7mt6i3YHNR5u3m6kQ==@lfdr.de
X-Gm-Message-State: AOJu0YwX3xlw5W2qob/pRpS1ffREc9MERDBjOrecU86+QQkn8UzxP0dX
	rhbe1jD8pxyCgHin5ajPsQsXOuogkmBASUDq9TlaNQE30WW5sipFqGTLGMaa9gU=
X-Google-Smtp-Source: AGHT+IHFew5GC+TZBaiawIxntqMKc02HNOnxjgLYX9gdhZwMvS3Hc6oHsf2KO9dIOGFqQ2cMcPuF9Q==
X-Received: by 2002:ac8:598a:0:b0:467:51e6:d861 with SMTP id d75a77b69052e-468f8aef166mr62672081cf.31.1734450498143;
        Tue, 17 Dec 2024 07:48:18 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5a16:0:b0:467:68a3:4c53 with SMTP id d75a77b69052e-467a6742393ls18052571cf.1.-pod-prod-01-us;
 Tue, 17 Dec 2024 07:48:17 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVSYxbxta03gXwJ6jakq/b7OKVpS5I1tCpOgBIlM6T/i7p0zBbbUYllxykOZXTjC8+CEFgmLXJejpRABA==@gapps.redhat.com
X-Received: by 2002:a05:622a:1341:b0:467:8651:40a2 with SMTP id d75a77b69052e-468f8ad08f9mr72926881cf.13.1734450496896;
        Tue, 17 Dec 2024 07:48:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1734450496; cv=none;
        d=google.com; s=arc-20240605;
        b=SoNMvAoyNK/0tVFMO2awGaZ44sA3HDkz0BjmIIzdnPWZNrnLRWDmVjOAY2EOhWkiUO
         Qxaxtpj22uIfowD40GmvmjXQExwWfuY2iLpPEAtJBqIqTy0BMllDTQaSTgpTz2dHcrtv
         HoNnSy26ps9gc9zm71exXNa26VZ7qfVbfRQ1IzcX9xV7Whz5jYk3C9lILN52A0HeywwZ
         2wwlaOuCTAqAwv5JCDzSdi9bxj3WyuD9ysGKz9+v8ptTlJ0RhcYsSfbr8kIKjEdmVPyo
         ECh5gwHbbDEH8tksUvKONlOs8WS6kAcd9ELkEk3jPM5AyYf9FlMqEIt8REO3t9UEQuEI
         OMUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-id:message-id:date:mime-version:comments:references
         :in-reply-to:subject:to:from:delivered-to;
        bh=5rfVhHFWSwFMZ8/4N0syxSkgX0ZBBk0dyf3BuPOCmfw=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=P4GI1HuDN3OMT2dXRJih9Tl2Roq89nVrbIL41F9nIwgepnaYcQrtL8qu35wVybJuCD
         B3Vi+YmZ6+De5bosdL9CfgT2IVqFKDvr1IlyMzvJWXbSg/zNx9+H1id2Q3q0M2+8AQhL
         4qNv2porzp0q71UjIlLkuFVfAm6shY/vyldyRx01B8cfz0dFDMaOCkZw23P8+L0eQkXj
         DCgUOHi2mymqFBWt51AtkgBFzp+wzguoLsmkAnJT2Ix0AspPeoC02sxvHnA7mYqdb63E
         vm7SeAF30lv9TApd6Rktn57E199rhgNRPkuv0+qeTLCaNmDiqS2M91u0IwoQMWNrExi4
         A2Qg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.73 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-467b2ef06dbsi97681091cf.537.2024.12.17.07.48.16
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2024 07:48:16 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.73 as permitted sender) client-ip=65.20.63.73;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-335-wTLE0mq-PYC9GHpl-lxXeg-1; Tue,
 17 Dec 2024 10:48:15 -0500
X-MC-Unique: wTLE0mq-PYC9GHpl-lxXeg-1
X-Mimecast-MFC-AGG-ID: wTLE0mq-PYC9GHpl-lxXeg
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7AFD81956058
	for <blinux-list@gapps.redhat.com>; Tue, 17 Dec 2024 15:48:14 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 76B2C1955F57; Tue, 17 Dec 2024 15:48:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 736671955F54
	for <blinux-list@redhat.com>; Tue, 17 Dec 2024 15:48:14 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E7EDC1955F69
	for <blinux-list@redhat.com>; Tue, 17 Dec 2024 15:48:13 +0000 (UTC)
Received: from altprdrgo02.altice.prod.cloud.openwave.ai
 (altprdrgo02.altice.prod.cloud.openwave.ai [65.20.63.73]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-37-z9gOZyDAPvqubH9ZyT84Kw-1; Tue,
 17 Dec 2024 10:48:11 -0500
X-MC-Unique: z9gOZyDAPvqubH9ZyT84Kw-1
X-Mimecast-MFC-AGG-ID: z9gOZyDAPvqubH9ZyT84Kw
X-RG-VS-CS: clean
X-RG-VS-SC: 0
X-RG-VS: Clean
X-Originating-IP: [47.217.105.81]
X-RG-Env-Sender: martin.m@suddenlink.net
X-RG-Rigid: 674DE361036B0AF7
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgeefuddrleehgdekvdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucetnffvkfevgfgfufdpggftfghnshhusghstghrihgsvgdpqfgfvfenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvffujghfgggtsehttddttddttddvnecuhfhrohhmpedfofgrrhhtihhnucfotgevohhrmhhitghkfdcuoehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtqeenucggtffrrghtthgvrhhnpefgieejtdffvedtffdtgfekvdeufeetvdevleffgeejteeuledtfeeguedtieehgfenucfkphepgeejrddvudejrddutdehrdekudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhephhgvlhhopeifsgehrghgiidpihhnvghtpeegjedrvddujedruddthedrkedupdhmrghilhhfrhhomhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthdpnhgspghrtghpthhtohepuddprhgtphhtthhopegslhhinhhugidqlhhishhtsehrvgguhhgrthdrtghomhdprghuthhhpghushgvrhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthdpghgvohfkrfepfgfupdfovfetjfhoshhtpegrlhhtphhrughrghhotddv
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from wb5agz (47.217.105.81) by altprdrgo02.altice.prod.cloud.openwave.ai (5.8.812) (authenticated as martin.m@suddenlink.net)
        id 674DE361036B0AF7 for blinux-list@redhat.com; Tue, 17 Dec 2024 10:45:58 -0500
Received: from martin by wb5agz with local (Exim 4.96)
	(envelope-from <martin.m@suddenlink.net>)
	id 1tNZlg-0009xE-2c
	for blinux-list@redhat.com;
	Tue, 17 Dec 2024 09:45:52 -0600
From: "Martin McCormick" <martin.m@suddenlink.net>
To: blinux-list@redhat.com
Subject: Re: My Sound-Cards Are out of Order Again
In-reply-to: <40ebd47c-4d86-9d2b-7888-eb0ed70adafb@QuiteLikely.com>
References: <b5d047ff-5695-bbaa-d3c3-41ca7fd56396@hubert-humphrey.com> <20241209.040341.694.24@[0.0.0.0]> <41ed14fc-97e7-bfd8-b13e-ad14d429cc1a@hubert-humphrey.com> <20241209.043800.647.26@[0.0.0.0]> <20ccc5fc-d10b-edab-7aa9-9ef3365491bc@hubert-humphrey.com> <20241209.050612.901.27@[0.0.0.0]> <40ebd47c-4d86-9d2b-7888-eb0ed70adafb@QuiteLikely.com>
Comments: In-reply-to Geoff Shang <geoff@QuiteLikely.com>
   message dated "Mon, 09 Dec 2024 19:53:36 +0200."
MIME-Version: 1.0
Date: Tue, 17 Dec 2024 09:45:52 -0600
Message-Id: <E1tNZlg-0009xE-2c@wb5agz>
X-Mimecast-MFC-PROC-ID: l1YPDiEVxtSN83As-Lw19DCMdiugfaUHwhyAvJujgBk_1734450491
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: yVQI2WXxfO8gX3eqAybEH8telDzAXNTSUjlAqbCIBGw_1734450494
X-Mimecast-Originator: suddenlink.net
Content-Type: text/plain; charset="UTF-8"
Content-ID: <38266.1734450352.1@wb5agz.lan>
X-Original-Sender: martin.m@suddenlink.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of martin.m@suddenlink.net designates 65.20.63.73 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
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

I am not complaining, here, but I don't feel good about the
following situation:

	I have 3 identical Behringer usb sound cards on a
Raspberry Pi.  Every identifying descriptor for each card is the
same so udev rules may not work, here.

	There is an old usb 4-port hub that the 3 Behringers plug
in to with the hub plugged in to the Pi.

	I discovered that if I plug the 3 sounds cards in to the
first 3 slots on the hub, they always come up in the same order
every time so far but I have done nothing with configuration
files to force this situation.  Am I just lucky that the order
doesn't change or what?

	It always seemed to me that if one could control the
activation sequence order of usb ports, a lot of weird trouble
would just go away.  The order problems are race conditions in
which one device may register  a few clock cycles before another
so it is device0 right now and may be device1 or 2 later.  If you
could tell the system that Socket 1 should go live first, then 3,
then 2 if that's what you hope for, then that would solve a lot
of issues.

	Obviously, if one unplugs a device or the device disables
itself for whatever reason, nothing guarantees it will get's old
number back but that is a different sort of issue.  If you leave
your sound cards connected and they stay operational, they should
keep their current indices indefinitely.

Martin
Geoff Shang <geoff@QuiteLikely.com> writes:
> Hello,
> 
> The card number is defined by the index parameter to the ALSA module.
> 
> 
> So if you want to change it on the fly, you could remove the particular
> ALSA module and reload it with the appropriate value for index.
> 
> 
> For example:
> 
> modprobe snd_ens1371 index=2
> 
> 
> To have them come up in the right order, you would edit whatever mechanism
> loads them and add the appropriate index value.
> 
> 
> 
> I'm running Debian Bookworm (version 12) and I can't figure out exactly 
> how
> my sound driver is being loaded.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

