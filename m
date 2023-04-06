Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E3776D93C8
	for <lists+blinux-list@lfdr.de>; Thu,  6 Apr 2023 12:16:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1680776203;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=lg1FUVWOnaIvUEkfaK87OF9eBMoR0Vp2u3LcXumtBU8=;
	b=jRtjTLSXiUs6VxRHBRHOcXi9EEOGLAmfft98Ee6KUHh1p9GT1uTBF0Fz8U83i5TiBJRVjW
	mWs7tIqdKZvr/P1Hvdh0Bh2k683ARlU6QgdutTdvvJNQCFAEjyWAx2nZIEpMH0QCGWrW5h
	L6YnOlW2Zzm7eDgK12tySDLSNz9JsI8=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-539-jyBDkoPYNti0cKa83KImxA-1; Thu, 06 Apr 2023 06:16:42 -0400
X-MC-Unique: jyBDkoPYNti0cKa83KImxA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1D0EB3814952;
	Thu,  6 Apr 2023 10:16:40 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 304FA1415117;
	Thu,  6 Apr 2023 10:16:36 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 7D78819465A2;
	Thu,  6 Apr 2023 10:16:35 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (1.0)
Subject: Re: Debian beginner questions/looking for a good rolling distro
Date: Thu, 6 Apr 2023 06:16:19 -0400
References: <mailman.2210.1680764024.558771.blinux-list@redhat.com>
In-Reply-To: <mailman.2210.1680764024.558771.blinux-list@redhat.com>
To: blinux-list@redhat.com
Message-ID: <mailman.2174.1680776194.558770.blinux-list@redhat.com>
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

SSBrbm93IHlvdSBjYW4gaWYgeW91IGFyZSBydW5uaW5nIFdpbmRvd3MgMTEgc2luY2UgSSBkaWQg
aXQuICBJ4oCZbSBub3Qgc3VyZSBhYm91dCBXaW5kb3dzIDEwLiAKClJ5YW4gTWFubgpDZXJ0aWZp
ZWQgQXNzaXN0aXZlIFRlY2hub2xvZ3kgSW5zdHJ1Y3Rpb25hbCBTcGVjaWFsaXN0CnJtYW5uMDU4
MUBnbWFpbC5jb20KMzg2LTM4My01MTc1CgoKPiBPbiBBcHIgNiwgMjAyMywgYXQgMjo1MyBBTSwg
TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNv
bT4gd3JvdGU6Cj4gCj4g77u/SGVsbG8gbm90IHN1cmUgaWYgeW91IGNhbiB1c2Ugb3JjYSBvbiB3
c2wyCj4gCj4gSGFuawo+IAo+IAo+PiBPbiA0LzUvMjAyMyAxMjo1MiBQTSwgTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4gSGksCj4+IAo+PiBhbnN3ZXIgaW4gbGlu
ZS4KPj4gCj4+IExlIDA1LzA0LzIwMjMgw6AgMjA6NTgsIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gYSDDqWNyaXQgOgo+PiBUaGUgb3RoZXIgaXNzdWUgd2l0aCBhcmNoIGlzIHRo
YXQgaXQgZG9lcyBub3Qgc3VwcG9ydCBzZWN1cmUgYm9vdCBhbGwgdGhvdWdodCB0bwo+PiBiZSBm
YWlyLCBzbGludCBkb2VzbuKAmXQgZWl0aGVyLgo+PiAKPj4gVGhpcyBpcyBjb3JyZWN0LiBCdXQg
aWYgdXNpbmcgV1NMMiBpbiBXaW5kb3dzIHlvdSBjYW4gZG93bmxvYWQgYW4gKHVub2ZmaWNpYWwp
Cj4+IEFyY2ggV1NMIGZyb20gdGhlIE1pY3Jvc29mdCBTdG9yZS4KPj4gTGlua3M6Cj4+IGh0dHBz
Oi8vd3d3Lm1pY3Jvc29mdC5jb20vZW4tdXMvc2VhcmNoL3Nob3AvYXBwcz9xPWxpbnV4Cj4+IGh0
dHBzOi8vYXBwcy5taWNyb3NvZnQuY29tL3N0b3JlL2RldGFpbC9hcmNoLXdzbC85TVpOTU5LU003
M1g/aGw9ZW4tdXMmZ2w9dXMKPj4gCj4+IEkgZGlkbid0IHRyeSwgbm90IGhhdmluZyBhIFdpbmRv
d3MgaW5zdGFsbGF0aW9uCj4+IEEgd29ya2Fyb3VuZCBpcyB0byBydW4gb25lIG9mIHRoZSBzeXN0
ZW0gaW4gYSB2aXJ0dWFsIG1hY2hpbmUuCj4+IAo+PiBDaGVlcnMsCj4+IERpZGllcgo+PiBkaWRp
ZXJhdHNsaW50ZG90ZnIKPj4gCj4+PiBNYXR0aGV3Cj4+PiAKPj4+PiBPbiBBcHIgNSwgMjAyMywg
YXQgMTI6MjQgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1s
aXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+Pj4+IAo+Pj4+IExlIDA1LzA0LzIwMjMgw6AgMTc6Mjks
IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXQgOgo+Pj4+PiBBcyBm
b3Igd2hhdCBJIHVzZSBvbiBhIGRhaWx5IGJhc2lzPwo+Pj4+PiBpMyBmb3IgYSB3bQo+Pj4+PiBG
aXJlZm94IGZvciBhIGJyb3dzZXIKPj4+Pj4gUGlkZ2luIGZvciBJTS9JUkMgYW5kIHNvIG9uCj4+
Pj4+IFRleHQgZWRpdG9ycwo+Pj4+PiBLb2RpIGZvciBhIG1lZGlhIGNlbnRlcgo+Pj4+PiBtcHYg
Zm9yIHBsYXlpbmcgdGhpbmdzIGluIHRoZSB0ZXJtaW5hbC4KPj4+PiBGb3IgeW91ciBpbmZvcm1h
dGlvbiBhbGwgb2YgdGhlbSBhcmUgaW5jbHVkZWQgaW4gU2xpbnQgd2l0aCBvbmUgZXhjZXB0aW9u
OiBrb2RpCj4+Pj4gCj4+Pj4gRGlkaWVyCj4+Pj4gZGlkaWVyYXRzbGludC5mcgo+PiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBt
YWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gCj4gLS0gCj4gVGhpcyBl
bWFpbCBoYXMgYmVlbiBjaGVja2VkIGZvciB2aXJ1c2VzIGJ5IEFWRyBhbnRpdmlydXMgc29mdHdh
cmUuCj4gd3d3LmF2Zy5jb20KPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJl
ZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2Js
aW51eC1saXN0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczov
L2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

