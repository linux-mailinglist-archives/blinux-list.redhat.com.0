Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 3E64B374CC8
	for <lists+blinux-list@lfdr.de>; Thu,  6 May 2021 03:13:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1620263583;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=kYJsmyRNAs53dXPYba1KDFpoB7CflE5g5OCqtnHFYq4=;
	b=Fmu9ljn3AneAX6/U0ankq2J0sqU2j0YOpQ1KzLtJ/v95uYeHBgclihI0E71kUtQdAOHAgt
	HF0nhtKNlE7oPKujOshYEICY+iAzC3yvi816kkQ5mO5vY/+dQS8hzNCIVCHRLSg8bMRgL8
	Gx+XGGjT7YqialL5GdyGfl9fHZvRvq8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-373-BQCNCNr9OfaMdVC_kzS0cw-1; Wed, 05 May 2021 21:13:01 -0400
X-MC-Unique: BQCNCNr9OfaMdVC_kzS0cw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4B0D1801AC1;
	Thu,  6 May 2021 01:12:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7798017A70;
	Thu,  6 May 2021 01:12:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C00A81800BB0;
	Thu,  6 May 2021 01:12:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1461CZEP017056 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 5 May 2021 21:12:35 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 8B48811EB1A; Thu,  6 May 2021 01:12:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 85F4011EB29
	for <blinux-list@redhat.com>; Thu,  6 May 2021 01:12:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 91A99805F0F
	for <blinux-list@redhat.com>; Thu,  6 May 2021 01:12:32 +0000 (UTC)
Received: from mail-il1-f180.google.com (mail-il1-f180.google.com
	[209.85.166.180]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-308-DKR6J9ccPdSQIXCUCSwhew-1; Wed, 05 May 2021 21:12:30 -0400
X-MC-Unique: DKR6J9ccPdSQIXCUCSwhew-1
Received: by mail-il1-f180.google.com with SMTP id v13so3368903ilj.8
	for <blinux-list@redhat.com>; Wed, 05 May 2021 18:12:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=T6VQnaCwmALZ2oH9PGtkCvP5nmByfTWgunAe/LG4Rg0=;
	b=E7cQgeusbh41ju0/8uqXX3jte+AmnWKVPSP7Xl6a1Sr1ixvSczs/zz8kRsRcigdDlX
	0rtP76zHAnyG19u2aWgzWH6N8uqPqNJlTLjk0buzLMvnc7s4MwD4D8+UGeaMvYyQseeQ
	TH3JbJRAFI0y08UvDWywpLue/jHxJGMMQFRVF+Ld5KB/8w5jYxYIDn5HfV/6YJlcrOCD
	MMUBoOvG4eZgzOiX4DQgbPOhKST36FBROBzUhcOeQmvEPFlhCeSAn492gbUq4AFqhbIO
	+xkFK5Bott7iSuKyBKDxW6plhqSgHZTJ2SbB1KRH6RRP+bxg9H146UdnezympvJkREW0
	cL7g==
X-Gm-Message-State: AOAM530EJR1e3vU3SAhRNJ2D6T6TLBQ9VbMleyDyWf/TQANFLAZdCHfm
	muCL5Xr6x4HljsyWzvMtqNZTdrhHKU/G4Et+ilTTGRBM
X-Google-Smtp-Source: ABdhPJwyXPm98aYL8yCbvIJUJs4l69oBWMl79FB/eR7eUZFdsYBlqR+Br54LCWst47hTtcKyyzSDcX6TGdaf1DXqpNA=
X-Received: by 2002:a92:da06:: with SMTP id z6mr1743714ilm.129.1620263549384; 
	Wed, 05 May 2021 18:12:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a5d:9cd6:0:0:0:0:0 with HTTP;
	Wed, 5 May 2021 18:12:28 -0700 (PDT)
In-Reply-To: <4a0283bb-6247-cba9-28b5-3562a4ebaf6b@gmail.com>
References: <4a0283bb-6247-cba9-28b5-3562a4ebaf6b@gmail.com>
Date: Thu, 6 May 2021 06:42:28 +0530
Message-ID: <CAK2wa2k689tKs481z=QM6nbEwt7uGjH3y4oVEhmfkWWSAfuAxg@mail.gmail.com>
Subject: Re: Best Distro for Blind
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

try accessible-coconut which is hosted at sourceforge.net. Latest
version is accessible-coconut 20.4.4.
download the iso and and it is worth.
Thanking you Sathyan.

On 4/30/21, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> Hello,
>
>
> I am a totally blind person and a LONG time Windows/Jaws/NVDA user. I am
> wondering what would be a recommendation for the best distro/GUI
> environment to begin using?  I would love to be able to move away from
> Windows and use Linux full time for browsing, email, word processing and
> spreadsheets. I have a Thinkpad X220 that I can use for Linux. About 15
> years ago, I played around with Venux, but that project seems to be
> dormant now. I have a Pi 3B+ running some ham radio software and I have
> to SSH into it occasionally and perform some command line stuff. For
> daily usage, I want a full GUI environment.
>
>
> Thanks in advance for any suggestions.
>
>
> John
>
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list


-- 
*Mob : +919446012215
FREE SOFTWARE FREE SOCIETY *

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

