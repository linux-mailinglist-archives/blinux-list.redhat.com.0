Return-Path: <blinux-list+bncBDP7P6HU4IERBQHZ6W5QMGQEFC65VXI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A51A049F8
	for <lists+blinux-list@lfdr.de>; Tue,  7 Jan 2025 20:13:13 +0100 (CET)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6d89a389ee9sf399800566d6.2
        for <lists+blinux-list@lfdr.de>; Tue, 07 Jan 2025 11:13:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736277185; cv=pass;
        d=google.com; s=arc-20240605;
        b=CpPlmPWdV0jpsB4UjgMp6zlJLEn33E/FpFTNHtHR59zPtoHL9D/nalAUXj9u7N1UZO
         gRyp1S83d2E32Ky+X+5pEllwTYNH9SuCEeBLveOSFKy2ff5s675MX//l1rZBNo6KdYGG
         GdEAuUiOT53INkZcq/P2rffLIUMqAoQ7RCcIYBsVWPZMHhvXfumrL1cHkkqoY36t2GAe
         w0YHrT+RsqFL96aCVujIclbhHNkSbcqZP2BLBC17Ox0AGmIHcBq5flpOixYAJ8p3lGsY
         GeqoHwaogdywba4ixq5LOgPtpBhPOe97C6awc8aDj+1iw1LYJCoDjvQ9fLTmkrvHszZ6
         J7yQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-id:message-id:date:mime-version
         :subject:to:from:delivered-to;
        bh=wX9E+Al+jV5bwSdRbh6nuji0cckUMgUFDeyBM6pPl1A=;
        fh=3pg5h0PJV4ZnJdODrk733A19dLopJRclsyZNs7WObyg=;
        b=A9TUZ1vQpUnna9ew2Y9hC4oomqat6xqiVTDF/kpu4bxXrFbNhCLQot/fhJsgRQSv45
         quu90MRiWmjKUzIkR/kQwiclqxmFpu+IUcW94ao5nrI42usC0SqSPVwLx3fvVEgnyOTT
         QGpR7gt0ydM3ozDHkKYUk5oobOA7KTPH42lmmHIF/vP+C3q694/usfhP2mTN+E8FMOU7
         J/q37cJXuB3N3RhtQB5rD9i37WqCCao2DTkqG0jTGC8O44JS94L1Q7+gmVHbP5DBqBlb
         6BoQkPWn/9ZRWuqF13GArGuPgFSNSjbCWEKQa9Aa1cgOsaQOCr7EyOpAqh9HJrwE/jOd
         9lHg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.60 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736277185; x=1736881985;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:content-id
         :message-id:date:mime-version:subject:to:from:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wX9E+Al+jV5bwSdRbh6nuji0cckUMgUFDeyBM6pPl1A=;
        b=aPr9U8pQjupnu0Z4TQyiWvbSW7eWb6rGjRlMPI884P4cCiWn2i1U0xf5JlR9t6W97L
         VKkzrPONc6b3slp01TEABctESQMMLMAVaq7pHUXBYc3XwtAi06jmeCoxoE7ttuHT3fIQ
         Ygmq9wM5IhQOIByj46cwIoXG1gN14OzoKftMyGP3wCZlgdwAgL0AuVxJ5YRfg7sZLqVu
         dWsHxxZmuHk/nxYNwhnW15Gzy00TURAaffoV1Qrnw3rSdGrBSAHMRqdVJH3s1/+SsVeJ
         Wxh5nG7K7KllBoQWa0lAqcCK8gcB6uFOxu4vTAXozVzSA2ySy6SpeJyOzn3SSzW7DaRm
         2MaA==
X-Forwarded-Encrypted: i=2; AJvYcCUfoxy64JMGchZJg8ONyhy9pSM/e7EK4yyBLjoPbcPwCP+tOPdlyPW1N/bWREmyXMImeMc0Hw==@lfdr.de
X-Gm-Message-State: AOJu0YyAuvMs3IbtrvgOP0t07JvtYLkrEvWInWS9v3TzSygLBQwsWKwC
	GqV06VzuhSwbPUf1hHoYS9C/8XeqWVvIoaLBD14/jQca0kmox8o6aP7LLHv/uPg=
X-Google-Smtp-Source: AGHT+IEvl1+SUAamFrLBSzZXORvj5FRIAx7KE/ISSsdBNRMaiYsWebWM+1Gu8UkEBv2fPQwy4NkeOw==
X-Received: by 2002:a05:6214:1251:b0:6d8:a148:9ac9 with SMTP id 6a1803df08f44-6df9b2d08ffmr2576166d6.30.1736277184689;
        Tue, 07 Jan 2025 11:13:04 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:610e:b0:46b:cf11:757c with SMTP id
 d75a77b69052e-46bcf1176d5ls9664691cf.0.-pod-prod-09-us; Tue, 07 Jan 2025
 11:13:03 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXS3ZmX/5PlsrAMkYZabU0dW5i4zBJdHJmMLCPYeeThOO8l9xv8yBWylW6CHTCiptUiD1i2cP81rm7b2g==@gapps.redhat.com
X-Received: by 2002:a05:620a:318c:b0:7b6:e20d:2b47 with SMTP id af79cd13be357-7b9ba7fe5e8mr10845680185a.49.1736277183600;
        Tue, 07 Jan 2025 11:13:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736277183; cv=none;
        d=google.com; s=arc-20240605;
        b=Lj4hw5m6mpQFgtWjPGWdluvLNuB1Hh9DCNWdY1uyXcy8dKtlnUq8hgi8y42G7VF5Vo
         kZ+cojKLYhHKAmqIEdWJK4IbEILByFqMTZW0mnSmNZ8xGYn+9DmVXwl7rM21kjmd9J8z
         Q+kM3iTv33l+KYMcceQP3pLhexKieUTVymxo5bfEvwOlEc2s0APkbOw30v/UF/8PtrtC
         I4vgeNIqPvcSUMcRglw63I3idI51ZhThVSxQ3YJF/eIKdkTWgCBiTrvabK6bk0cSzN4M
         pCUizY1y5xG40JK0QNI6mApbXMW6/gl+RSZT0QZTnIbU2TB2h0IK2mCu9N0eNQMKwy8D
         xlhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-id:message-id:date:mime-version:subject:to:from
         :delivered-to;
        bh=wm+YetkXOnLx/ENZCEKoq9yURTAAXNxoM6mgCPqbeMQ=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=GhGQob9mKjGbzjiSV40GeRGDchzf2PGDUao8MN7pITNa5NimOohshNyjRzuRsuu7w9
         OoYp5lsIvAecI8QQP3PDiKlYFUcl2+RPCTxD8jVUTjRm0GjXrIkSeWG4Z9y1Spz/C/ZS
         y3P93T/gOxxJ4JeRSXVDfwW7kEvPtqGNJkhgmSFP59Gx21wYSqoF+Z5IZQ0hDyyjyHtQ
         bN8tRBX5Bz/EFbKF/1qKZBfG6BV9SS3ksKhN31c4AfcfNubjRYmhU40n1BPcsZLpPpfc
         MKho/sPEbHFCqSQ/sjN13uZQ8E9+9g5isvk0jWEMB9uDV33FbHeAWs/maX1OMoiyzPzw
         4hDQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.60 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-7b9ac47a1f8si4572111085a.251.2025.01.07.11.13.03
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jan 2025 11:13:03 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.60 as permitted sender) client-ip=65.20.63.60;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-594-jCAnddk7PPqziqJEuZeunw-1; Tue,
 07 Jan 2025 14:13:02 -0500
X-MC-Unique: jCAnddk7PPqziqJEuZeunw-1
X-Mimecast-MFC-AGG-ID: jCAnddk7PPqziqJEuZeunw
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6EFD41956048
	for <blinux-list@gapps.redhat.com>; Tue,  7 Jan 2025 19:13:01 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 693801955F4A; Tue,  7 Jan 2025 19:13:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 667B01955F43
	for <blinux-list@redhat.com>; Tue,  7 Jan 2025 19:13:01 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id F2A301956077
	for <blinux-list@redhat.com>; Tue,  7 Jan 2025 19:13:00 +0000 (UTC)
Received: from altprdrgo06.altice.prod.cloud.openwave.ai
 (altprdrgo06.altice.prod.cloud.openwave.ai [65.20.63.60]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-564-_IDbIu43PK63EY-Np20wfg-1; Tue,
 07 Jan 2025 14:12:58 -0500
X-MC-Unique: _IDbIu43PK63EY-Np20wfg-1
X-Mimecast-MFC-AGG-ID: _IDbIu43PK63EY-Np20wfg
X-RG-VS-CS: clean
X-RG-VS-SC: 0
X-RG-VS: Clean
X-Originating-IP: [47.217.105.81]
X-RG-Env-Sender: martin.m@suddenlink.net
X-RG-Rigid: 67715D1F01B5B97B
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgeefuddrudegvddguddvtdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucetnffvkfevgfgfufdpggftfghnshhusghstghrihgsvgdpqfgfvfenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvffugggtsehttddttddttddvnecuhfhrohhmpedfofgrrhhtihhnucfotgevohhrmhhitghkfdcuoehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtqeenucggtffrrghtthgvrhhnpefhkedtkedtleejtdevhffgueelieevveffudeileeiffeujeetleeludekkefhueenucfkphepgeejrddvudejrddutdehrdekudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhephhgvlhhopeifsgehrghgiidpihhnvghtpeegjedrvddujedruddthedrkedupdhmrghilhhfrhhomhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthdpnhgspghrtghpthhtohepuddprhgtphhtthhopegslhhinhhugidqlhhishhtsehrvgguhhgrthdrtghomhdprghuthhhpghushgvrhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthdpghgvohfkrfepfgfupdfovfetjfhoshhtpegrlhhtphhrughrghhotdei
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from wb5agz (47.217.105.81) by altprdrgo06.altice.prod.cloud.openwave.ai (5.8.812) (authenticated as martin.m@suddenlink.net)
        id 67715D1F01B5B97B for blinux-list@redhat.com; Tue, 7 Jan 2025 14:12:58 -0500
Received: from martin by wb5agz with local (Exim 4.96)
	(envelope-from <martin.m@suddenlink.net>)
	id 1tVF0W-000Hgp-2C
	for blinux-list@redhat.com;
	Tue, 07 Jan 2025 13:12:52 -0600
From: "Martin McCormick" <martin.m@suddenlink.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: MiniPC's
MIME-Version: 1.0
Date: Tue, 07 Jan 2025 13:12:52 -0600
Message-Id: <E1tVF0W-000Hgp-2C@wb5agz>
X-Mimecast-MFC-PROC-ID: aRLhxsSiT2R1QDpSg1O9XF2v0d-w2_hS7u72qCvzrfQ_1736277178
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: FnCyitAzJhW3bm0PPcDaDgsuDkH_bFF-Y2b3R-46Jbs_1736277181
X-Mimecast-Originator: suddenlink.net
Content-Type: text/plain; charset="UTF-8"
Content-ID: <68001.1736277172.1@wb5agz.lan>
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

Has anybody on this list tried running debian Linux with speakup
on a miniPC?  From what I understand, one needs a usb sound card
which is no big deal but what I want to do is install debian
without orca but with speakup and use it as a talking text
terminal.  I am actually doing that exact thing now using a
20-year-old Dell that puts out lots of heat and one of the fans'
bearings are sending me a message in their own unique way that
they are not long for this world.

	I tried this very thing on several Raspberry Pi's and one
might think that they would really shine and they mostly do fine
but each Pi, from a 9-year-old Pi 2 up to a 8-GB Pi 4 ran debian
bookworm and also ran speakup mostly perfectly until one would
produce a long spew of text such as read the entire contents of a
long mail message at which point whole chunks of text would go
missing pretty much the same way each time one produced the
multi-screened text dump.

	I think this may be related to the hardware capabilities
of a Raspberry Pi because another thing they don't do well is any
application that seems to require several parallel activities.
They end up doing that app correctly but take much longer than
one would think such as using the imager app to generate a new
bootable SSD card.

	One would think that I am down on the Raspberry Pi but
that is not the case.  I've seen them do a number of tasks as
well as a full-sized PC but those tasks didn't require as much parallel
capability so it's something to keep in mind.  In other words,
try whatever it is but if there are slow results, that is
probably why.

	I would be perfectly happy to have this miniPC run
bookworm and speakup in command mode as well as the older I86
system does so what would be a good 64-bit system to try that may
be better able to handle this situation?

Thanks for any constructive ideas.

Martin McCormick

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

