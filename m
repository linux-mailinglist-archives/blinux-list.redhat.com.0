Return-Path: <blinux-list+bncBCHOVKVMTAJRBPMDTLBQMGQESUQXGDY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5C9AF7527
	for <lists+blinux-list@lfdr.de>; Thu,  3 Jul 2025 15:12:32 +0200 (CEST)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4a819c5fe7bsf94483611cf.1
        for <lists+blinux-list@lfdr.de>; Thu, 03 Jul 2025 06:12:32 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1751548351; cv=pass;
        d=google.com; s=arc-20240605;
        b=YLFAQ7GCLZMlZKScbglkNygUOKMudymNVuE7vKheZfC8UE5gIDRW7AIgBdzC8roecG
         J8JriypF3yak0j52GfOFVsOZxE8HiYrq1sArnC4FoYzXgOTVUi5aYtk5wAYCxwFVV0Zo
         lzPwiPBPWgKls6mVQzv/DxYDY5XcyiExF9yE/93K/MoIkos5IMZcD1IemxgHd9vKAEX1
         YkYjvByNCdD+CYPsI4MFGrbvkte86gEuSnOoTRITRMXrsRvbhZe6HHw5De1oB/Rt1s7O
         uRrhEQGsN2jNpqnckMg6UXwj/8a+NkQdls+HGGsNHITzX0LSqzPi2TG4ORMHjetC+rXz
         KHcQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:in-reply-to:organization
         :from:references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=qDg2qPTnFftLtJnkXVbsqRf0piqNgrRApOcwqfsmjDY=;
        fh=YGl/McG1OCthSCJxF1q2qN0PiNIXBw4XNDehyzHpDaU=;
        b=C+V1PQ0dhqb53ARG0grAKuMBpgE/u9wXjVgUQtGaT7gHYNBC5wcWoQ+rbr/C2vsHpC
         BzY/cbF7DZAGnC19DFs4H5LkvxAG+JUi76rNBNq+AYJz/i7nDFB7UR/VjB6Ymf9jeVrC
         IKaMaeu5g18zHvzQnsHBvrcrLJnaaYT/seCFCvKvjVr5S19lens5+/ZxidNYlxtWsg9i
         +QURoDPRsDfvStq7Y4N5pB9bd/ZXL3pzl8T1VG2Gfc95AypLDj27dLJwVBMKUOfxKNaA
         lmupslESIH+8xtnG2+mueh3CafHX0YUufv7QxbGPuzaABMR0y2USpwtmZZ7AS+7XBqm9
         DqYg==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@blindhelp.net header.s=mail header.b=uOFnPZG0;
       arc=pass (i=1 spf=pass spfdomain=blindhelp.net);
       spf=pass (google.com: domain of abdullahzubair@blindhelp.net designates 178.154.239.208 as permitted sender) smtp.mailfrom=abdullahzubair@blindhelp.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751548351; x=1752153151;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:organization:from:references:to
         :subject:reply-to:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qDg2qPTnFftLtJnkXVbsqRf0piqNgrRApOcwqfsmjDY=;
        b=wFUdO3Rapf6SMNrwvbZjUG+t334JcjyBOyICNn9apKp+auwhW7cEmZM6oUx3K1MyAx
         6rKM3fJRkZoBtI2qmSlwr5Uez/SdWMPKyCsqjHvZAaTDMTPhR2fDhwzk26SuG0Lmr9Q3
         bkSP3rpSN/nqD2jr3SXne11kdvVUeAVbx7hQfigs6EtnyKLOJNTZP1JyfGDSxzkBTwbi
         prPIl7i8A5a5x7zhgNKCz4vTPc+ZFIKDKq9LpVWWMXNQ35eaBiuZAGjlmg3k1hFpeW0H
         ttecywQMvZHiEDLNobBdoIvDiMQGBrpxP/17idDCGenFCohgBFo/eUgCjimqFTvqMwO4
         4lvg==
X-Forwarded-Encrypted: i=3; AJvYcCUkr9vpMhWW33+0GDy9E7Jfrwn526vyLLvNRWeoCL39BiS7klG8tZbhUX8HXM7N6fHbtr0SSg==@lfdr.de
X-Gm-Message-State: AOJu0YxKnEa3MHzqsOi8F+9IL3ZZOGmtIfEe0wyPsMWzNwMYEpJKr2Vw
	ob+Cn+int/26inH0sQmGTBr72dM1VvikH1p95DwFUt7MBoGEoHynCVqvetTo5Fm+xUI=
X-Google-Smtp-Source: AGHT+IGsXGtjSOV8w451tMssYP2Y8tQ7wDuGPB0LEkx/t/pkbGAwXJgbm9EdPEDip6lPc8xfWhDdkw==
X-Received: by 2002:a05:622a:16:b0:48c:c121:7e27 with SMTP id d75a77b69052e-4a976a6d60cmr131523701cf.50.1751548350337;
        Thu, 03 Jul 2025 06:12:30 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZc8KwGUxAT5royo4YqXf0lxp2LRa1gDC4vlTwljXlK4fg==
Received: by 2002:a05:622a:4a:b0:4a6:fb3f:a87f with SMTP id
 d75a77b69052e-4a82f192c8dls52670391cf.2.-pod-prod-03-us; Thu, 03 Jul 2025
 06:12:29 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCXD4Y1U+48PVni+aoEHIKkD/5J8ObVkcH21e5QanVHZofS421jASZhImzgXE32CnZlZA57ZirHjJVdbqw==@gapps.redhat.com
X-Received: by 2002:a05:622a:406:b0:4a5:a96d:6071 with SMTP id d75a77b69052e-4a9769e54a0mr126312651cf.38.1751548348879;
        Thu, 03 Jul 2025 06:12:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1751548348; cv=pass;
        d=google.com; s=arc-20240605;
        b=EoP2D3tDbqpX1RAlpcR8LfSv9nfehtQhCpUZv6psh5Bzo8xMIlymt9ebnMM83RXZw8
         Qh1ydhs11SY+lZ/6DILaSQfmnGZdwzFMXt1hf0nn/5DLP08TEyRgM36HcmOAfmEFvs7I
         f/Z0yrUuGUO0vHlgxK7nbKlErYE3b+vQXCv0bQj9qH3BjCnx1Ouwq/5vmby+RTU6MunO
         pdu9So/SLldJiXI0LfuIjP8DToAu2sE02cdw47aVBKUS+8DviHJRcgm5Tunbnpm3FJPZ
         3+KZpcUwySbrtLo5Y17wEP7pFC7/MaZxPoGaP2Ik66/TNdjOWOe/UV4PZCWGdP2Qbwkg
         PfRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-language:in-reply-to:organization:from:references:to
         :subject:reply-to:user-agent:mime-version:date:message-id
         :dkim-signature:delivered-to;
        bh=kaHJ6jxBmtGMDbwE+TSR1YC93RCU+d7LgIHS7qV90kk=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=eduHndm/kIBh5H613Cbp5UmMOF8H6dzKrDlG0EoNL6evqbgWdo4sGjkGzsVGTuuNMZ
         eH42EXeJhhv8A1oNZT1haG898i8CKVxQV2YV8VmKO6BRozO7E4sBBEnezWZ3rMUAwqJk
         JmQ6hzJMSwqVLxF4dx91rzl+cx+Yg4+mgxS+nItwIfIr8enEHDk6IXESADF2RscdGmI6
         OBkoSDr4DLUV9CbVpSOgkuzO0fxjdSm/DlqaiSrab3C5bvYXFRzx1cW9X+bW7MdKC8dy
         xhx0xIZjBenLJRLjgqFMxakYn2J5DG6Vm827dqXWUJkZ8G7QteVyNGdDiqrjrgLTS6HO
         WY4Q==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@blindhelp.net header.s=mail header.b=uOFnPZG0;
       arc=pass (i=1 spf=pass spfdomain=blindhelp.net);
       spf=pass (google.com: domain of abdullahzubair@blindhelp.net designates 178.154.239.208 as permitted sender) smtp.mailfrom=abdullahzubair@blindhelp.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id d75a77b69052e-4a7fc1e6dd9si158147321cf.279.2025.07.03.06.12.28
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Jul 2025 06:12:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of abdullahzubair@blindhelp.net designates 178.154.239.208 as permitted sender) client-ip=178.154.239.208;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-310-Th-DdppNMW6wphZqBiPx2Q-1; Thu,
 03 Jul 2025 09:12:27 -0400
X-MC-Unique: Th-DdppNMW6wphZqBiPx2Q-1
X-Mimecast-MFC-AGG-ID: Th-DdppNMW6wphZqBiPx2Q_1751548346
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8CC251944A83
	for <blinux-list@gapps.redhat.com>; Thu,  3 Jul 2025 13:12:26 +0000 (UTC)
Received: by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 87A9D1803AFF; Thu,  3 Jul 2025 13:12:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 84BD0180045C
	for <blinux-list@redhat.com>; Thu,  3 Jul 2025 13:12:26 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0F25219560A1
	for <blinux-list@redhat.com>; Thu,  3 Jul 2025 13:12:26 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1751548345;
	h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:dkim-signature;
	bh=kaHJ6jxBmtGMDbwE+TSR1YC93RCU+d7LgIHS7qV90kk=;
	b=kT7woc7yVoY17pha8yJ31Jl2PzKehj8a4EVGp9bl77MqNZUIxlZMjVsfSZT1tcpg5Mxjsl
	VUimYnR9saU72uZXAP4c5SV3rtOxxZ5JMofsDRx1LxszWiLIVy/eSrtzJQETGNPo4l4bNP
	UYsmeqcxmFrrphVb8ESC+P4mdItzzdV59PhsL/BEU56agn3rmfJkltwGqMiTz6DYzDHApX
	Nhmo35cqlLgW5bviB0lMYgGqIXTlpJyC+SKkGWAdf/+BVeEYCidLOxIscfQigrSK0EgzVs
	dj3tYIxnz4gTNUeCWDzsMGaITFGixmfDWyXvUFqgmc+NARNdWDB7mEyVo4q+Cg==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1751548345; a=rsa-sha256;
	cv=none;
	b=ZLCmJXBc8b8PU11U0hXMo7logvBNSovcr/GOwMpukg+MUHhWbwxeGz2nPZr+KjH3VzVwHH
	l25wHNHXLTOxw7vqBrYXyyG9U2eL7iSJmL15Pg2ELNdSuTPjKpt6LyHkIXeNSPn8WYSKc7
	3FrYhWm+3aEb8suej+IlVqWDuYjJ+sOZL7WKlMjwoYqLIHiZJhR9RYcb3IYrT7YQaIKVW4
	B0E5DVgqIQThor+F8mFbf7feKSrBsyMzzXFcGS/lPpWfcDgaQHvohZ/kHl2dSvOmUs67ev
	X4Pc2wPio0ME1xU5ta7sUx7TJvk3UqpCLXVTBPMiU+1Su3AyBtpwGn/CVgi+Qw==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=fail ("body hash did not verify") header.d=blindhelp.net header.s=mail header.b=uOFnPZG0;
	dmarc=none;
	spf=pass (relay.mimecast.com: domain of abdullahzubair@blindhelp.net designates 178.154.239.208 as permitted sender) smtp.mailfrom=abdullahzubair@blindhelp.net
Received: from forward500d.mail.yandex.net (forward500d.mail.yandex.net
 [178.154.239.208]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-28-ZYDc8jbNMlWNoDseLX584g-1; Thu, 03 Jul 2025 09:12:23 -0400
X-MC-Unique: ZYDc8jbNMlWNoDseLX584g-1
X-Mimecast-MFC-AGG-ID: ZYDc8jbNMlWNoDseLX584g_1751548342
Received: from mail-nwsmtp-smtp-production-main-63.klg.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-63.klg.yp-c.yandex.net [IPv6:2a02:6b8:c42:842f:0:640:b96f:0])
	by forward500d.mail.yandex.net (Yandex) with ESMTPS id 9D2E86329D
	for <blinux-list@redhat.com>; Thu,  3 Jul 2025 16:12:21 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-63.klg.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id ICc3E9FL0W20-ae3TCTYE;
	Thu, 03 Jul 2025 16:12:20 +0300
X-Yandex-Fwd: 1
Message-ID: <eeef70bf-0bf1-4d4a-86c9-da034184c977@BlindHelp.net>
Date: Thu, 3 Jul 2025 18:12:17 +0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Reply-To: AbdullahZubair@BlindHelp.net
Subject: Re: Seeking Guidance on Switching to Linux for Personal Use
To: blinux-list@redhat.com
References: <04ad9922-c266-43ab-9474-9c896ca850cf@BlindHelp.net>
From: Abdullah Zubair <AbdullahZubair@BlindHelp.net>
Organization: Blind Help Project
In-Reply-To: <04ad9922-c266-43ab-9474-9c896ca850cf@BlindHelp.net>
X-Mimecast-Spam-Score: 1
X-Mimecast-MFC-PROC-ID: 4FZXDGY0UFD5biWiQiG6wJGY41Eior1JNLGebUmqZJM_1751548342
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Type: multipart/alternative;
 boundary="------------PmxksGI6iuNhoMdckJquZCK3"
Content-Language: en-US
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Original-Sender: abdullahzubair@blindhelp.net
X-Original-Authentication-Results: mx.google.com;       dkim=neutral (body
 hash did not verify) header.i=@blindhelp.net header.s=mail header.b=uOFnPZG0;
       arc=pass (i=1 spf=pass spfdomain=blindhelp.net);       spf=pass
 (google.com: domain of abdullahzubair@blindhelp.net designates
 178.154.239.208 as permitted sender) smtp.mailfrom=abdullahzubair@blindhelp.net
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

This is a multi-part message in MIME format.
--------------PmxksGI6iuNhoMdckJquZCK3
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi everyone,
I'm truly grateful to be part of such a welcoming and supportive family.=20
A big thank you to each one of you for taking the time to share your=20
experiences and advice, it means a lot!
*Chime*, Thanks for the kind wishes and for pointing out Debian=E2=80=99s=
=20
accessible installer.
*Rudy Vener*, Your workflow with Speakup and MATE really inspired me.
*Kyle*, Your deep insights into Fedora, Orca, and structural web=20
navigation were incredibly helpful!
*John Doe*, I took your advice and started testing with a VM, which=20
really made things easier.
*Sathyan*, I=E2=80=99ll definitely be checking out Accessible-Coconut. Than=
k you!
Now the exciting part, I=E2=80=99ve already begun!
I set up a VM using Debian 12 on VMware, and installed it using Orca=20
right from the boot screen. Installation was smooth, and I initially=20
chose the GNOME desktop. Orca is up and running post-installation, and=20
I=E2=80=99ll be trying out MATE next to see which DE suits me better.
Since I=E2=80=99m coming from a strong Windows background, I=E2=80=99d real=
ly appreciate=20
some comparative keyboard shortcuts, especially for common tasks. For=20
example:
In Windows, I use:

  * Alt + Tab to switch between open apps.
  * Windows + M or Windows + D to go to desktop.
  * Windows + E to open File Explorer.
  * Windows + 1 / 2 / 3 to open pinned taskbar apps.

Can you please help me understand how to do these same tasks in Linux=20
(GNOME and MATE)?
I=E2=80=99m especially looking for:

  * Switching between running apps.
  * Going to the desktop quickly.
  * Opening the file manager.
  * Shortcut keys to open specific apps if pinned.
  * Any GNOME/MATE equivalents of the Windows key combos.

Learning through comparisons really helps me transition more smoothly,=20
so I=E2=80=99m excited to hear your tips.
Thanks once again for helping make my Linux journey less scary and more=20
exciting. Looking forward to learning more from all of you!
Warm regards,
*Abdullah Zubair*
DevOps Engineer | Web Developer
Pakistan

On 02/07/2025 3:12 am, Abdullah Zubair wrote:
>
> Hi everyone,
> I hope you're all doing well.
> Let me quickly introduce myself. My name is Abdullah, writing to you=20
> from Pakistan. I'm 25 years old, and a lifelong technology enthusiast.=20
> Professionally, I work as a Web Developer and DevOps Engineer, so=20
> Linux has been part of my daily workflow for quite some time, though=20
> mostly in a headless, server-side environment.
> I regularly manage Debian-based LEMP stacks (Linux, NGINX, MariaDB,=20
> PHP-FPM), handle deployments, maintain Docker containers, and oversee=20
> several web applications and services. So, I=E2=80=99d consider myself an=
=20
> intermediate Linux user in the server context.
> However, I=E2=80=99ve been a Windows user for over 20 years, from Windows=
 98=20
> all the way to Windows 10, which I currently use with NVDA 2024.1.2.=20
> For a long time now, I=E2=80=99ve wanted to transition to Linux for perso=
nal=20
> desktop use, not just on remote servers.
> I truly admire Linux for its freedom, flexibility, and licensing=20
> model, and I feel it's time to make the switch, but I=E2=80=99m aware tha=
t as=20
> a blind user, this change will come with new challenges, especially=20
> around accessibility, desktop environments, screen readers, shortcuts,=20
> and overall UX.
> That brings me to my main reason for reaching out.
> I=E2=80=99d love some guidance, mentorship, or a roadmap on how to start =
this=20
> transition. Specifically:
>
>   * Which distro(s) are most accessible for blind users?
>   * How different is the desktop experience compared to Windows + NVDA?
>   * Which screen readers or tools should I get familiar with?
>   * What should I learn first? Are there any key tutorials or
>     beginner-friendly resources?
>   * How do you handle common tasks like file management, software
>     installation, and system settings with a screen reader?
>   * Any must-know keyboard shortcuts or accessibility hacks?
>
> If there are any detailed guides, blog posts, or YouTube videos you=20
> recommend, I=E2=80=99m all ears. I=E2=80=99m ready to invest the time to =
learn and=20
> would really appreciate your help.
> Looking forward to your kind insights, experiences, and suggestions.=20
> Thanks in advance for supporting a fellow blind techie!
> Cheers,
> Abdullah Zubair
> Pakistan
> Web Developer & DevOps Engineer
> (Blind Linux Enthusiast-in-Transition =F0=9F=98=89)
>
> To unsubscribe from this group and stop receiving emails from it, send=20
> an email to blinux-list+unsubscribe@redhat.com.

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

--------------PmxksGI6iuNhoMdckJquZCK3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8=
">
  </head>
  <body>
    <p align=3D"justify"><font face=3D"Calibri">Hi everyone,<br>
        I'm truly grateful to be part of such a welcoming and supportive
        family. A big thank you to each one of you for taking the time
        to share your experiences and advice, it means a lot!<br>
        <b>Chime</b>, Thanks for the kind wishes and for pointing out
        Debian=E2=80=99s accessible installer.<br>
        <b>Rudy Vener</b>, Your workflow with Speakup and MATE really
        inspired me.<br>
        <b>Kyle</b>, Your deep insights into Fedora, Orca, and
        structural web navigation were incredibly helpful!<br>
        <b>John Doe</b>, I took your advice and started testing with a
        VM, which really made things easier.<br>
        <b>Sathyan</b>, I=E2=80=99ll definitely be checking out
        Accessible-Coconut. Thank you!<br>
        Now the exciting part, I=E2=80=99ve already begun!<br>
        I set up a VM using Debian 12 on VMware, and installed it using
        Orca right from the boot screen. Installation was smooth, and I
        initially chose the GNOME desktop. Orca is up and running
        post-installation, and I=E2=80=99ll be trying out MATE next to see =
which
        DE suits me better.<br>
        Since I=E2=80=99m coming from a strong Windows background, I=E2=80=
=99d really
        appreciate some comparative keyboard shortcuts, especially for
        common tasks. For example:<br>
        In Windows, I use:<br>
      </font></p>
    <div align=3D"justify">
      <ul>
        <li><font face=3D"Calibri">Alt + Tab to switch between open apps.</=
font></li>
        <li><font face=3D"Calibri">Windows + M or Windows + D to go to
            desktop.</font></li>
        <li><font face=3D"Calibri">Windows + E to open File Explorer.</font=
></li>
        <li><font face=3D"Calibri">Windows + 1 / 2 / 3 to open pinned
            taskbar apps.</font></li>
      </ul>
    </div>
    <p align=3D"justify"><font face=3D"Calibri">Can you please help me
        understand how to do these same tasks in Linux (GNOME and MATE)?<br=
>
        I=E2=80=99m especially looking for:<br>
      </font></p>
    <div align=3D"justify">
      <ul>
        <li><font face=3D"Calibri">Switching between running apps.</font></=
li>
        <li><font face=3D"Calibri">Going to the desktop quickly.</font></li=
>
        <li><font face=3D"Calibri">Opening the file manager.</font></li>
        <li><font face=3D"Calibri">Shortcut keys to open specific apps if
            pinned.</font></li>
        <li><font face=3D"Calibri">Any GNOME/MATE equivalents of the
            Windows key combos.</font></li>
      </ul>
    </div>
    <p align=3D"justify"><font face=3D"Calibri">Learning through comparison=
s
        really helps me transition more smoothly, so I=E2=80=99m excited to=
 hear
        your tips.<br>
        Thanks once again for helping make my Linux journey less scary
        and more exciting. Looking forward to learning more from all of
        you!<br>
        Warm regards,<br>
        <b>Abdullah Zubair</b><br>
        DevOps Engineer | Web Developer<br>
        Pakistan</font><br>
    </p>
    <div class=3D"moz-cite-prefix">On 02/07/2025 3:12 am, Abdullah Zubair
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:04ad9922-c266-43ab-9474-9c896ca850cf@BlindHelp.net">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF=
-8">
      <p align=3D"justify">Hi everyone,<br>
        I hope you're all doing well.<br>
        Let me quickly introduce myself. My name is Abdullah, writing to
        you from Pakistan. I'm 25 years old, and a lifelong technology
        enthusiast. Professionally, I work as a Web Developer and DevOps
        Engineer, so Linux has been part of my daily workflow for quite
        some time, though mostly in a headless, server-side environment.<br=
>
        I regularly manage Debian-based LEMP stacks (Linux, NGINX,
        MariaDB, PHP-FPM), handle deployments, maintain Docker
        containers, and oversee several web applications and services.
        So, I=E2=80=99d consider myself an intermediate Linux user in the s=
erver
        context.<br>
        However, I=E2=80=99ve been a Windows user for over 20 years, from
        Windows 98 all the way to Windows 10, which I currently use with
        NVDA 2024.1.2. For a long time now, I=E2=80=99ve wanted to transiti=
on to
        Linux for personal desktop use, not just on remote servers.<br>
        I truly admire Linux for its freedom, flexibility, and licensing
        model, and I feel it's time to make the switch, but I=E2=80=99m awa=
re
        that as a blind user, this change will come with new challenges,
        especially around accessibility, desktop environments, screen
        readers, shortcuts, and overall UX.<br>
        That brings me to my main reason for reaching out.<br>
        I=E2=80=99d love some guidance, mentorship, or a roadmap on how to =
start
        this transition. Specifically:<br>
      </p>
      <ul>
        <li>Which distro(s) are most accessible for blind users?</li>
        <li>How different is the desktop experience compared to Windows
          + NVDA?</li>
        <li>Which screen readers or tools should I get familiar with?</li>
        <li>What should I learn first? Are there any key tutorials or
          beginner-friendly resources?</li>
        <li>How do you handle common tasks like file management,
          software installation, and system settings with a screen
          reader?</li>
        <li>Any must-know keyboard shortcuts or accessibility hacks?</li>
      </ul>
      <p align=3D"justify">If there are any detailed guides, blog posts,
        or YouTube videos you recommend, I=E2=80=99m all ears. I=E2=80=99m =
ready to
        invest the time to learn and would really appreciate your help.<br>
        Looking forward to your kind insights, experiences, and
        suggestions. Thanks in advance for supporting a fellow blind
        techie!<br>
        Cheers,<br>
        Abdullah Zubair<br>
        Pakistan<br>
        Web Developer &amp; DevOps Engineer<br>
        (Blind Linux Enthusiast-in-Transition =F0=9F=98=89)<br>
      </p>
      To unsubscribe from this group and stop receiving emails from it,
      send an email to <a
        href=3D"mailto:blinux-list+unsubscribe@redhat.com"
        moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">blinux-lis=
t+unsubscribe@redhat.com</a>.<br>
    </blockquote>
  </body>
</html>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--------------PmxksGI6iuNhoMdckJquZCK3--

