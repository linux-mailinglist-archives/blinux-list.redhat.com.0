Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 8E2CF3E13EF
	for <lists+blinux-list@lfdr.de>; Thu,  5 Aug 2021 13:34:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628163282;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=yRRe/c9PIakPbaSXtkQMhi2am7fr7O9zU1GII+a77EQ=;
	b=NE70E2a/TG0aoUnI5r6SpLf4VFPNAkTDvEzN76UBf7ciJ6ViYQlNndRLkLGThXZl9SzRQK
	6TeP4YBNX9j7Fdx/V6tepQFVzYm9xus9Ca33laiLXQY3fdCTCaq6feKKsuymXDcghok83B
	+NolGJQzb+hGiTlh4lMwiT7cG1z8czU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-547-osbU8aPVNE-aJnjU1fdViQ-1; Thu, 05 Aug 2021 07:34:40 -0400
X-MC-Unique: osbU8aPVNE-aJnjU1fdViQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BFFA4CC62A;
	Thu,  5 Aug 2021 11:34:36 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EA62581F74;
	Thu,  5 Aug 2021 11:34:35 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7D823180BAB1;
	Thu,  5 Aug 2021 11:34:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 175BYQQF028982 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 5 Aug 2021 07:34:26 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9E0CA2093CE4; Thu,  5 Aug 2021 11:34:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 97E7B2094D01
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 11:34:22 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C8E0E101A52C
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 11:34:22 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
	[209.85.128.51]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-549-pHUCXCSjMtSYTDUONXtXmQ-1; Thu, 05 Aug 2021 07:34:20 -0400
X-MC-Unique: pHUCXCSjMtSYTDUONXtXmQ-1
Received: by mail-wm1-f51.google.com with SMTP id b128so3130306wmb.4
	for <blinux-list@redhat.com>; Thu, 05 Aug 2021 04:34:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:content-transfer-encoding:from:mime-version
	:subject:date:message-id:references:in-reply-to:to;
	bh=KSVV+de1c4i5cvNb9Mit6KJoXgOXVu72mfs62+zXWd8=;
	b=OQLgkT/nI0IHN/OtWcsIh1pYz+TLzFUu3jyaKNh9LI4ApxbYbRLGRSJEi+ugApxWXQ
	hJQVj3tEQvOMY0XKMgJiUAzkQlLdM4W8Q3P2ZvXChlOvCt7uviuIky2q42kDFibFVOMh
	nHDlPXdsbkMe7/hjTL5/A1HMeucVzVlZhSeZFwp6ReefnuOCqyyqr9/iZz4bEihVIj7N
	dsRVu5U3W9kqpgDuxvTjoW3esKlFTaO++7mQd69dn+RHIaerr1lgre72+Nm5h/AcwVmG
	iv/WqccAcIRfnk1E5umKHp44zcGaHd/C6K9NrljdpW+YxKVeTuznYslvM5DI7b3mN6D/
	ieDQ==
X-Gm-Message-State: AOAM531a2IKJ1Z6J4pOafwmsQR9ExN2eyHN8y7skRDOnFd6496+F45vr
	uGwczgYoJB5HTwapsOGLe0wsdHwNA1FqYA==
X-Google-Smtp-Source: ABdhPJwpGkDI/vydPskkNSRU8y0xacofEOsr6fuVbOv7/uNcAddhzsP5iiC0Reb98IEy4GrVqODsoA==
X-Received: by 2002:a1c:4d14:: with SMTP id o20mr1470719wmh.155.1628163259426; 
	Thu, 05 Aug 2021 04:34:19 -0700 (PDT)
Received: from smtpclient.apple ([197.185.109.16])
	by smtp.gmail.com with ESMTPSA id
	c190sm5401958wma.21.2021.08.05.04.34.18 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 05 Aug 2021 04:34:18 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Subject: Re: Looking for help with switching on the bare metal.
Date: Thu, 5 Aug 2021 13:34:16 +0200
Message-Id: <0BF1ECEB-E10D-4502-B42E-09BE437F9FB3@gmail.com>
References: <851eefb8-2795-5684-1107-172bf66b985e@slint.fr>
In-Reply-To: <851eefb8-2795-5684-1107-172bf66b985e@slint.fr>
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 175BYQQF028982
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgRGlkaWVyLApUaGFua3MgZm9yIHRoYXQuIEkgYW0gdmVyeSBzdHJvbmdseSBjb25zaWRlcmlu
ZyBpbnN0YWxsaW5nIFNsaW50LCBidXQgYmVmb3JlIEkgZG8sIEkgbmVlZCB0byBwdWxsIG15IHN0
dWZmIG9mZiBvZiBteSB3aW5kb3dzIGluc3RhbGxhdGlvbi4gV2lsbCBTbGludCBieSBkZWZhdWx0
IGRlYWwgd2l0aCBOVEZTLCBvciBkbyBJIG5lZWQgdG8gaW5zdGFsbCBhIHV0aWxpdHkgdG8gZG8g
c28/CgpXYXJtIHJlZ2FyZHMsCgpCcmFuZHQgU3RlZW5rYW1wCgpTZW50IGZyb20gbXkgaVBob25l
Cgo+IE9uIDA1IEF1ZyAyMDIxLCBhdCAxMjowMywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlz
Y3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gCj4g77u/SGkgYWdhaW4s
Cj4gCj4gSW4gYSBzZWNvbmQgY2hhdCBJIGhhdmUgYmVlbiB0b2xkIHRoYXQgaXQgaXMgcG9zc2li
bGUgdG8gZGlzYWJsZSBTZWN1cmUgQm9vdCBvbiBIdWF3ZWkgUEMuCj4gCj4gWW91IHdpbGwgbmVl
ZCBhIHNpZ2h0ZWQgaGVscCB0byBkbyB0aGF0Lgo+IAo+IENoZWVycywKPiBEaWRpZXIKPiAKPiAK
PiAKPj4gTGUgMDUvMDgvMjAyMSDDoCAxMTo0NSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlz
Y3Vzc2lvbiBhIMOpY3JpdCA6Cj4+IEhpIEJyYW5kdCwKPj4gZXhwZWN0IHplcm8gaXNzdWUgdG8g
aW5zdGFsbCBTbGludCBvbiB0aGlzIG1hY2hpbmUgaWYgU2VjdXJlIEJvb3QgY2FuIGJlCj4+IGRp
c2FibGVkLgo+PiBJIGRpZG4ndCBmaW5kIGFueSBpbmZvcm1hdGlvbiBvbiB0aGUgbmV0IGFib3V0
IHRoaXMgbW9kZWwsIGFuZCBjaGF0dGluZyB3aXRoCj4+IEh1YXdlaSdzIGNvbnN1bWVyIHNlcnZp
Y2UgaW4gRnJhbmNlIGRpZG4ndCBoZWxwLiBUaGUgbGFkeSBkb2Vzbid0IGtub3cgdGhpcwo+PiBt
b2RlbC4KPj4gQ2hlZXJzLAo+PiBEaWRpZXIKPj4gLS0gCj4+IERpZGllciBTcGFpZXIKPj4gc2xp
bnQgbWFpbnRhaW5lcgo+Pj4gTGUgMDUvMDgvMjAyMSDDoCAxMDowMywgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdCA6Cj4+PiBIaSBhbGwsCj4+PiAKPj4+IAo+Pj4g
QXQgdGhlIG1vbWVudCBJIGFtIHJ1bm5pbmcgbXkgTGludXggaW4gdmlydHVhbCBNYWNoaW5lcywg
c2ltcGx5IGJlY2F1c2UgSSBkbwo+Pj4gbm90IGhhdmUgaGFyZHdhcmUgdGhhdCBJIHRydXN0IHRv
IHdvcmsgY29ycmVjdGx5LiBJIGFtIGN1cnJlbnRseSB1c2luZyBhCj4+PiBIdWF3ZWkgTWF0ZWJv
b2sgc2VlIHNwZWNzIGJlbG93Lgo+Pj4gCj4+PiAKPj4+IERldmljZSBuYW1lICAgICAgTEFQVE9Q
LTU3VkNNQ0YxCj4+PiAKPj4+IFByb2Nlc3NvciAgICAgICAgICAgIEludGVsKFIpIENvcmUoVE0p
IGk1LTEwMjEwVSBDUFUgQCAxLjYwR0h6ICAgMi4xMSBHSHoKPj4+IAo+Pj4gSW5zdGFsbGVkIFJB
TSAgICAxNiwwIEdCICgxNSw4IEdCIHVzYWJsZSkKPj4+IAo+Pj4gRGV2aWNlIElEICAgICAgICAg
ICAgIEU1MzNEQkFELTUwRkEtNDhGRi1BOUFDLTRCMUI5QkJDNDYyRAo+Pj4gCj4+PiBQcm9kdWN0
IElEICAgICAgICAgIDAwMzQyLTQxNDI4LTQ2NzY3LUFBT0VNCj4+PiAKPj4+IFN5c3RlbSB0eXBl
ICAgICAgICA2NC1iaXQgb3BlcmF0aW5nIHN5c3RlbSwgeDY0LWJhc2VkIHByb2Nlc3Nvcgo+Pj4g
Cj4+PiBQZW4gYW5kIHRvdWNoICAgTm8gcGVuIG9yIHRvdWNoIGlucHV0IGlzIGF2YWlsYWJsZSBm
b3IgdGhpcyBkaXNwbGF5Cj4+PiAKPj4+IAo+Pj4gVGhpcyBtYWNoaW5lLCBhcyBmYXIgYXMgSSBj
YW4gdGVsbCwgaXMgcmF0aGVyIG5ldy4gSSBoYXZlIHRyaWVkIGxvb2tpbmcKPj4+IG9ubGluZSwg
YnV0IGFtIG5vdCBzdXJlIGFib3V0IHdoYXQgSSBhbSBmaW5kaW5nLCBvciBmb3IgdGhhdCBtYXR0
ZXIsIG5vdAo+Pj4gZmluZGluZy4gSWYgYW55b25lIGNhbiBoZWxwIG1lIHdpdGggdGhpcyBtYWNo
aW5lLCBJJ2QgYmUgZ3JhdGVmdWwuCj4+PiAKPj4+IAo+Pj4gV2FybSByZWdhcmRzLAo+Pj4gCj4+
PiAKPj4+IEJyYW5kdAo+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3QKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczov
L2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

