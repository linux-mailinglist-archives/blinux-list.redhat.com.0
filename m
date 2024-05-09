Return-Path: <blinux-list+bncBDYPVTOXSQEBBF5B6SYQMGQEYJE2L6I@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB5A8C1471
	for <lists+blinux-list@lfdr.de>; Thu,  9 May 2024 20:06:17 +0200 (CEST)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-43d9796d7a1sf9345051cf.0
        for <lists+blinux-list@lfdr.de>; Thu, 09 May 2024 11:06:17 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1715277976; cv=pass;
        d=google.com; s=arc-20160816;
        b=OAKXfDfXyy+Ad3PbaoMpphmjyrXXvZiiHAmTEfYx79fZ7UMvzoYQeOdaY9Z0VkA2TO
         wYGAAH2kr9mmc01Gbw4kN1VIVKoQCOZb3/WuZExt1Yc+ti2NtdHukCwB7kU0bUU7yrsg
         bFTSe+QK5ctG87MpaK8V65qw4Q7ciiEE8QUSj6CPsllXRa/nNM9IHOIaRXM29xqwHYQv
         9SD/IdBF/x5v5X6ZeIytFr63iDqMqlEgElKS7vAremOpNFXGGtzOpiudgHy8gAfBiF/t
         bpfTY9mRfxsoifSvA0Nc3QV03Mxm7PA/AehBhhRsdDFP4lX1ivZQOGQXBeELBeFdlxFx
         psDg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to;
        bh=RlUr07Cc8RS2HeFVwvEV1Awm66/09Zi3Oo0Q8302X70=;
        fh=sJf+VdnAtu9+mqdT7yTQJegfwC9WbqrIIXGApE2vMjM=;
        b=IpoMo0fSrm/NcBuiAPAj0jM1XMAymUT+pC4l712cZA4PLmk62kTpnq8jKFbvCa3IbI
         gr1H7M3Y4/mJTADXJf6144l1LaBlr7wRf7Nqxz6aNt/XEwpvDHFftAQw7f9Q2RQQsrBG
         OeQ1v/p6kpuCx+jNLLd4GXJDn4ZxIJue38+qSRogBZ4vuUg5nVU0oi5NlDd/m8JCG+Kt
         Y5JoUzmBgIL6e+3WzxdnUbTFPsAXlnShKOoj+jVMaDb1EZB6BOeQ9eEQ7bNMiw13pAV2
         zM2lAda8imif3A5RHuJAx/kflcwhYQQJK9stHAC5H8D0R7NSZQNxf80YR0k+KOMy8b6K
         5WOw==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@panix.com header.s=panix header.b=gL8MvqIE;
       arc=pass (i=1 spf=pass spfdomain=panix.com dkim=pass dkdomain=panix.com dmarc=pass fromdomain=panix.com);
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715277976; x=1715882776;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RlUr07Cc8RS2HeFVwvEV1Awm66/09Zi3Oo0Q8302X70=;
        b=jG1qnFMeQAZhJT5ESs+aDrmhPiAsfs8ub+geDtcSzR27Sr1HjFK5lZAgwmxcYxs+h8
         rV5C84I/eURjmiWYXci65y11e6RmRZtEZalwG50A5L3/9fAnBljA1OEo9na0hPmrO8kX
         gm9a4PVv55500J+1DPS0VV0auYr+dczno5zdJdhaGfpZjVnM9wePmuxbtDCJv5TZHrra
         wgpDfaeiLGQswdC7EoETdeNzUjZdLDb+nCg5m54TpWsuVWbXnfxJD00o+sI4nt6lFQS7
         9iEak3YGObT95W/CJOqnBDWCzNsxesXxnjZGBD5iHAEmJX8MRwyvG0D2qH24yl67ykVR
         fYTg==
X-Forwarded-Encrypted: i=3; AJvYcCXioVT5n52ziuoTWsGo/kJ0EAAx6U7/qP8eLqzeAyxI01aCksYwZj4b/gAShJIT+GEsZ2iq2ia7uwDBYEFr/wrrfY+YBYlmVzO5
X-Gm-Message-State: AOJu0YxLxFVQE6eQ7/qTSC+iJN9GVPC4dkkYAAk42wawxH9wd2aYkprU
	3U+qh5gkVd4nO1vwJjBzxQNXbQXc47I4Fpal5H3CPxQrpsUDUhrIuGIa2WnswO4=
X-Google-Smtp-Source: AGHT+IHcaQaY91oaf/61GN3vL4DeU5wrsM+W8cN061VsKlZS3yo8W8qBBT14N76CWqdSWWWbhd+PYQ==
X-Received: by 2002:ac8:7f0a:0:b0:43b:4bc:6606 with SMTP id d75a77b69052e-43dfdae7392mr1511501cf.24.1715277975996;
        Thu, 09 May 2024 11:06:15 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:188a:b0:437:bede:6e20 with SMTP id
 d75a77b69052e-43deda23ac4ls17768171cf.2.-pod-prod-09-us; Thu, 09 May 2024
 11:06:15 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCWLX4L/CKJfH8Rl0Szo+Id4N1yVrlVOpWgwJ21DhRaCP2VetcNQiVfodp65dpYtJ4JDOqtUDtLMIlWhuh12dLiee550CO5mdr2020yM
X-Received: by 2002:a05:622a:314:b0:43d:fd4e:b893 with SMTP id d75a77b69052e-43dfdb81c06mr1074891cf.45.1715277974964;
        Thu, 09 May 2024 11:06:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1715277974; cv=pass;
        d=google.com; s=arc-20160816;
        b=XTeINOgi6VNEZzGB604kbQZLm5PL13JLUUSZm8SSaJb6AuhUgojJb3irlvIH8+JYhG
         VEG0mXKBYJXE8KxsVp8r2Kwc+gP7ezGinpmHknOrhQN5eAaotvl124L/mOBKS4l0QZ2l
         Thxt2IWLY0CE1wvvabH1RYwh1KD+oUXe8gyeCHjS9N3ZouIpkIfFKeFDWLVQ8ZTq16Ip
         AVdWUxGoEXjePn4kNEghEeeY5IkvI1maizn2uI5vY+uQ0amlZXRMptP9iIBAY/utGnKG
         THwTQkycXh6jOJknyWJTCmsXkS6Km6IDs8Lkvj9WMfMoZvQUonoRnYKkGjTP2J6vKFib
         /o9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:dkim-signature:delivered-to;
        bh=sXjPZzpGUrq8m/CoNFez4fphhB5IL6V2pFmy4WaSSsI=;
        fh=tpQChr1BRGd2FZGiK++wk4+fN+JHAwOoCVjm5WhWons=;
        b=tdnme9YkRqijykCre/FUjVX9nL7n6sC+Ifhk7piWoSOstF/eo6tdB4kYy7iJgO7y0o
         00v2DHRomgEsKabqI5d/vFJdB+htESqK7GJ3GLLzzqcinBRjQybMKb+l9UO34+UB6Msy
         WciYGbijyT+DMF5DZBKxTHSv2+guXc3Ykck/1JhpsRGYSp8Whp3NAD8Fp4dN7/QgXrWe
         h/qydkojE0mDvmFRu3mKEgG1lhlHHscXEO99/CMByaOweSBllXHhdoo4rKSZbq+Fjy9I
         f1XojlvHgzu0redmWynXkJt0dgeMiujWQ523TCs9a1VeNJiPvAHhF0dt1aWbi08uc/oi
         4BUw==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@panix.com header.s=panix header.b=gL8MvqIE;
       arc=pass (i=1 spf=pass spfdomain=panix.com dkim=pass dkdomain=panix.com dmarc=pass fromdomain=panix.com);
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-43df54b52c1si17760321cf.201.2024.05.09.11.06.14
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 May 2024 11:06:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-577-bHEENTWyP6ypm2V8obPQBA-1; Thu, 09 May 2024 14:00:09 -0400
X-MC-Unique: bHEENTWyP6ypm2V8obPQBA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 09B82184869B
	for <blinux-list@gapps.redhat.com>; Thu,  9 May 2024 18:00:09 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 067981D67274; Thu,  9 May 2024 18:00:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C0CC61D67273
	for <blinux-list@redhat.com>; Thu,  9 May 2024 18:00:07 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D3F39101AA5C
	for <blinux-list@redhat.com>; Thu,  9 May 2024 18:00:07 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1715277607;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=sXjPZzpGUrq8m/CoNFez4fphhB5IL6V2pFmy4WaSSsI=;
	b=kpZze2zzMtyuroHVI7qyMkkBESsuhOBCvY8wEiVaxwxM1SpzDJXBemg+bPzEyKj+pZI9E7
	zP3p4rOn5sQPmEsjEczhgOBexmkADi/cpwTdkMuyikTGMMAOrPRJfP63Kx58ql2OAZcCeC
	tTtL8EImLrysO9kvl7nNqRaQT6qTgaxWXkzi4TwnCWbYDJBXqsAHnhBecOw7dDtVrPAGv6
	hAfwAvEuXkXCwt4ii4sCXz0MuwNWGHSBhfG4snt4TMKbr9hHnabHL3VnrtynULhgWQd5GD
	Ahq9hU3a6CwD/iEgtDDAIjxwviKJF6VzNAncTf81kJbYobXN3s4fVHcC16ZSNA==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1715277607; a=rsa-sha256;
	cv=none;
	b=B3tML+Kv/ZdpfIvPFlnXd/LoxF/mgmlVH4vtLRPYT4rwPGvmlnknkp6rvmMqvtAcwVoSQg
	YWLWky8qBYKHfxiJatWFCUl6m7d464+GT8ZvNQ4ueKSJ9lIyBK27caeuURjKPppFxfuix2
	vKYexd6t+7Vej/u3xI5MVWCFP5Fi4gxHt7l+ikn0bEQnv6PryoXzLU+YJEJDgUpkAHquIY
	khdk7znueE4Q4OE19j3G/wYVnwSP7g9LVk3xgATFmogJx+3zsSfkWzqne0GApKUuSm7Wfh
	30G7nm7YQWSTeAeocAjUhuixxcO/kJefWPM6bq9JoBMp856b8qNk+FffW0L9VA==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=panix.com header.s=panix header.b=gL8MvqIE;
	dmarc=pass (policy=none) header.from=panix.com;
	spf=pass (relay.mimecast.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-460--dB2at3LNamee79eipOMsg-1; Thu,
 09 May 2024 14:00:05 -0400
X-MC-Unique: -dB2at3LNamee79eipOMsg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Vb0Ck5CbZz4KB;
	Thu,  9 May 2024 14:00:02 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Vb0Ck50SQzcbc; Thu,  9 May 2024 14:00:02 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Vb0Ck4vd3zcbV;
	Thu,  9 May 2024 14:00:02 -0400 (EDT)
Date: Thu, 9 May 2024 14:00:02 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: orca@freelists.org
cc: blinux-list@redhat.com
Subject: Re: [orca] Re: lost website linux accessibility
In-Reply-To: <Zj0NbP0wKAmWJvkB@d5421.linova.de>
Message-ID: <a9410e1e-969e-8ff4-6530-5d319b511b58@panix.com>
References: <f2d2325e-636a-437d-a489-b2a2fe6fec7a@harrastenurkka.fi> <CAL9unEtZYVaSFOLjJ4LRqXceNte4xDv=F=BZnZ5smYn37AELBA@mail.gmail.com> <33303af7-4eaf-449b-a356-043e93f4f138@harrastenurkka.fi> <Zj0NbP0wKAmWJvkB@d5421.linova.de>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: jdashiel@panix.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@panix.com header.s=panix header.b=gL8MvqIE;       arc=pass (i=1
 spf=pass spfdomain=panix.com dkim=pass dkdomain=panix.com dmarc=pass
 fromdomain=panix.com);       spf=pass (google.com: domain of
 jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
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

I doubt they're on the market any longer but a weasel card could be
plugged into the vga port on the computer and would capture everything
going out that port with a serial connector could be plugged into a
hardware synthesizer if memory serves.  Very expensive cards you could
probably buy a couple nice computers for one of those cards when they were
available.

--=20
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Thu, 9 May 2024, Christian Schoepplein wrote:

> Hi Elias,
>
> On Tue, May 07, 2024 at 06:41:51PM +0300, Elias St=C3=A5hlberg wrote:
> >
> >   for the purpose, my purpose would be to be able to navigate the bios
> >   independently and maybe install proxmox. Would there be a capture car=
d for
> >   this that would be connected to the machine to be installed and to th=
e
> >   other port a machine running camocr
>
> Do oyu need to access the bios just in case to install Proxmox , maybe
> because the installer does not boot?
>
> If  the Debian installer can be booted you can install Proxmox on top of
> Debian. This has the advantage that you can install Debian with braille
> and / or speech support and have full speech and braille support also
> for the Proxmox installation. I've installed several Proxmox clusters
> this way, not problem and fully doable for a blind person.
>
> Since Proxmox 8 there is also support for a serial console in the
> Proxmox installer. This might also work  for us to install Proxmox, but
> I never tried it because we are still using Proxmox 7 at work and all I
> have to do is update the clusters to version 8 some when in future.
>
> Ciao,
>
>   Schoepp
>
>
>
> _______________________________________________
> Orca mailing list
> orca@freelists.org
> https://www.freelists.org/list/orca
> General information: https://orca.gnome.org
> Orca documentation (English): https://gnome.pages.gitlab.gnome.org/orca/h=
elp/
> Orca documentation (translations): https://gnome.pages.gitlab.gnome.org/o=
rca/
>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

