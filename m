Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 3265124C387
	for <lists+blinux-list@lfdr.de>; Thu, 20 Aug 2020 18:46:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1597941981;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=L9iXnrcq9tNpHRbwis5lKDnD56he38DaOqNILZMGqyI=;
	b=YFW06bbSGpTL0YNjrIR2O3pK6RJ45gzL/YoDx0YVnwtJevzb8BDN1l1O5p/uTlyCGGU7W3
	PnQuSzTowMJeLMvrVAJTMscMNT7D049bi76ldqDSPm9gIb7BNJWzhHVmhfxuXSQBoKU6VF
	vZ7H4TtDx/Scn1PJeQ0bV0JjlQ145wc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-511-y_BM9klJMmWWngt0BCy9eg-1; Thu, 20 Aug 2020 12:46:18 -0400
X-MC-Unique: y_BM9klJMmWWngt0BCy9eg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 65DA31084C8F;
	Thu, 20 Aug 2020 16:46:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B92C219C66;
	Thu, 20 Aug 2020 16:46:13 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1CCB0662B0;
	Thu, 20 Aug 2020 16:46:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07KGk7kl024118 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 20 Aug 2020 12:46:07 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 58001EAF8C; Thu, 20 Aug 2020 16:46:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 53EF2F1C66
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 16:46:04 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6D2C08EB54F
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 16:46:04 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
	[209.85.221.41]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-130-y5F57yzkMa6KWL7I5e6X0A-1; Thu, 20 Aug 2020 12:46:01 -0400
X-MC-Unique: y5F57yzkMa6KWL7I5e6X0A-1
Received: by mail-wr1-f41.google.com with SMTP id 88so2676480wrh.3
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 09:46:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=ZlkoVWbJwnGCpZMGzEnavP/pq+QXHzCj+y/1dSLbPzU=;
	b=TRcnYcBj9DFYPwFM5J6eG5Fm3wKmWXTWPz5rh6clbbCX6ULo0A/+2yPNey9YtECkWz
	Tij+/H/4fWB0ywpWaVQZj71GCznFbLdF3sYHa6OvGgWSKJmbICGH6GjDV9YQZL7Kt/ml
	qawvNmQDV8uNzI8n6RFnd9uNdlFylDk0o9uq5igNRHMnNpolc3krF+99wElDdv1IPm9u
	EY1J5KTR3BgBncW8wu0qGJxGxLjHUjW16TwCRKIe88JOtGrCMCjDqS2BqAFLUzTJFvw2
	/w1n2kbtTf5Gd3n1FKAqMjQn4lEWatGkBUF/dqmljYRhAhA96k9s6Xu9OImoq19CQbZp
	iB5A==
X-Gm-Message-State: AOAM533SQOKhSz9Jn5PQ8RP1TchOVVlrsUYrRUlCl8uAto3iVoP5AhGj
	5WvQqwVDuP264o+BGE0tGlmPlQV8Mj6i7w==
X-Google-Smtp-Source: ABdhPJzYdSCeQ6fB9vTXN7QF1z8Dwej3kDsA5BCcQFq4uaKxb3Niy9VuMPs1IBa5HZXJH2nRYZqwpA==
X-Received: by 2002:adf:dcc8:: with SMTP id x8mr4297615wrm.16.1597941960101;
	Thu, 20 Aug 2020 09:46:00 -0700 (PDT)
Received: from ?IPv6:2606:a000:111a:8d0a::433?
	(2606-a000-111a-8d0a-0000-0000-0000-0433.inf6.spectrum.com.
	[2606:a000:111a:8d0a::433]) by smtp.gmail.com with ESMTPSA id
	z207sm5340273wmc.2.2020.08.20.09.45.59 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 20 Aug 2020 09:45:59 -0700 (PDT)
Subject: Re: Accessible Distros for a beginner?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <MFBaDor--3-2@tutanota.com>
Message-ID: <41f987ff-7eb9-fbb1-11c0-2569820c6663@gmail.com>
Date: Thu, 20 Aug 2020 12:45:56 -0400
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:68.0) Gecko/20100101
	Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <MFBaDor--3-2@tutanota.com>
Content-Language: en-US
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

Personally I would recommend purchasing a Raspberry Pi 4 with 8GB of RAM 
and putting Stormux on it.

https://stormux.org/

Because the MicroSD you write to is actually your running and fully 
functional operating system, you write once from the laptop you are 
already using and just start using it. Your total cost, with 256GB of 
storage, is currently under $150, although you will need additional 
things like a keyboard, headphones/speakers, etc. You should be able to 
connect this computer to pretty much any TV right out of the box and get 
sound as well as visual output should you need it, but headphones or 
speakers are recommended for blind users who don't need a screen. Note 
that this is a very inexpensive computer that can best be described as a 
microdesktop rather than a laptop, but it is very inexpensive and very 
small, and is also rather portable. I am currently investigating the 
feasibility of making a laptop using the Raspberry Pi 4 at its base.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

