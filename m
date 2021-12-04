Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BB624686DB
	for <lists+blinux-list@lfdr.de>; Sat,  4 Dec 2021 18:59:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638640745;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=YcmnL9EGSBKnaYokIjGt0jQkbqVGsdFu/0RXlCjUhew=;
	b=ii2IJyHE3hyNGOX0fcLzmY3RMA9tWwVRgGG/H3gdENI/4uvhZTh8JK2Tpn8DGZLfVpNm3T
	FNVdfurobZVrbxD56jRMkCC35Ak0PjHKIvkVfRi/whWvQaG62xC7x/sBzV7rmKIL/stFe9
	IeqQ6FTtKds+Uin30dsR6Et2OrqeCQU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-551-Gs7VnogdP_qVtOM0yQDPUA-1; Sat, 04 Dec 2021 12:59:01 -0500
X-MC-Unique: Gs7VnogdP_qVtOM0yQDPUA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DE4301023F4E;
	Sat,  4 Dec 2021 17:58:57 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A01E75C641;
	Sat,  4 Dec 2021 17:58:57 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 670EF1809CB8;
	Sat,  4 Dec 2021 17:58:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B4HwqmW017606 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 4 Dec 2021 12:58:52 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 73E224047279; Sat,  4 Dec 2021 17:58:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6F96C4047272
	for <blinux-list@redhat.com>; Sat,  4 Dec 2021 17:58:52 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 55994805A2E
	for <blinux-list@redhat.com>; Sat,  4 Dec 2021 17:58:52 +0000 (UTC)
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
	[209.85.222.172]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-55-c6fxvcCZPrGTjEFeeVkcSQ-1; Sat, 04 Dec 2021 12:58:50 -0500
X-MC-Unique: c6fxvcCZPrGTjEFeeVkcSQ-1
Received: by mail-qk1-f172.google.com with SMTP id m192so7044538qke.2
	for <blinux-list@redhat.com>; Sat, 04 Dec 2021 09:58:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=P07PxvqjaGTVhq25gbeMMXay345RzVkeR3a67jhZlSk=;
	b=UVZIZy+t1Z59+wj0BueYLfb8Oudn/klOClN1cNpmP/bP86yB7Ze8n5F4BSG929Kcr2
	WcWH6pYsi2gz9FtOKNUd1DRWgJfPUZt3V8cyu1zLxKhQsQ/LALNNfwyLb7a99EBA0wJB
	1RA59X7G8THSAXNonCy4bHuDZLPEl8G9cLp3QK6aVgqa5PffRifw/pmR4dybuTB/YRuO
	0nP9JGwyIsBfcG4M2i+u26a36wa9QocSq346jPeoEia6hZWd2s0gtSV3TAiqaLhKICUI
	LGGceMx4qUV0gJjl4h0RLKkh324MPwkGwc+OpL5neONJOv9hdMbUSAWSlHePhEeVY5We
	C3pQ==
X-Gm-Message-State: AOAM531Vl94yhe39D21M6jf6YZimdUxpHk6bXXMBK6iRTHRkPzXI3gaX
	8HSWxzbK9dGimkm10z4GO6IAGM3EoP0=
X-Google-Smtp-Source: ABdhPJyNt7YXrujvsxReoI6of9Jh4ad9BB1K2RnmzUJlGy6g0FCdPekxIfnI9ZPPaojab0CrLVsn9g==
X-Received: by 2002:a37:cc8:: with SMTP id 191mr23966493qkm.380.1638640729932; 
	Sat, 04 Dec 2021 09:58:49 -0800 (PST)
Received: from ?IPV6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960]) by smtp.gmail.com with ESMTPSA id
	k23sm4476724qtm.49.2021.12.04.09.58.49 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 04 Dec 2021 09:58:49 -0800 (PST)
Message-ID: <2b86a2b5-6e3d-08f6-6516-3a62a894ab62@gmail.com>
Date: Sat, 4 Dec 2021 12:58:49 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: Suggestions for Ratpoison-friendly apps?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <0818b814-95e3-f334-fb62-5a89bc96124e@gmail.com>
	<d6a364d7-7484-4b48-3700-1ba8f938d271@gmail.com>
	<00e07fa6-109f-b5c9-5680-ed8a56e959a9@slint.fr>
In-Reply-To: <00e07fa6-109f-b5c9-5680-ed8a56e959a9@slint.fr>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Oh I did get pcmanfm speaking somewhat ... but it doesn't read my files. 
It's as if the directory is empty.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

