Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id CA23124DA25
	for <lists+blinux-list@lfdr.de>; Fri, 21 Aug 2020 18:18:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1598026733;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=IRqMUFc+lcux6JZZ3HcQbL0nm+x1/EaoCr75tAWyEdU=;
	b=JhJE2Er0UuIYbLcktAhiOVQ5yFPCDBwuiLeZG7KpZz4TuU9wIMZz4TA/qIXZGaQ6fbvpp/
	TkpwJiQwtt62EeD+MvktvNr8wrqVcXryfoXVelBUmeq88W/TSIHuaRvA+wSqUxy9AkWRtT
	L4dJkDxvVprX7JLPt7M+2n8uaEJ+kUk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-543-rz25nO3pMl6-LHDHxmcnwQ-1; Fri, 21 Aug 2020 12:18:28 -0400
X-MC-Unique: rz25nO3pMl6-LHDHxmcnwQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7AC46107465B;
	Fri, 21 Aug 2020 16:18:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 36314756C0;
	Fri, 21 Aug 2020 16:18:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A2C41181A06B;
	Fri, 21 Aug 2020 16:18:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07LGI4gc020028 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 21 Aug 2020 12:18:04 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0CBA9F5692; Fri, 21 Aug 2020 16:18:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0897FAE7CE
	for <blinux-list@redhat.com>; Fri, 21 Aug 2020 16:18:01 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D67C5901844
	for <blinux-list@redhat.com>; Fri, 21 Aug 2020 16:18:01 +0000 (UTC)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com
	[209.85.222.176]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-50-_dJojH1LMfCyTdseFFVmlA-1; Fri, 21 Aug 2020 12:17:58 -0400
X-MC-Unique: _dJojH1LMfCyTdseFFVmlA-1
Received: by mail-qk1-f176.google.com with SMTP id n129so1840678qkd.6
	for <blinux-list@redhat.com>; Fri, 21 Aug 2020 09:17:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=uAPmwime+9U2w0rqbJfftK3IDYUeXaNvQasqDwtBeYQ=;
	b=hV/HjElctfsruY1mF5/TPCLQyfm5n7MP1Nbcf5RHmsDGlQm/v8GR5T5Kj2TpM3g7PX
	Q0f7D//y7Ud1BzW8tzOfVbfJ8HDginE1gVP1C6VydWXIL+k32Qtrl9CyCjOPpedmYSRi
	4x6AFnCtesnn0LKj4eO01vr5pyfR1IEcX3GAeIdP7jJM+AHRogROZp+vrtQ9YzYQJbWi
	+T/whKlEjxuUF0xuEfT6ArPSVMlQsgTL3b8+Xd4BwUPvOlGJrW3CJLOq/bcKM1qoFPal
	mZfhuh47zPkYA36GSKz6hie3uejbIqwFQvhl4g/KdaQAmb/svN3IegfL9ZA6hdBg+mlH
	OMMg==
X-Gm-Message-State: AOAM5334zgZPCC4Z8g6vdiVaqAkZWtWAdMjSJf48h5OQ7ChLhmRQflo7
	Ams8aq/fEn8wM0CxhYdLWqN52/DvYc3WECqehHoKW9cneGw=
X-Google-Smtp-Source: ABdhPJy4FuKiaUuuAPvJfrgUbsyM6uNBsRhBi1//rLbUxG5vsij5/A+6l/RZ1TunbfLFdAoOzcTnF444pWZRWoEe8aY=
X-Received: by 2002:ae9:e00b:: with SMTP id m11mr3517215qkk.341.1598026678191; 
	Fri, 21 Aug 2020 09:17:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:e807:0:0:0:0:0 with HTTP; Fri, 21 Aug 2020 09:17:57
	-0700 (PDT)
In-Reply-To: <alpine.NEB.2.23.451.2008211141270.8148@panix1.panix.com>
References: <MFBaDor--3-2@tutanota.com>
	<CAO2sX31nhBAtXumURx=+8qkJ1muWGyzauovLL-dK_wTMxfKPeQ@mail.gmail.com>
	<d875a786-aee9-42ba-204b-72f0b32da766@gmail.com>
	<CAO2sX31A-wt01cVGW=ALD5VYmcDbf6y0-rMgbSVw58n5P52UEg@mail.gmail.com>
	<b423735b-8ae9-12a1-e6b6-45a8a234bfaf@gmail.com>
	<alpine.DEB.2.23.453.2008201331030.998121@chime>
	<e1a425ec-6214-7f61-89cf-cf4d4fb0f511@slint.fr>
	<alpine.DEB.2.23.453.2008201440380.1109151@chime>
	<03d49f1b-c058-eac9-f0d4-93719f59e6ee@gmail.com>
	<e73a7097-f12d-a4cd-21ef-101f35439a2d@slint.fr>
	<CAO2sX33Q8kPKn6qAaQtF+Z9jYGdxiEUJXQFnc3bKQDfDnrWYOw@mail.gmail.com>
	<99a3d6ab-1abf-cf35-42ab-84b9fba7f4c2@gmail.com>
	<alpine.NEB.2.23.451.2008210753520.27701@panix1.panix.com>
	<4F89BBB0-1421-4170-8530-C321A454A097@schoeppi.net>
	<20200821.140441.108.39@192.168.1.130>
	<alpine.NEB.2.23.451.2008211141270.8148@panix1.panix.com>
Date: Fri, 21 Aug 2020 16:17:57 +0000
Message-ID: <CAO2sX33OVxtLrSrxpfTT5JGks9KVBcfX6zc130VhHmVqM3evSg@mail.gmail.com>
Subject: Re: Accessible Distros for a beginner?
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Ah, I keep forgetting Backports are a thing in Debian, probably due to
the fact I've never used them and spend most of my time sourcing
everything from Testing directly.

Also, I thought security updates were the one thing Debian Stable
actually kept up with... or are some of the base versions of some
packages so out of date by the time Debian Stable reaches late life
that only newer versions are getting security updates?

-Jeffery

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

