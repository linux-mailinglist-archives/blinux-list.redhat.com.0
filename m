Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id CE88A27B02B
	for <lists+blinux-list@lfdr.de>; Mon, 28 Sep 2020 16:44:21 +0200 (CEST)
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601304260;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=FEvrCU4I81rehNm5R2z0RNcpOMnH/RbajdijgmuavZc=;
	b=JtL1gJSYPLa9s40YCsiBhlipX4YZBb9VSzSnj7LX4DySYdAUxc/7+adOMHBiLXYtLmNxPS
	E1FU+F/+FnY8Q2XsgsA0S+1F8sZpbQqCH2r/XwxlrkxzjBIAmlVLm5G0WBhRnr7lIbXVx8
	gXXA9nf3tezzb1LFstKlCTMpg/JzLMk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-432-1-sEfa3jN5OZusjnDALX6w-1; Mon, 28 Sep 2020 10:44:17 -0400
X-MC-Unique: 1-sEfa3jN5OZusjnDALX6w-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CF293EDA63;
	Mon, 28 Sep 2020 14:44:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A666010013BD;
	Mon, 28 Sep 2020 14:44:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9D20218408A1;
	Mon, 28 Sep 2020 14:44:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 08SEi9O8009091 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 28 Sep 2020 10:44:09 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 39FF72023451; Mon, 28 Sep 2020 14:44:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 35797202348E
	for <blinux-list@redhat.com>; Mon, 28 Sep 2020 14:44:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BBA2085829C
	for <blinux-list@redhat.com>; Mon, 28 Sep 2020 14:44:06 +0000 (UTC)
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
	[209.85.222.171]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-586-F0tGUJMKPEeYr7-U__3Qdw-1; Mon, 28 Sep 2020 10:44:04 -0400
X-MC-Unique: F0tGUJMKPEeYr7-U__3Qdw-1
Received: by mail-qk1-f171.google.com with SMTP id w12so1147918qki.6
	for <blinux-list@redhat.com>; Mon, 28 Sep 2020 07:44:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=SSd6sYOELyMR3MyStuofrN23hQHHQ1ttmtutRHPL1cQ=;
	b=M6ZuMmSJRk8nnEVXId0wvxf66V7F+1s2nDWqQ8vVCFv1XVcd37bEPxq956UjBEJtcP
	Rl3UZ8Pmy5JgCothniVDJzG/G5s4wWXOOnAQOn28dxsV/83TQPmAAVwGHBXyqanGPqSc
	i0zxzp2eD3t+4OTbjteEGER4p9HfuMST8gq6x6wJOKgGf2mNlvQjmOOvwWhSJqh/yzUo
	14UoVjgPV0ohdkEmK8ZzRI7LwNJNIBJ/nOMCDfhOsL3Ilioo/EB480vDU0aW99EgmpxJ
	CHnMGXl01+h0HtJ/Rp0A90voTl7/RKAlnIk393rrtU5wWk0oPhS7Zc2gWNKPAeJ+RhGF
	yxYw==
X-Gm-Message-State: AOAM530CtDZbADXPOh6jrRLlmeoPE5tJlKI1bbzFUBgyuqWBTM+JCPKT
	UGskJeTe6jniqbVBp1izEoa1jVqk7wkLmA==
X-Google-Smtp-Source: ABdhPJxV54OXjyYZ8pnw/x70Y2LLnPm8HvlMeJkuMouYWpHVXR8FMBYpFWrxz8pUQxxjyxU8FmoXNw==
X-Received: by 2002:a05:620a:101a:: with SMTP id
	z26mr1752811qkj.300.1601304243926; 
	Mon, 28 Sep 2020 07:44:03 -0700 (PDT)
Received: from ?IPv6:2606:a000:111a:8d0a::5d7?
	(2606-a000-111a-8d0a-0000-0000-0000-05d7.inf6.spectrum.com.
	[2606:a000:111a:8d0a::5d7]) by smtp.gmail.com with ESMTPSA id
	a52sm1463755qtc.22.2020.09.28.07.44.02 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 28 Sep 2020 07:44:03 -0700 (PDT)
Subject: Re: gentoo!
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <alpine.NEB.2.23.451.2009281038260.10367@panix1.panix.com>
Message-ID: <5545aa4f-68da-b49a-6456-23387aca2caf@gmail.com>
Date: Mon, 28 Sep 2020 10:44:01 -0400
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2009281038260.10367@panix1.panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Try something like

tar xfJ <filename>.tar.xz

Hope it helps.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

