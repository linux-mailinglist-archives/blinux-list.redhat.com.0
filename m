Return-Path: <blinux-list+bncBDYPVTOXSQEBBLHOTOZQMGQESWSFD4Q@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id EEA25902209
	for <lists+blinux-list@lfdr.de>; Mon, 10 Jun 2024 14:53:01 +0200 (CEST)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-43fb05ef704sf68766321cf.2
        for <lists+blinux-list@lfdr.de>; Mon, 10 Jun 2024 05:53:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1718023981; cv=pass;
        d=google.com; s=arc-20160816;
        b=qLYAB0xQ23KuTPCWc2pCZhTj6wcO19Xv3prMpf8Bo4DgdQjS424wUHaqB3zM1gpTzj
         IiAV5PJCWb/Tv2UjLouO06W26L2ZKIr36zIMnnmH3zw7qFipp6vxWtdH0eXMWFA+Cywn
         qBC2RTDrap8+lcONlU6FOGMhXn+lENqyDrPyUIatKC/P76/yu7VSO4/NwEqSOpQ9xo8+
         gf9/xGEpBipNnFNvz89VDiBnXLjE2ylP2a+cbqOr185CnvUHUL9IcDSzD7M5BTq96WEk
         Tkz/liSElqRgWBuynYDXBUveCVAlKLiBI6coAVz/bUKY7h5JA3YvzBRhDb0guIByuKv9
         2vvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=wvEa+jPRIPUISaLyJ1zCyoFjAZmUoCcZgM+h+Lj63NE=;
        fh=xn9nQAZ/LaACXCTo3p/YLwTBM8G2XdhMVNjOkICTMgc=;
        b=gU0Hd8TmdMrdf0dnoczcsb0InctAuafFMOK+97nVGaJeaj1w6MSVG7cAy3pAZiXnaG
         usWlyJeLjpCqiziYU4XjI2tmpOI7reJ/XzZ/QioI2hFpcbAfTQVMiLFG3efKtY+tDNSR
         IUk42R+Mmq9IWN3+gQQ4NJuOnv/UThIyhqkQadxYsDjcq1Qjq1NAzpBFRKK3ew8ddwT6
         BAup+EpzhaBm0Ur4JD4rDFpgXe6rZJ/xMIpToZKmIOqfYhNQlKL0UKtXle1E8HRZ7GMH
         hsigs+mBEaV/G4Ij4d2f//CS2Ugn+0JxfXnoW/YnqMEo0ywbAnUT+J8kayyUnASqplj+
         h9Pg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718023981; x=1718628781;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wvEa+jPRIPUISaLyJ1zCyoFjAZmUoCcZgM+h+Lj63NE=;
        b=xISuMNax46llWD8z+IJ3FF1dYLf2iQYSqYUZ9tK1ztgjSuZWe3hCBbkauoQyndqM8Y
         9c4qKbXl/9LFRDauaQ7LizeW6oHUprmvF9V5C2+uFFqujuwNNe/OaAk0B2qcMCetzMrl
         uzUvjzjEyRF7IPigWdWmvFkQKuH2NRi7yw40Bi13j07jFKo6EGPbFUbU5mj5SRk1cJFM
         DGrW8IojsQK4T+mTkIOFVwuRkSUgpYKrX+JvFK+23V+5w3Qih4ZV38tv6OmBD2yqBgnT
         o1ssc6ZaYKkBzktVxstoKQKXLZzlikr3x8MNbX5ffDQFHX4RaLGC5f9I+5aoiE9JkDv8
         gfxw==
X-Forwarded-Encrypted: i=2; AJvYcCV91E84oeiu/ESo7nW12i2ExmPWlm+MMaFef9+zmg3MfpuT2phdW6orATPHGmxXZ4fz+dkAnJvlWrBBvFdP3BjsqK5qOD1E/7Kx
X-Gm-Message-State: AOJu0Yx9bw+jwpJxmyHKhizXAb9jyvBEFoinItXSNe1ef6UGN1HFlP49
	dZV9XoMpVpq9nT9mToZz4WL/hNVcNwi+D4kmuKQ8C8mi0b4ScGgw7mImSX3s/1g=
X-Google-Smtp-Source: AGHT+IGL5RauQLQza3JsUwRuOUXjJA26mxsHOsDVM6RH0NLLvi3vCyEB1cqJOiWrn2DRp1Y1fEtdbg==
X-Received: by 2002:a05:622a:13cf:b0:440:f223:d0c5 with SMTP id d75a77b69052e-440f223d637mr36701951cf.28.1718023980584;
        Mon, 10 Jun 2024 05:53:00 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:7cb:0:b0:440:5b30:b52e with SMTP id d75a77b69052e-4405b30be6bls17969811cf.0.-pod-prod-04-us;
 Mon, 10 Jun 2024 05:52:59 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXhGAHIIiEhb0VnjHniGfOGr52K4bAKLrRcBcT9+Fipop/MdkGZETfJx8lZGmnMsyT9j8U3/j0yXwGvMjmLypoK35SaamdlEz+QYJA/
X-Received: by 2002:a05:622a:1a16:b0:440:5f14:1652 with SMTP id d75a77b69052e-4405f141b4amr57498591cf.14.1718023979548;
        Mon, 10 Jun 2024 05:52:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1718023979; cv=none;
        d=google.com; s=arc-20160816;
        b=MHY1hmpxhC8tL4jWcjnZL0/ss5HO6IcVvFdfw+oCtx3qEVFtA1ftQ/wSvhkt1hmLAG
         UiOncd292Kn8prVaejMnfgECV/6RqJhpsRltLwPmwij6XpawmTJWji58gJXpIqmyFsfX
         n4CVeI2Nsvotd9vRjbdnLYNY4oe6p7tB431w6Novk0IlozlMsHk9Gs3j0gFvfd8+XIIH
         fe/iwdpDJ68MmnD2Wuqdj6YKlCay3FZX7EkuObAytITeYgNkdqHsxuReYhKC75t+5pQD
         NlZRyIw9ocgmLEQm6L/caNKToC2AoynPyI19SaNOIAni4PF033jwos1WSxVSpYtKv4tX
         XlQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:to:from:date
         :delivered-to;
        bh=ky7Us3y/tcFeuO3GKt5iRgvVRhne/XMmu5eX423RRoo=;
        fh=QFZJp7IXX1XTl/4yr/56JHZJkef5vNTuJSJo53cRDHY=;
        b=C9GogIuLl6wkDe7MguHcIshZciGlz3Wt6Y2oMIy8DsSyjA57pOfSCuwwhhQryzfUtg
         EbNZmDBqEUOlsNpTmOdaMymWNFL8kmnoFUnIul8E1lMu6qvM8qASMf/uUA7aAdzbmz3e
         ThmaYbOzj/PMRVOzSd/p5TWBFqkxee8xKfvJA/T32sO9iG9eNsldJyoTU+8WxC+0IS1V
         hSHP0lSyeMD4W0jCSrRr1smVu1x9g3neDCMFM9Jp/RYOAIt9aMUEEKYHLa/Gd2Jj2Ub8
         P2SwooHTTkrC0pe3QBQarrmcJJAht9EPfFRO/pu6auihSpy+Ha0EJXAye+uDuJgrphTA
         uuuA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-440545d6a98si61813581cf.289.2024.06.10.05.52.59
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Jun 2024 05:52:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-33-o2JXz6_2OVWHJZ6Hmn86Og-1; Mon,
 10 Jun 2024 08:52:58 -0400
X-MC-Unique: o2JXz6_2OVWHJZ6Hmn86Og-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 519DB1956066
	for <blinux-list@gapps.redhat.com>; Mon, 10 Jun 2024 12:52:57 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 423A530000C4; Mon, 10 Jun 2024 12:52:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3FC6530000C3
	for <blinux-list@redhat.com>; Mon, 10 Jun 2024 12:52:57 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 9AA6419560AD
	for <blinux-list@redhat.com>; Mon, 10 Jun 2024 12:52:56 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-659-CnsvRxeyPhCT3No4EiZcCg-1; Mon,
 10 Jun 2024 08:52:54 -0400
X-MC-Unique: CnsvRxeyPhCT3No4EiZcCg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4VyWtZ1DbBz5n8;
	Mon, 10 Jun 2024 08:52:54 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4VyWtZ0v2Tzcbc; Mon, 10 Jun 2024 08:52:54 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4VyWtZ0qfWzcbC;
	Mon, 10 Jun 2024 08:52:54 -0400 (EDT)
Date: Mon, 10 Jun 2024 08:52:54 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Alexander Epaneshnikov <aarnaarn2@gmail.com>, 
    "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: Re: likely accessibility defect in archlinux latest iso
In-Reply-To: <72v7eu5uv3qahyt6np5simjydkn7tzofdnne262uitrj7iroxg@rtn5jtebimq5>
Message-ID: <12b18615-9745-d619-448c-8073332c869d@panix.com>
References: <15d281d7-da29-e92b-867a-56ddf01fe833@panix.com> <26109e97-dc30-4645-a556-0275aefbcf00@jasonjgw.net> <72v7eu5uv3qahyt6np5simjydkn7tzofdnne262uitrj7iroxg@rtn5jtebimq5>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
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

It may have been boot sectors on disks were not as clean as I thought and
that could have broken the arch installation.  I also tried installing
Jenux and the firstboot program never came up talking on reboot after
installation.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Mon, 10 Jun 2024, Alexander Epaneshnikov wrote:

> On Mon, Jun 10, 2024 at 07:35:32AM GMT, 'Jason J.G. White' via blinux-list@redhat.com wrote:
> >
> > On 9/6/24 21:13, Jude DaShiell wrote:
> > > It's possible to do the whole archlinux installation and enable dhcpcd and
> > > espeakup and then reboot and all that happens is silence after the
> > > speakers click.
>
> hmm. if you did something wrong during the arch installation process,
> then what error in the installation iso image are we talking about?
>
> > Yes, it's possible to make istakes during an Arch Linux installation. It
> > worked for me first time though.
> >
> > To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>
> --
> Sincerely, Alexander
>
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

