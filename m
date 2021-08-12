Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id B4B0C3EA638
	for <lists+blinux-list@lfdr.de>; Thu, 12 Aug 2021 16:08:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628777331;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=yu4bJ5NERGIO3J2kOBzThLqEnSHEHaLrvBwxHbXjaW0=;
	b=Q5cticqlJUfZoifLwehs4OZIn/2lCq/IGS8o9U5kA7mzTqHu3yhiF0SN/2j5hNxGZtBIDl
	VDK2lxMRlpIcFUsqX9w8GivapoY0W05Lk1hFp6MNjdLFe1lqKOUiHMswZahA50ATCw55Ti
	PBBk1xzyespczMAB3beE70TI1hxyr8A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-418-pico7-snO86vYXrEYQPihQ-1; Thu, 12 Aug 2021 10:08:49 -0400
X-MC-Unique: pico7-snO86vYXrEYQPihQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1D4188799E0;
	Thu, 12 Aug 2021 14:08:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5641460BF4;
	Thu, 12 Aug 2021 14:08:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 54FF3181A0F0;
	Thu, 12 Aug 2021 14:08:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17CE7m5g003876 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 12 Aug 2021 10:07:48 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5075C119016; Thu, 12 Aug 2021 14:07:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 48DF9119022
	for <blinux-list@redhat.com>; Thu, 12 Aug 2021 14:07:45 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6D63F185A7A4
	for <blinux-list@redhat.com>; Thu, 12 Aug 2021 14:07:45 +0000 (UTC)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com
	[209.85.167.50]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-285-MvMXedAMOhCIq9YuDAV27A-1; Thu, 12 Aug 2021 10:07:43 -0400
X-MC-Unique: MvMXedAMOhCIq9YuDAV27A-1
Received: by mail-lf1-f50.google.com with SMTP id t9so13708843lfc.6
	for <blinux-list@redhat.com>; Thu, 12 Aug 2021 07:07:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=msJA3MvuJWw4QfyyYkRaZsWh+C05WlyFy9tBzw/lAUM=;
	b=MY1b+cMrxcfLKK6D2vFAMhbXafK7eeRDrHZzjj8BoxjQ72QSTT1+fJ+EPUfztMW8cT
	BVgjI6ZWnhhNjGXcpK2l64vEIb0OqYB3x247rew2GIt5jItWjBVT6f5Y/mM4lFzFqnni
	ppcXXB89PlC5LKCuNGZU/D8mjkrcwSraEbAInHuszNGMlTzQs6KaK81Se1oEfSxmeFMA
	07R43GmaIm1C+OVeAgM+m4bYWCsM92xbtQl23Q9OTNxUgjt4rm1/ti0SzEKvnJYUprqD
	xGOCF/h8uLJ0E6cRYE2fnzFl2S4YQn9VKJPscjN0yTNvbAAjOdOv4jWR0zgjrgGUJHkm
	1iPQ==
X-Gm-Message-State: AOAM530Qq+f00DKMfpHj/mFXJlS9cyqda5zBF4z9OfsX9UtOkQfOW8Hu
	PYOE0qnyuLLTB1aoTOh/A2OT83LYIss=
X-Google-Smtp-Source: ABdhPJyJPbF2ELk+ul8bV3byj4Dak1S02VSRUzR+8RrubM/yxf+Lvo5W9D/OtEL4hQKtjuZtNPTLQw==
X-Received: by 2002:a05:6512:398e:: with SMTP id
	j14mr2641864lfu.573.1628777261652; 
	Thu, 12 Aug 2021 07:07:41 -0700 (PDT)
Received: from localhost ([91.77.167.245])
	by smtp.gmail.com with ESMTPSA id n8sm275011lfl.103.2021.08.12.07.07.41
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 12 Aug 2021 07:07:41 -0700 (PDT)
Date: Thu, 12 Aug 2021 17:07:40 +0300
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Installing using a service like "Be My Eyes"
Message-ID: <20210812140740.qlkk7wajgogjktq6@alex-pc>
References: <f350ad42-2eff-9ca8-429d-59c13e839627@gmail.com>
MIME-Version: 1.0
In-Reply-To: <f350ad42-2eff-9ca8-429d-59c13e839627@gmail.com>
User-Agent: NeoMutt/20210205
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
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Aug 12, 2021 at 03:42:25PM +0200, Linux for blind general discussion wrote:
> Hi all,
>
hello Brandt.
>
> I would really like to run either Arch, which I always fail to install
> correctly for some or other reason, or an Arch derivative, but, Calamaris,
> enough said.
>
did you try new arch installer[1]?
I'll be happy to help you install arch. but for this I need to know what
exactly you are failing to do.

[1]: https://archlinux.org/news/installation-medium-with-installer/

> --
> Warm regards,
>
> Brandt Steenkamp
>
> Sent from my steam powered Slint vacuum cleaner

--
Sincerely, Alexander

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

