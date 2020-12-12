Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id BD45E2D8A3C
	for <lists+blinux-list@lfdr.de>; Sat, 12 Dec 2020 23:00:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1607810429;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=6c8PVMQyy0K7jMf9VTFAOR0OpHNsxee18qcvi3+u0F4=;
	b=Rv5b3QJTwE2DSp7PBgBqzxmPDkVH90cZRZqTZpzHrPvCdvSamJmorh5pnPDZi5X8sxKPg3
	bIeskukr5Yro7nna1qbEAmXJjqdaOIuAxocMVc2liqNYNJlBxG5swPnPk6ikPHPRJYoNcZ
	J0ub3wluonsiC7DHkJ7RcX70bjjpu2Y=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-431-h3R6E1h4PxO0KytBfqR1_w-1; Sat, 12 Dec 2020 17:00:27 -0500
X-MC-Unique: h3R6E1h4PxO0KytBfqR1_w-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C8FFC107ACF5;
	Sat, 12 Dec 2020 22:00:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2FE045D9C2;
	Sat, 12 Dec 2020 22:00:23 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 51C944A7C6;
	Sat, 12 Dec 2020 22:00:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0BCM0F70019592 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 12 Dec 2020 17:00:15 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 0385A5F273; Sat, 12 Dec 2020 22:00:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F1A7B6379F
	for <blinux-list@redhat.com>; Sat, 12 Dec 2020 22:00:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8BEBD800140
	for <blinux-list@redhat.com>; Sat, 12 Dec 2020 22:00:12 +0000 (UTC)
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com
	[209.85.222.48]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-351-qxpEDbKGP765jKCmQMa8PA-1; Sat, 12 Dec 2020 17:00:09 -0500
X-MC-Unique: qxpEDbKGP765jKCmQMa8PA-1
Received: by mail-ua1-f48.google.com with SMTP id 4so4146404uap.8
	for <blinux-list@redhat.com>; Sat, 12 Dec 2020 14:00:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=/9uy+R8VlTxMPqJop24sw/h55rH7pKJoVNKvoG3SHUU=;
	b=Rvwe27XMOq/1x4C/k0Tw6z15B3LLuy2+vf6jmavKdLxEUGwNxcVXZugWIyAUR8bgjp
	65YYdVgnhsFaGDRXjtmYjVp/X1Tum10gC/0Oez0CFk0uqB7n7FC2/sjJz4/p3fzt5tuf
	2CvQF+slZWb2c/hfhtoz3lodyai2GxDTfKKo8/U54KD6hTKGTXcxGmHdSb3W/4L2h0Zr
	J4L0KW8DPNIqdT6SW+sgwI2MKSppChLQSf3eGEMRmPg0l6MtFW2zR4VwX/ArH4a5MKkv
	wsZXLC6fZNcD/2+UVqNPzDBc0Ouvb1nPwlIsaLna5mQ8zoHYZ3y5bMKZ6gWfloRKQQ25
	jzIQ==
X-Gm-Message-State: AOAM5331vf31z5bighg4wDkcpxQeAhHn2ZV4/xBgQBOuU3i4jz577Jke
	Cdiok1XzMzkLWZ78SSjmEhNk/WZs9cBzJ2/Vdv0pMERS
X-Google-Smtp-Source: ABdhPJxAtN3pnIm7Q5w2bk7lEBoyA+xAid6KuJDhNsKDWKvgvxH73ZB/JtCzm3Dxw0YC+ZCPLdl0AvmfNWHc1cnAoJM=
X-Received: by 2002:ab0:2a1a:: with SMTP id o26mr17335869uar.101.1607810408270;
	Sat, 12 Dec 2020 14:00:08 -0800 (PST)
MIME-Version: 1.0
References: <9FF82FF5-E038-4EE8-BD7B-0CDFE4265160.ref@yahoo.com>
	<9FF82FF5-E038-4EE8-BD7B-0CDFE4265160@yahoo.com>
In-Reply-To: <9FF82FF5-E038-4EE8-BD7B-0CDFE4265160@yahoo.com>
Date: Sat, 12 Dec 2020 17:00:00 -0500
Message-ID: <CAJKfDDG3DGwrZzBwF=9TtNnajaq+A2=CF=HcstX16GMtSifnQA@mail.gmail.com>
Subject: Re: Does anyone on here know anything about BRLTTY?
To: blinux-list <blinux-list@redhat.com>
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
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PkZyb20gd2hhdCBJIHJlY2FsbCwgVWJ1bnR1IG1hdGUgMTguMDQgTFRTIGNvdWxkIGF1dG8tZGV0
ZWN0IHRoZSB1c2IKaHVtYW53YXJlIGJyYWlsbGlhbnQgYmkgNDAgZnJvbSBiYXVtLCBjYW4ndCB0
ZWxsIGhvdyBvdGhlcnMgZGlzdHJpYnV0aW9ucwp3aWxsIGRvIGJ1dCBpdCdzIHJlcG9ydGVkIGFz
IG9uZSBvZiB0aGUgbW9zdCBhY2Nlc3NpYmxlLCBJIGhlYXZpbHkKcmVjb21tZW5kIHlvdSB0byB1
c2UgbWF0ZS10d2VhayB0byB1c2UgY29tcGl6IGZvciB2YXJpb3VzIGNsZXZlcgphY2Nlc3NpYmls
aXR5IGZlYXR1cmVzIGZvciBsb3cgdmlzaW9uIGFuZCBjb2xvciBibGluZCBwZW9wbGUuCgpNaWNo
YcOrbCBDYXJvbiBDb3V0dXJpZXIKCgpMZSBzYW0uIDEyIGTDqWMuIDIwMjAsIMOgIDE2IGggMTAs
IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPApibGludXgtbGlzdEByZWRoYXQu
Y29tPiBhIMOpY3JpdCA6Cgo+IEhpIGd1eXMsCj4gRG9lcyBhbnlvbmUga25vdyBob3cgdG8gY29u
ZmlndXJlIHRoaXMgcHJvZ3JhbSB0byB3b3JrIHdpdGggYSBodW1hbndhcmUKPiBicmFpbGxpYW50
IEIgODA/IEkgYW0gdHJ5aW5nIHRvIGhvb2sgdGhpcyB1cCBmb3Igb25lIG9mIG15IGNvbGxlZ2Ug
Y2xhc3Nlcy4KPiBJIGFtIHVzaW5nIEpBV1MgYXMgbXkgc2NyZWVuIHJlYWRlci4KPiBBbnkgaGVs
cCB3b3VsZCBiZSBncmVhdGx5IGFwcHJlY2lhdGVkLgo+IFRoYW5rcywKPgo+Cj4KPiBBc2hsZXkg
QnJlZ2VyCj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+
IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Cj4K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly93d3cucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

