Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EDC726C6C96
	for <lists+blinux-list@lfdr.de>; Thu, 23 Mar 2023 16:51:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1679586681;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=98RFMISDLYT/rNpY5wGVZercZoK0Pa37yPDjZrw5/y4=;
	b=SGBIj14n+gdRs27uq/R9bKUvM3Fvrr4DB7oV15mKIr90g7KLWixlW8AGgAcV8lV25u5l8s
	npuh71X5on/YhEkyqWUMyhc+YFaTrQRVu2a7zjCkJJTut5USQg6SZHCdPxLZfFxNA3ZKWz
	wZX+xxg37Rzqw3BAmsqpCoXBk6UFdxc=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-553-v55VsRuEOKu_JYtWWgS95A-1; Thu, 23 Mar 2023 11:51:20 -0400
X-MC-Unique: v55VsRuEOKu_JYtWWgS95A-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 61FEA884EC1;
	Thu, 23 Mar 2023 15:51:18 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 99A461121315;
	Thu, 23 Mar 2023 15:51:10 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id BFFB019466DF;
	Thu, 23 Mar 2023 15:51:04 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Subject: Re: [orca] Odilia, the new Linux screenreader written in Rust,
 reaches 0.1.0 (fwd)
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.1101.1679499219.636362.blinux-list@redhat.com>
 <mailman.1130.1679509316.636367.blinux-list@redhat.com>
 <mailman.1311.1679555916.636358.blinux-list@redhat.com>
Date: Thu, 23 Mar 2023 11:50:57 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <mailman.1311.1679555916.636358.blinux-list@redhat.com>
Message-ID: <mailman.1490.1679586663.636364.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkuCgoKSXQncyBhIGJhZCBqb2tlLiBJIG1lYW50IGxpa2Ugb2xkIGFuZCBydXN0eS4KCgoKQ2hl
ZXJzOgpBYXJvbiBTcGVhcnMsIEFLQSBWYWxpYW50ODA4NiBHZW5lcmFsIFBhcnRuZXIgYXQgVmFs
aWFudCBHYWxheHkgQXNzb2NpYXRlcyAid2UgbWFrZSAoVkVSWSBHT09EIEFVRElPR0FNRVMpIGZv
ciB0aGUgYmxpbmQgY29tdW5pdHkiIGh0dHA6Ly92YWxpYW50R2FsYXh5LmNvbQoKT24gMy8yMy8y
MDIzIDM6MTggQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4g
SGksCj4KPiAgID4gSG93ZXZlciwgb3RoZXIgT1MncyBoYXZlIHJ1c3R5IHNjcmVlbnJlYWRlcnMu
Cj4KPgo+IEludGVyZXN0aW5nLCBjb3VsZCB5b3UgYmUgbW9yZSBzcGVjaWZpYyBvbiB0aGlzPyBG
cm9tIHRob3NlIEkga25vdywgTlZEQQo+IGlzIFB5dGhvbiAmIEMvQysrLCBKYXdzIGlzIHdyaXR0
ZW4gZW50aXJlbHkgaW4gQysrIGlmIEkgcmVtZW1iZXIgY29ycmVjdGx5Lgo+Cj4gVm9pY2VPdmVy
LCBqdXN0IGxpa2UgdGhlIHR3byBpcyBvbGRlciB0aGFuIFJ1c3QgaXRzZWxmLCBzbyBJIGd1ZXNz
IGl0J3MKPiB3cml0dGVuIGluIHRoZSBBcHBsZSdzIG1pZGRsZS1sZXZlbCBsYW5ndWFnZXMuCj4K
PiBXaGlsZSBBbmRyb2lkIGhhcyBhIEphdmEgY2VudGVyZWQgYWNjZXNzaWJpbGl0eSBzeXN0ZW0u
Cj4KPgo+IEkgc2VhcmNoZWQgc2NyZWVucmVhZGVyIGluIFJ1c3QsIGJ1dCBmb3VuZCAianVzdCIg
T2RpbGlhLgo+Cj4KPiBCZXN0IHJlZ2FyZHMKPgo+Cj4gUmFzdGlzbGF2Cj4KPgo+IETFiGEgMjIu
IDMuIDIwMjMgbyAxOToyMSBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIG5hcMOt
c2FsKGEpOgo+PiBIb3dldmVyLCBvdGhlciBPUydzIGhhdmUgcnVzdHkgc2NyZWVucmVhZGVycy4K
Pj4KPj4KPj4gQ2hlZXJzOgo+PiBBYXJvbiBTcGVhcnMsIEFLQSBWYWxpYW50ODA4NiBHZW5lcmFs
IFBhcnRuZXIgYXQgVmFsaWFudCBHYWxheHkgQXNzb2NpYXRlcyAid2UgbWFrZSAoVkVSWSBHT09E
IEFVRElPR0FNRVMpIGZvciB0aGUgYmxpbmQgY29tdW5pdHkiIGh0dHA6Ly92YWxpYW50R2FsYXh5
LmNvbQo+Pgo+PiBPbiAzLzIyLzIwMjMgMTE6MzIgQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gd3JvdGU6Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEBy
ZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QKPj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5j
b20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3Rt
YW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

