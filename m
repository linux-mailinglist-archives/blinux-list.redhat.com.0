Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id A02E32E740C
	for <lists+blinux-list@lfdr.de>; Tue, 29 Dec 2020 21:56:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1609275367;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=591eLgFsY3kukHMOK9IFDUZlApSNUGJIyYoUFcWkhAw=;
	b=BpjEgOEaYLHGO6VVachs6SEr3/twSEAu+ibTzLov2O4cq0RDD5HzIy19t9VsIxOl2FvszJ
	t6KAx7lTxmINsSdj6OKh6t1IzIIRYfzVGrGH2WiSELup/0/07GA/q2zbiHo/rUikFIGp4d
	npoH+L2w1V0kVubfUZrMGHkZ2xOS5t8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-236-W53iX0DoNVKqMyMfQCLFvQ-1; Tue, 29 Dec 2020 15:56:05 -0500
X-MC-Unique: W53iX0DoNVKqMyMfQCLFvQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6EB3310054FF;
	Tue, 29 Dec 2020 20:56:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A85EB2C15B;
	Tue, 29 Dec 2020 20:55:57 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 23FDA180954D;
	Tue, 29 Dec 2020 20:55:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0BTKt2pw009759 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 29 Dec 2020 15:55:02 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 817952166B29; Tue, 29 Dec 2020 20:55:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7C0472166B28
	for <blinux-list@redhat.com>; Tue, 29 Dec 2020 20:55:00 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 07C1C80018D
	for <blinux-list@redhat.com>; Tue, 29 Dec 2020 20:55:00 +0000 (UTC)
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com
	[209.85.219.53]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-229-I958xEvROYCIGBeE3iyAHQ-1; Tue, 29 Dec 2020 15:54:57 -0500
X-MC-Unique: I958xEvROYCIGBeE3iyAHQ-1
Received: by mail-qv1-f53.google.com with SMTP id l7so6905898qvt.4
	for <blinux-list@redhat.com>; Tue, 29 Dec 2020 12:54:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=JCzrnhCi5P89qA2H5ZvV/FSXm5WobykM7SdgMHZzfZ0=;
	b=DjWEaxe11ELmqqzBTJcRfyqs5lhbXOTihiffhXqmgOON3C99vCYvzS6bY+l6nOyiaL
	5pymdxYCl41ozzDD5B2YR2VYA1z2Z8UuandN3j+K63CoiIotFOy0164Wu9QRzi3UlbqC
	lNs+WUeywo+ZCmTk8wlV47//iG2GvEL6R1zwxs49q6n7LRJxwF77/M+uQfUrurXCalHY
	PZqSbUjvdrxAMXYVTvFAJb7zuvZLnApft0xflbULHV9hQIx+pWN5aOD99aZNXYW0NQks
	Tgu210YS1GIHK/g0vvZ6WJmmr/VEFyAXoSFvB9bBDmjfALwTjK4vp9W8xH0UDSAihfh1
	jlAQ==
X-Gm-Message-State: AOAM532u9yW6nfBgYMtTfekwKsI39zkXcwXxmOgelRPZixWqdklrRb5T
	m7RNeTELoeGNcbsnutAen4Qpiv3JjoK6bg==
X-Google-Smtp-Source: ABdhPJwQRIPVmwPDvsCOqSaAVNtPYXZrwSQn8XOiCyK6KN1ERwCfXkJwn1//YlQcmYslOIh6prCr8g==
X-Received: by 2002:a0c:f1ce:: with SMTP id u14mr53074678qvl.24.1609275296984; 
	Tue, 29 Dec 2020 12:54:56 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::433?
	(2603-6080-6304-450a-0000-0000-0000-0433.res6.spectrum.com.
	[2603:6080:6304:450a::433]) by smtp.gmail.com with ESMTPSA id
	z20sm26126570qto.40.2020.12.29.12.54.55 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 29 Dec 2020 12:54:56 -0800 (PST)
Subject: Re: No Monitor Environment
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <02c701d6da1f$fdf1c550$f9d54ff0$@kellford.com>
	<alpine.NEB.2.23.451.2012241448310.21263@panix1.panix.com>
	<9c34ebe2-14fa-d2b1-360b-e5a8e1205347@kellford.com>
Message-ID: <a35cd07a-9e1f-97bf-c7a7-d8f06c9a778f@gmail.com>
Date: Tue, 29 Dec 2020 15:54:52 -0500
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
	Firefox/60.0 SeaMonkey/2.53.5
MIME-Version: 1.0
In-Reply-To: <9c34ebe2-14fa-d2b1-360b-e5a8e1205347@kellford.com>
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
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Best I've been able to find is a monitor dummy plug. I can't seem to find a 
single plug for some reason, but I did find a pack of 3 for $11. Amazon sells 
such plugs, but I'm sure they can be found elsewhere as well. Best may be to 
look in your favorite computer/tech site for
monitor dummy plug
They say they do exactly what you need, making a monitor appear on the system 
where one is not normally connected. Hope it helps.
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

