Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 87CE33E150F
	for <lists+blinux-list@lfdr.de>; Thu,  5 Aug 2021 14:50:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628167835;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=E/1G5Y8phPYvMN7qy882t/W9PzFvwQPTMboNkAqc8/A=;
	b=GTvAz9Cu4r5/f/FAzzRs3zuKnYxd5igw/OfmqpQMjVNXFzYhgoqnkRHV+ut8XIK7DsG/k6
	xNJr1HRSjnNJuPKkt2IbsQS1gJU8u1lp5ZyBSCcsOvhl6uvlDe0xxm5E6p78IGLkJupKXM
	reUnNP172eeNbI7EyBdVVp37HY+Lv5A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-262-_Tr5-Sw0PfqPdWUOzKxVmw-1; Thu, 05 Aug 2021 08:50:34 -0400
X-MC-Unique: _Tr5-Sw0PfqPdWUOzKxVmw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 62D91107466B;
	Thu,  5 Aug 2021 12:50:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E5D8E5C1A1;
	Thu,  5 Aug 2021 12:50:29 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 366874A700;
	Thu,  5 Aug 2021 12:50:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 175Cn0I1005430 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 5 Aug 2021 08:49:00 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 17B97106246; Thu,  5 Aug 2021 12:49:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 11BA2106274
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 12:48:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C534918812C5
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 12:48:56 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
	[209.85.128.45]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-243-GnszsRxAORCiryWx9DVdQA-1; Thu, 05 Aug 2021 08:48:53 -0400
X-MC-Unique: GnszsRxAORCiryWx9DVdQA-1
Received: by mail-wm1-f45.google.com with SMTP id m19so3302712wms.0
	for <blinux-list@redhat.com>; Thu, 05 Aug 2021 05:48:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:content-transfer-encoding:from:mime-version
	:subject:date:message-id:references:in-reply-to:to;
	bh=PwDb70HiJq16aMhaN0yTHp1vUWDh13M/oim5MSdoLE4=;
	b=em3hz0Hla0MrgRk1CaiAUlvN7tgSP8DlLEy6H/cC8MCq5uQ9POnsexx5qF3c5tbxJA
	ZX8CAzuvoC+epFMtYfdrBT0NuTDaVgkBlhw6W3TS1Me3L+dGoBDWOFY5o2GUTA7jIqHH
	fz3jA8guhjUTP9989af5PgOtBDcBtUKEQROXeg5CiYs8eoxRCZoxNMMsREdbgZkAFRPN
	dxDt6DCDNtSsjwiggU5HbgALbbup+M2JynbbHLRzmgEgYRMYqzbY3nmF+fYFhHEzRUVp
	sVIqBE3MTFL1cQl81wvh8+RCBgpwK+x+iQJBruCQXB3g3ih1fuUGs3x5bglfNrhfNywj
	DLgw==
X-Gm-Message-State: AOAM531zhE+OlhgaugS41laOXh2CAJ01DTs0Vh//ZG2UJpmkO/oJ9khE
	yLQkRDDTvIPnrjwGXI6m5qogb1WlsZ8XWg==
X-Google-Smtp-Source: ABdhPJwdZjR9uKfe2a+11YT6+W1+hK4n6xHJUOTN3JO3guMSa2zHN+jFNqy4owlZQJJcBZe7qzbVNA==
X-Received: by 2002:a1c:7907:: with SMTP id l7mr15052447wme.87.1628167731801; 
	Thu, 05 Aug 2021 05:48:51 -0700 (PDT)
Received: from smtpclient.apple ([197.185.109.16])
	by smtp.gmail.com with ESMTPSA id
	o17sm5339433wmp.31.2021.08.05.05.48.50 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 05 Aug 2021 05:48:51 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Subject: Re: Looking for help with switching on the bare metal.
Date: Thu, 5 Aug 2021 14:48:47 +0200
Message-Id: <42D652DC-E852-45BE-8168-A0512A95C855@gmail.com>
References: <fe4bdfcc-061c-5e11-a3b6-1453ba0d9cf1@slint.fr>
In-Reply-To: <fe4bdfcc-061c-5e11-a3b6-1453ba0d9cf1@slint.fr>
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 175Cn0I1005430
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgRGlkaWVyLAoKSSBhbSBub3QgZ29pbmcgdG8gZHVhbCBib290IG15IHN5c3RlbS4gSSBhbSBm
ZWQgdXAgd2l0aCB3aW5kb3dzLiBJZiBJIG5lZWQgYSBtb3JlIGNvbnZlbnRpb25hbCBPUywgSSBo
YXZlIG15IE1hY0Jvb2suIEkgd2lsbCBwcm9iYWJseSBpbnN0YWxsIFdpbmRvd3MgaW4gYSB2aXJ0
dWFsIG1hY2hpbmUgYW55d2F5LCBzaW1wbHkgYmVjYXVzZSBJIG5lZWQgaXQgZm9yIG15IHdvcmsu
Ckkgd291bGQgYXBwcmVjaWF0ZSB0aGUgaGVscCB3aXRoIGNvcHlpbmcgYWxsIG15IHN0dWZmIGZy
b20gYW4gZXh0ZXJuYWwgZHJpdmUgdG8gbXkgU2xpbnQgaW5zdGFsbGF0aW9uLgoKU2VudCBmcm9t
IG15IGlQaG9uZQoKPiBPbiAwNSBBdWcgMjAyMSwgYXQgMTM6NTMsIExpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+IAo+IO+7
v0hpIEJyYW5kdCwKPiAKPiBTbGludCBjYW4ndCBiZSBpbnN0YWxsZWQgaW4gYW4gTlRGUyBwYXJ0
aXRpb24gYnV0IGNhbiByZWFkIGFuZCB3cml0ZSB0aGUgZmlsZXMKPiBpbiBpdCwgbm8gYWRkLW9u
IG5lZWRlZC4gV2UgY2FuIGhlbHAgeW91IGRvaW5nIHRoZSBuZWVkZWQgc2V0dGluZ3MgYWZ0ZXIK
PiBpbnN0YWxsYXRpb24uCj4gCj4gTWF5YmUgeW91IHdvdWxkIGNvbnNpZGVyIGEgZHVhbCBib290
IGluc3RhbGxhdGlvbj8KPiAKPiBJZiB5ZXMgYnV0IHlvdSBoYXZlIG9ubHkgb25lIGRyaXZlLCBy
ZWFkIGhvdy10byBwcmVwYXJlIHRoZSBkcml2ZSBpbjoKPiBodHRwczovL3NsaW50LmZyL2RvYy9I
YW5kQm9vay5odG1sI21ha2Vfcm9vbV9mb3JfU2xpbnQKPiAKPiBDaGVlcnMsCj4gRGlkaWVyCj4g
LS0KPiBEaWRpZXIgU3BhaWVyCj4gU2xpbnQgbWFpbnRhaW5lcgo+IAo+PiBMZSAwNS8wOC8yMDIx
IMOgIDEzOjM0LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0IDoK
Pj4gVGhhbmtzIGZvciB0aGF0LiBJIGFtIHZlcnkgc3Ryb25nbHkgY29uc2lkZXJpbmcgaW5zdGFs
bGluZyBTbGludCwgYnV0IGJlZm9yZSBJIGRvLCBJIG5lZWQgdG8gcHVsbCBteSBzdHVmZiBvZmYg
b2YgbXkgd2luZG93cyBpbnN0YWxsYXRpb24uIFdpbGwgU2xpbnQgYnkgZGVmYXVsdCBkZWFsIHdp
dGggTlRGUywgb3IgZG8gSSBuZWVkIHRvIGluc3RhbGwgYSB1dGlsaXR5IHRvIGRvIHNvPwo+IAo+
IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8v
bGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWls
aW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNv
bS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

