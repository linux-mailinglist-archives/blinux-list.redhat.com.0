Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AFA126C6086
	for <lists+blinux-list@lfdr.de>; Thu, 23 Mar 2023 08:18:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1679555929;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ZrTOvDBCo7+RQfi1LCVtr6+qXfyS3S/nM6KHpmElZ5k=;
	b=QQoinQIF45zD7hmqq/VFYNuCbcrTGy+/OsMDg3ftwpnwYd9UJKZR7YIUnRzeBwmXzuExNh
	vuEBqym77TQ3sdCNE6k7ccfUzaWYg0tmXJGj2Blj5iOXUdeUKHC00Tnz8nSJgg+DG5tp+U
	G58kBB8xUhqXsMo51D2cCWc4of6bk+I=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-628-F_Ypjn4zMei4xBqGcsC4kw-1; Thu, 23 Mar 2023 03:18:48 -0400
X-MC-Unique: F_Ypjn4zMei4xBqGcsC4kw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9D37D3C0D858;
	Thu, 23 Mar 2023 07:18:46 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 0294F140E960;
	Thu, 23 Mar 2023 07:18:36 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 3B31D1946A40;
	Thu, 23 Mar 2023 07:18:36 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 23 Mar 2023 07:18:23 +0000
To: blinux-list@redhat.com
Subject: Re: [orca] Odilia, the new Linux screenreader written in Rust,
 reaches 0.1.0 (fwd)
In-Reply-To: <mailman.1130.1679509316.636367.blinux-list@redhat.com>
References: <mailman.1101.1679499219.636362.blinux-list@redhat.com>
 <mailman.1130.1679509316.636367.blinux-list@redhat.com>
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
Message-ID: <mailman.1311.1679555916.636358.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksCgogPiBIb3dldmVyLCBvdGhlciBPUydzIGhhdmUgcnVzdHkgc2NyZWVucmVhZGVycy4KCgpJ
bnRlcmVzdGluZywgY291bGQgeW91IGJlIG1vcmUgc3BlY2lmaWMgb24gdGhpcz8gRnJvbSB0aG9z
ZSBJIGtub3csIE5WREEKaXMgUHl0aG9uICYgQy9DKyssIEphd3MgaXMgd3JpdHRlbiBlbnRpcmVs
eSBpbiBDKysgaWYgSSByZW1lbWJlciBjb3JyZWN0bHkuCgpWb2ljZU92ZXIsIGp1c3QgbGlrZSB0
aGUgdHdvIGlzIG9sZGVyIHRoYW4gUnVzdCBpdHNlbGYsIHNvIEkgZ3Vlc3MgaXQncwp3cml0dGVu
IGluIHRoZSBBcHBsZSdzIG1pZGRsZS1sZXZlbCBsYW5ndWFnZXMuCgpXaGlsZSBBbmRyb2lkIGhh
cyBhIEphdmEgY2VudGVyZWQgYWNjZXNzaWJpbGl0eSBzeXN0ZW0uCgoKSSBzZWFyY2hlZCBzY3Jl
ZW5yZWFkZXIgaW4gUnVzdCwgYnV0IGZvdW5kICJqdXN0IiBPZGlsaWEuCgoKQmVzdCByZWdhcmRz
CgoKUmFzdGlzbGF2CgoKRMWIYSAyMi4gMy4gMjAyMyBvIDE5OjIxIExpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gbmFww61zYWwoYSk6Cj4gSG93ZXZlciwgb3RoZXIgT1MncyBoYXZl
IHJ1c3R5IHNjcmVlbnJlYWRlcnMuCj4KPgo+IENoZWVyczoKPiBBYXJvbiBTcGVhcnMsIEFLQSBW
YWxpYW50ODA4NiBHZW5lcmFsIFBhcnRuZXIgYXQgVmFsaWFudCBHYWxheHkgQXNzb2NpYXRlcyAi
d2UgbWFrZSAoVkVSWSBHT09EIEFVRElPR0FNRVMpIGZvciB0aGUgYmxpbmQgY29tdW5pdHkiIGh0
dHA6Ly92YWxpYW50R2FsYXh5LmNvbQo+Cj4gT24gMy8yMi8yMDIzIDExOjMyIEFNLCBMaW51eCBm
b3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4g
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJl
ZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdAo=

