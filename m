Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 626C23ADB28
	for <lists+blinux-list@lfdr.de>; Sat, 19 Jun 2021 19:41:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1624124513;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fo3qjeumiSAwuvFNg3J+DLB6se6m1ZYV+dJMl1FdpY4=;
	b=CcgYgLeMYoOCnfwBPMvrM40fvBPGC9Tl7OA54vGw9kYzAQkEo6NM8nUZvCkt/xGysIzjkM
	NtVzgutCo6YP/k4/X29oG5qYveviS82e+bVsZ7vAFxOVzkFGoKWnBAO4G8qJEbatLpBjjq
	xzb3zqXYZtGwny3DfzpQpzcDgVIq8UI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-464-nHaTM7TEP4iDWI1NjsaMqw-1; Sat, 19 Jun 2021 13:41:51 -0400
X-MC-Unique: nHaTM7TEP4iDWI1NjsaMqw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 55EAE8030D6;
	Sat, 19 Jun 2021 17:41:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D9E9119C45;
	Sat, 19 Jun 2021 17:41:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 453901809C99;
	Sat, 19 Jun 2021 17:41:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 15JHfd0X019972 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 19 Jun 2021 13:41:39 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 7ECD5568C6; Sat, 19 Jun 2021 17:41:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 773A4568C0
	for <blinux-list@redhat.com>; Sat, 19 Jun 2021 17:41:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 32B89185A79C
	for <blinux-list@redhat.com>; Sat, 19 Jun 2021 17:41:36 +0000 (UTC)
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
	[209.85.160.169]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-210--JQyGG91PJeEGa68box77Q-1; Sat, 19 Jun 2021 13:41:34 -0400
X-MC-Unique: -JQyGG91PJeEGa68box77Q-1
Received: by mail-qt1-f169.google.com with SMTP id t9so10097851qtw.7
	for <blinux-list@redhat.com>; Sat, 19 Jun 2021 10:41:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=HWnWx5BPpIROmJcm92gtTqyKBXmHpam17d6R/mcjIBE=;
	b=qnzmigKHKm09j2i9uq5zICY48aE4F6dEgohukrnWVyMC+in9iCFT2cZL3/2PDe7X+w
	0h56NRX/Xr0tGH7/paTWIRCdzyqyLQP2YDotbUjkva67cYl+l3dmUrpH7mpKZOLTNAyI
	5v7igScZKgDk4BPQ0FIUv1ppENuT8JkSrMZZki7KwLYU9p1z8Fkv8fwk77tpzvHtd9Rc
	HttR5cqy6L+kHiD+jCgVi87BVg02Lb2wA+JTCQDyt82BpIQX2/lf4DTMUDZ+CZvQTIbA
	QQ54snsxWjMxhqB20I0NDCvpH7CMKaufD8ts7n2nsWEuCbD/hIH5Cl43Qn8hX9fBlQKv
	z5Sw==
X-Gm-Message-State: AOAM532bC+mVJvdtL8p11Z6I4QhX6wMyB/9rUdlvGcVPrG6MJBC39pD8
	VFr0Fy0lSSGX2ZPIbCRbOGL/feLqInv95vwKfBQRU5jxyMU=
X-Google-Smtp-Source: ABdhPJz1CPi4Tr49OxOlnZ+uzdVfir27iUW0cuYoUFFanlLzgJJneDXl3VgPYGW5ctSH/QMQF3dakGJZS8p/dX0FZlQ=
X-Received: by 2002:a05:622a:178c:: with SMTP id
	s12mr2834955qtk.6.1624124493313; 
	Sat, 19 Jun 2021 10:41:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:fd8c:0:0:0:0:0 with HTTP; Sat, 19 Jun 2021 10:41:32
	-0700 (PDT)
In-Reply-To: <alpine.NEB.2.23.451.2106191320550.21342@panix1.panix.com>
References: <CAO2QrD4sNDb913pvuHF1UXQmkTa96kwfyPYz+tbW8OAgSahBTw@mail.gmail.com>
	<CAO2sX32GdWh4kcy1eA=g+s287oYsZm2ZE+gsg0UOMLVO0-6XAQ@mail.gmail.com>
	<alpine.NEB.2.23.451.2106191320550.21342@panix1.panix.com>
Date: Sat, 19 Jun 2021 17:41:32 +0000
Message-ID: <CAO2sX31MW+14At-s9oXoDpdi7YHLH+Gj=LQtug_EcpAjcTVzgw@mail.gmail.com>
Subject: Re: Accessible linux distro for raspberry pi?
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Ah, I wasn't aware Jenux could be used on anything other than x86 machines.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

