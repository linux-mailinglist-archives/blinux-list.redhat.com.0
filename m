Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9092C67FAB8
	for <lists+blinux-list@lfdr.de>; Sat, 28 Jan 2023 21:06:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1674936371;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=6CHrvw+DHHyVpv0wyxtTYvzv1F0s6NTwIBXkvUpHxzk=;
	b=gs2i0DD+ZGBfIsZnA9Shp24D/BnDmrCVo1vNe0ihkPk5nW/OcopsIZ0uPT/nE+ot3Uc9Dj
	nTrAvCGzqdfwnqh1Yv0kuKYf+RCCMLjTET8T0DNHo7iw8EHj0+aKTb1BB5CX8LNm6nKRBo
	ys1pXsN6uhuxgHdGmyRSf3DPQjnL8KQ=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-595-3nPP0l5KNFiLe5ampWCEZg-1; Sat, 28 Jan 2023 15:06:08 -0500
X-MC-Unique: 3nPP0l5KNFiLe5ampWCEZg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 221C9101A521;
	Sat, 28 Jan 2023 20:06:06 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id EB00614171BE;
	Sat, 28 Jan 2023 20:06:00 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 5AAA31946595;
	Sat, 28 Jan 2023 20:06:00 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 28 Jan 2023 13:05:54 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: new version of jenux
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.1526.1674764282.8176.blinux-list@redhat.com>
 <mailman.2016.1674794167.8169.blinux-list@redhat.com>
 <mailman.2185.1674833954.8170.blinux-list@redhat.com>
In-Reply-To: <mailman.2185.1674833954.8170.blinux-list@redhat.com>
Message-ID: <mailman.2140.1674936360.8171.blinux-list@redhat.com>
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
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SSB0cmllZCB0byBhY2Nlc3MgaXQsIGFuZCBnZXQgdGhpcy4KClNlY3VyZSBDb25uZWN0aW9uIEZh
aWxlZApBbiBlcnJvciBvY2N1cnJlZCBkdXJpbmcgYSBjb25uZWN0aW9uIHRvIG5hc2hjZW50cmFs
LmR1Y2tkbnMub3JnLiBTU0wgCnJlY2VpdmVkIGEgcmVjb3JkIHRoYXQgZXhjZWVkZWQgdGhlIG1h
eGltdW0gcGVybWlzc2libGUgbGVuZ3RoLgpFcnJvciBjb2RlOiBTU0xfRVJST1JfUlhfUkVDT1JE
X1RPT19MT05HCgpJdCBkaWQgd29yayBvbiB0aGUgZGF5IHlvdSBzZW50IHRoYXQgZW1haWwgdGhv
dWdoLCBJIHdvbmRlciB3aGF0IGhhcHBlbmVkLgpNaWtlLgoKT24gMS8yNy8yMDIzIDg6MzkgQU0s
IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gaHR0cHM6Ly9uYXNo
Y2VudHJhbC5kdWNrZG5zLm9yZy9wcm9qZWN0cy8KPiBUaGUgSmVudXggc3R1ZmYgaXMgYXQgdGhl
IHRvcCBvZiB0aGUgcGFnZSBhbmQgaGUgaGFzIG1hbnkgbW9yZSBwcm9qZWN0cyBvbgo+IHRoYXQg
cGFnZSB0b28uICBUaGUgcGFnZSBtb3N0IGRlZmluaXRlbHkgZXhpc3RzLgo+Cj4KPgo+IEp1ZGUg
PGpkYXNoaWVsIGF0IHBhbml4IGRvdCBjb20+ICJUaGVyZSBhcmUgZm91ciBib3hlcyB0byBiZSB1
c2VkIGluCj4gZGVmZW5zZSBvZiBsaWJlcnR5Ogo+ICAgc29hcCwgYmFsbG90LCBqdXJ5LCBhbmQg
YW1tby4gUGxlYXNlIHVzZSBpbiB0aGF0IG9yZGVyLiIKPiAtRWQgSG93ZGVyc2hlbHQgKEF1dGhv
ciwgMTk0MCkKPgo+IC4KPgo+IE9uIFRodSwgMjYgSmFuIDIwMjMsIExpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4KPj4gRG8geW91IGhhdmUgdGhlIGxpbmsgdG8gZG93
bmxvYWQgSmVudXg/wqAgSSBkb24ndCBrbm93IGlmIGhpcyBzaXRlIGV4aXN0cwo+PiBhbnltb3Jl
LCBhdCBsZWFzdCBJIGNvdWxkbid0IGdldCB0byBpdCBmcm9tIGdvb2dsZS4KPj4KPj4gTWlrZS4K
Pj4KPj4gT24gMS8yNi8yMDIzIDE6MTcgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1
c3Npb24gd3JvdGU6Cj4+PiBJIGFscmVhZHkgc2VudCB0aGlzIGluZm8gdG8gZGFuaWVsIG5hc2gu
ICBXaGF0IGhhcHBlbnMgb24gYSBwZW5ndWluIHBybyAxMQo+Pj4gY29tcHV0ZXIgd2hlbiBib290
aW5nIHRoaXMgamVudXggaW5zdGFsbGVyIGlzIGl0IGJvb3RzIHRvIGEgcG9pbnQgdGhlbiBhCj4+
PiBtZXNzYWdlIGNvbWVzIHVwIHNheWluZyBwcmVzcyBhbnkga2V5IHRvIHN0b3Agc3lzdGVtIHJl
c3RvcmF0aW9uLiAgQXQgdGhpcwo+Pj4gcG9pbnQgaXQgZG9lc24ndCBtYXR0ZXIgd2hhdCBrZXkg
aXMgcHJlc3NlZCwgdGhlIHN5c3RlbSByZWJvb3RzIGFuZAo+Pj4gY29udGludWVzIGRvaW5nIHRo
ZSBzYW1lIHRoaW5nIG9uIGFsbCBmdXJ0aGVyIGJvb3RzLiAgSSBuZWVkZWQgc2lnaHRlZAo+Pj4g
aGVscCB0byBzZWUgdGhpcyBzaW5jZSB0aGlzIGRvZXNuJ3QgZG8gYW55IHRhbGtpbmcuCj4+Pgo+
Pj4KPj4+Cj4+PiBKdWRlIDxqZGFzaGllbCBhdCBwYW5peCBkb3QgY29tPiAiVGhlcmUgYXJlIGZv
dXIgYm94ZXMgdG8gYmUgdXNlZCBpbgo+Pj4gZGVmZW5zZSBvZiBsaWJlcnR5Ogo+Pj4gICAgc29h
cCwgYmFsbG90LCBqdXJ5LCBhbmQgYW1tby4gUGxlYXNlIHVzZSBpbiB0aGF0IG9yZGVyLiIKPj4+
IC1FZCBIb3dkZXJzaGVsdCAoQXV0aG9yLCAxOTQwKQo+Pj4KPj4+IC4KPj4+Cj4+PiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gQmxpbnV4LWxpc3Qg
bWFpbGluZyBsaXN0Cj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+PiBodHRwczovL2xpc3Rt
YW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pgo+PiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBt
YWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Cj4+Cj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWls
aW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhh
dC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51
eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdAo=

