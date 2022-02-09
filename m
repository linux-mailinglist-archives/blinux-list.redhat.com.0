Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BD584AEF3D
	for <lists+blinux-list@lfdr.de>; Wed,  9 Feb 2022 11:25:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644402348;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=qXHiVHQkixTppqyuTxc/T+fyiFFtwWnc9meslGu1o00=;
	b=EJId6RBAEY3BQS9cvwH6w55ZRKP3snWaOVYg1ZKQPTMYAS6se7FC51zDDFZj3b+gcZyHgm
	V2VU9f2WEMlTsRLsRX2XznGa7Q/ddzfPh0kSAph7MbV+cXMKeb1VW+qcLCDJWlrM+4KXRW
	zOHVRmw4NMd1U3kIQxi2w0vK5IM8TDo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-91-io4ZA7b6PmqKUafKKgMi7w-1; Wed, 09 Feb 2022 05:25:40 -0500
X-MC-Unique: io4ZA7b6PmqKUafKKgMi7w-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4EEAF1091DA0;
	Wed,  9 Feb 2022 10:25:36 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6BCBF60C30;
	Wed,  9 Feb 2022 10:25:35 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 787211809CB9;
	Wed,  9 Feb 2022 10:25:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 219APSh8029435 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 9 Feb 2022 05:25:28 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 7DCC71121333; Wed,  9 Feb 2022 10:25:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 791861121331
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 10:25:22 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 91BAE2B699E0
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 10:25:22 +0000 (UTC)
Received: from mail-4322.protonmail.ch (mail-4322.protonmail.ch
	[185.70.43.22]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-214-ATRAs2QwPsqe1VwCB7Hc6w-1; Wed, 09 Feb 2022 05:25:20 -0500
X-MC-Unique: ATRAs2QwPsqe1VwCB7Hc6w-1
Date: Wed, 09 Feb 2022 10:25:13 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Coqui TTS has blew my mind!
Message-ID: <7a0e0ac7-5e7d-a41a-b775-6782a87ba869@protonmail.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 219APSh8029435
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gZXZlcnlvbmUsCgptYXkgYmUgSSd2ZSBkaXNjb3ZlcmVkIEFtZXJpY2EsIGJ1dCB5ZXN0
ZXJkYXkgSSBtb3N0bHkgcmFuZG9tbHkgY2FtZSBhY3Jvc3M6CgpodHRwczovL2Vyb2dvbC5naXRo
dWIuaW8vZGRjLXNhbXBsZXMvCgoKQW5kIHRoZSB2b2ljZSBoYXMgY29tcGxldGVseSBibGV3IG15
IG1pbmQhCgpMaWtlLCBJIGtuZXcgdGhlIFRUUyBhcmVhIGhhcyBhZHZhbmNlZCBzaWduaWZpY2Fu
dGx5IGluIHRoZSByZWNlbnQKeWVhcnMsIGJ1dCBJIHRob3VnaHQgdGhlIG5ldyBuZXVyYWwgdm9p
Y2VzIGFyZSBtb3N0bHkgY2xvc2VkIGZlYXR1cmVzIG9mCmNvbXBhbmllcyBsaWtlIEdvb2dsZSBv
ciBNaWNyb3NvZnQuCgpJIGhhZCBubyBpZGVhIHdlIGhhZCBzb21ldGhpbmcgc28gYmVhdXRpZnVs
IG9uIGxpbnV4IGFuZCBjb21wbGV0ZWx5Cm9wZW4tc291cmNlIQoKClBsdXMsIGl0J3Mgbm90IGp1
c3QgdGhlIGxpY2Vuc2UgdGhhdCBtYWtlcyB0aGlzIHNvIGludGVyZXN0aW5nLCBidXQgYWxzbwp0
aGUgdXNhYmlsaXR5LgoKVGhlcmUgd2VyZSB0aGUgRGVlcG1pbmQgcGFwZXJzIGV2ZW4gYmVmb3Jl
IGFuZCBzb21lIG9wZW4gcHJvamVjdHMgdHJ5aW5nCnRvIGltcGxlbWVudCB0aGVtLCBidXQgdGhl
IGxldmVsIG9mIGNvbXBsZXRlbmVzcyBhbmQgdXNhYmlsaXR5IHZhcmllZApzaWduaWZpY2FudGx5
LCBldmVuIGlmIGEgcHJvamVjdCB3YXMgdXNhYmxlLCBnZXR0aW5nIGl0IHRvIHdvcmsgcmVxdWly
ZWQKc29tZSBlZmZvcnQgKGF0IGxlYXN0IHRoZSBwcm9qZWN0cyBJIHNhdykuCgoKV2l0aCBDb3F1
aSwgdGhlIHNpdHVhdGlvbiBpcyBjb21wbGV0ZWx5IGRpZmZlcnJlbnQuCgpBcyB0aGUgYWJvdmUg
bWVudGlvbmVkIGJsb2cgc2F5cywgYWxsIHlvdSBuZWVkIHRvIGRvIGlzOgoKCiQgcGlwMyBpbnN0
YWxsIFRUUwoKJCB0dHMgLS10ZXh0ICJIZWxsbywgdGhpcyBpcyBhbiBleHBlcmltZW50YWwgc2Vu
dGVuY2UuIgoKCkFuZCB5b3UgaGF2ZSBhIHN5bnRoZXNpemVkIHJlc3VsdCEKCgpPciB5b3UgY2Fu
IGxhdW5jaCB0aGUgc2VydmVyOgoKJCB0dHMtc2VydmVyCgoKQW5kIHBsYXkgaW4gdGhlIHdlYiBi
cm93c2VyLiBOb3RlIHRoYXQgdGhlIGF1ZGlvIGlzIHNlbnQgb25seSBhZnRlciBpdCdzCmZ1bGx5
IHN5bnRoZXNpemVkLCBzbyB5b3UnbGwgbmVlZCB0byB3YWl0IGEgYml0IHRvIGxpc3RlbiBpdC4K
CgpUaGUgb25seSBwcm9ibGVtYXRpYyBwYXJ0IGlzIHRoZSBsaW1pdCBvZiBkZWNvZGVyIHN0ZXBz
LCB3aGljaCBpcyBzZXQgdG8KNTAwIGJ5IGRlZmF1bHQuCgpJJ20gbm90IHN1cmUgd2h5IGRpZCB0
aGV5IHB1dCBpdCBzbyBsb3csIHdpdGggdGhpcyB2YWx1ZSwgdGhlIFRUUyBpcwp1bmFibGUgdG8g
c3BlYWsgbG9uZ2VyIHNlbnRlbmNlcy4KCgpGb3J0dW5hdGVseSwgdGhlIGZpeCBpcyB2ZXJ5IGVh
c3kuIEFsbCBJIG5lZWRlZCB0byBkbyB3YXMgdG8gb3Blbgp+Ly5sb2NhbC9saWIvcHl0aG9uMy44
L3NpdGUtcGFja2FnZXMvVFRTL3R0cy9jb25maWdzL3RhY290cm9uX2NvbmZpZy5weQoKYW5kIG1v
ZGlmeSB0aGUgbGluZToKCiDCoMKgwqAgbWF4X2RlY29kZXJfc3RlcHM6IGludCA9IDUwMAoKdG8K
CiDCoMKgwqAgbWF4X2RlY29kZXJfc3RlcHM6IGludCA9IDAKCgp3aGljaCBzZWVtcyB0byBkaXNh
YmxlIHRoZSBsaW1pdC4KCgpBZnRlciB0aGlzIHN0ZXAsIEkgY2FuIHN5bnRoZXNpemUgdmVyeSBs
b25nIHNlbnRlbmNlcywgYW5kIHRoZSBxdWFsaXR5CmlzIGFic29sdXRlbHkgZ2xhbW9yb3VzIQoK
ClNvIEkgd2FudGVkIHRvIHNoYXJlLiBJIG1heSBiZSBhY3R1YWxseSB0aGUgbGFzdCBwZXJzb24g
ZGlzY292ZXJ5aW5nIGl0CmhlcmUsIHRob3VnaCBJIGRpZCBub3Qgc2VlIGl0IG1lbnRpb25lZCBp
biBUVFMgZGlzY3Vzc2lvbnMgb24gdGhpcyBsaXN0LgoKCkkndmUgZXZlbiB0aG91Z2h0IGFib3V0
IGNyZWF0aW5nIGEgc3BlZWNoIGRpc3BhdGNoZXIgdmVyc2lvbiBvZiB0aGlzLiBJdAp3b3VsZCBj
ZXJ0YWlubHkgYmUgZG9hYmxlLCB0aG91Z2ggSSdtIGFmcmFpZCB3aGF0IHdvdWxkIHRoZSBzeW50
aGVzaXMKc291bmQgbGlrZSB3aXRoIHRoZSBpcnJlZ3VsYXJpdGllcyBvZiBuYXZpZ2F0aW9uIHdp
dGggYSBzY3JlZW5yZWFkZXIuClRoZXNlIHZvaWNlcyBhcmUgaW50ZW5kZWQgZm9yIHJlYWRpbmcg
bG9uZ2VyIHRleHRzIGFuZCBjb25zaXN0ZW50CnBocmFzZXMsIHdpdGggcHVuY3R1YXRpb24sIGNv
bXBsZXRlIGluZm9ybWF0aW9uIGV0Yy4KClRoZSBpbnRvbmF0aW9uIHdvdWxkIHByb2JhYmx5IGdl
dCBhIGJpdCB3ZWlyZCB3aXRoIGZvciBleGFtcGxlIGp1c3QgYQpoYWxmIHNlbnRlbmNlLCBhcyBo
YXBwZW5zIHdoZW4gbmF2aWdhdGluZyBhIGRvY3VtZW50IG9yIHdlYnBhZ2UgbGluZSBieQpsaW5l
LgoKCkFub3RoZXIgbGltaXRhdGlvbiB3b3VsZCBiZSB0aGUgb25lIG9mIHNwZWVkLiBPbiBteSBs
YXB0b3AsIHRoZSByZWFsdGltZQpmYWN0b3IgKHByb2Nlc3NpbmcgZHVyYXRpb24gLyBhdWRpbyBs
ZW5ndGgpIGlzIGFyb3VuZCAwLjgsIHdoYXQgbWVhbnMgaXQKY291bGQgaGFuZGxlIHJlYWwtdGlt
ZSBzeW50aGVzaXMgYXQgdGhlIGRlZmF1bHQgc3BlZWQgd2l0aG91dCBkZWxheXMuCgoKVGhlIHNp
dHVhdGlvbiB3b3VsZCBnZXQgbW9yZSBjb21wbGljYXRlZCB3aXRoIGhpZ2hlciBzcGVlZHMsIHRo
b3VnaC4KCkl0IHdvdWxkbid0IGJlIGltcG9zc2libGUsIGJ1dCBvbmUgd291bGQgbmVlZCBhIEdQ
VSB0byBoYW5kbGUKc2lnbmlmaWNhbnRseSBoaWdoZXIgc3BlZWNoIHJhdGVzLgoKClNvIEkgd29u
ZGVyLgoKCkJ1dCBhbnl3YXksIHRoaXMgZGVmaW5pdGVseSBtYWRlIG15IGRheS4gOikKCgpCZXN0
IHJlZ2FyZHMKCgpSYXN0aXNsYXYKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRo
YXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3Q=

