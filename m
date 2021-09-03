Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 1CBCE40028E
	for <lists+blinux-list@lfdr.de>; Fri,  3 Sep 2021 17:48:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630684113;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=i8WoRuQ9oCL1D8iIi9nQ2fmKp7NB/AIjcwPbA0G4CCY=;
	b=cCWf61bMu+5ifz5M3Q9hCqFTNHoKntzlHqbK24hZQovN3GRG0dUNLnA5Vu5PIf8vkTcwBR
	5DDPhtPZ1ABW5UoIHz1MNNeYBTD6Ss2cX9TNoFvGZVF/1/4TCqRHQ3az3Mzltq5zENDkOt
	umeNAASdXrQku16+Ty75WMlGEJ6vRmE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-158-N3gzangEMT2gieVP5L1qxQ-1; Fri, 03 Sep 2021 11:48:31 -0400
X-MC-Unique: N3gzangEMT2gieVP5L1qxQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5FA80835DE0;
	Fri,  3 Sep 2021 15:48:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1CBE15D9F0;
	Fri,  3 Sep 2021 15:48:23 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 89B951809C98;
	Fri,  3 Sep 2021 15:48:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 183FibUr002787 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 3 Sep 2021 11:44:37 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5210010BC2B7; Fri,  3 Sep 2021 15:44:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4E0F310C6EB7
	for <blinux-list@redhat.com>; Fri,  3 Sep 2021 15:44:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 706C888647B
	for <blinux-list@redhat.com>; Fri,  3 Sep 2021 15:44:34 +0000 (UTC)
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com
	[209.85.216.49]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-414-4A7jzWycNNS5Tabb9jTYKQ-1; Fri, 03 Sep 2021 11:44:32 -0400
X-MC-Unique: 4A7jzWycNNS5Tabb9jTYKQ-1
Received: by mail-pj1-f49.google.com with SMTP id
	f11-20020a17090aa78b00b0018e98a7cddaso4151541pjq.4
	for <blinux-list@redhat.com>; Fri, 03 Sep 2021 08:44:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=mCXSV76paqwhkxFCTPXD24Qq812VsBBr4zQek7tpRec=;
	b=OBKj3tZvzmNnET0ADCHkrXNY+/2oQs6KZ90nEbCh58U09dEfI85a78ehC2kWINvxLu
	xZuT7iC4WNHM8n9ISn93IqqzRTnm7kHig8bFvMQlpidOHuz9nrSWVZ70F9X8yyw3Y1hM
	jEH3J2aXPXRx9fuRMRlgkV6SggkJRFq2G5+HnYkRwu0G7GHYrvY2M9QaWc+FIX/CcuN7
	+xDihFnvQO7XlvbcPDwoxWDo4zbRGqzkbRt9xdBdmKgIiHz4Gw0tmoXe7lyh8rk88PMK
	1xGV8kwJyC8ENqCHPJ4lzobdie9kHMFkpndI6VKLmKWLRnz+t8NC/SOEP90s6owJwLbX
	b1tg==
X-Gm-Message-State: AOAM5327fv3Q824bJa+2tuZTGn0s3JKad6Qrm6/yjhgTjVB8j2kA6eEL
	6ZbgjyUzoYbM8SjcgANBKQORE+GkR+g=
X-Google-Smtp-Source: ABdhPJx7CPAoPi0YiKvtuCTUHSYGrfFrtJaGyRBaaD6bIuS5cyM7UBJ4egDo3uFqNP+44LLH8alneQ==
X-Received: by 2002:a17:90a:6c41:: with SMTP id
	x59mr1445356pjj.68.1630683871215; 
	Fri, 03 Sep 2021 08:44:31 -0700 (PDT)
Received: from [192.168.1.10] (wsip-24-249-254-99.tc.ph.cox.net.
	[24.249.254.99]) by smtp.gmail.com with ESMTPSA id
	x189sm2844172pfx.30.2021.09.03.08.44.30 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 03 Sep 2021 08:44:30 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Subject: Re: https://blindcomputing.org/ status
Date: Fri, 3 Sep 2021 08:44:27 -0700
References: <alpine.NEB.2.23.451.2109022351370.24726@panix1.panix.com>
	<75dd52ca-fee4-885d-8533-4eff739c47b8@gmx.net>
To: blinux-list@redhat.com
In-Reply-To: <75dd52ca-fee4-885d-8533-4eff739c47b8@gmx.net>
Message-Id: <40F30BDE-AEE1-491B-8E8C-F8D958329702@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 183FibUr002787
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TWlnaHQgYmUgc29tZXRoaW5nIGdvaW5nIG9uIGluIHRoYXQgcGFydGljdWxhciB2ZXJzaW9uIG9m
IEZpcmVmb3guIEkgYW0gb24gT1MgWCBoZXJlIGFzIG15IHByaW1hcnkgYW5kIHRoZSBTYWZhcmkg
d2ViIGJyb3dzZXIgZG9lc27igJl0IHJlcG9ydCBhbnkgaXNzdWVzIHNvIGZhci4gQWxzbywgdGhl
IC9zdGF0dXMgYXQgdGhlIGVuZCBvZiB0aGUgbGluayBwcm92aWRlZCBpbiB0aGUgc3ViamVjdCBh
Ym92ZSBsZWFkcyB0byBhIDQwNCBlcnJvci4gQnR3LCBGaXJlZm94IGlzbuKAmXQgdmVyeSBibGlu
ZCB1c2VyIGZyaWVuZGx5IG9uIGFueXRoaW5nIG90aGVyIHRoYW4gd2luZG93cyBvciBMaW51eC4g
T24gT1MgWCwgaXTigJlzIGEgcmVhbCBQSVRBIGFuZCBub3Qgd29ydGggZXZlbiBkZWFsaW5nIHdp
dGguCgpCdHcsIEkgdXNlIEZpcmVmb3ggb24gU0xJTlQgaGVyZSAoSSB3b27igJl0IGdvIGJhY2sg
dG8gVWJ1bnR1IGFmdGVyIHRoZXkgd2VudCB3aXRoIHRoZSBpbmFjY2Vzc2libGUgaW5zdGFsbGVy
KS4KCi1FcmljCgoKPiBPbiBTZXAgMywgMjAyMSwgYXQgMTo0NSBBTSwgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gCj4g
Rm9yIHByb2JsZW1zLCBzdWdnZXN0aW9ucyBldGMuIHdpdGggYmxpbmRjb21wdXRpbmcub3JnIHlv
dSBtYXkgY29udGFjdCB0aGUgbWFpbnRhaW5lciBhdCBnaXRodWIuCj4gaHR0cHM6Ly9naXRodWIu
Y29tL2JsaW5kLWNvbXB1dGluZwo+IAo+IEhUSCwKPiBndWVudGVyCj4gCj4gQW0gMDMuMDkuMjEg
dW0gMDU6NTUgc2NocmllYiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uOgo+PiBB
IGJsb2cgd2l0aCBubyBjb250ZW50LAo+PiBBIGNvbW1lbnRzIHNlY3Rpb24gbm90IHBvc3NpYmxl
IHRvIHVzZSwKPj4gdGhlIGNvbW1lbnRzIG1hbmFnZW1lbnQgY29tcGFueSBpcyB3aGVyZSB5b3Ug
ZW5kIHVwIGFmdGVyIGdpdmluZyB0aGF0IHNpdGUKPj4gYW4gZW1haWwgYWRkcmVzcyBhbmQgdGhh
dCBzaXRlIGlzIGRpcmVjdGVkIGF0IGdldHRpbmcgbW9yZSBidXNpbmVzcyBmb3IKPj4gdGhlIGNv
bW1lbnRzIG1hbmFnZXIgc2l0ZSBhbmQgeW91IGRvbid0IGdldCBiYWNrIHRvIHRoZSBvcmlnaW5h
bCB3ZWJzaXRlCj4+IHRvIGxlYXZlIGFueSBjb21tZW50cy4KPj4gQWxsIGluIGFsbCwgYSB2ZXJ5
IGRvZGdleSBvcGVyYXRpb24gc28gZmFyIGFzIEkgY2FuIGZpZ3VyZS4KPj4gVGhpcyB3YXMgYWZ0
ZXIgdXNpbmcgZmlyZWZveCB0byBsb2cgaW50byB0aGUgc2l0ZSBhbmQgbm8gaXQgd2Fzbid0IHdv
cnRoCj4+IHRoZSBmaXJlZm94IGxvZ2luIG9yIHRoZSBleHRyYSB0aW1lIGl0IHRvb2sgdG8gZmlu
ZCBhbGwgb2YgdGhpcyBvdXQuCj4gCj4gCj4gLS0KPiAuCj4gCj4gCj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20v
bWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgt
bGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3Q=

