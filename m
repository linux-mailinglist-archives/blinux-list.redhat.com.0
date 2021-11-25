Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C39FC45D220
	for <lists+blinux-list@lfdr.de>; Thu, 25 Nov 2021 01:32:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637800370;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7bKgZOt7UWYEhGa+UF+2ob5ETIbZhMSpKYxb9SPHTZc=;
	b=b8e4ea5ep7Oqb89XSYdKR/qr8ji0uNA6RHO7BMNGgJhcSblFImKbSTtWy1Ds7h68Z5HTZW
	lmXBaUQe+daOiWvOvSWiPEYDWALRP16BKR+HN2gHMuWgGNyaEy5R+ItYjp8j0T7Yt+6plW
	Dan8G2oO6HhPjVpDrSdcLAQcIRA2JlY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-71-A59TAYRyNUWrUxyglI5lKw-1; Wed, 24 Nov 2021 19:32:49 -0500
X-MC-Unique: A59TAYRyNUWrUxyglI5lKw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4E2D5801AAE;
	Thu, 25 Nov 2021 00:32:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9DA9C18171;
	Thu, 25 Nov 2021 00:32:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 39B364BB7C;
	Thu, 25 Nov 2021 00:32:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AP0WaAM003002 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Nov 2021 19:32:36 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E1E651121314; Thu, 25 Nov 2021 00:32:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DCB431121318
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 00:32:28 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E46D8100DE70
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 00:32:27 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
	[209.85.221.46]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-303-mggWySr5OIKipckHNsP1kw-1; Wed, 24 Nov 2021 19:32:26 -0500
X-MC-Unique: mggWySr5OIKipckHNsP1kw-1
Received: by mail-wr1-f46.google.com with SMTP id b12so7657445wrh.4
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 16:32:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=9tK5+gLv0acldzTEMooPcshuZy+dKYJMw/hizrmV8YM=;
	b=Zpub9hHJ9PwdhMqHc103HC6CqiUvR+cYfLeDK6USheoPixBAxonVTSAaGWVbMEXCuA
	dXlOFL1VUrSIdPqSrH5R/QGrbTax0LkbAK4PU5oHNb3WDAfdWy+xR1MIU8GQDe6c8ex2
	6YDO1XLOtBBebUpldb72mz/5eVTMnck0GINylnE1/xJ009ouJEAOOi57nL/R1ceDw8yT
	M071zcvzPCUx7EoRXx4FhwY8r0J7YPjehYcHPduqBAVKxKuiktQXnRQ2vD4ygi1hCHnq
	g5MZ3IhApsfefqFp0Db3YUhjWMBRIFfcW+j+a+ragGFboLRhXr3GN3VFKs0xRdi/PQFr
	YLzw==
X-Gm-Message-State: AOAM530qbti8PQuOPGUoahDUWmFHdMOYCIvLOIOcYUPY86uZZGgyTVWR
	zFhHmXZKXN0x+eOpqWvKM31IGrk3MO/8zw==
X-Google-Smtp-Source: ABdhPJzV5CRIuSvJfEEN1N7SdSzUEH1BRoHxXGIvORYKVaeMWsFwzIjysPq/TmrwesgngmWSua8dAQ==
X-Received: by 2002:a5d:4a85:: with SMTP id o5mr1677367wrq.109.1637800344726; 
	Wed, 24 Nov 2021 16:32:24 -0800 (PST)
Received: from [192.168.1.130] ([90.251.213.111])
	by smtp.gmail.com with ESMTPSA id
	q24sm5880539wmj.21.2021.11.24.16.32.24 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 24 Nov 2021 16:32:24 -0800 (PST)
Message-ID: <9f8ca8eb-fab2-e53f-cdb3-3be623a56137@gmail.com>
Date: Thu, 25 Nov 2021 00:32:33 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: Fedora and virtual machines not starting
To: blinux-list@redhat.com
References: <5c81b0ff-aff6-4a36-c51d-5d158ef96b69@gmail.com>
	<7e0f2665-fa77-42db-62bc-bc92ecd199d9@gmail.com>
	<521d7813-65f3-ed3b-6a0d-9377ef379904@gmail.com>
	<2a4351fc-b90c-b662-1fce-7999a721bad6@gmail.com>
	<d8052d3c-e817-2800-8039-d93f30b02803@gmail.com>
	<f1953152-1ebc-0f21-7f23-db9a329ec5fb@gmail.com>
	<e0e1f20e-e4cd-1c84-d620-a0aee6c7e8ba@gmail.com>
	<ff690e73-0230-0613-a70e-653ce98a1f5c@gmail.com>
In-Reply-To: <ff690e73-0230-0613-a70e-653ce98a1f5c@gmail.com>
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I've no sound with 35, but sound with 34 however using quickemu/quickget 
though. I'm curious if dider runs into this too on F35, or if it';s 
something only we're running into? A quick Google points me to similar 
issues with the 20X series of releases but those were wolved a long time 
ago.

It's strangre. I'm using a USB headset however, and I can't think of a 
reason why F34 would work but not F35 on the exact same system

On 11/25/21 00:25, Linux for blind general discussion wrote:
> Could be something with Solus. I get no sound at all using 34 MATE or 
> Workstation in plain qemu. But this seems odd, considering all the 
> audio issues I've had with Solus, both in vm's and on bare metal. That 
> said, I wonder if I should try this using a snap or flatpak if either 
> is available, since I have issues with Fedora's version of MAME that I 
> don't have with the snap, although I can't say that I've had any other 
> issues with Fedora's default packages.
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

