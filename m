Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EEACC44070A
	for <lists+blinux-list@lfdr.de>; Sat, 30 Oct 2021 05:14:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635563643;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=llWMSKM34dnPKPNV9QFvTCAsF0H/Wry72eysdbf50sE=;
	b=YKN/O5WHkTHLo7bYib2kqGsPRPm5qRF1/eu6yIwHO6UZqdMwXphjkL75v35SL+k6Y3o1zf
	f54WTe/FDSJKB6iN9rK1xr9CkBqxHLtUzPwwaELKwg9LvtxEoxKL9YaiYl+CT68dTvMkja
	FdLnHJakKxl8kghbzBdKeM2utgJz5Lg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-561-zroy73HTMaWfITgX958nGg-1; Fri, 29 Oct 2021 23:13:59 -0400
X-MC-Unique: zroy73HTMaWfITgX958nGg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CBAA78066F4;
	Sat, 30 Oct 2021 03:13:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 50406604CC;
	Sat, 30 Oct 2021 03:13:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 742BC1809C81;
	Sat, 30 Oct 2021 03:13:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19U3Dmg5011116 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 29 Oct 2021 23:13:48 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4620240D1B9D; Sat, 30 Oct 2021 03:13:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4122040C1242
	for <blinux-list@redhat.com>; Sat, 30 Oct 2021 03:13:48 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 273D3811E76
	for <blinux-list@redhat.com>; Sat, 30 Oct 2021 03:13:48 +0000 (UTC)
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com
	[209.85.219.43]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-179--6iugDkFP5-MZDOX4gJmEQ-1; Fri, 29 Oct 2021 23:13:46 -0400
X-MC-Unique: -6iugDkFP5-MZDOX4gJmEQ-1
Received: by mail-qv1-f43.google.com with SMTP id d6so7637418qvb.3
	for <blinux-list@redhat.com>; Fri, 29 Oct 2021 20:13:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:content-transfer-encoding:from:mime-version
	:subject:date:message-id:references:in-reply-to:to;
	bh=45w5H7XkQAMqnhXxOjo8E3VPBb7Cqm0AsmucZWEnklc=;
	b=FB8LZsZuY6ujnpRMuy4uJCoiYLC/xyAe/yJe7ZHZQI/TImUlZEkMdFotJD+RioW0qr
	kI3WVcuXSK2zDIJuf5wZHAOvnd4CiWuR6ywOIln5+jN3wkQ/u2KKIpHX8W8s5qi1Epge
	/N2GmfBFOnkJdK0cxi4WlZkIQgQBob1fx/R7tFl/ZoDBGEany8ZsIBE3+de7XUlnWUDn
	nDxbVJI/mTrePHXWP+wPh528EUneIEDT8IA+0Gn9oFxnt/fYGEPlo/42d23qWKXrNoi9
	8K3n4wqah9A/6Zq7MuPr7W+BiVOKfBjqcm1/N+sM/DpkYbFSIe+nUR+oNcLmJIZFqSx0
	8f1Q==
X-Gm-Message-State: AOAM5332PqCSrKIHxSK8cUOpJnAF5ym5mNeU+L/EIWKtHvYgYlkmCqr6
	Y+L31HyyE1bF6A6g3kMV3pXMOeM954nE1Q==
X-Google-Smtp-Source: ABdhPJxKEL3XBN2zS1EbNm4Fa/h3psMpua3zP1tkaiVeNQPRv9pJeWyO+Zak8t0fy90WdH2HobccqQ==
X-Received: by 2002:a05:6214:c8a:: with SMTP id
	r10mr794360qvr.47.1635563625733; 
	Fri, 29 Oct 2021 20:13:45 -0700 (PDT)
Received: from smtpclient.apple ([2601:c8:300:2f6:3cd6:da99:7526:291a])
	by smtp.gmail.com with ESMTPSA id c9sm5939548qte.43.2021.10.29.20.13.45
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 29 Oct 2021 20:13:45 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Subject: Re: Accessible Coconut speech at startup
Date: Fri, 29 Oct 2021 23:13:44 -0400
Message-Id: <9F0E8E47-7471-495E-A98F-BCB9122EB801@gmail.com>
References: <8c7a2cce-b2c6-534d-ec3d-ddfc92c9c78a@gmail.com>
In-Reply-To: <8c7a2cce-b2c6-534d-ec3d-ddfc92c9c78a@gmail.com>
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 19U3Dmg5011116
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

U2NyZWVuIHJlYWRlciBzZXR0aW5ncyAKSW5zZXJ0IHBsdXMgc3BhY2UKCgpTZW50IGZyb20gbXkg
aVBob25lCgo+IE9uIE9jdCAyOSwgMjAyMSwgYXQgMTE6MDQgUE0sIExpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+IAo+IO+7
v1RoYW5rcyBhIG1pbGxpb24uIEkganVzdCBmaWd1cmVkIHdoYXQgSSB3YXMgZG9pbmcgd29ybmcu
IEkganVzdCByZWFsaXplZCB0aGF0IGhpdHRpbmcgYWx0LWYxIG9yIGFsdC1mMiBkb2VzIG5vdCB3
b3JrIG9uIG15IGxhcHRvcC4gSSBuZWVkZWQgdG8gcHVzaCB0aGUgZnVuY3Rpb24ga2V5IGFsb25n
IHdpdGggdGhlIGFsdCBmMSBvciBmMiBmb3IgaXQgdG8gd29yay4gTm93IEkgY2FuIGFjY2VzcyB0
aGUgbWVudXMganVzdCBmaW5lLgo+IAo+IEkgc3RpbGwgbmVlZCB0byBmaWd1cmUgb3V0IGEgd2F5
IG9mIGNoYW5naW5nIHRoZSBkZWZhdWx0IHNwZWVjaCBlbmdpbmUsIGFuZCBhIHdheSB0byBoYXZl
IGl0IGRpc3BsYXkgZm9yZWlnbiBjaGFyYWN0ZXJzIG9uIHRoZSBCcmFpbGxlIGRpc3BsYXkuIEZv
ciBleGFtcGxlLCBXaGVuIEkgZG8gYSB5b3V0dWJlIHNlYXJjaCBhbmQgZ2V0IGEgaGl0IGluIEFy
YWJpYyBvciBIZWJyZXcgaXQgZGlzcGxheXMgdGhlIEFyYWJpYyBvciBIZWJyZXcgY2hhcmFjdGVy
cyBhcyBxdWVzdGlvbiBtYXJrcy4gSSBhbSBzdXJlIHRoZXJlIGlzIGEgd2F5IG9mIGRlYWxpbmcg
d2l0aCB0aGlzLgo+IAo+IGluIHRoZSBuZXh0IHN0YWdlLCBJIG5lZWQgdG8gZmlndXJlIGEgc2Fm
ZSB3YXkgb2YgaW5zdGFsbGluZyBpdCBhbG9uZ3NpZGUgbXkgd2luZG93cyB3aXRob3V0IHNjcmV3
aW5nIHUgICAgcCBteSB3aW5kb3dzIG9wcGVyYXRpb24uCj4gCj4gVGhhbmtzIGEgbG90IGFnYWlu
IGZvciB5b3VyIGhlbHAuCj4gCj4gQnkgdGhlIHdheSBJIGFtIG5vdyB3cml0aW5nIHRoaXMgZW1h
aWwgdXNpbmcgdGhlIHRodW5kZXJiaXJkIHRoYXQgY29tZXMgd2l0aCB0aGUgYWNjZXNzaWJsZSBD
b2NvbnV0Cj4gCj4+IE9uIDEwLzMwLzIxIDY6MDQgQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gd3JvdGU6Cj4+IHN1cGVyLXQgbWF5IGdldCB5b3UgYSB0ZXJtaW5hbCB3aGlj
aCBnaXZlcyB5b3UgYSBjb21tYW5kIGxpbmUuICBZb3UnbGwKPj4ga25vdyBpZiBhICQgY29tZXMg
dXAgYXMgYSAgcHJvbXB0IG9yIGEgIyBjb21lcyB1cC4gIEZhaWxpbmcgdGhhdCBhbHQtK2YyCj4+
IHRoZW4gdHlwZSBtYXRlLXRlcm1pbmFsIG9yIGdub21lLXRlcm1pbmFsIGFuZCBoaXQgZW50ZXIu
Cj4+IAo+PiAKPj4+IE9uIEZyaSwgMjkgT2N0IDIwMjEsIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gd3JvdGU6Cj4+PiAKPj4+IFRoYW5rcyBhIG1pbGxpb24gZm9yIHlvdXIgaGVs
cC4gSSB0cmllZCB5b3VyICBzdWdnZXN0aW9ucyB0byBubyBhdmFpbC4gSG93ZXZlciwgc29tZXRo
aW5nIHN0cmFuZ2UgaGFwcGVuZWQsIHdoZW4gSSBjb25uZWN0ZWQgbXkgYnJhaWxsZSBkaXNwbGF5
IGl0IGNvbm5lY3RlZCB0byBhY2Nlc3NpYmxlIGNvY29udXQgcmlnaHQgYXdheS4gSSB3YXMgYWJs
ZSB0byBicm93c2UgdGhlIG1lbnVzIGFuZCBjb25uZWN0IHRvIHRoZSBpbnRlcm5ldC4gRHVyaW5n
IG15IGJyb3dzaW5nIHRoZSBzcGVlY2ggY2FtZSBvbi4KPj4+IEkgaGF2ZSB0d28gcXVlc3Rpb25z
LCBob3cgY2FuIEkgZ2V0IGEgY29tbWFuZCBsaW5lIHByb21wdD8gTXkgc2Vjb25kIHF1ZXN0aW9u
IGlzLCB3aGF0IGlzIHRoZSBjb21tYW5kIHRvIHR1cm4gb2ZmIHRoZSBjb21wdXRlcj8gQWx0IGY0
IGRpZCBub3QgdGFrZSBtZSB0aGVyZS4KPj4+IENoZWVycywKPj4+IElicmFoaW0KPj4+IAo+Pj4g
Cj4+PiBTZW50IGZyb20gbXkgaVBob25lCj4+PiAKPj4+PiBPbiBPY3QgMjksIDIwMjEsIGF0IDE6
NTYgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJl
ZGhhdC5jb20+IHdyb3RlOgo+Pj4+IAo+Pj4+IO+7v1ByZXNzIGFsdCBwbHVzIEYxLgo+Pj4+IERv
IHlvdSBoZWFyIHNwZWVjaD8KPj4+PiBJZiBub3QsIHByZXNzIGVzY2FwZS4KPj4+PiBQcmVzcyBh
bHQgcGx1cyBGMgo+Pj4+IFR5cGUKPj4+PiBvcmNhCj4+Pj4gUHJlc3MgZW50ZXIuCj4+Pj4gVGhp
cyBzaG91bGQgZml4IGl0Lgo+Pj4+IAo+Pj4+IAo+Pj4+IFNlbnQgZnJvbSBteSBpUGhvbmUKPj4+
PiAKPj4+Pj4gT24gT2N0IDI5LCAyMDIxLCBhdCAxOjI1IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2Vu
ZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPj4+Pj4gCj4+
Pj4+IO+7v0lzIHRoZXJlIGEgc3RlcCBieSBzdGVwIHR1dG9yaWFsIG9uIGhvdyB0byBzdGFydD8K
Pj4+Pj4gSSBkb3dubG9hZGVkIHRoZSBhY2Nlc3NpYmxlIGNvY29udXQgaXNvIGFuZCBwdXQgaXQg
b24gYSBib290YWJsZSB1c2IgZHJpdmUuIEkgd2FzIGFibGUgdG8gYm9vdCB0aGUgbWFjaGluZSBm
cm9tIHRoZSB1c2IsIGJ1dCB0aGVyZSB3YXMgbm8gc3BlZWNoIHRvIGd1aWRlIG1lLiBJIHdhcyBh
YmxlIHRvIGNvbmZpcm0gdGhhdCBJIGluZGVlZCBib290ZWQgZnJvbSB1c2Igd2l0aCBhY2Nlc3Np
YmxlIGNvY29udXQgYnkgdXNpbmcgbXkgaVBob25lIGNhbWVyYS4gSSBoYXZlIG5vIGlkZWEgaG93
IHRvIGdldCB0aGUgc3BlZWNoIGdvaW5nLiBTbyBwbGVhc2UgaWYgeW91IGhhdmUgYSB0dXRvcmlh
bCwgc2VuZCBpdCBteSB3YXkuCj4+Pj4+IElicmFoaW0KPj4+Pj4gCj4+Pj4+IFNlbnQgZnJvbSBt
eSBpUGhvbmUKPj4+Pj4gCj4+Pj4+Pj4gT24gT2N0IDI5LCAyMDIxLCBhdCAxMDoyOSBBTSwgTGlu
dXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4g
d3JvdGU6Cj4+Pj4+PiDvu79IZWxsbywKPj4+Pj4+IFdoZW4gdXNpbmcgdGhlIGxpdmUgQ0QsIFRo
ZSBzY3JlZW5yZWFkZXIgc3RhcnRlZCBhdCBib290Lgo+Pj4+Pj4gQnV0IGEgIGFmdGVyIEkgaW5z
dGFsbGVkIGl0LCBJIGdldCBubyBzY3JlZW5yZWFkZXIgYXQgc3RhcnR1cC4KPj4+Pj4+IEFsbCBz
ZXR0aW5ncyBhcyBmYXIgYXMgSSBrbm93IGFyZSBjb3JyZWN0Lgo+Pj4+Pj4gVGhlIG9ubHkgd2F5
IHRvIGdldCBzcGVlY2ggaXMgdG8gZ28gdG8gdGhlIHJ1biB3aW5kb3cgd2l0aAo+Pj4+Pj4gQWx0
K0YyCj4+Pj4+PiBUaGVuIHR5cGUKPj4+Pj4+IG9yY2EKPj4+Pj4+IEFuZCBwcmVzcyBlbnRlci4K
Pj4+Pj4+IEkgcmVpbnN0YWxsZWQgbGludXggYW5kIGdvdCB0aGUgc2FtZSByZXN1bHQuCj4+Pj4+
PiBBcyBJIHdhcyBkb2luZyB0aGUgaW5zdGFsbCwgSSBjaGVja2VkIHRoZSBib3ggdG8gZ2V0IHVw
ZGF0ZXMgZHVyaW5nIHRoZSBpbnN0YWxsLiBDb3VsZCB0aGlzIGJlIHRoZSBjYXVzZSBvZiBteSB0
cm91YmxlPwo+Pj4+Pj4gCj4+Pj4+PiBUaGFua3MsCj4+Pj4+PiBSb2IKPj4+Pj4+IAo+Pj4+Pj4g
Cj4+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
Pj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQu
Y29tCj4+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2Js
aW51eC1saXN0Cj4+Pj4+PiAKPj4+Pj4gCj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+
PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+PiAKPj4+PiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcg
bGlzdAo+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+PiBodHRwczovL2xpc3RtYW4ucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+PiAKPj4+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+PiBCbGludXgtbGlzdCBtYWls
aW5nIGxpc3QKPj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+IGh0dHBzOi8vbGlzdG1hbi5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4gCj4+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxp
bmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiAKPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlz
dAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0
QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdA==

