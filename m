Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id AB1203EDC60
	for <lists+blinux-list@lfdr.de>; Mon, 16 Aug 2021 19:26:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1629134780;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=hz7S3IYuYpnPBtlHypB6/X7gLFPhtbXVBMw2Wz+XqkY=;
	b=X+K4bZ0uinpCBisgZ0mauUEUlVxJSlK3ZkxNVuHPeYVbkw8DUvWf7K3SwCj/zusB7aM8Pl
	JfrzSiAg9rsYz27WsIyELjfGa+UrNW8im7CGMKRE5QhiaOU7bEra99vMkXpqDv5SWOT7QR
	PQjmULj8rN0Q7W9WoTPW55/5pz8qaGw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-196-qSLnI-n8NAuKqvxmUjChWA-1; Mon, 16 Aug 2021 13:26:19 -0400
X-MC-Unique: qSLnI-n8NAuKqvxmUjChWA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 465F3801AC0;
	Mon, 16 Aug 2021 17:26:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 879CD2AB38;
	Mon, 16 Aug 2021 17:26:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0CD904BB7B;
	Mon, 16 Aug 2021 17:26:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17GHQ1Zo001227 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 16 Aug 2021 13:26:01 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 7E04A202F338; Mon, 16 Aug 2021 17:26:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 78255202F33D
	for <blinux-list@redhat.com>; Mon, 16 Aug 2021 17:25:53 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4C48E101A529
	for <blinux-list@redhat.com>; Mon, 16 Aug 2021 17:25:53 +0000 (UTC)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com
	[209.85.167.53]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-117-7LCRhsB7PNeEac1A8IChHw-1; Mon, 16 Aug 2021 13:25:51 -0400
X-MC-Unique: 7LCRhsB7PNeEac1A8IChHw-1
Received: by mail-lf1-f53.google.com with SMTP id t9so35985621lfc.6
	for <blinux-list@redhat.com>; Mon, 16 Aug 2021 10:25:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=JdFuR5jOpgjAi2b4wexdBlRNwLYaQdu4QQ1yDC9cIbc=;
	b=YkrQeczpJagKRo4gH3szvnRLoYtdUiZuLU5Omi5e+PJ4HiS/5Sj03AlGwI4qJnH2U5
	GROEg5BQN24r+ZtxwmmKRYooAjCTGyluXSX3ITYSOsc83Q+XQxrGDxc6QiHUK4zoPzrv
	Ktiuo1dVs6+hCQ2g/yvWj8g4eH5S9D3B2EYOBDIYL6y9PwyT/GV1HTlhpzWNkeIMsU7P
	/TB33TWyRTAs2m80FEVZcBPDWBavt4y1Vu7NAckvhmt5TYV/+rVLSwzoiTkkQLvrsQTM
	ZTmxS9HcvY+1Rjss5JiTqhgoVCwMOXGMAqrhBRC8YSHYnT92Hy/vxVKzv/rkwxlW168V
	eYfQ==
X-Gm-Message-State: AOAM533/hfinJAYX2uwm6od1jnhMXk7oMEOH0jQfY8u0Vu+9FFPGwH4e
	64dXC8eAcZi4mGxj2wHL9mDqMyEmnbk=
X-Google-Smtp-Source: ABdhPJyixpO9WLu7NmDI+iCFS/dUdVz7k8+2xPfRjtWtG5fd++YJV9OqtoA/eSsSorSQ55z8c0hJaQ==
X-Received: by 2002:a05:6512:118c:: with SMTP id
	g12mr12670167lfr.143.1629134749509; 
	Mon, 16 Aug 2021 10:25:49 -0700 (PDT)
Received: from localhost ([91.77.167.245])
	by smtp.gmail.com with ESMTPSA id q5sm998957lfb.78.2021.08.16.10.25.48
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Mon, 16 Aug 2021 10:25:49 -0700 (PDT)
Date: Mon, 16 Aug 2021 20:25:48 +0300
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Anyone else experiencing Firefox 91 crashes?
Message-ID: <20210816172548.7pw3tmt57aqoc2ng@alex-pc>
References: <17f6f79e-2927-3ad4-7915-42053461d773@protonmail.com>
MIME-Version: 1.0
In-Reply-To: <17f6f79e-2927-3ad4-7915-42053461d773@protonmail.com>
User-Agent: NeoMutt/20210205
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Aug 16, 2021 at 02:46:25PM +0000, Linux for blind general discussion wrote:
> Hello list,
>
> I don't remember when did I update my software the last time, but I have
> Firefox 91 64-bit installed and in the few recent days, it's crashing
> quite intensively.
>
>
> Like, I launch it, type something into the search field... Crash!
>
> I launch it again, type google url to the search field, enter my search
> term on the page and while typing... Crash!
>
> I want to install an addon and even if I somehow manage to enter my
> query and get the search results, when I actually click on one... Crash!
>
>
> It's really annoying, the browser is almost unusable. My cache and
> cookies are cleared automatically after every run, so this shouldn't be
> the source of the issues.
>
> I've tried the troubleshooting mode and it behaves in the same way, so
> extensions also don't seem to be guilty.
>
> I have even downloaded a portable version of the browser from the
> Mozilla website and it crashes as well.
>
>
> The only thing that comes on my mind that it's a bug in the browser, but
> I didn't find anything about it when searching.
>
>
> Does anyone have similar experiences?
>
>
> Firefox 91.0 64-bit, Ubuntu mate 20.04 64-bit.
>
>
> Best regards
>
>
> Rastislav

i faced this problem too. for now I have rolled back to ff 90.0.2
and try to use chrom whenever possible.
I think these crashes have something to do with the accessibility stack. otherwise they would have been noticed earlier.

--
Sincerely, Alexander

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

