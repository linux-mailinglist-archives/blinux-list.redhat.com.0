Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 61B67376B12
	for <lists+blinux-list@lfdr.de>; Fri,  7 May 2021 22:10:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1620418208;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=wBnox99cDOMiKDn7qAlYgM15gxRn8NANGcHMHudwSIY=;
	b=CancPH4TFaVFJB2YsEXNM+7mj12U9MmQBYtIsfhw41Eo0Wt3V4JjclJIbNFL0+8CPEk20F
	d1cOct/UpkfWw730HBM++XBLwwpZ+FNzIvgDFB4LWBHTJ5EPHvY8HiOL7REcmx57P+iFBP
	3p3jVj+J6QBOA317qrMabAHgrmaeAXA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-15-nhAifnzXOU272oLMs7fKWg-1; Fri, 07 May 2021 16:10:04 -0400
X-MC-Unique: nhAifnzXOU272oLMs7fKWg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9CC92107ACE3;
	Fri,  7 May 2021 20:10:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F01DA60CCB;
	Fri,  7 May 2021 20:09:59 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6E2E455351;
	Fri,  7 May 2021 20:09:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 147K9qDK020698 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 7 May 2021 16:09:52 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 8ED322147EC1; Fri,  7 May 2021 20:09:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8A7212147EBD
	for <blinux-list@redhat.com>; Fri,  7 May 2021 20:09:49 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 54647185A79C
	for <blinux-list@redhat.com>; Fri,  7 May 2021 20:09:49 +0000 (UTC)
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
	[209.85.222.174]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-518-LoKFuk3JOoil2jrhLDzzWQ-1; Fri, 07 May 2021 16:09:46 -0400
X-MC-Unique: LoKFuk3JOoil2jrhLDzzWQ-1
Received: by mail-qk1-f174.google.com with SMTP id a22so9200418qkl.10
	for <blinux-list@redhat.com>; Fri, 07 May 2021 13:09:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=6i/OUI3IhyDc/EpzOSkQKYU7hSdIx1y+2z0msiDi9mA=;
	b=F+y0JwoPzZ8md7JMq5s5+51LttNFh7BUDma1o04qV5OyHoJ1sY2O0zI34S7hktOUm1
	Fqqh9y4DNNeB2wjGq903C0L/UopcByWyFVjvmrriIeZIhKnsIrLwuB946N6JVOlbgmZo
	k+WQgzCS7X10AGC4rwFMlOYU1P2NrDJZ7kJfnEk0UZ4sr6ChWH5LmBtCJrW8vpzjlqqA
	uwP0/5/DCJCe0vwF3K1wtXFMYxVhTbNz+vl7wDzwaQe500CK9UKzbfDUCwAlni7H+Uur
	q/oHjzhnQ3wq1Gd0l+xPcSNz2C7aItqjc3RdsCJgOiQvovJ7gXxYc6AGPRxnTDDzRzCU
	Ynyw==
X-Gm-Message-State: AOAM532eYmmcoONzQA5xQB7i0/EFIXBNuGxAI5n7Ul4gHuIs56FrgPrL
	CnvisYO9vFJ2mM3a75A5l/GtAHQTYy7+3wYO
X-Google-Smtp-Source: ABdhPJwAazTae4tHiWfYrvFROoSPj4VdoPN5QFDg7vSv0hA6pY3vT4pAn/8pVcRYVwffKEHDUAdnHA==
X-Received: by 2002:a05:620a:208a:: with SMTP id
	e10mr7139304qka.112.1620418186119; 
	Fri, 07 May 2021 13:09:46 -0700 (PDT)
Received: from ?IPv6:2601:192:4c80:3c00::44f4? ([2601:192:4c80:3c00::44f4])
	by smtp.gmail.com with ESMTPSA id
	o23sm5628182qka.16.2021.05.07.13.09.45 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 07 May 2021 13:09:45 -0700 (PDT)
Subject: Re: No Talking GDM in Fedora 34 (workstation)
To: blinux-list@redhat.com
References: <CAGz84J+eDUuaXq-xrdVuS8XhWYMwoVcByhqrf9CuVvObm744QQ@mail.gmail.com>
	<6e26ee71-f2b1-9b33-43a3-4942dafd3786@gmail.com>
	<0f7a94e7-396a-d641-8d7e-e2bc61d5ea27@gmail.com>
	<8bae4c10-50aa-3b55-45d6-1e9a2a6de900@gmail.com>
Message-ID: <3492dae8-0d09-7907-7f86-da92c4fe3efe@gmail.com>
Date: Fri, 7 May 2021 16:09:44 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <8bae4c10-50aa-3b55-45d6-1e9a2a6de900@gmail.com>
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
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SWYgeW91IG9wZW4gYSBidWcgb24gdGhvc2Ugc2NyZWVucywgSSdsbCBib29zdCBpdC7CoCBPdGhl
cnMgc2hvdWxkLCB0b28uwqAgCkkgcmVtZW1iZXIgdGhvc2Ugc2NyZWVucyB3b3JraW5nIG9uIDMz
LCBhcyB3ZWxsLiBNYXliZSB0aGV5IHRocm93IHNvbWUgCmtpbmQgb2YgU0VMaW51eCBleGNlcHRp
b25zP8KgIEFueXdheSwgaSBkaXNhYmxlZCB0aGF0LCB1c2luZyBncnViYnkuCgoKClRoYW5rcywK
CgoKRGF2ZcKgIEguCgoKCgpPbiA1LzcvMjEgMzo1NyBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVy
YWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBXZWxsLCBJIHVzZWQgc2lnaHRlZCBhc3Npc3RhbmNlIHRv
IGdldCB0aHJvdWdoIHRob3NlIHNjcmVlbnMsIGFsdGhvdWdoIAo+IG9uIEZlZG9yYSAzMywgdGhv
c2Ugc2NyZWVucyB3ZXJlIHRvdGFsbHkgYWNjZXNzaWJsZS4KPgo+IEkgbWlnaHQgb3BlbiBhIGJ1
ZyBhYm91dCB0aGF0LgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

