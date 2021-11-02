Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 71F5E442523
	for <lists+blinux-list@lfdr.de>; Tue,  2 Nov 2021 02:27:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635816473;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=NSrLCdPt7TawZGZ52ovYHttsvPGAh8qwc1PxI4k/T5A=;
	b=NOhaYGD0WcsKKAXmQj837xRuRZhvBEVuwR14SfIZO+aVEF4VsgAFFpV2VnKniXJt7ObIha
	pGevGD8V6AVehbT1OZHCGhy+wCYo+TSQUrgM+J7tIvlaWC+AsdN4CMYnWSxHQbgo+OByA4
	MwMnHGMmh386c7wk2giYETLDTWI6iY0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-595-uOcE-A9sODyVSDvH61KU3Q-1; Mon, 01 Nov 2021 21:27:49 -0400
X-MC-Unique: uOcE-A9sODyVSDvH61KU3Q-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 19E9E1006AA2;
	Tue,  2 Nov 2021 01:27:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 843C4100E12D;
	Tue,  2 Nov 2021 01:27:42 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E3DA81806D03;
	Tue,  2 Nov 2021 01:27:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A21QPEr013884 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 1 Nov 2021 21:26:26 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C1A9A1121315; Tue,  2 Nov 2021 01:26:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BCEB91121314
	for <blinux-list@redhat.com>; Tue,  2 Nov 2021 01:26:22 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C7415899EC0
	for <blinux-list@redhat.com>; Tue,  2 Nov 2021 01:26:22 +0000 (UTC)
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com
	[209.85.214.174]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-393-HXB1snrJNmuhpAyjMezuNg-1; Mon, 01 Nov 2021 21:26:20 -0400
X-MC-Unique: HXB1snrJNmuhpAyjMezuNg-1
Received: by mail-pl1-f174.google.com with SMTP id t21so13455944plr.6
	for <blinux-list@redhat.com>; Mon, 01 Nov 2021 18:26:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date
	:content-transfer-encoding:message-id:references:to;
	bh=0nvJ7TWV6syOnRr4gh2reUsJNLfehZrugGQtjUOATW4=;
	b=w+Zkz4fG4sXjgtHHYLDBpMsfiTULB065O8FTus/QjSj4dfqFwSZyimG5HCXo3wH14r
	/vrUlZ8jKTEGjbYivfj8PpHmkUwk9wx/bZ96+otogVet/tbqjJ4hXQ432H0lfdunpsXB
	j8iOjgfX3l4N2IPsCDoOubLP/21PjMMQnn9r1z7PuIIHsrHfet6uo7H42FzyqPm8u4TH
	hat35iPhlpdcnOIkNSZVwNjieumHqNz46U2yMwoyFfCan2BgXvgqfqmqJpjYJzCKXhmm
	C8BXEA8BOUQLZfyyTLdO3Rrc+3JC83tK6v4UEFu4YFcszdM0kkWp/l3MpXLefUxradL3
	BKFw==
X-Gm-Message-State: AOAM531lJgTGjn+gUmMNO5bnmesV5V8UonOY8VCZKlNEfcw1j4FSl5ON
	jg2nmz3EjtKAKrXJ9Mw2MOHjxHQOEWDZrQ==
X-Google-Smtp-Source: ABdhPJyzAGh/sSCheVCFyne+qOsY+JVpQRR7Wzap+obojz1r7FvnlQ6PZF4ijqWs5UlcDPqV32gEjg==
X-Received: by 2002:a17:902:70c9:b0:140:5ca3:e67a with SMTP id
	l9-20020a17090270c900b001405ca3e67amr28821267plt.29.1635816379419;
	Mon, 01 Nov 2021 18:26:19 -0700 (PDT)
Received: from [192.168.4.38] (24-113-81-134.wavecable.com. [24.113.81.134])
	by smtp.gmail.com with ESMTPSA id bt2sm204702pjb.33.2021.11.01.18.26.18
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 01 Nov 2021 18:26:19 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Subject: FYI - The Yggdrasil Screen Reader Project
In-Reply-To: <1f2e65f8-3d25-a02f-39d3-59e80f4270af@gmail.com>
Date: Mon, 1 Nov 2021 18:26:16 -0700
Message-Id: <C4D8F75A-ADC8-4F6F-8F4C-9AE2BB8B0792@cfcl.com>
References: <E5949DF0-363D-4D79-9E4A-5CB468223B5C@icloud.com>
	<1f2e65f8-3d25-a02f-39d3-59e80f4270af@gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1A21QPEr013884
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RldJVywgSSBqdXN0IHJhbiBhY3Jvc3MgdGhpcyBpbiBIYWNrZXIgTmV3cy4uLgoKPiBBY2Nlc3Np
YmlsaXR5IG9uIExpbnV4IGhhcyBoaXN0b3JpY2FsbHkgYmVlbiB1bmRlci1kZXZlbG9wZWQsIHVu
ZGVyLW1haW50YWluZWQsIGFuZCwgdGhlcmVmb3JlLCBnYWluZWQgYSByZXB1dGF0aW9uIG9mIGJl
aW5nIHF1aXRlIHBhaW5mdWwgdG8gdXNlIGFzIGEgZGFpbHkgZHJpdmVyIGFtb25nIGRpc2FibGVk
IHBlb3BsZS4gV2Ugd2FudCB0byBjaGFuZ2UgdGhhdC4KPiAKPiBZZ2dkcmFzaWwgaXMgYSBuZXcg
cHJvamVjdCB0aGF0IGFpbXMgdG8gY3JlYXRlIGEgYmV0dGVyIExpbnV4IHNjcmVlbiByZWFkZXIs
IHdyaXR0ZW4gaW4gUnVzdC4gVGhyb3VnaCB0aGlzIHByb2plY3QsIHdlIGFpbSB0byBwcm92aWRl
IGEgYmV0dGVyIHNjcmVlbiByZWFkaW5nIGV4cGVyaWVuY2UgdGhhbiB0aGUgb25lIHdlIGN1cnJl
bnRseSBoYXZlIGluIE9yY2EuIEEgc2NyZWVuIHJlYWRlciB3aXRoIGFsbCB0aGUgbW9kZXJuIGZl
YXR1cmVzIGEgV2luZG93cyBvciBNYWNPUyB1c2VyIHdvdWxkIGV4cGVjdCBmcm9tIHRoZWlyIGNv
bXB1dGVycywgc29tZSBvZiB3aGljaCBhcmUgb3V0bGluZWQgYmVsb3cuCj4gCj4gCeKAoiBPYmpl
Y3QgbmF2aWdhdGlvbgo+IAnigKIgT0NSCj4gCeKAoiBjdXN0b21pc2FibGUgbmF2aWdhdGlvbiBj
b21tYW5kcwo+IAnigKIgYSBwb3dlcmZ1bCBhZGQtb24gbWVjaGFuaXNtCj4gCeKAoiBhbmQgbW9y
ZS4KClRoZSBZZ2dkcmFzaWwgU2NyZWVuIFJlYWRlciBQcm9qZWN0Cmh0dHBzOi8veWdnZHJhc2ls
LXNyLmdpdGh1Yi5pby8KaHR0cHM6Ly9uZXdzLnljb21iaW5hdG9yLmNvbS9pdGVtP2lkPTI5MDU2
MTY4CgotIFJpY2ggTW9yaW4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

