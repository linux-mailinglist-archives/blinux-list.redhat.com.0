Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C685B494E7D
	for <lists+blinux-list@lfdr.de>; Thu, 20 Jan 2022 14:00:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642683648;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=k214SQPjV3u1XbyiDmVesnSXp8xbl8Dm/GBLNm+uhig=;
	b=hZCGgkDJe7rzQ6jUa4BLYM9Gz47OTsDM4c49CzXYkmHLc2fIxVgcnyX6ponFZOVqlkI7Oz
	KPsQNGC18Y/ZaaFecvZbCa1/8BzMRsbwf/1niVSVgCIL+Bprt8nbf7RZS8KL14rqpr3m0B
	wDuPwVfXm0pZqlzRR39E5soTpNrgjHQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-328-5Zv8ZHN6OjGALj6cD8A3dg-1; Thu, 20 Jan 2022 08:00:44 -0500
X-MC-Unique: 5Zv8ZHN6OjGALj6cD8A3dg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6CA188144FD;
	Thu, 20 Jan 2022 13:00:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BEBD87EA2E;
	Thu, 20 Jan 2022 13:00:39 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 090BD50480;
	Thu, 20 Jan 2022 13:00:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20KD0K8c003577 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 20 Jan 2022 08:00:20 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 9B0D1492D4E; Thu, 20 Jan 2022 13:00:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 97590492D49
	for <blinux-list@redhat.com>; Thu, 20 Jan 2022 13:00:20 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 682A3185A79C
	for <blinux-list@redhat.com>; Thu, 20 Jan 2022 13:00:20 +0000 (UTC)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com
	[209.85.167.41]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-547--Z39ZfXRP7WgMasfL5nsPg-1; Thu, 20 Jan 2022 08:00:18 -0500
X-MC-Unique: -Z39ZfXRP7WgMasfL5nsPg-1
Received: by mail-lf1-f41.google.com with SMTP id b14so21383522lff.3
	for <blinux-list@redhat.com>; Thu, 20 Jan 2022 05:00:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=Usd8ZJ2N27eAWMRfA28FSXryTwzsubpFtZTgfdqCqio=;
	b=vCsnfRmZ82ZuEdUeRl/wJYDsqEpEz6M0By3xpbtauS5ZAyfouj2nZg01szDd5rAIy2
	kt/+QZwJmbJLRcEkY5l/yFKYDFfu1QUCXWh0pSJHPnIiP+S1uP8Y1ceaSCUw7b7USMku
	NdACOjtzWaP0anXsCeI2bTBl8zsBDFpqPR9cX0xx+qc87Y6vFqBfTA+1u3MO3SRayGuB
	nPRH+WAA2L6gIxWZfC2OEvw4VySnzq/MZ3pZOHUylsHNlH2z4k6PLfWN9d1at5mShYuT
	f4OBtStxX0IZEkf9elvLKAPZnlgRQa+RQT1PHjPSFvIS5kpHUOz61MOzqz2YtHhiJBUM
	3DCQ==
X-Gm-Message-State: AOAM532NdZBFHDh8sZJkHeBgjy1Py4IXzhQtTBIrRzneLgxj5euDRqMz
	+nuqLSrcc2/bCELTnZJjLLUzkvef2qw=
X-Google-Smtp-Source: ABdhPJxYf8D37oB5JVEq/qk8scdcRuMLL73c4/+m+RdYG636CyJMMQssd7vWt4AmODruxAl0NWt3hg==
X-Received: by 2002:a19:2d54:: with SMTP id t20mr2917829lft.635.1642683616711; 
	Thu, 20 Jan 2022 05:00:16 -0800 (PST)
Received: from localhost ([91.77.167.245])
	by smtp.gmail.com with ESMTPSA id z20sm275407ljh.77.2022.01.20.05.00.16
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 20 Jan 2022 05:00:16 -0800 (PST)
Date: Thu, 20 Jan 2022 16:00:15 +0300
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Before I install Arch on bare metal...few questions
Message-ID: <20220120130015.b5v46qpflxbntq5v@alex-pc>
References: <4ab924de-d686-a301-1ea3-e38214aba35e@gmail.com>
	<20220120122837.ipmq2bz3lp227tmg@alex-pc>
	<2f8af423-72cd-57c5-4864-158969fd662a@gmail.com>
MIME-Version: 1.0
In-Reply-To: <2f8af423-72cd-57c5-4864-158969fd662a@gmail.com>
User-Agent: NeoMutt/20211029
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Jan 20, 2022 at 12:50:50PM +0000, Linux for blind general discussion wrote:
> So more questions that I didn't get around to asking earlier and thought of
> after sending that first message
>
>
> 1. I've run into this (mostly) on a VM, but is there an advantage of grub
> over system-d boot? I've never got a VM to boot using grub so I'm not sure
> how it'd afect bare metal

no. I am using sd-boot everywhere.

> 2. From an A-A11y perspective. I'm noting down what I need. Here's my
> current list
>
> alsa-utils espeakup orca speech-dispatcher
>
> Is that all I need for a working DE like Gnome or Mate, i.e. can I just
> install those four packages, dependencies, and and end up with a working
> system?

I think yes.

> I don't really want to nuke my Solus install until I know Arch is working,
> but equally I don't want to overdo installing stuff and get swampd with a
> hundred updates every day for an extreme example. I've managed to pare it
> down to one or two with a lean, minimal system. Hopefully I can replicate
> that on bare metal
>
>
> So given I've Solus on /dev/sda, and I put Arch on /dev/sdb for example,
> would I need to install Grub to be able to swap between the two installed
> OSes as needed? I'm not 100% sure if installing Grub as part of the Arch
> install will break being able to boot into Solus though

if you hav efi - you don't need grub to switch between oses.

--
Sincerely, Alexander

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

