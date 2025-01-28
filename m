Return-Path: <blinux-list+bncBDP7P6HU4IERB7MI4W6AMGQEPRCG2KI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 80AFCA21354
	for <lists+blinux-list@lfdr.de>; Tue, 28 Jan 2025 21:56:31 +0100 (CET)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6d880eea0a1sf15308436d6.3
        for <lists+blinux-list@lfdr.de>; Tue, 28 Jan 2025 12:56:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1738097790; cv=pass;
        d=google.com; s=arc-20240605;
        b=dNz3+qh7/CdaXtIQqueSZzpfmuDorsRFdlBwL8btVwQYdYOZbR3b26c6kZK6k7AraB
         +10iY/mvfnn+oefzlt1d4x4jETSmbcerqdvqDIz7IoxdFt/CUFakfuo7hi7UVKv8iwi+
         HFJoxZOJQD7SS6D0hQxS7jkppdo3retQt/cTcFirGgTWdz86g6E6nobJnQ/rgGONlsi1
         KCa/IwIrVsPbdT1ixA/wES9vaEIcbBhYCzVymPyaGIv1S4AG93fp9szgMg5UoH+oYXCZ
         FCDbmN75A929M11CknYnaWlVuX8GfIepHRxPxKN6VYuWag3K/I/LKCidw3U4Du3+lZUr
         BWSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-id:message-id:date:mime-version
         :subject:to:from:delivered-to;
        bh=zcg+3/Okjsfu8yOv1MkoycjA2+vHPgDa/RR5vdKK8pc=;
        fh=jIAj/wEccsrNDdBD/3TLN1+xEvTTfETQNXiaAVC3SXA=;
        b=FPjaQHu0ui0vJ16TdfmLsV6ADAxEROjwWEVh1XTB9EjpNa/FDM/cEvK99sD+LRmh8D
         xv2ansxAom/72klR2cfmFldxL7gEVdAohFVZsRf92/PYtzcMgIhkQ20Qk7o7EOG7sd1t
         UHyW5v5cWEzxzwRZvdHF5WEwyfxXkWJiDUK9xR7Zap0Be389Tdj4OJVwFrN0+ttNiZWZ
         PHK9tJR7pAshNnyxFWH6yVtIPRiwMlL2JcbJzUpa5PVA3NcOEaHW0aRvT3I94Ch/Uo2c
         EBDIrw9Y4yivt6KeYp7Y8x+dTegUz+HrMVC+mJZQv++puDa715IgfvjnkWR3cld/JDM8
         pAPw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.75 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738097790; x=1738702590;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:content-id
         :message-id:date:mime-version:subject:to:from:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zcg+3/Okjsfu8yOv1MkoycjA2+vHPgDa/RR5vdKK8pc=;
        b=abemV3AG0fEiSkeyXC6t5w+ReChCpUYEfwdDjZPsGHOO9AjybEFzVPL4ynr0p6SfQE
         ab6r3i2u6yVy/GsPVnklu2saoJnkMMooY1/dNx+VE8q6VFOxot+AmzBdW42XIu7SFEqq
         bdOKXtaQ9qUN3OLTb8C9w5H3bRZb7AyPMslZZaBD5ROZPQIRxcqwE5lK1fYWuvchQkt3
         OwgYQxeLtIOWLIbva0TEOEwkLwDprlabZMAPOQFj4rRaipvmUoDHTRaw+NyOnoXESX/l
         l/B+cgZ08gMlvWXvX15NuPCBzkG34uSoHxFKEmzECUImVvXtQ63NZla3hcxxaMpRJBjE
         fwhA==
X-Forwarded-Encrypted: i=2; AJvYcCU3ygwyHn4wYu6TuERhuYgDrGA61gQvbspK/cpVxASUaAhxMvISD5yrFs7c2PAHxFTr/5HYjw==@lfdr.de
X-Gm-Message-State: AOJu0YwQzZotILMpqx4Gh7QftvzrJCZwXt+HxLaYRQGrnSWloTKPCvce
	x8J7ydPLNPPt/DEtwX8QotHOsPPAHqdY1Ix1kEo8FaeItp194peSor4kpp4OdB4=
X-Google-Smtp-Source: AGHT+IHf7Hjfekw9K6QUE3yJgpMiKJAieXfzIp6mnZikw/1ovQm3lF5Q1g1jPkNVcWFVN1Qsu1LPtQ==
X-Received: by 2002:ad4:5bc8:0:b0:6d8:8283:445c with SMTP id 6a1803df08f44-6e243bba801mr3373886d6.4.1738097790356;
        Tue, 28 Jan 2025 12:56:30 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:e583:0:b0:6dd:3c06:688b with SMTP id 6a1803df08f44-6e1fa229111ls10954346d6.0.-pod-prod-01-us;
 Tue, 28 Jan 2025 12:56:29 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXqqdyh8fhm3Ev7jfSwdwnjhjt5TYRUrlxPU+/NhP1A38v9lwVKVc6wi+qX0HVIn8Nqax+ISQrNlyNcpw==@gapps.redhat.com
X-Received: by 2002:a05:620a:2601:b0:7bc:ded5:888d with SMTP id af79cd13be357-7bffcccae23mr54973685a.1.1738097789199;
        Tue, 28 Jan 2025 12:56:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1738097789; cv=none;
        d=google.com; s=arc-20240605;
        b=L4YJj0ygS5Q2HxRJcCAFQpFLecgGp2E4ei1gf+s0X1NjCbJB6UeO8tSmsKpFgMyM/n
         92aoNIOMpZvalM5CqAG3JhbcCiiP7L3OJ4VN3aqnfRhCnFWgWrMxEirmXW5Q7V9aPMcY
         XvofQHlDrYbMLNcrFnVGaNy4T/PLqY2ZoUMYMXKp9/xM31y5yy/K9dbv66aDEqIEKHSy
         CnJkI260N3gIzFcdIP/UjFqltLMj+wlf1UpAh3wRDWN3+R+sa1itpU4rRCcF7RE69oyj
         2mcUhoFYHUuyBDEFmKKcrhuCfNDeD/sCnujBQv9gLzT+i+ZRoChoN6hgsIoIo70pGteu
         7kSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-id:message-id:date:mime-version:subject:to:from
         :delivered-to;
        bh=Gzr7VCC71xDV+ceyvThlGiNV8qfBGBXxWLdad1zCNvo=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=QkPWr3PQOM33YgvrAbHi/WxOmuFHY3Zyuf8Pt0PS45xJGNgJlpcri5bj+cTEzmvw6K
         +Deum8qlkYDxXMFFDbTYtSd6KHLrpZc1S5PML4hcrxgVPkYBXicr/P0B0fO4pZilXu5P
         /s5qY9TOBugw5JHBF1AbfJYDxjVUD3yaWSuHd4o+Te55LAdOdTL2yAtEQIy+Jsbi0mym
         cMC+r2b4aoTuGOiLhmEHJH7HyYySTdlTJj63nkKG4qvSIX35+zcO6Jhawm8dPXI2F1qA
         lPEkhnUg7ahpNnc3l39m4kGpR+Mjvi57x0WxZpwXwchXSi16PByWMTOeLY1qjclC9NID
         KN5g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.75 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id af79cd13be357-7be9af12380si1320595585a.576.2025.01.28.12.56.29
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jan 2025 12:56:29 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.75 as permitted sender) client-ip=65.20.63.75;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-652-xNBVgiLNM_OlPLDh8SdQbg-1; Tue,
 28 Jan 2025 15:56:27 -0500
X-MC-Unique: xNBVgiLNM_OlPLDh8SdQbg-1
X-Mimecast-MFC-AGG-ID: xNBVgiLNM_OlPLDh8SdQbg
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D00B019560B3
	for <blinux-list@gapps.redhat.com>; Tue, 28 Jan 2025 20:56:25 +0000 (UTC)
Received: by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id CC4691800361; Tue, 28 Jan 2025 20:56:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.124])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C9BAC1800352
	for <blinux-list@redhat.com>; Tue, 28 Jan 2025 20:56:25 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 311E51800269
	for <blinux-list@redhat.com>; Tue, 28 Jan 2025 20:56:25 +0000 (UTC)
Received: from altprdrgo01.altice.prod.cloud.openwave.ai
 (altprdrgo01.altice.prod.cloud.openwave.ai [65.20.63.75]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-683-AMR9c4tyNO-JgFnqM9k9YQ-1; Tue,
 28 Jan 2025 15:56:22 -0500
X-MC-Unique: AMR9c4tyNO-JgFnqM9k9YQ-1
X-Mimecast-MFC-AGG-ID: AMR9c4tyNO-JgFnqM9k9YQ
X-RG-VS-CS: clean
X-RG-VS-SC: 0
X-RG-VS: Clean
X-Originating-IP: [47.217.105.81]
X-RG-Env-Sender: martin.m@suddenlink.net
X-RG-Rigid: 6767F6A706ED911E
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgdduudduucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecutefnvffkvefgfgfupdggtfgfnhhsuhgsshgtrhhisggvpdfqfgfvnecuuegrihhlohhuthemuceftddtnecunecujfgurhephffvufggtgesthdttddttddtvdenucfhrhhomhepfdforghrthhinhcuofgtvehorhhmihgtkhdfuceomhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvtheqnecuggftrfgrthhtvghrnhephfektdektdeljedtvefhgfeuleeiveevffduieelieffueejteelledukeekhfeunecukfhppeegjedrvddujedruddthedrkedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghlohepfigshegrghiipdhinhgvthepgeejrddvudejrddutdehrdekuddpmhgrihhlfhhrohhmpehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtohepsghlihhnuhigqdhlihhsthesrhgvughhrghtrdgtohhmpdgruhhthhgpuhhsvghrpehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtpdhgvghokffrpegfufdpoffvtefjohhstheprghlthhprhgurhhgohdtud
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from wb5agz (47.217.105.81) by altprdrgo01.altice.prod.cloud.openwave.ai (5.8.812) (authenticated as martin.m@suddenlink.net)
        id 6767F6A706ED911E for blinux-list@redhat.com; Tue, 28 Jan 2025 15:56:22 -0500
Received: from martin by wb5agz with local (Exim 4.96)
	(envelope-from <martin.m@suddenlink.net>)
	id 1tcsd6-000YH1-1N
	for blinux-list@redhat.com;
	Tue, 28 Jan 2025 14:56:16 -0600
From: "Martin McCormick" <martin.m@suddenlink.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Control-Alt-F1 What is it?
MIME-Version: 1.0
Date: Tue, 28 Jan 2025 14:56:16 -0600
Message-Id: <E1tcsd6-000YH1-1N@wb5agz>
X-Mimecast-MFC-PROC-ID: H3LznlI-RiTRr_4vL64Tno7mXG_axZmJXsl0HWd-FWs_1738097782
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: s4vUXxAmofnLJTEUvu1FSIhlVl3gB17SQdHTRvEh2n0_1738097785
X-Mimecast-Originator: suddenlink.net
Content-Type: text/plain; charset="UTF-8"
Content-ID: <131749.1738097776.1@wb5agz.lan>
X-Original-Sender: martin.m@suddenlink.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of martin.m@suddenlink.net designates 65.20.63.75 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
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

The Linux box I am running is a HP PC using Debian 12 or bookworm
and I have all the consoles talking.  The first console is orca
and the other 4 are not orca but command-line consoles which are
nice when not needing the GUI but there is 1 mystery.  Orca is
always the window that prompts for a login and, when I do that, I
can bring up the command consoles by pressing function keys Ctrl-Alt-F3
through F6 after getting pipewire set right and installing
espeakup.  They all are working fine but if I press
Control-Alt-F1, I get nothing and am curious as to what that
brings up.  Everything is silent and nothing at all good or bad
happens so there must be something somewhere that just doesn't
talk.  Here's what the who command reported:
martin   tty2         Jan 24 12:05 (tty2)

That's orca.

This next 1 is a console in which I run screen.
martin   tty3         Jan 24 12:05
martin   pts/0        Jan 24 12:05 (:tty3:S.1)
martin   pts/1        Jan 24 12:05 (:tty3:S.2)
martin   pts/2        Jan 24 12:05 (:tty3:S.3)
martin   pts/3        Jan 24 12:05 (:tty3:S.4)
martin   pts/4        Jan 24 12:05 (:tty3:S.5)
martin   pts/5        Jan 24 12:05 (:tty3:S.0)
martin   pts/6        Jan 28 12:31 (:tty3:S.0)
martin   tty5         Jan 25 11:25

	One would think that tty1 would be Ctrl-Alt-F1 but it's
not saying so if it is.

Martin

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

