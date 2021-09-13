Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id CDE39408308
	for <lists+blinux-list@lfdr.de>; Mon, 13 Sep 2021 05:00:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1631502057;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=xJ/9EE4xJN4btXXf9QeKeAB6YdW6JUR2phR9SvLkSR4=;
	b=KUKee1T3H2VvV3zpT67BKntKcR3gWVBL/vtaDem6zgsDRcDCP/KLyjsdIJJeiG7cTbhxm9
	Xz6/Jw/tZo5+by4OX9Vs0gYu34Mjkm32+zP2GrN9vc1ot9mZpYMyz9gVf2Jr9nuWdL6UHJ
	OlVJziliXw6AWxPfke7SowayVqCwk2E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-540-1kSSEGcvNqGTjJQdIYHJ0g-1; Sun, 12 Sep 2021 23:00:56 -0400
X-MC-Unique: 1kSSEGcvNqGTjJQdIYHJ0g-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 83AF5802947;
	Mon, 13 Sep 2021 03:00:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 610171037E99;
	Mon, 13 Sep 2021 03:00:47 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 110FD180142F;
	Mon, 13 Sep 2021 03:00:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 18D30Vc1010477 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 12 Sep 2021 23:00:31 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 075DF2167D65; Mon, 13 Sep 2021 03:00:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 022722167D61
	for <blinux-list@redhat.com>; Mon, 13 Sep 2021 03:00:27 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A467A800B29
	for <blinux-list@redhat.com>; Mon, 13 Sep 2021 03:00:27 +0000 (UTC)
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com
	[209.85.208.49]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-424-lEZA8ARUMmW3sElHV37o4w-1; Sun, 12 Sep 2021 23:00:25 -0400
X-MC-Unique: lEZA8ARUMmW3sElHV37o4w-1
Received: by mail-ed1-f49.google.com with SMTP id v24so5855436eda.3
	for <blinux-list@redhat.com>; Sun, 12 Sep 2021 20:00:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=8PAvOFzAN1rSFgB9SkdZDo/KVj4BhPIOhE2bwbzdSDU=;
	b=iokFClwLHljUjEXR6wBxiemHCZsd7RT8I7jYOBGB0YFcxqPVyWnFZDsHFkVd7i9LOg
	caz6GOh6rxSmWmfOAuatcpXphnGq8qQN4ZKzUn7m7yqnaJcuX45vvQSW/ebbntaV2Pb+
	C8J8hTP63MvQto3xeFFl+6KpHxdNsfC1Mbtp/gYoycBwa9UAbUMifb7GAZG9CMai0p5T
	UaILSAOrkQTxiti+D7mcrBseT4Sbon3c/i62qV+P581aRiKQZAQZkI139VMfv7tIfUtv
	rCbcZkZgbzpBNZiCrAip81IKB8Ce555XpW9LlAt71AFHgbtIVB5oRTKCWQYpI0So+qC8
	jGeQ==
X-Gm-Message-State: AOAM531Gbip+M02ArT9Kilrk4/10eZvb+W5WJxmG1ROzyQnhcYf3+yFZ
	vRO0z70a/J7Y9fqakquegT/FJ2DCEG0=
X-Google-Smtp-Source: ABdhPJyFgVP/qAZYN3Z19JmphqC3bpiZTwuVM88fHtXfHLYPb+4lZrOwgwwZXutIIodeWuV1oOFspw==
X-Received: by 2002:a50:eacc:: with SMTP id u12mr10842315edp.140.1631502024322;
	Sun, 12 Sep 2021 20:00:24 -0700 (PDT)
Received: from localhost ([91.77.167.245])
	by smtp.gmail.com with ESMTPSA id e21sm2682347ejj.4.2021.09.12.20.00.23
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Sun, 12 Sep 2021 20:00:23 -0700 (PDT)
Date: Mon, 13 Sep 2021 06:00:22 +0300
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: best gui vm managers
Message-ID: <20210913030022.l32v5cn4duasbn3s@alex-pc>
References: <20210912.162536.058.3@[192.168.1.100]>
	<20210912172806.5dzxk7e3sj4u73it@alex-pc>
	<20210912.173240.464.4@[192.168.1.100]>
MIME-Version: 1.0
In-Reply-To: <20210912.173240.464.4@[192.168.1.100]>
User-Agent: NeoMutt/20210205
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sun, Sep 12, 2021 at 12:32:40PM -0500, Linux for blind general discussion wrote:
> Linux for blind general discussion <blinux-list@redhat.com> wrote:
> > I am using qemu with libvert and vert manager. it's the best option IMO.
>
>
> Does any special configuration need to be done so libvirt and qemu talk to each other?

yes. I recommend reading qemu[1] and libvirt[2] pages on archwiki.

[1]: https://wiki.archlinux.org/title/QEMU
[2]: https://wiki.archlinux.org/title/Libvirt

--
Sincerely, Alexander

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

