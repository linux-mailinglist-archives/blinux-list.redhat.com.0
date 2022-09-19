Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BA145BD7EA
	for <lists+blinux-list@lfdr.de>; Tue, 20 Sep 2022 01:12:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1663629127;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=AUe9VSfBi06obB4vCE+qMv9/Xq+xs37GzU2AK+CFfTM=;
	b=FPFkE5lcZj3GMqYa1G/m7nAyuib0L9GXzFfl7H7pBhBmlvnioUgIVB1uWLl97F89wi5c18
	f5Mko3k2ZCwkAfcfQ8GpCVqSHznnFdgukwbEwUKdFTsTzjktmCuIq5xao8ktsf/X9Ci70y
	x/jvFSgLHqwSUzlp9tCYBo0P4bpILU0=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-20-vxMvLAH7NQ2BWvU_pkR-mg-1; Mon, 19 Sep 2022 19:12:03 -0400
X-MC-Unique: vxMvLAH7NQ2BWvU_pkR-mg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 95AAE185A7A3;
	Mon, 19 Sep 2022 23:12:02 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 3E40F207B34B;
	Mon, 19 Sep 2022 23:11:59 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 7747619465B1;
	Mon, 19 Sep 2022 23:11:58 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 19 Sep 2022 16:12:22 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: KDE Plasma 5.26 beta questions
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.1122.1663510798.6076.blinux-list@redhat.com>
 <mailman.1124.1663511562.6082.blinux-list@redhat.com>
In-Reply-To: <mailman.1124.1663511562.6082.blinux-list@redhat.com>
Message-ID: <mailman.1405.1663629117.6082.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

Y2FuIEkgZ2V0IHRoZSB3b3JraW5nIGhvd3RvIGFzIHdlbGw/Cgp0aGFua3MKCkhhbmsKCk9uIDkv
MTgvMjAyMiA3OjMwIEFNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3Rl
Ogo+IEhvd2R5LAo+Cj4gVG8gZ2V0IGl0IGluIG9mZmljaWFsIEFyY2hMaW51eCBSZXBvc2l0b3J5
IHlvdSBtaWdodCBuZWVkIHRvIHdhaXQgdGlsIEtERSBQbGFzbWEgNS4yNiBpcyByZWxlYXNlZC4K
Pgo+IEJ1dCBpIGp1c3Qgc2VhcmNoZWQgYSBlYXN5IHdheSBmb3IgdGVzdGluZyBLREUgTmVvbiBE
ZXZlbG9wbWVudCBuaWdodGx5IHVzaW5nIGRvY2tlci4gIEFzIHVzZXJzIHNob3VsZCBiZSBhYmxl
IHRvIGdldCBpbnZvbHZlZCBpbiBhY2Nlc3NpYmlsaXR5IGRldmVsb3BtZW50IGFuZCB0ZXN0aW5n
IHByb2Nlc3MuCj4KPiBJIG0gY3VycmVudGx5IG5vdCBvbiBteSBtYWNoaW5lIGJ1dCBpIGFscmVh
ZHkgaGF2ZSBhIHdvcmtpbmcgaG93dG8gdG8gc2hhcmUgd2l0aCB5b3UuCj4KPiBCeSB0aGUgd2F5
LCBLREUganVzdCB2b3RlcyBpdHMgZ29hbHMuIEtERSB2b3RlcyAzIGdvYWxzLiBPbmx5IDYgZ29h
bHMgYXZhaWxhYmxlIGZvciB2b3RpbmcuIEFjY2Vzc2liaWxpdHkgaXMgb25lIG9mIHRoZW0uIFNv
IHRoZSBjaGFuY2UgaXMgdmVyeSBoZWlnaCB0aGF0IFBsYXNtYSA1LjI2IHdhcyBqdXN0IHRoZSBm
aXJzdCBzaG90IG9mIGEgbG9uZyBzZXJpZXMgb2YgYWNjZXNzaWJpbGl0eSBpbXByb3ZlbWVudHMu
IEJ5IHRoZSB3YXkgbW9zdCBvZiByZWNlbnQgIHdvcmsgaXMgZG9uZSBieSBjYXJsIHN3YW4gYW5k
IGZ1c2lvbmZ1dHVyZS4gU28gdGhlIGNoZXJyeSBnb2VzIHRoZXJlLgo+Cj4gSSBtIGN1cnJlbnRs
eSBtb3N0bHkgYnVzeSBpbiBnZXR0aW5nIG9yY2EgcmViYXNlZCBvbiBhbiBwbHVnaW4gYXJjaGl0
ZWN0dXJlLgo+Cj4gSW50ZXJlc3RpbmcgdGltZXMgYWhlYWQgaW4gdGVybXMgb2YgYWNjZXNzaWJp
bGl0eS4KPgo+IENoZWVycyBjaHJ5cwo+Cj4+IEFtIDE4LjA5LjIwMjIgdW0gMTY6MjAgc2Nocmll
YiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQu
Y29tPjoKPj4KPj4g77u/U28gcXVpY2sgcXVlc3Rpb24sIHNpbmNlIEtERSAuUGxhc21hIDUuMjYg
YmV0YSBpcyBhIHRoaW5nLCB3aXRoIGFwcGFyZW50bHkgQTExWSBpbXByb3ZlbWVudHMsIGdvaW5n
IGJ5IG51bWVyb3VzIFlUIHZpZHMsIEtERS5vcmcgYW5kIHRoZWlyIChhZG1pdHRlZGx5IG1hc3Np
dmUpIGNoYW5nZWxvZy4uLgo+Pgo+PiBJcyBpdCB3b3J0aCB0ZXN0aW5nIGl0IG91dD8gTG9va2lu
ZyBhdCBteSByZXBvcyBvbiBBcmNoIEknbSBzZWVpbmcgNS4yNS45LTEgaGVyZSwgYW5kIG5vdCBz
ZWVpbmcgYW55IG9mIHRoZSB1cGRhdGVzIGxpc3RlZCBpbiB0aGUgY2hhbmdlbG9nLCBpLmUuIHRo
ZSBkaWFsb2dzIGFyZSBzdGlsbCBpbmFjY2Vzc2libGUsIHRoZSBjbG9jayBkb2Vzbid0IHBsYXkg
bmljZSB3aXRoIE9yY2EsIGV0IGFsLgo+Pgo+PiBTbyBkbyBJIG5lZWQgdG8gd2FpdCBvbiB0aGUg
ZnVsbCByZWxlYXNlIG9mIDUuMjYgdG8gZ2V0IGFsbCB0aGUgbmV3IGZlYXR1cmVzIHRoZW4sIHNp
bmNlIHRoZSB3YXkgSSByZWFkIEtERSdzIGJldGEvcmVsZWFzZSBzY2VkdWxlIGlzIHRoZSBiZXRh
IGlzIGZlYXR1cmUgY29tcGxldGUgaWYgSSB1bmRlcnN0YW5kIGl0IHJpZ2h0IG9yIGFtIEkgbm90
IHVuZGVyc3RhbmRpbmcgaG93IEtERSBkb2VzIHRoZWlyIGJldGFzCj4+Cj4+Cj4+IEkga25vdyBD
cnlzIGhhcyBiZWVuIGRvaW5nIGEgbG90IG9mIHdvcmsgd2l0aCBLREUgc28gSSdtIGhvcGluZyBm
b3IgeW91ciBpbnB1dCBvbiB0aGlzLCBzaW5jZSBJJ3ZlIGJlZWVuIHRvbGQgYnkgb3RoZXIgZm9s
a3Mgb2ZmIGxpc3QgdGhleSd2ZSBoYWQgbXVjaCBtdWNoIGJldHRlciBleHBlcmllbmNlcyB3aXRo
IGl0IGFuZCBnZXR0aW5nIHRoaW5ncyB0byB3b3JrIHRoYXQgSSBjYW4ndCwgZm9yIGV4YW1wbGUK
Pj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pgo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcg
bGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

