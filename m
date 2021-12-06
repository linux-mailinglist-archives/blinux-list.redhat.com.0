Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D7946914F
	for <lists+blinux-list@lfdr.de>; Mon,  6 Dec 2021 09:14:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638778495;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=D9GiULT81p36hshygrYxpf8gBrpaYhNQFZ9ymMEj+mc=;
	b=TeGIWPtLDiuXz3Rx7Nn3Kcv0fPYbch9bTwyj8Elw0Qy7fkNZpOWs+4nuU9tA/6RLJ+86q1
	qkxYVUMC22yxfDjaePLc1RfeTEkzEYFgMQz6WIyjvWuNvn8nBXRUDU/ZkZcH8aZyGNwY9u
	LrYrNw4GQwGcF4+Hoqe6qBHpS3GBrUM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-363-FrvUQKnBNMyqoq65tWNWqQ-1; Mon, 06 Dec 2021 03:14:52 -0500
X-MC-Unique: FrvUQKnBNMyqoq65tWNWqQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1349418C8C0E;
	Mon,  6 Dec 2021 08:14:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7E87560C13;
	Mon,  6 Dec 2021 08:14:47 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E01701809CB8;
	Mon,  6 Dec 2021 08:14:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B68EdvJ010147 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 6 Dec 2021 03:14:39 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 2E2F92166B44; Mon,  6 Dec 2021 08:14:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 27A2F2166B2D
	for <blinux-list@redhat.com>; Mon,  6 Dec 2021 08:14:31 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 00C7329DD982
	for <blinux-list@redhat.com>; Mon,  6 Dec 2021 08:14:31 +0000 (UTC)
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com
	[209.85.222.49]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-355-jPOxlR4vM4eYkL09bkfqEg-1; Mon, 06 Dec 2021 03:14:27 -0500
X-MC-Unique: jPOxlR4vM4eYkL09bkfqEg-1
Received: by mail-ua1-f49.google.com with SMTP id ay21so17869608uab.12
	for <blinux-list@redhat.com>; Mon, 06 Dec 2021 00:14:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=PTL9SSYB4Mf1Jl2ds08vuPw0t5y219vs3ZDhWlThaQ0=;
	b=QU8sbSutLI6WNmDb1RAcFPS9qTXUmoYpV21FYvMJtNXWHdUW8/5u90ol4mVjjfeLTe
	xiq4mmNe4FNKHzAQxdKjIY8F1TAAHvwdvlrswlr3TV1Mk++w94Jw8dDvK9m/+UNA/1qG
	aHgrq/IjlttRRX/wlhl+yPtqmkRGHpWO/MIQKG2v8Wi1j+JFeY06JEgY0s8+4GuleLVZ
	jb8JxDi9gMCn2xLPCdbkqYo/k7HicvbiXrR8eaPy3T6YmMSn4FGRVmh9WM17dp/5oGXv
	6xZYFmtkf02Q2mYBPs8iLN4dwi6B9jRuYYWZdyBD7vC+SWpt02oY8TMkE9t9EbbhwAIq
	1/GQ==
X-Gm-Message-State: AOAM532wemnNUVGeTlGrbZjSr/XfiIUnYWr6ZkWYZfW+IGppXMaEv89n
	5C7wPNGLyd/MgjdlRagJjxPOoyRjMcL9iB23w3aDqD6hO5E=
X-Google-Smtp-Source: ABdhPJxecLY2hV2MRgNN97dXmo2d59QJBHnfx/WF85nvhDbc+UpuAb9y4K3B6Vhk2Glx9ypnnrwLU4PJNKgA3nX/rNg=
X-Received: by 2002:a05:6102:7b3:: with SMTP id
	x19mr34684435vsg.24.1638778466973; 
	Mon, 06 Dec 2021 00:14:26 -0800 (PST)
MIME-Version: 1.0
References: <0818b814-95e3-f334-fb62-5a89bc96124e@gmail.com>
	<d6a364d7-7484-4b48-3700-1ba8f938d271@gmail.com>
	<00e07fa6-109f-b5c9-5680-ed8a56e959a9@slint.fr>
	<2b86a2b5-6e3d-08f6-6516-3a62a894ab62@gmail.com>
	<9468598d-1cb6-1c1f-4ddb-b1dbfeaf9740@gmail.com>
	<02e2f29d-b065-6591-d8ec-07d9b4a26e75@gmail.com>
	<b12ef7c4-e8f6-688c-706f-e97aef903c4a@gmail.com>
	<47dbd804-240f-b170-7f2c-6c96d189762c@gmail.com>
	<alpine.NEB.2.23.451.2112051228080.13531@panix1.panix.com>
	<88b763bc-c035-735f-0efe-dea5f26182d6@gmail.com>
	<459ce7d5-11e4-8707-77f8-0a4c46bb8899@gmail.com>
	<9098b35b-4f3d-0455-2a46-472e3d924cab@gmail.com>
In-Reply-To: <9098b35b-4f3d-0455-2a46-472e3d924cab@gmail.com>
Date: Mon, 6 Dec 2021 10:14:15 +0200
Message-ID: <CAPo=n--jv0xUAfGGYb3y16Rc4JkZphD7ySapij_dBZgWnY=ywQ@mail.gmail.com>
Subject: Re: Suggestions for Ratpoison-friendly apps?
To: Linux for blind general discussion <blinux-list@redhat.com>
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
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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

>From a quick look it appears Midori is implemented using Webkit GTK. Orca
has support for Webkit GTK, but it is not on par with the support for
Firefox and Chromium. Notably browse/focus mode functionallity isn't
available. I believe there are things that need to be addressed from Webkit
GTK's side to get the new browsing functionallity working, but I might be
wrong.

Regards,

Rynhardt

On Mon, 06 Dec 2021, 07:02 Linux for blind general discussion, <
blinux-list@redhat.com> wrote:

> Here it just ... kinda ... works. It's not that great, but it is
> working. You will need to press f7 to enable the browsing cursor, but
> that should be all you need to do.
>
> ~Kyle
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

