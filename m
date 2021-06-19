Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 20EED3ADB71
	for <lists+blinux-list@lfdr.de>; Sat, 19 Jun 2021 21:03:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1624129408;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ZJjzD0Qj+JxfLWbKRENV55d/01AE7TRKopuPyjgqsdg=;
	b=aY7Z0Z/jPOLu3c4Ebo8xJGTvtn9wwSnYsXkg3m7oIdUTfPLGhuDocvCmUrqNo/08IMZVBj
	8Ba3kYNctTKVA91lzzTxwjwM/5eTVJ/86sA+TrUpSD/qMEhleKqzkFzBnIswSEW9D8yvVq
	FVyAWlJ0ib7mUCMl+ZRC+QA7fpOeYFU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-117-cL_1CcuZN7yZbMQ3bvfQ2A-1; Sat, 19 Jun 2021 15:03:26 -0400
X-MC-Unique: cL_1CcuZN7yZbMQ3bvfQ2A-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5A10A100B3B9;
	Sat, 19 Jun 2021 19:03:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 413DA5DEFB;
	Sat, 19 Jun 2021 19:03:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 14F334EA2A;
	Sat, 19 Jun 2021 19:03:22 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 15JJ3Imc026285 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 19 Jun 2021 15:03:18 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B5241111143A; Sat, 19 Jun 2021 19:03:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B0B2D1111438
	for <blinux-list@redhat.com>; Sat, 19 Jun 2021 19:03:16 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 72844801E6D
	for <blinux-list@redhat.com>; Sat, 19 Jun 2021 19:03:16 +0000 (UTC)
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com
	[209.85.160.175]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-227-6sGm4vslOHeKXqeZKgWtmA-1; Sat, 19 Jun 2021 15:03:14 -0400
X-MC-Unique: 6sGm4vslOHeKXqeZKgWtmA-1
Received: by mail-qt1-f175.google.com with SMTP id r7so10183270qta.12
	for <blinux-list@redhat.com>; Sat, 19 Jun 2021 12:03:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=6OuiqMxyct9JLEU1Mprl+VSsrU5jHJdCI7tWbvTamM8=;
	b=VILKgvJDLhRTpif+lvxICg6SHROSSV0/zHBWTLLgvd8UPWcs153c15NeaSEO/+m8fW
	Je4D4X7Al361jVpTifplZs9iXqXVbRbqCeoQigj7aE9RyWMqckl+wQijZ4wBw72pYi/z
	VYgv2S8OA7h7TxPxdHVkwxLWylPS4u320duBNihL7q9M0JfgZJvzvjBvlFACK3/7cgxj
	CrTQoaWRIfsSdNkTIh9XM1Qn7IrsF+PIPNHl0VW+DOCzDttNKM51zmwfHknrrIGxVZm0
	8hjp1qQy+hOW/ZJjGZmTvggs8O2zOqyp+wk5bSVu7qIYHUkYJceZ2rXoQMNTxGkTuXOJ
	W6rA==
X-Gm-Message-State: AOAM530TuwhoXUJYFgBj8rFMdMp3cctYz0oamxQsFZWH5TXNlgKUYIsI
	6+R0sGGXHuYKlvnYWQjtv0G+I2jU2IJo2Pvla8t6dKCxAJY=
X-Google-Smtp-Source: ABdhPJxEYV7BoLxid9cKLrAMun0BQ+/d5cwlsyYTh+Z8aXkO6GEdyuCjeGMwixOsKM9rVM9ZWrMMvoey4n8dm5+V5SY=
X-Received: by 2002:ac8:5b0e:: with SMTP id m14mr16081538qtw.357.1624129393704;
	Sat, 19 Jun 2021 12:03:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:fd8c:0:0:0:0:0 with HTTP; Sat, 19 Jun 2021 12:03:13
	-0700 (PDT)
In-Reply-To: <220000834.4.1624128838799@localhost>
References: <220000834.4.1624128838799@localhost>
Date: Sat, 19 Jun 2021 19:03:13 +0000
Message-ID: <CAO2sX31EVN-HUgAN2R1ac_Ms5HdcnwXhTCW1JjH6-9GdXGKd1w@mail.gmail.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Raspbian is ultimately just Debian with a few tweaks the Raspberry Pi
foundation made, but is there a way to put a completely vanilla Debian
on a Pi?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

