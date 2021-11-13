Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E13D644F4EF
	for <lists+blinux-list@lfdr.de>; Sat, 13 Nov 2021 20:36:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636832178;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fikWFewvD3dSCO4HGXABw+Ey/C9uOnHgSfzSZDDJmis=;
	b=QgSKJyZsK1WRP+puTIlyOsWyyXkE+xywgpzy82lYuGctt/DzY8XMiKstyBfLPzZuWqOfoi
	55EuJ7/BYaFfeTEw+9bQUBhTn16+ovD9UXRyrLdTeZp7Bk1DI8KzpNQz7CwNnFLU7rrn89
	7iM80Ws+CKviQYJXPJ/G8y4YUs5h+NQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-564-2q5v2JEQNjSRiCExR8Hiyw-1; Sat, 13 Nov 2021 14:36:14 -0500
X-MC-Unique: 2q5v2JEQNjSRiCExR8Hiyw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 379C3871803;
	Sat, 13 Nov 2021 19:36:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B487D5C1BB;
	Sat, 13 Nov 2021 19:36:08 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CCFD44A703;
	Sat, 13 Nov 2021 19:36:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ADJV1BX017890 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 13 Nov 2021 14:31:01 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 55DD451E3; Sat, 13 Nov 2021 19:31:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 508F451E2
	for <blinux-list@redhat.com>; Sat, 13 Nov 2021 19:30:58 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4D6AE811E76
	for <blinux-list@redhat.com>; Sat, 13 Nov 2021 19:30:58 +0000 (UTC)
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
	[209.85.160.182]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-446-tCiSSJnLOE2ZVqz3ebsikA-1; Sat, 13 Nov 2021 14:30:56 -0500
X-MC-Unique: tCiSSJnLOE2ZVqz3ebsikA-1
Received: by mail-qt1-f182.google.com with SMTP id 8so2103552qtx.5
	for <blinux-list@redhat.com>; Sat, 13 Nov 2021 11:30:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=pmChKuBJYgTk4yVG+0VY2WlHznFXzhznyM7eM3VQNAU=;
	b=8FcuYKIZdXl+Nq4MquWFZ3Ls2ElXs0VRc7tXSYl4E9AnM1eWxhr7BeFF81LsQwWvqh
	NvpYcm+At5TQUlgRXbVoeWf/OA1kweOG0JFCEYRXGO2GQd8Ac0FidrSSA6+bt6P8RFSb
	WV7sILsM5sAVOx8eKtAC4ufGHNuwgDe1gPWLzUdL8ddwOrwOb+WXcDQ5dxuL/mWiCFnU
	myla0cDFvSYt3+BfJgv8xcf+eh086kICDrXItQZ2ed6jofkWkQCWuK+tO+yaYZ+xQKOt
	0FuiRdcBE8pd4HYpunfabVEB5+BUlYY/Q09EH3pszjI6+T5BkiVGb/TApQR3br55w7mD
	tPkw==
X-Gm-Message-State: AOAM533w+esxNwUtpdsM6Rb8V9LRCfysXksrUNijwqrYqERs0xaGuBfs
	1q41RQaqpGeVAuZ1EIl4ogwXXr55LK0=
X-Google-Smtp-Source: ABdhPJwKDnb0Dl8vizAF8vZrgHe/tKRTYfqzPMtBP6DR2gaMzdd7ZzID7uuTMIiRPIY783jUWzPgaA==
X-Received: by 2002:ac8:7d47:: with SMTP id h7mr27105029qtb.188.1636831855982; 
	Sat, 13 Nov 2021 11:30:55 -0800 (PST)
Received: from ?IPV6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960])
	by smtp.gmail.com with ESMTPSA id k2sm4663960qtg.35.2021.11.13.11.30.55
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 13 Nov 2021 11:30:55 -0800 (PST)
Message-ID: <1338bc21-40df-abe9-2c5e-98902de1854f@gmail.com>
Date: Sat, 13 Nov 2021 14:30:54 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: any other accessible email client for linux?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <b92effa3-e60f-02aa-a7b8-3102adfe2e4a@gmail.com>
	<8a83ad83-7d3c-c5f5-4bb5-e1c8d657c804@gmail.com>
	<YZAAhqsubBVL2pNl@panix.com>
	<CAGPwheC9=RwFv18uyCTDPz3BLzFuzYbWkN=PCOQ2H6PNRGgLiA@mail.gmail.com>
In-Reply-To: <CAGPwheC9=RwFv18uyCTDPz3BLzFuzYbWkN=PCOQ2H6PNRGgLiA@mail.gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Right. I'm not fond of terminal email clients, but as terminal email 
clients go, Alpine is probably the best of the lot. Its menu system is 
certainly far easier than dealing with writing a configuration from 
scratch by hand. In fact, the first time I used a mail program on Linux 
nearly 20 years ago, Pine was what I used and learned first, and I found 
it pretty useful, at least for plain text email. Nothing in the terminal 
works well when you have to click links in an email though, or if you 
receive one of those HTML emails that everybody sends these days, which 
is why I still recommend a desktop client in most situations.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

