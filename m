Return-Path: <blinux-list+bncBCM2V5WE3MDBBRNCT3DQMGQECOQCTPA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id E759FBC889E
	for <lists+blinux-list@lfdr.de>; Thu, 09 Oct 2025 12:41:11 +0200 (CEST)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4de801c1446sf26026681cf.3
        for <lists+blinux-list@lfdr.de>; Thu, 09 Oct 2025 03:41:11 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1760006471; cv=pass;
        d=google.com; s=arc-20240605;
        b=Mran2me9n8EJORptpiFzTkm7qLRSIitiv1oB3H7lllMWEQmKOGcjAPaJp5ACo7sylW
         22Bej3WkRR0pA5TGuhfTrL7Z6GbOZ6Sx+xZ6OM6y72CvxwIyzllsP6Yd/9sshZu9KwXf
         uDr1pwjzIHe8dwbc29DGkjq+k4NcrSf1ZkFX7TsEySCGLRRPSz8oqCADDtZq80Pk7INe
         A3ez67nzGyLEKYPeQYV+ekA/2o4ek7dZSHhi41ksvdRGxaumVpc2sderF+5y5Q/vThGg
         gKHB4L/DDIvoaRuJi3FeiekXB6+9TLb663V7vQYaO87bBwqws5z0QIc6+TqocDAmbbrk
         +Uiw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:feedback-id
         :references:in-reply-to:message-id:subject:from:to:date:delivered-to;
        bh=cSuYhbdUMHjghruoijZxlyjyQVZnNQITbBP0aE5K3jk=;
        fh=8uyO0zx+PXakLgvmCsng6FU/toze4PMrRVcP6WPeRbc=;
        b=lttunqIhnzlJ8FpiTiKpr5wTSDDKBU7Ttj3WI6LUbrx1ayL1EyXeadSSMzuixHCAvb
         dX0zNwP38vc9IgXtaU1n7GdpAKhJKqeo0yIVOWynW92+zul4PDAqkXjbjabkhR3GmKlJ
         trN2pfTleU/Sg60BMeFgzqaZUajIEgYGkayhIKiXbcwykZwyObcanUbR7LpJcDzJFguq
         YfbUD855Xjpo303UcLnoXVlpq62i1wJ1Ic++rhlevVQqNUMG1+rF+85v/wdl+Cn9cXwz
         9R1M1lcQ1NUUBHlcnrBEwjnBdpN6PUls2RKC+Pit/yQ2u+ob6Fr/a5YmaBrA9FL9Fr34
         /DMg==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@protonmail.com header.s=protonmail3 header.b=LE3fNBvh;
       arc=pass (i=1 spf=pass spfdomain=protonmail.com dkim=pass dkdomain=protonmail.com dmarc=pass fromdomain=protonmail.com);
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 109.224.244.104 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760006471; x=1760611271;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :feedback-id:references:in-reply-to:message-id:subject:from:to:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cSuYhbdUMHjghruoijZxlyjyQVZnNQITbBP0aE5K3jk=;
        b=EJQDhLdBB1vSvnF/kSwb+d865cJYETQsFtJnb/xN3i0y2TiGnMaWx0C3nbmRFLYA65
         puyz4bLFYusEuZAKEEL1bgA+gTbUH+h3z5v2ZNc8oGXUz5B7ILyzkfQT597q5/ZHit3a
         nrOS7N+N7Dtu3JIlct0IePY8s+ZEmxcwIw3jUpmj5n2aI1XbKimx3MCbTgELKDUjMG7g
         MKm7nTTVUIUCY6GLCy/48p5KAtsfQGylHqd+HxN7pTFaFN94zxMadljxTnAD/x40Hqf+
         JpCwdnmTFJ1N4Pg4BPUjxG0o68j54/IlT2TdN8qV4c0xw3UMhx99LZ+M1/jo7B/384Aq
         qqkQ==
X-Forwarded-Encrypted: i=3; AJvYcCUJ6MIYsASfwIcna4unzvURcZoLJj1IgRdjKqdUqNFdyRNfeGvLPBrZyxSMfqiIPcPqNrhahQ==@lfdr.de
X-Gm-Message-State: AOJu0YwkE79o1NXVJ3jC9bUc0SB9yhGFrKe12z5jXS0d3PVmffsr4bnX
	WTPLKhRcmcx9RS0wiW5Lhql5avof81CgJ9yT3GmaJLX9QvQkM6TIzW7klhXnGb9o+q4=
X-Google-Smtp-Source: AGHT+IEhDmE1QRdbOPjX1m/qkWk2D8Tc/ZO29GbQX8p5UF9VdlqowOywgp7xi+kyFtSFRs00UWTs+Q==
X-Received: by 2002:a05:622a:164a:b0:4ba:add1:abb4 with SMTP id d75a77b69052e-4e6f4792b00mr63430411cf.44.1760006470032;
        Thu, 09 Oct 2025 03:41:10 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h="ARHlJd6BLnZsiIINzBK2X14aSfFAmm82kNLsTX2Fp3rvfr/JnQ=="
Received: by 2002:a05:622a:8c13:b0:4d7:a20a:baad with SMTP id
 d75a77b69052e-4e6f8bd33a1ls17738281cf.1.-pod-prod-01-us; Thu, 09 Oct 2025
 03:41:09 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCVVkbvcCiCPeN47I5AtwmX8+wzg/ClgUrxXG6QAIinX+35NbU4VCcXja9qs/5oEV4lBxZYQc5KD7ahwaQ==@gapps.redhat.com
X-Received: by 2002:a05:622a:5915:b0:4b2:cf75:bf10 with SMTP id d75a77b69052e-4e6eaccc372mr103087771cf.17.1760006468864;
        Thu, 09 Oct 2025 03:41:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1760006468; cv=pass;
        d=google.com; s=arc-20240605;
        b=ADYu8lI2tXmAJb6I+Sq201r5HGGn/ZMf3EB39/FMsKPrJ+5BtlOWlWF1itSRvyUhC5
         Uj8eKM2uPwbTlE78RbH4xNaOdnStoYTeSi2PplQNZIH4njqT+7l97onwRrWQ1N7G4iy/
         4MMEuAnm+q3m0+wXqZIIP1sqFt/mxqXfyskXW7Q/K2Jz/5WDchkS2u46PuV4s+GHJPRr
         PtY8sO4/pah0AysvFe3MaWjyGf8tZ45/Df/NYAJ3IHypIHmH7ogC9nNzgFvJbVOJph9Z
         2R5fvK9GR+IuhLSvVksxgGMztTaVEO1z+J92sqaVP6BlDvuATSy2bVAzAuJhxQ0wKsam
         SEGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:feedback-id:references:in-reply-to:message-id:subject
         :from:to:date:dkim-signature:delivered-to;
        bh=ShMDCNdNXjMRIdcIjVzAzVmXJpn/0f0fCpsb16ZwQ+U=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=KGsv9r0diewP6kAxY83fAsRr0T8+eyywWMQO5uaZpsMLwFRT89VbwsX99vkCbwf8Fg
         lGl0z+KBItYoTfpzlFkoHWyy4wv564vdYKBcRSahXxsj9MxxR6XTXzeutOgt0+yfkJ7X
         x0UPyQ3SEr6ZyUFbYDM4I66RFeMGzeLlqtu5smPK2OiWVLseCM+FwCHNOSCgqhWsFOwk
         6zIXltK6T8tY3V5lzuuRx6FH9ssKSGDWeiAk0VdI64v1a6/rIZjnS6i4RdA+Dx2Cep8f
         nkKCzjoJIhyCjWZGWeMFs4sB1enBwKVWTJPi3zn2jSCbv6xGBj2mAw9vfBsZ11myYCtD
         lWWA==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@protonmail.com header.s=protonmail3 header.b=LE3fNBvh;
       arc=pass (i=1 spf=pass spfdomain=protonmail.com dkim=pass dkdomain=protonmail.com dmarc=pass fromdomain=protonmail.com);
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 109.224.244.104 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-4e6ea8b4145si24800221cf.1116.2025.10.09.03.41.08
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 03:41:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of rastislav.kish@protonmail.com designates 109.224.244.104 as permitted sender) client-ip=109.224.244.104;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-441-2wZlHro_ORSmEWfbp312PQ-1; Thu,
 09 Oct 2025 06:41:07 -0400
X-MC-Unique: 2wZlHro_ORSmEWfbp312PQ-1
X-Mimecast-MFC-AGG-ID: 2wZlHro_ORSmEWfbp312PQ_1760006466
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7C85E1955F0D
	for <blinux-list@gapps.redhat.com>; Thu,  9 Oct 2025 10:41:06 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 5BB0D30002C5; Thu,  9 Oct 2025 10:41:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 58DE930001B7
	for <blinux-list@redhat.com>; Thu,  9 Oct 2025 10:41:06 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D694119560AD
	for <blinux-list@redhat.com>; Thu,  9 Oct 2025 10:41:05 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1760006465;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=ShMDCNdNXjMRIdcIjVzAzVmXJpn/0f0fCpsb16ZwQ+U=;
	b=PyqxiWO4cvlEim8DQ0HUEGBw7wQzYGvJ3N5X9XcaJvMWCCXSgcO3Et3nrTvOj2poKcSu7/
	jK8E5STce9pU4nWVjgFvZwj8w83l/1zGk3Ib+snuGlpvAuF+B9qu/lNUg2+uRroRfoHK5Y
	qztXcxNDmClBVaa258kebbOmw4fhfZWHEbNl4Yb3jsERbsI8aehvnCROXp7fnuWoI99aNC
	VvlV+ikrhHSkupZiGqwOPspVDmZ015wb5DhOBdSUS58yEIQdtSrb+E95qbb3IuwOkTzEOU
	Rc37A1OUGmYYuisPumr2qy6nbsRnMVt+MO81k+mmDTFZUjzVJgYYUh9HljEKow==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1760006465; a=rsa-sha256;
	cv=none;
	b=evwcQ5fW4/9akGBmxoml94odCUm8dFGXwH/H5vCjKFsMEGpPpG9yGCtGKdasFcqZKcnzxm
	d8n4HSdQoXW0LnQ9pEtUB/08e55lc+EZy00zgAj+PD5U5a8y9GKbIJL5nhcYrgHKLXEHhG
	gopXyOf9Ye8k88F9rwphEDf/0chxIqt3PKQAF2++a9jAIUvVCHUhVJ/D2TC0zSSuSTQeQ9
	FChRTs+RBDZUuIu67ZcEJIa6biA5KGo9GPMP7EhgnORADx+8j6Th1y3mUzZLVcdPsiRdzV
	/b7vNH9+up3iQZhUsIEP1HX1iGy9MQ078IGtnprT8JIk+blhCEDQ3l1Blqn8gQ==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=protonmail.com header.s=protonmail3 header.b=LE3fNBvh;
	dmarc=pass (policy=quarantine) header.from=protonmail.com;
	spf=pass (relay.mimecast.com: domain of rastislav.kish@protonmail.com designates 109.224.244.104 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
Received: from mail-244104.protonmail.ch (mail-244104.protonmail.ch
 [109.224.244.104]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-388-ZqPXlTQ7PMymVHuddeteNw-1; Thu, 09 Oct 2025 06:41:02 -0400
X-MC-Unique: ZqPXlTQ7PMymVHuddeteNw-1
X-Mimecast-MFC-AGG-ID: ZqPXlTQ7PMymVHuddeteNw_1760006460
Date: Thu, 09 Oct 2025 10:40:47 +0000
To: blinux-list@redhat.com
From: "'Rastislav Kish' via blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: Re: Niri, all about it
Message-ID: <4884cbc0-d8b3-4623-9186-b3701a1470ff@protonmail.com>
In-Reply-To: <CAC9uDhZ5fUxCC74U_5gD3B0_chDi-s-7oidF2JrgR=4bAh2uZQ@mail.gmail.com>
References: <CAC9uDhZ5fUxCC74U_5gD3B0_chDi-s-7oidF2JrgR=4bAh2uZQ@mail.gmail.com>
Feedback-ID: 26663242:user:proton
X-Pm-Message-ID: be7ac65bdd33d13a9d5629ef59c4e6dec6896303
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 6Gddziwzr3e5yam8qpzh0UkfdJ4fz6f_PN830q-R6fY_1760006460
X-Mimecast-Impersonation-Protect: Policy=DMARC Check - CHG0118091;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Type: multipart/alternative;
 boundary="b1=_R9vwE6Ol0VMPL6HvAdf2vw5MWQSkLvYOIS8blLnraY"
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Original-Sender: rastislav.kish@protonmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=neutral (body
 hash did not verify) header.i=@protonmail.com header.s=protonmail3
 header.b=LE3fNBvh;       arc=pass (i=1 spf=pass spfdomain=protonmail.com
 dkim=pass dkdomain=protonmail.com dmarc=pass fromdomain=protonmail.com);
       spf=pass (google.com: domain of rastislav.kish@protonmail.com
 designates 109.224.244.104 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
X-Original-From: Rastislav Kish <rastislav.kish@protonmail.com>
Reply-To: Rastislav Kish <rastislav.kish@protonmail.com>
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

--b1=_R9vwE6Ol0VMPL6HvAdf2vw5MWQSkLvYOIS8blLnraY
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

thank you for reviewing this, I=E2=80=99ve wanted to take a look at Niri fo=
r a while. Though this section of the readme:

> My talk from the 2024 Moscow RustCon about niri, and how I do randomized =
property testing and profiling, and measure input latency. The talk is in R=
ussian, but I prepared full English subtitles that you can find in YouTube=
=E2=80=99

raises some suspicion. Do we have any information about the developers=E2=
=80=99 stance on the invasion of Ukraine? I have nothing against russians i=
n general, but I live in Slovakia and would rather not use software made by=
 people supporting killing my neighbours. Not telling this is the case here=
, just wondering whether we know anything about it.

Best regards

Rastislav

D=C5=88a 9. 10. 2025 o 11:24 jace Kattalakis nap=C3=ADsal(a):

> So, stumbled on this window manager earlier.
> I'm pleasantly surprised.it's Wayland, but also has a goal with accessibi=
lity. The documentation states it supports Orca with the 08.25 version and.=
..this is true. It's also got a very, very well commented configuration, an=
d seems stable and viable.
> It has Vim keys by default, H/J/K/L, it has several layouts. But the best=
 part of it is, once you get Orca up and going, and you may well need Xwayl=
and-satellite (at least I did on NixOS), you just boot in, hit Super+alt+S =
and Orca comes up talking.
> But there are caveats:
> |
> 1. The config is set for Alacrity and Fussel by default. You could probab=
ly should, change those to whatever you want
> Aside from that, and a keybind to restart Orca, and one for swaync, hat's=
 the only modding I have done with the config.It live loads it once you sav=
e and exit
> THe Niri devs have a dedicated accessibility section in their Github wiki=
, which is where I am getting the info from.
> Yes. it's Wayland only.But it is silky smooth and works extremely well, a=
t least in my testing.The worst you can do is give it a shot and see how yo=
u like it
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to blinux-list+unsubscribe@redhat.com.

&#8203;

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

--b1=_R9vwE6Ol0VMPL6HvAdf2vw5MWQSkLvYOIS8blLnraY
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF-8=
"/>
    <title></title>
    <meta charset=3D"UTF-8"/>
  </head>
  <body>
    <div class=3D"markdown-here-wrapper">
      <p style=3D"margin-bottom: 19.2px; margin-top: 0px;">Hello,</p>
      <p style=3D"margin-bottom: 19.2px; margin-top: 0px;">thank you for
        reviewing this, I=E2=80=99ve wanted to take a look at Niri for a wh=
ile.
        Though this section of the readme:</p>
      <blockquote style=3D"border-block-color: rgb(119, 119, 119); border-b=
ottom-color: rgb(119, 119, 119); border-inline-color: rgb(114, 159, 207) rg=
b(119, 119, 119); border-inline-start: 2px solid rgb(114, 159, 207); border=
-left: 2px solid rgb(114, 159, 207); border-right-color: rgb(119, 119, 119)=
; border-top-color: rgb(119, 119, 119); color: rgb(119, 119, 119); column-r=
ule-color: rgb(119, 119, 119); margin: 19.2px 0px; outline-color: rgb(119, =
119, 119); padding-inline: 16px; padding-left: 16px; padding-right: 16px; q=
uotes: none; text-decoration-color: rgb(119, 119, 119); text-emphasis-color=
: rgb(119, 119, 119);">
        <p style=3D"border-block-color: rgb(119, 119, 119); border-bottom-c=
olor: rgb(119, 119, 119); border-inline-color: rgb(119, 119, 119); border-l=
eft-color: rgb(119, 119, 119); border-right-color: rgb(119, 119, 119); bord=
er-top-color: rgb(119, 119, 119); color: rgb(119, 119, 119); column-rule-co=
lor: rgb(119, 119, 119); margin-bottom: 19.2px; margin-top: 0px; outline-co=
lor: rgb(119, 119, 119); quotes: none; text-decoration-color: rgb(119, 119,=
 119); text-emphasis-color: rgb(119, 119, 119);">My
          talk from the 2024 Moscow RustCon about niri, and how I do
          randomized property testing and profiling, and measure input
          latency. The talk is in Russian, but I prepared full English
          subtitles that you can find in YouTube=E2=80=99</p>
      </blockquote>
      <p style=3D"margin-bottom: 19.2px; margin-top: 0px;">raises some
        suspicion. Do we have any information about the developers=E2=80=99
        stance on the invasion of Ukraine? I have nothing against
        russians in general, but I live in Slovakia and would rather not
        use software made by people supporting killing my neighbours.
        Not telling this is the case here, just wondering whether we
        know anything about it.</p>
      <p style=3D"margin-bottom: 19.2px; margin-top: 0px;">Best regards</p>
      <p style=3D"margin-bottom: 19.2px; margin-top: 0px;">Rastislav</p>
      <p style=3D"margin-bottom: 19.2px; margin-top: 0px;">D=C5=88a 9. 10. =
2025
        o 11:24 jace Kattalakis nap=C3=ADsal(a):</p>
      <blockquote type=3D"cite" style=3D"border-block-color: rgb(119, 119, =
119); border-bottom-color: rgb(119, 119, 119); border-inline-color: rgb(114=
, 159, 207) rgb(119, 119, 119); border-inline-start: 2px solid rgb(114, 159=
, 207); border-left: 2px solid rgb(114, 159, 207); border-right-color: rgb(=
119, 119, 119); border-top-color: rgb(119, 119, 119); color: rgb(119, 119, =
119); column-rule-color: rgb(119, 119, 119); margin: 19.2px 0px; outline-co=
lor: rgb(119, 119, 119); padding-inline: 16px; padding-left: 16px; padding-=
right: 16px; quotes: none; text-decoration-color: rgb(119, 119, 119); text-=
emphasis-color: rgb(119, 119, 119);">
        <div class=3D"external-content" id=3D"extcontent-0" style=3D"border=
-block-color: rgb(119, 119, 119); border-bottom-color: rgb(119, 119, 119); =
border-inline-color: rgb(119, 119, 119); border-left-color: rgb(119, 119, 1=
19); border-right-color: rgb(119, 119, 119); border-top-color: rgb(119, 119=
, 119); color: rgb(119, 119, 119); column-rule-color: rgb(119, 119, 119); o=
utline-color: rgb(119, 119, 119); quotes: none; text-decoration-color: rgb(=
119, 119, 119); text-emphasis-color: rgb(119, 119, 119);">
          <div dir=3D"ltr">
            <div>
              <div>
                <div>
                  <div>
                    <div>
                      <div>
                        <div>So, stumbled on this window manager
                          earlier.<br/>
                        </div>
                        I&#39;m pleasantly <a href=3D"http://surprised.it">=
surprised.it</a>&#39;s
                        Wayland, but also has a goal with accessibility.
                        The documentation states it supports Orca with
                        the 08.25 version and...this is true. It&#39;s also
                        got a very, very well commented configuration,
                        and seems stable and viable.<br/>
                        <br/>
                      </div>
                      It has Vim keys by default, H/J/K/L, it has
                      several layouts. But the best part of it is, once
                      you get Orca up and going, and you may well need
                      Xwayland-satellite (at least I did on NixOS), you
                      just boot in, hit Super+alt+S and Orca comes up
                      talking.<br/>
                      <br/>
                    </div>
                    But there are caveats:<br/>
                    |<br/>
                  </div>
                  1. The config is set for Alacrity and Fussel by
                  default. You could probably should, change those to
                  whatever you want<br/>
                  <br/>
                </div>
                Aside from that, and a keybind to restart Orca, and one
                for swaync, hat&#39;s the only modding I have done with the
                config.It live loads it once you save and exit<br/>
                <br/>
              </div>
              THe Niri devs have a dedicated accessibility section in
              their Github wiki, which is where I am getting the info
              from.<br/>
              <br/>
            </div>
            Yes. it&#39;s Wayland only.But it is silky smooth and works
            extremely well, at least in my testing.The worst you can do
            is give it a shot and see how you like it</div>
          To unsubscribe from this group and stop receiving emails from
          it, send an email to <a href=3D"mailto:blinux-list+unsubscribe@re=
dhat.com" class=3D"moz-txt-link-freetext">blinux-list+unsubscribe@redhat.co=
m</a>.<br/>
        </div>
      </blockquote>
    </div>
    <div class=3D"mdhr-raw" style=3D"height:0;width:0;max-height:0;max-widt=
h:0;overflow:hidden;font-size:0;padding:0;margin:0;" aria-hidden=3D"true" t=
itle=3D"MDH:PHA+SGVsbG8sPC9wPjxwPnRoYW5rIHlvdSBmb3IgcmV2aWV3aW5nIHRoaXMsIEk=
ndmUgd2FudGVkIHRvIHRha2UgYSBsb29rIGF0IE5pcmkgZm9yIGEgd2hpbGUuIFRob3VnaCB0aG=
lzIHNlY3Rpb24gb2YgdGhlIHJlYWRtZTo8L3A+PHA+Jmd0OyZuYnNwO015IHRhbGsgZnJvbSB0a=
GUgMjAyNCBNb3Njb3cgUnVzdENvbiBhYm91dCBuaXJpLCBhbmQgaG93IEkgZG8gcmFuZG9taXpl=
ZAogcHJvcGVydHkgdGVzdGluZyBhbmQgcHJvZmlsaW5nLCBhbmQgbWVhc3VyZSBpbnB1dCBsYXR=
lbmN5LgpUaGUgdGFsayBpcyBpbiBSdXNzaWFuLCBidXQgSSBwcmVwYXJlZCBmdWxsIEVuZ2xpc2=
ggc3VidGl0bGVzIHRoYXQgeW91IApjYW4gZmluZCBpbiBZb3VUdWJlJzwvcD48cD48YnI+PC9wP=
jxwPnJhaXNlcyBzb21lIHN1c3BpY2lvbi4gRG8gd2UgaGF2ZSBhbnkgaW5mb3JtYXRpb24gYWJv=
dXQgdGhlIGRldmVsb3BlcnMnIHN0YW5jZSBvbiB0aGUgaW52YXNpb24gb2YgVWtyYWluZT8gSSB=
oYXZlIG5vdGhpbmcgYWdhaW5zdCBydXNzaWFucyBpbiBnZW5lcmFsLCBidXQgSSBsaXZlIGluIF=
Nsb3Zha2lhIGFuZCB3b3VsZCByYXRoZXIgbm90IHVzZSBzb2Z0d2FyZSBtYWRlIGJ5IHBlb3BsZ=
SBzdXBwb3J0aW5nIGtpbGxpbmcgbXkgbmVpZ2hib3Vycy4gTm90IHRlbGxpbmcgdGhpcyBpcyB0=
aGUgY2FzZSBoZXJlLCBqdXN0IHdvbmRlcmluZyB3aGV0aGVyIHdlIGtub3cgYW55dGhpbmcgYWJ=
vdXQgaXQuPC9wPjxwPjxicj48L3A+PHA+QmVzdCByZWdhcmRzPC9wPjxwPjxicj48L3A+PHA+Um=
FzdGlzbGF2PC9wPjxwPjxicj48L3A+PGRpdiBjbGFzcz0ibW96LWNpdGUtcHJlZml4Ij5ExYhhI=
DkuIDEwLiAyMDI1IG8gMTE6MjQgamFjZSBLYXR0YWxha2lzIG5hcMOtc2FsKGEpOjxicj48L2Rp=
dj48YmxvY2txdW90ZSB0eXBlPSJjaXRlIiBjaXRlPSJtaWQ6Q0FDOXVEaFo1ZlV4Q0M3NFVfNWd=
EM0IwX2NoRGktcy03b2lkRjJKcmdSPTRiQWgydVpRQG1haWwuZ21haWwuY29tIj48ZGl2IGRpcj=
0ibHRyIj48ZGl2PjxkaXY+PGRpdj48ZGl2PjxkaXY+PGRpdj48ZGl2PlNvLCBzdHVtYmxlZCBvb=
iB0aGlzIHdpbmRvdyBtYW5hZ2VyIGVhcmxpZXIuPGJyPjwvZGl2PkknbSBwbGVhc2FudGx5IDxh=
IGhyZWY9Imh0dHA6Ly9zdXJwcmlzZWQuaXQiIG1vei1kby1ub3Qtc2VuZD0idHJ1ZSI+c3VycHJ=
pc2VkLml0PC9hPidzIFdheWxhbmQsIGJ1dCBhbHNvIGhhcyBhIGdvYWwgd2l0aCBhY2Nlc3NpYm=
lsaXR5LiBUaGUgZG9jdW1lbnRhdGlvbiBzdGF0ZXMgaXQgc3VwcG9ydHMgT3JjYSB3aXRoIHRoZ=
SAwOC4yNSB2ZXJzaW9uIGFuZC4uLnRoaXMgaXMgdHJ1ZS4gSXQncyBhbHNvIGdvdCBhIHZlcnks=
IHZlcnkgd2VsbCBjb21tZW50ZWQgY29uZmlndXJhdGlvbiwgYW5kIHNlZW1zIHN0YWJsZSBhbmQ=
gdmlhYmxlLjxicj48YnI+PC9kaXY+SXQgaGFzIFZpbSBrZXlzIGJ5IGRlZmF1bHQsIEgvSi9LL0=
wsIGl0IGhhcyBzZXZlcmFsIGxheW91dHMuIEJ1dCB0aGUgYmVzdCBwYXJ0IG9mIGl0IGlzLCBvb=
mNlIHlvdSBnZXQgT3JjYSB1cCBhbmQgZ29pbmcsIGFuZCB5b3UgbWF5IHdlbGwgbmVlZCBYd2F5=
bGFuZC1zYXRlbGxpdGUgKGF0IGxlYXN0IEkgZGlkIG9uIE5peE9TKSwgeW91IGp1c3QgYm9vdCB=
pbiwgaGl0IFN1cGVyK2FsdCtTIGFuZCBPcmNhIGNvbWVzIHVwIHRhbGtpbmcuPGJyPjxicj48L2=
Rpdj5CdXQgdGhlcmUgYXJlIGNhdmVhdHM6PGJyPnw8YnI+PC9kaXY+MS4gVGhlIGNvbmZpZyBpc=
yBzZXQgZm9yIEFsYWNyaXR5IGFuZCBGdXNzZWwgYnkgZGVmYXVsdC4gWW91IGNvdWxkIHByb2Jh=
Ymx5IHNob3VsZCwgY2hhbmdlIHRob3NlIHRvIHdoYXRldmVyIHlvdSB3YW50PGJyPjxicj48L2R=
pdj5Bc2lkZSBmcm9tIHRoYXQsIGFuZCBhIGtleWJpbmQgdG8gcmVzdGFydCBPcmNhLCBhbmQgb2=
5lIGZvciBzd2F5bmMsIGhhdCdzIHRoZSBvbmx5IG1vZGRpbmcgSSBoYXZlIGRvbmUgd2l0aCB0a=
GUgY29uZmlnLkl0IGxpdmUgbG9hZHMgaXQgb25jZSB5b3Ugc2F2ZSBhbmQgZXhpdDxicj48YnI+=
PC9kaXY+VEhlIE5pcmkgZGV2cyBoYXZlIGEgZGVkaWNhdGVkIGFjY2Vzc2liaWxpdHkgc2VjdGl=
vbiBpbiB0aGVpciBHaXRodWIgd2lraSwgd2hpY2ggaXMgd2hlcmUgSSBhbSBnZXR0aW5nIHRoZS=
BpbmZvIGZyb20uPGJyPjxicj48L2Rpdj5ZZXMuIGl0J3MgV2F5bGFuZCBvbmx5LkJ1dCBpdCBpc=
yBzaWxreSBzbW9vdGggYW5kIHdvcmtzIGV4dHJlbWVseSB3ZWxsLCBhdCBsZWFzdCBpbiBteSB0=
ZXN0aW5nLlRoZSB3b3JzdCB5b3UgY2FuIGRvIGlzIGdpdmUgaXQgYSBzaG90IGFuZCBzZWUgaG9=
3IHlvdSBsaWtlIGl0PC9kaXY+CgoKClRvIHVuc3Vic2NyaWJlIGZyb20gdGhpcyBncm91cCBhbm=
Qgc3RvcCByZWNlaXZpbmcgZW1haWxzIGZyb20gaXQsIHNlbmQgYW4gZW1haWwgdG8gPGEgaHJlZ=
j0ibWFpbHRvOmJsaW51eC1saXN0K3Vuc3Vic2NyaWJlQHJlZGhhdC5jb20iIG1vei1kby1ub3Qt=
c2VuZD0idHJ1ZSIgY2xhc3M9Im1vei10eHQtbGluay1mcmVldGV4dCI+YmxpbnV4LWxpc3QrdW5=
zdWJzY3JpYmVAcmVkaGF0LmNvbTwvYT4uPGJyPgo8L2Jsb2NrcXVvdGU+PHVsIGNsYXNzPSJkcm=
9wZG93bi1tZW51IHRleHRjb21wbGV0ZS1kcm9wZG93biIgc3R5bGU9ImRpc3BsYXk6IG5vbmU7I=
HBvc2l0aW9uOiBhYnNvbHV0ZTsgei1pbmRleDogMTAwMDsiIGNvbnRlbnRlZGl0YWJsZT0iZmFs=
c2UiIHBvcG92ZXI9ImF1dG8iPjwvdWw+">&amp;#8203;</div>
 =20

</body></html>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--b1=_R9vwE6Ol0VMPL6HvAdf2vw5MWQSkLvYOIS8blLnraY--

