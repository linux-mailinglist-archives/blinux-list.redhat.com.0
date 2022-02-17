Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A81724BA937
	for <lists+blinux-list@lfdr.de>; Thu, 17 Feb 2022 20:06:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645124779;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=a88SffHCE3lXZgzIzl96oB6397PGrh0DptsV8LRiGPM=;
	b=flbEJKpIblIBQYVO0Du/K+/m8QmVm7hQP5zCfu64qtyehWLZBjK9109jcZ95D6OdInrmEg
	7tr86Q6m7qGu0uAYhXRpvnUYtkO7dB8YIrnmRN4kIsoJ+MzgJSMj/1djvVjrCBfHMNhOT/
	D31cs+zD57a0Wtxcl+P4pIBzfK6Isf0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-160-fb6JmAfhP6KAByRYUk2SeQ-1; Thu, 17 Feb 2022 14:06:15 -0500
X-MC-Unique: fb6JmAfhP6KAByRYUk2SeQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EAF52801AC5;
	Thu, 17 Feb 2022 19:06:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 29E71196E6;
	Thu, 17 Feb 2022 19:06:11 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B5ABE4CA93;
	Thu, 17 Feb 2022 19:06:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21HJ63bT000762 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 17 Feb 2022 14:06:03 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 61A861120AB8; Thu, 17 Feb 2022 19:06:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 59CDE1120AB4
	for <blinux-list@redhat.com>; Thu, 17 Feb 2022 19:06:00 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0A19D1C01E90
	for <blinux-list@redhat.com>; Thu, 17 Feb 2022 19:06:00 +0000 (UTC)
Received: from mail-40131.protonmail.ch (mail-40131.protonmail.ch
	[185.70.40.131]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-547-jbjOmUvmPYKcfBfiqUXF5w-1; Thu, 17 Feb 2022 14:05:57 -0500
X-MC-Unique: jbjOmUvmPYKcfBfiqUXF5w-1
Date: Thu, 17 Feb 2022 19:05:52 +0000
To: blinux-list@redhat.com
Subject: Re: Coqui STS model data
Message-ID: <fb50c590-1e80-91d5-7021-5bad2fe196b6@protonmail.com>
In-Reply-To: <51cd92ef-5223-1114-3b18-b30c3182a118@gmail.com>
References: <60d78e73-30de-c36a-482c-8ed70596bee3@gmail.com>
	<51cd92ef-5223-1114-3b18-b30c3182a118@gmail.com>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	T_SCC_BODY_TEXT_LINE shortcircuit=no autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 21HJ63bT000762
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sCgp3aGVuIGl0IGNvbWVzIHRvIFNUVCwgdGhlcmUgYXJlIG11bHRpcGxlIHJlYWxseSBp
bnRlcmVzdGluZyBvcGVuLXNvdXJjZQpwcm9qZWN0cyBnb2luZyBvbi4KCgphc2lkZSBDb3F1aSBT
VFQsIHRoZXJlIGFyZSBNb3ppbGxhJ3MgZGVlcCBzcGVlY2gsIFZvc2sgYW5kIE5WSURJQSdzIE5l
bW8uCgoKSSd2ZSByZWFkIGFuIGFydGljbGUgcmVjZW50bHk6CgpodHRwczovL21lZGl1bS5jb20v
QG5pY2submFnYXJpL2NvbXBhcmluZy00LXBvcHVsYXItb3Blbi1zb3VyY2Utc3BlZWNoLXRvLXRl
eHQtbmV1cmFsLW5ldHdvcmstbW9kZWxzLTkyNjc2YTlmOTI2NQoKCmNvbXBhcmluZyA0IHBvcHVs
YXIgT1NTIHNwZWVjaCByZWNvZ25pdGlvbiBmcmFtZXdvcmtzLCBhbmQgTmVtbyB3aXRoCnF1YXJ0
ek5ldCBjYW1lIG91dCBhcyB0aGUgYmVzdCBjaG9pY2UuCgoKIEZyb20gaXRzIHJlcG9zaXRvcnk6
CgpodHRwczovL2dpdGh1Yi5jb20vTlZJRElBL05lTW8KCgpJdCBzZWVtcyByZWFsbHkgaW50ZXJl
c3RpbmcuCgoKQmVzdCByZWdhcmRzCgoKUmFzdGlzbGF2CgoKRMWIYSAxMy4gMi4gMjAyMiBvIDE1
OjAzIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gbmFww61zYWwoYSk6Cj4gQXBw
YXJlbnRseSBJIG5lZWQgdG8gbG9vayBhIGJpdCBoYXJkZXLCoCA6KQo+Cj4KPiBJIGZpbmQgd29y
a2luZ8KgIGluc3RydWN0aW9uIGhlcmUKPgo+IGh0dHBzOi8vcGV0ZXdhcmRlbi5jb20vMjAyMS8x
Mi8yNy9ob3ctdG8tZ2V0LXN0YXJ0ZWQtd2l0aC1jb3F1aXMtb3Blbi1zb3VyY2Utb24tZGV2aWNl
LXNwZWVjaC10by10ZXh0LXRvb2wvI2NvbnRlbnQKPgo+IEFueXdheSB0aGVzZSBTVFMgaXMgbG9v
a2luZyBhd2Vzb21lLi4KPgo+IFJlZ2FyZHMKPiBPbiAyLzEzLzIyIDIwOjEwLCBFZGhvYXJpIFNl
dGl5b3NvIHdyb3RlOgo+PiBIaSBsaXN0LAo+Pgo+Pgo+PiBJIHdhbnQgdG8gZXhwZXJpbWVudCB3
aXRoIENvcXVpIFNUUyBhbmQgbmVlZCBzb21lIGFkdmljZS4KPj4KPj4gSSBkb3dubG9hZCBzYW1w
bGUgY29kZSBmcm9tCj4+Cj4+IC0tIGh0dHBzOi8vZ2l0aHViLmNvbS9jb3F1aS1haS9TVFQtZXhh
bXBsZXMKPj4KPj4gRmlyc3QgSSB0cmllZCB0aGUgcHl0aG9uIG1pY19taWNfdmFkX3N0cmVhbWlu
Zy8gYnV0IHdoZW4gSSByYW4gaXQgSSd2ZQo+PiBsb3N0IGFsbCBhdWRpbyBhbmQgY29udHJvbC4g
SSBoYWQgdG8gZ28gdG8gdHR5MSBhbmQgcmVib290IG15IHN5c3RlbS4KPj4gQW5kIHRoZW4gdHJp
ZWQgdGhlIG5vZGVqc19taWNfdmFkX3N0cmVhbWluZy8KPj4KPj4gSXQgYXNrcyBmb3IgbW9kZWwg
ZGF0YSB3aGljaCBJIHRyeSB0byBmZXRjaCBmcm9tCj4+IGh0dHBzOi8vY29xdWkuYWkvZW5nbGlz
aC9jb3F1aS92MS4wLjAtZGlnaXRzCj4+Cj4+IEkgYWxyZWFkeSB1c2UgYm90aCBteSBlbWFpbCBh
ZGRyZXNzIGFuZCBzdGlsbCBnb3Qgbm90aGluZyBpbiBteSBpbmJveC4KPj4KPj4gQ2FuIGFueW9u
ZSBjYW4gc2hlZCBsaWdodCBvbiB3aGF0IHRvIGRvPwo+PiBJJ2QgYXBwcmVjaWF0ZSBhbnkgaGVs
cC4KPj4KPj4gQmVzdCBSZWdhcmRzCj4+Cj4+Cj4+IEVkaG9hcmkgU2V0aXlvc28KPj4KPiAtLQo+
IEVkaG9hcmkgU2V0aXlvc28KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3QKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczov
L2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

