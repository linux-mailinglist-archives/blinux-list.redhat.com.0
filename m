Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 9C2E93EBEE4
	for <lists+blinux-list@lfdr.de>; Sat, 14 Aug 2021 01:52:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628898772;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=osUhdFjAZXAPKcT3caheYKcmYjTFBYrMnMP70E2+S+w=;
	b=ShBsVyAetM9Xl5fViFV6l6TfyU6iuAWyx4hqD6IotUvcPOo6uiZ5UN6ib7QgvswqyjXx/E
	gcJB60pKKLcDZWH79sH1zLRajrogXE2PQHq/TfUK9xdIKsCe8zZx26HW+NkhaNQYCt/PXA
	JS0vGDig10GrwTdyF867f6m7Z6FKuRY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-360-BXbw9vzANX2qEU-fHoSc5A-1; Fri, 13 Aug 2021 19:52:50 -0400
X-MC-Unique: BXbw9vzANX2qEU-fHoSc5A-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EA374801AEB;
	Fri, 13 Aug 2021 23:52:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 73F245D6D5;
	Fri, 13 Aug 2021 23:52:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 982FA181A0F1;
	Fri, 13 Aug 2021 23:52:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17DNmlCf029294 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 13 Aug 2021 19:48:47 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4AC4110BFD8F; Fri, 13 Aug 2021 23:48:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 46A2210BFD8B
	for <blinux-list@redhat.com>; Fri, 13 Aug 2021 23:48:44 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A809A101A529
	for <blinux-list@redhat.com>; Fri, 13 Aug 2021 23:48:44 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-292-RWtkmKLBM4mDH3fmL45DIw-1;
	Fri, 13 Aug 2021 19:48:42 -0400
X-MC-Unique: RWtkmKLBM4mDH3fmL45DIw-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 74901A38C6;
	Fri, 13 Aug 2021 23:48:33 +0200 (CEST)
Subject: Re: Word Echo in Espeakup
To: blinux-list@redhat.com
References: <YRYY9ME5KKnm2Iz+.ref@brainpower.wer>
	<YRYY9ME5KKnm2Iz+@brainpower.wer>
Message-ID: <ec9849eb-5797-fa44-d57c-5e0d5537f8c8@slint.fr>
Date: Sat, 14 Aug 2021 01:48:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <YRYY9ME5KKnm2Iz+@brainpower.wer>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 17DNmlCf029294
X-loop: blinux-list@redhat.com
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgSXNoZSwKCklmIGEgZmVhdHVyZSBvZiBzcGVha3VwIGFsbG93cyB0byBlY2hvIGEgd29yZCB3
aGVuIHRoZSBzcGFjZSBiYXIgaXMgcHJlc3NlZAphZnRlciBoYXZpbmcgdHlwZWQgaXQsIEkgZG9u
J3Qga25vdyBpdC4KCkkgQ0MgdGhlIHNwZWFrdXAgbWFpbGluZyBsaXN0IGFzIHNvbWVvbmUgd2l0
aCBhIGJldHRlciBhbnN3ZXIgcHJvYmFibHkgCnJlYWRzIGl0LgoKSSBhbSBjdXJpb3VzIHRob3Vn
aDogSSBrbm93IGhhdCBPcmNhIHByb3ZpZGVzIHRoaXMgZmVhdHVyZSwgYnV0IGRvIHlvdSAKa25v
dyBhCmNvbnNvbGUgc2NyZWVuIHJlYWRlciBwcm92aWRpbmcgaXQsIHRoZW4gd2hpY2ggb25lIGlz
IGl0PwoKQ2hlZXJzLApEaWRpZXIKCgpMZSAxMy8wOC8yMDIxIMOgIDA5OjAyLCBMaW51eCBmb3Ig
YmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4gSGksCj4gCj4gSSBhbSBzY3Jh
dGNoaW5nIG15IGhlYWQgb3ZlciB0aGlzIHNlZW1pbmdseSBzaW1wbGUgdGFzaywgYnV0IGlzIHRo
ZXJlIGEgCj4gc2V0dGluZyBmb3Igd29yZCBlY2hvIGluIFNwZWFrdXAvRXNwZWFrdXA/IEkgd2Fu
dCB0byB0dXJuIG9mZiBrZXlfZWNobyAKPiBzbyB0aGF0IEkgZG8gbm90IGhlYXIgY2hhcmFjdGVy
cyBhcyBJIHR5cGUgdGhlbSwgYnV0IEkgYW0gYXQgbXkgd2l0cycgCj4gZW5kIG9uIGhvdyBJIGNh
biB0dXJuIG9uIHdvcmQgZWNobyBzbyB0aGF0IHdoZW4gSSBwcmVzcyB0aGUgU3BhY2ViYXIgYXMg
Cj4gSSB0eXBlIEkgaGVhciB0aGUgdHlwZWQgd29yZCBpbnN0ZWFkIG9mIHNwYWNlLgo+IAo+IFRJ
QSwKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3Rt
YW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

