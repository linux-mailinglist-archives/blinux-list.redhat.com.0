Return-Path: <blinux-list+bncBDYPVTOXSQEBBPXOYS2AMGQERWDXBPI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com [209.85.161.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 5342692FC07
	for <lists+blinux-list@lfdr.de>; Fri, 12 Jul 2024 16:01:36 +0200 (CEST)
Received: by mail-oo1-f71.google.com with SMTP id 006d021491bc7-5c65c3288e4sf1648793eaf.3
        for <lists+blinux-list@lfdr.de>; Fri, 12 Jul 2024 07:01:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1720792895; cv=pass;
        d=google.com; s=arc-20160816;
        b=GgHUbwFWnRtvZnHNYSVVLadTnC69czua4JxNZxZONqc6O0J7OY9kqug1atsT6nGeG/
         aZ59h5Qqyi+sbH1++IdWzycwo6C2FBhJO9hS4fRRSTrg3R66pQGDbrddF06XryzsuHvC
         ndyp2sBoiw4kIr/fpYG1uuXs9yyXtl4zYUaSg8zlDdkpuNY4vqZKkJvN+rJcDakTIWVt
         dVeJUTn80sG5bjKuMYp3D3HM7yvQtBMxeSZXI36Ck/nmu4N6+w+2IeX0hK7+XoiQNSc3
         8pqd0do9k7STpo3MM41dTqdaKBiH888FdeChFb2tbfOqd4hReV4fD9ZJD4v/HwGFKNXf
         WlLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=+HZys/nI56zbpKLtHA6EJLG3l/AyDoOKzPO+qB/5ap8=;
        fh=6SKNFg4ZFo91viot7T0meFt3Tf8xf7P+JiYgJW5vmc0=;
        b=R2ZPmJ2AreeFx2qg6iOC/wrGKoYBFJ9X/5GvjnePmWi5QJWqwiIW3JgqP1QfoVcct6
         fd/UgXFdcHY+bHyt3TYDGWrMm1XeW8u3oe47WuDi6zEcPnNIJ19Krt2JybBBrOgQOzQ1
         rctwk0SwdOwLwa0WqgXqIAA59ALJ5JNQVouqoNFOvmFSNu7oGIGTJwO0GaajweEuKA9q
         k2f56m6akOPkDBhfvIEvW4H0wiwjEHR04n/IYYNiwWrEbh9oMlP3WaEdfPqrVzQce4ww
         C5IiOX9Bu3z6kq9PwwdxWNZuj5VV6ywuCh8PdIOzxriFyAJbXeYEd9iPEVwQLNh9YymK
         quAw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720792895; x=1721397695;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+HZys/nI56zbpKLtHA6EJLG3l/AyDoOKzPO+qB/5ap8=;
        b=YkQD9ZqMvu1k5UxP0gSeUZhQouYppkYAQxsfeEhkrHRCxSIIgPrKwMHfUMFrWFHSjH
         BZXzma72Sy7NkCZJpaSGaTjBbQ6sEDA/+JPZIweoexVd6H5VIGjqFqeP2czP/+DoMUi8
         qOSqH+TbUHBVBk5SYkTD4kFhAraSPk/QMCTHgtOwigg27Qak6js0xoLaf0oQABGBQlmg
         Gion3ItaLbYG5I5zE2wIwVpJI7b2Yd8RbYfsn8BgN71yRNE2PLWsa9wgaNcdQ3+iNn2E
         3lXaIULCQRp8ZT3wAhynigI2UOwFh5f6MedKJctkgMvcmCCCA9Ku+5z018B9ltLi7aJa
         SfQg==
X-Forwarded-Encrypted: i=2; AJvYcCXj/tCvRQQH0dblmhRFYehHq43eZO8w7aEx5lj5wgR7+cRF/Sd/XKoWV3ogAfpdTZ2P7s51A+Cq+/n40MIPrvMUuJPCREOK0vY8
X-Gm-Message-State: AOJu0YwINiLZG++WZ45xNUDDuo4frz6M0U8XyVQzVhyKUzkWQi7iY6ic
	hVcnjAQ6Bkk9KNlvnNM/AAUk0xs4O4btkuXOVNo45+JJA35H9bRcMI+CLvpKm5g=
X-Google-Smtp-Source: AGHT+IFQzYSaSfFOLUxfFltzDJcEHHShj75OpLgHbi4K9zLHyPx6mqtvQCov3EJAvuRU0z03Fd2+3g==
X-Received: by 2002:a05:6820:c90:b0:5c9:d9db:6a51 with SMTP id 006d021491bc7-5ccd81572ebmr3051609eaf.0.1720792894740;
        Fri, 12 Jul 2024 07:01:34 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a4a:ea36:0:b0:5ba:c07d:d1e3 with SMTP id 006d021491bc7-5cab6c2f900ls1699505eaf.1.-pod-prod-03-us;
 Fri, 12 Jul 2024 07:01:33 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXqc8Jr3qUzYG3yWi4iTmQ4rKLEODFuGvxrqur2XtdmFjRwPkMu07p1LPqcCf+tQYMpMxXsTwu0/HajySpHxYdJU61D9mcFmYf7Bs4E
X-Received: by 2002:a9d:7f90:0:b0:703:62f9:1aa7 with SMTP id 46e09a7af769-70375a16ed0mr12549934a34.9.1720792893761;
        Fri, 12 Jul 2024 07:01:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1720792893; cv=none;
        d=google.com; s=arc-20160816;
        b=RYM5OkB8apYpJv5nmZo1y2tN6Oto5Ujo8SE9nxMjhaWr4e2lG5l3WOAFJKTuSwX3h6
         PmipQp53f4HSKBRHk+OFvFJtYdqiSETZe232GajjcsUvx5w8NFb6MJc/mORPqIjOTte2
         P/iasPjABccVeONrdu5Uj0ZMy74yQ+2LpNC2DScppb7gyU5o7DGMiScJVIMfts33SK64
         kt0D3nxSiYupancU72lBLFVsArhFOc1+/zDogWVVteHkE0W2tHuM5dofe1OvPf4tT2LZ
         WERD3bIwPpf1XAwl+qMpd/eVoBitkQ7PEXfnSFY4z+vwTVSa1C91Hj+Q9s2qWMEfi3Gc
         omqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:to:from:date
         :delivered-to;
        bh=i3XL4djOvgFAoA4EdPq4uuyDSpc/j509cR938/hhdMs=;
        fh=9z6violr4Smu4CVRvmHV63eU0fGu2RjOIcepDnPzhZM=;
        b=CU9oT6Y527X8zKOpZoncRxtfUey4mvB4/2t2L57XlceNGL5JJ6YUgxth1V/XiGkKIp
         xmRlI6Ozkxuu3eRO3riQOAqhs3yKWCNb08wNxi6Fc5L/2q2lA1LVxqs7RMyVxOmaioWP
         Y0nlgbupEVvn79Gp0yYLAcHoXV1GZv/ZMpg6gr37dry7UQXQSzW3TnrmNWaDKHnMbmDc
         em1mGKMEQ+alrMjM4Zv14CXQgX3TDdR7QLw+gD5eMD5AfFmmxBTjVNrnZ23qMdfQTiix
         6btMGDE2mg0ZEV85VZD12ZVXzbAcDIqJZp5qlzwVZyAes64QsbREnhoj8Io+cyjB1VQy
         xGWg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id a1e0cc1a2514c-81076919c6fsi1621161241.22.2024.07.12.07.01.33
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jul 2024 07:01:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-1-ldD8sJ8bMkWERKddAmKEXw-1; Fri,
 12 Jul 2024 10:01:31 -0400
X-MC-Unique: ldD8sJ8bMkWERKddAmKEXw-1
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5E3CA1935859
	for <blinux-list@gapps.redhat.com>; Fri, 12 Jul 2024 14:01:29 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 4CAEC1955E70; Fri, 12 Jul 2024 14:01:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4A2FD1955F40
	for <blinux-list@redhat.com>; Fri, 12 Jul 2024 14:01:29 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C35F81979060
	for <blinux-list@redhat.com>; Fri, 12 Jul 2024 14:01:28 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-641-9Avl_uXxOpWUiwL8GQ3jDQ-1; Fri,
 12 Jul 2024 10:01:26 -0400
X-MC-Unique: 9Avl_uXxOpWUiwL8GQ3jDQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4WLCtt0n0pz1C98;
	Fri, 12 Jul 2024 10:01:26 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4WLCtt0XJCzcbc; Fri, 12 Jul 2024 10:01:26 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4WLCtt0V0CzcbC;
	Fri, 12 Jul 2024 10:01:26 -0400 (EDT)
Date: Fri, 12 Jul 2024 10:01:26 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Rastislav Kish <rastislav.kish@protonmail.com>, 
    Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Converting brf to text?
In-Reply-To: <9a2447b3-e761-4615-9b4e-e2f058029af0@protonmail.com>
Message-ID: <205e35d4-ad24-52b0-a6b2-d61177dfc3d8@panix.com>
References: <9a2447b3-e761-4615-9b4e-e2f058029af0@protonmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jdashiel@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
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

liblouis.
A while ago it used to be nfbtrans but that no longer builds on modern
systems.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Fri, 12 Jul 2024, 'Rastislav Kish' via blinux-list@redhat.com wrote:

> Hello everyone,
> I've got a .brf file I need to read, and am looking for a program which
> would convert it to plain text. Does anyone have any Linux working
> recommendations?
> I think I could use liblouis for this, but it would require putting
> together a conversion program, but it sounds like a frequent enough task
> that someone likely already created it,
>
> Note I don't know much about braille, especially the english-one, so I
> apologize if my question sounds super-trivial.
>
> Best regards
>
> Rastislav
>
>
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

