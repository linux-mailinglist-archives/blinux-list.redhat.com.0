Return-Path: <blinux-list+bncBDP7P6HU4IERBVEFU26AMGQEGXIYCYA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 93CC9A1445C
	for <lists+blinux-list@lfdr.de>; Thu, 16 Jan 2025 23:06:14 +0100 (CET)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6e19e09cc20sf29260936d6.2
        for <lists+blinux-list@lfdr.de>; Thu, 16 Jan 2025 14:06:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1737065173; cv=pass;
        d=google.com; s=arc-20240605;
        b=TGy1io1BLLJcrp3u06gWA2GBlW5bDSoduEbU93ulWnY6C3g99tpcfzAFg/HLHD3hd7
         lKAKiXro9M//8c3OpKesQtiI1VX6bMpMEFx4YcFN8LtfGSPxRLBAyOiI3LDY7YS87q4N
         dVvoeVSM3F2CjsfWKT3BNQ3vu0tDBJ6yc/owX+51LRbNQcrSvfynq7Zaqg2etHq4uSaX
         hGxxS65qTVt4HemkFeZuRdzdbCLm1HMichymPFiXQpeuzTd+WOX+xTnUBlSQzotK9pRh
         vajtDUusBib/C61nA7vkc+MQvxBZiEutVl0FD+4/PR4SE9sUNwhJNW9QS/iTKAsGq56K
         ueGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-id:message-id:date:mime-version
         :comments:references:in-reply-to:subject:to:from:delivered-to;
        bh=TQhTw3OvacYxo8AsWvmsxgowu9ZND+Gkpq8LStO+oDE=;
        fh=jiFu5fJno2ZpLHswNYsr4e1PSoujuZiqu1QWfI98efU=;
        b=j2DtOv9TJdj6mrnsDrpKGZOkdk5XQFEvJ8GspR004WJzsMZ7vFKs543dGTLuW84Hdm
         tBf3cTBipSVJo3VY3fi/K1DkvusfF9tNU9NwvaSgI9viFrXAwGreTTgFmK6L+rQ+MilS
         SXv7c4186bHST6qbpRrScZY8Zdi8imloRJBeVDMO3uebVr+87O1xEX4rZ3e0r/IF3s8r
         7Q/7BXSaEkV8u6A/okj1mrNLLhjWZlka53xAeeBBf47NH6ZfEkjovCfdThohe7u+THXd
         YB4tf8jmXV5X2bVRcf/zW1FW7ee0M49iqbySD/5TaeUpLLfoyX1NwtprkOC2uLOH7hQx
         +wgA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.97 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737065173; x=1737669973;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:content-id
         :message-id:date:mime-version:comments:references:in-reply-to
         :subject:to:from:delivered-to:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=TQhTw3OvacYxo8AsWvmsxgowu9ZND+Gkpq8LStO+oDE=;
        b=YHWFgR/c2+572F7yFSLA++XzI1rzA6gZ8xiby0D9BUdz5FGhSWOQrenS3jau/J9Z57
         2Zu2XAO1aIWdyLpxB9iGEJDHPvaaqFyIY33VWWlxY2QlOYkCOrmH8RC2PVsCvVKZeTM6
         4s9gt9r9eUV9iWO4WxrhSFUmGhgBB19UJ4e9qhIKDkASYpEaza40yi5mY9cC1H8BN7id
         vzFqKpBWoCGPZcpjY5Ouq6xQOKFVstCcOSThdZwYTL5NggQSd45Er3+/zbtO7vJiyI8z
         YA3KNr5p0RSVN2RYMBrCGgFPth/cX7v0sa109tL3C3RfYvexGVQgMG/EOZWEhHPb8Vn0
         wh5g==
X-Forwarded-Encrypted: i=2; AJvYcCWRSDhIt3a1YRK+LZyO3buRonxACf11yEleXgEbK3d/T+ZCdaMXwB/6Ei20Zjb0nVUJVhLSVA==@lfdr.de
X-Gm-Message-State: AOJu0YxHezbEkhQub5SlhDskKrpKwXKcTdlkmPzvD3YgnxhDPp3nW1/t
	fujgx9YomeKKQRMSwbMoRCfqpaG0nakk3Ae1a5VmBwyaPpnz3+PMJMfAsQgtZU4=
X-Google-Smtp-Source: AGHT+IEOtLHsDhhgHnA9ufAN3Vik5SwYMHrkJvDCLd6Gzdn0nQq4TP9pIlI8n3PkJIgIdE+UxbJBoQ==
X-Received: by 2002:ad4:5e85:0:b0:6d8:8fbf:d1b7 with SMTP id 6a1803df08f44-6e1b223ad9fmr7023116d6.43.1737065173222;
        Thu, 16 Jan 2025 14:06:13 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:188d:b0:6d9:86b:cc0c with SMTP id
 6a1803df08f44-6e1a104fe13ls23555326d6.2.-pod-prod-05-us; Thu, 16 Jan 2025
 14:06:12 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVFPs0NkTlEFdXFt3GbE9hzSKlWIMjP9Cs7PO8ecfKQAyG2HigvCkQSuxNefhOs89jHXguPNYTq5i6rfQ==@gapps.redhat.com
X-Received: by 2002:a05:6214:252c:b0:6d4:19a0:202 with SMTP id 6a1803df08f44-6e1b2213efdmr7288166d6.33.1737065172034;
        Thu, 16 Jan 2025 14:06:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1737065172; cv=none;
        d=google.com; s=arc-20240605;
        b=XLkW6JtwgLkNqngX+cpuUkYzh7pr/0gnoEGImmXQsIcbNFWj6s70mS3C50t78Tlij6
         Kf5YzYKo85wDzqSbXJeZK1qmgDqyxVUp9rGnUB8KTsjmmYs524piXYdxgQiPvgrj45Cx
         1cYzEm9XoKWpOJJF83NlWmtsCch+mE8gjZDNHiCkCNcbYz2CMCxcuba0+TEP4k4OYFaX
         ilcT3Jyg0TXa7HRuy36GzqGPPv1jDcQtj5ngrsdQ1ZW/j3MvSZzt8BqWKh1D52xOlLOt
         1ERROqkDWRY4yByN4sjqsFEpvYfZDVSkTOZnEt8R4+EEJ6igJEnGQ4RKyn+gTI4yl+cC
         nzPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-id:message-id:date:mime-version:comments:references
         :in-reply-to:subject:to:from:delivered-to;
        bh=ydNQpz3lZE6Z1USm4/YrVNHjwhMDu6w7nVJMrkigBrQ=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=Ngi9dInPYJMP5Ru5NvUvHi+PNbbefYJW9rLw0XYZgKyF7mMRePUJXJMNgwie/zi2Y4
         yn7wJpTvJFkil3HirsJkcpoYuYVqTGdfhyDMNjaZP6jb9Mb2hyLTjt8UqD+h/Vi1JJlc
         BygXwszDdc61PujZzSTvXiQ+VsBTLAomyK3jOtW7FuOTY9l1JZg6oQLjOjjHwk377OO1
         rQqaYMteUP/JUStsWuRIiQnniaP6GaOo1PWIkaVVyilrtUjmd06V9n9Ceyku8E1NveEl
         QrJidgSFCdz0p133XIPsi7miPDvH/ChL7AS4/F85XolVpbcho7acU8muSHO7F55DSiSo
         BA0A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.97 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id 6a1803df08f44-6e1afbfcd68si9360876d6.35.2025.01.16.14.06.11
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jan 2025 14:06:12 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.97 as permitted sender) client-ip=65.20.63.97;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-502-Nql76AMYMTar1HMaMbR-3A-1; Thu,
 16 Jan 2025 17:06:10 -0500
X-MC-Unique: Nql76AMYMTar1HMaMbR-3A-1
X-Mimecast-MFC-AGG-ID: Nql76AMYMTar1HMaMbR-3A
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E077D195608A
	for <blinux-list@gapps.redhat.com>; Thu, 16 Jan 2025 22:06:09 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id DBDEF19560AE; Thu, 16 Jan 2025 22:06:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D970119560A3
	for <blinux-list@redhat.com>; Thu, 16 Jan 2025 22:06:09 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5C0791955D81
	for <blinux-list@redhat.com>; Thu, 16 Jan 2025 22:06:09 +0000 (UTC)
Received: from altprdrgo04.altice.prod.cloud.openwave.ai
 (altprdrgo04.altice.prod.cloud.openwave.ai [65.20.63.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-434-qqAiWc1dNF6KoHMpLiMCKQ-1; Thu,
 16 Jan 2025 17:06:06 -0500
X-MC-Unique: qqAiWc1dNF6KoHMpLiMCKQ-1
X-Mimecast-MFC-AGG-ID: qqAiWc1dNF6KoHMpLiMCKQ
X-RG-VS-CS: clean
X-RG-VS-SC: 0
X-RG-VS: Clean
X-Originating-IP: [47.217.105.81]
X-RG-Env-Sender: martin.m@suddenlink.net
X-RG-Rigid: 6785E1C8007A237E
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgeefuddrudeiuddgudehgecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucetnffvkfevgfgfufdpggftfghnshhusghstghrihgsvgdpqfgfvfenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvffujghfgggtsehttddttddttddvnecuhfhrohhmpedfofgrrhhtihhnucfotgevohhrmhhitghkfdcuoehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtqeenucggtffrrghtthgvrhhnpefgieejtdffvedtffdtgfekvdeufeetvdevleffgeejteeuledtfeeguedtieehgfenucfkphepgeejrddvudejrddutdehrdekudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhephhgvlhhopeifsgehrghgiidpihhnvghtpeegjedrvddujedruddthedrkedupdhmrghilhhfrhhomhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthdpnhgspghrtghpthhtohepuddprhgtphhtthhopegslhhinhhugidqlhhishhtsehrvgguhhgrthdrtghomhdprghuthhhpghushgvrhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthdpghgvohfkrfepfgfupdfovfetjfhoshhtpegrlhhtphhrughrghhotdeg
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from wb5agz (47.217.105.81) by altprdrgo04.altice.prod.cloud.openwave.ai (5.8.812) (authenticated as martin.m@suddenlink.net)
        id 6785E1C8007A237E for blinux-list@redhat.com; Thu, 16 Jan 2025 17:06:06 -0500
Received: from martin by wb5agz with local (Exim 4.96)
	(envelope-from <martin.m@suddenlink.net>)
	id 1tYY00-0001DR-1v
	for blinux-list@redhat.com;
	Thu, 16 Jan 2025 16:06:00 -0600
From: "Martin McCormick" <martin.m@suddenlink.net>
To: blinux-list@redhat.com
Subject: Re: speech-dispatcher I Finally Did Something Stupid
In-reply-to: <20250116092130.tn7dbr4wlw43obkj@sprite>
References: <E1tXPM7-000KS7-0c@wb5agz> <45995941-6847-4694-b01e-d67ee7418667@gmx.it> <E1tXuBT-0001H0-2A@wb5agz> <20250115080337.fjk25kiajtxwfbpr@sprite> <CAO2sX30NOJL6Qt39R99h4G=pKpw7Wc+tbh7OJW4X0X8iMNWsXg@mail.gmail.com> <20250116092130.tn7dbr4wlw43obkj@sprite>
Comments: In-reply-to Joel Roth <joelz@pobox.com>
   message dated "Wed, 15 Jan 2025 23:21:30 -1000."
MIME-Version: 1.0
Date: Thu, 16 Jan 2025 16:06:00 -0600
Message-Id: <E1tYY00-0001DR-1v@wb5agz>
X-Mimecast-MFC-PROC-ID: 0F4HamkzzxaK2mxyRhlf0deye_ikgwCq8kx9y8d4NQs_1737065166
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: a-0w-cYuDsaiXjKMyCHr7hdPsplTkoChhn43ABpWxIA_1737065170
X-Mimecast-Originator: suddenlink.net
Content-Type: text/plain; charset="UTF-8"
Content-ID: <4675.1737065160.1@wb5agz.lan>
X-Original-Sender: martin.m@suddenlink.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of martin.m@suddenlink.net designates 65.20.63.97 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
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

Fenrir is finally talking but not correctly.
While trying to find fenrir1.9.7, I incountered the usual webby
forest of megachaff, all sorts of references to fenrir1.9.7 but
no nice github pull to try out.  I'm sure it's buried under a
Library of Congress-sized heap of misdirection because I did
locate a source clone for fenrir1.8.1 which is said to work on
just about any system, especially a debian or ubuntu-based system.
There should have also been a phrase "except for the system of
Martin McCormick."
like this one so, why not?

	I got it and the first thing it did was try to write a
pid file in /run while being run as me, not root.  /run is not
writeable by a user.  As root, it starts and does absolutely
nothing else that I can tell except for creating another process.

	The good news was that it also uses the same
configure_pulse script which was actually in better shape than
the script in bookworm's sources.list grab because a comment line
in the debian version had apart of the line missing which meant
you had to kind of fill the missing part in.

	The 1.8 source, however, also had configure_pipewire.sh
which has about 238 lines in it.

	The 1.8 version never ran but I swiped the
configure_pipewire script and reinstalled the 1.9.5 version of
fenrir using apt install.
	Low and behold, I got speech on the
command console but there is more to be done because I think I
have messed with enough stuff that there is now some sort of
configuration foul-up.

	It now gives me talking consoles on the command tty's but
speech-dispatcher now sees output from the shell like what we
want but also a second stream which mimics anything I type in.
The shell output is just what we need and the speech rate is
proper and fast.  The unwanted stream is probably also going
through another call of speach-dispatcher and it is slow and lazy
but will shut up if one presses any keys.

	What you hear at first is a jumble of the rather fast
speech output of fenrir followed by the same string of text
spoken at some sort of default rate at a slightly different
pitch.

	Also, as soon as one activates one of the command
consoles, fenrir takes over any console you had going such as
orca.

	One thing that I did do was modify
/etc/fenrirscreenreader/settings/settings.conf and
espeak.settings.conf which seem to have no effect even after
rebooting.

	At least that is where things stand now.  We are close to
good but not there yet.  I may have messed something up when I
was trying to guess what might be in the configure_pipewire
script.

	Martin

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

