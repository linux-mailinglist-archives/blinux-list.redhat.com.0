Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 992683DC79C
	for <lists+blinux-list@lfdr.de>; Sat, 31 Jul 2021 20:21:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627755709;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=8H65jlHQst/P6M0Gj1NTMiuNzezlfBK0ZJkOfzQvj8s=;
	b=SHJt4O7wttJBoWyXL657s9ZlMVdCYSJwzSu4ROrQlcwlIhg5+J+uzOcugfVAxOKvzfhAiz
	35mf4RL7VoE+CAmAOdOKr9Q2WBgvbKE1OOemhnxOsK+IVvut8qABsQnyIbFdwEJkD+jT9E
	0gH7sW00zOhkVzZTQexxZDH6Xtdgo0U=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-535-JW0pild_M5yNWyrpllxmAg-1; Sat, 31 Jul 2021 14:21:48 -0400
X-MC-Unique: JW0pild_M5yNWyrpllxmAg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1337C107465F;
	Sat, 31 Jul 2021 18:21:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A1973421F;
	Sat, 31 Jul 2021 18:21:43 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 945E9180B7A2;
	Sat, 31 Jul 2021 18:21:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16VILaUP015139 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 31 Jul 2021 14:21:36 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3F6A9200C0F5; Sat, 31 Jul 2021 18:21:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3AF9B200C0F3
	for <blinux-list@redhat.com>; Sat, 31 Jul 2021 18:21:33 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B9004800963
	for <blinux-list@redhat.com>; Sat, 31 Jul 2021 18:21:33 +0000 (UTC)
Received: from mail-41103.protonmail.ch (mail-41103.protonmail.ch
	[185.70.41.103]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-533-uVbfOk_SNGiSXAuChjZ9rA-1; Sat, 31 Jul 2021 14:21:31 -0400
X-MC-Unique: uVbfOk_SNGiSXAuChjZ9rA-1
Received: from mail-0201.mail-europe.com (mail-0201.mail-europe.com
	[51.77.79.158])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	by mail-41103.protonmail.ch (Postfix) with ESMTPS id 4GcXWF04SMz53LFM
	for <blinux-list@redhat.com>; Sat, 31 Jul 2021 18:15:37 +0000 (UTC)
Date: Sat, 31 Jul 2021 18:14:55 +0000
To: blinux-list@redhat.com
Subject: Re: Setup of Raspberry PI
Message-ID: <d51f3b64-b207-d46a-80fd-0c25dd18699f@protonmail.com>
In-Reply-To: <017601d78622$98193d80$c84bb880$@kellford.com>
References: <017601d78622$98193d80$c84bb880$@kellford.com>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM shortcircuit=no
	autolearn=disabled version=3.4.4
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 16VILaUP015139
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

SGVsbG8sCgpJIGRvbid0IGtub3cgYWJvdXQgdGhlIG9sZGVyIHZlcnNpb25zIG9mIFBpLCBidXQg
SSd2ZSBzZXQgdXAgNEIKc3VjY2Vzc2Z1bGx5IHdpdGhvdXQgYW55IHNpZ2h0ZWQgYXNzaXN0YW5j
ZSB1c2luZyB0aGUgb2ZmaWNpYWwgUmFzcGJlcnJ5Ck9TIGltYWdlLgoKClByYW5hdiBMYXYgd3Jv
dGUgYSB2ZXJ5IGdvb2QgdHV0b3JpYWwgb24gaGlzIGJsb2c6CgpodHRwczovL3RlY2hlc290ZXJp
Y2EuY29tL2dldHRpbmctdGhlLW9yY2Etc2NyZWVuLXJlYWRlci13b3JraW5nLW9uLWEtcmFzcGJl
cnJ5LXBpLTQtd2l0aC1yYXNwYmlhbi1idXN0ZXItYW5kLXRoZS1tYXRlLWRlc2t0b3AvCgoKSSBo
YXZlIHR3ZWFrZWQgaXQgYSBiaXQgZm9yIG15IHB1cnBvc2VzLCBpbmNsdWRpbmcgY29uZmlndXJh
dGlvbiBvZiB0aGUKbGFuZ3VhZ2UgYW5kIHdpZmkgb3ZlciBTU0gsIHVzaW5nIHRoZSBkZWZhdWx0
IGRlc2t0b3AgZW52aXJvbm1lbnQgKHdoaWNoCmlzIGEgZm9yayBvZiBMWERlKSBhbmQgaW5zdGFs
bGluZyBPcmNhIGRpcmVjdGx5IGZyb20gdGhlIHJlcG9zaXRvcnksIGFzCnRoZSBmcm9tIHNvdXJj
ZSBpbnN0YWxsYXRpb24gZGlkIG5vdCB3b3JrIHZlcnkgd2VsbCAtIEkgd2FzIG5vdCBhYmxlIHRv
CmNvbmZpcm0gdGhlIGNvbmZpZ3VyYXRpb24gcmVxdWVzdGVkIG9uIHRoZSBmaXJzdCBydW4uCgpU
aG91Z2ggSSBzdXBwb3NlIHRoaXMgY2FuIGJlIHdvcmtlZCBhcm91bmQgc2ltcGx5IGJ5IGluc3Rh
bGxpbmcKc291cmNlLWNvbXBpbGVkIE9yY2Egb3ZlciBhIHJlcG9zaXRvcnkgaW5zdGFsbGF0aW9u
LCBJIHVzZSBpdCB0aGlzIHdheQpvbiBteSBsYXB0b3AgYW5kIGl0IHdvcmtzIHF1aXRlIHdlbGwg
KHRoZSByZXBvc2l0b3J5IHZlcnNpb24gaXMgbm90CnVwZGF0ZWQgYW55d2hlcmUgbmVhciBsb3cg
ZnJlcXVlbnRseSwgc28gSSdtIG5vdCB3b3JyaWVkIGFib3V0IHRoaW5ncwpnZXR0aW5nIG1lc3Nl
ZC4gOikgKQoKCkJlc3QgcmVnYXJkcwoKClJhc3Rpc2xhdgoKCkTFiGEgMzEuIDcuIDIwMjEgbyAx
Nzo0MSBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIG5hcMOtc2FsKGEpOgo+IEhp
LAo+Cj4KPgo+IE15IFJhc3BiZXJyeSBQSSBkZXZpY2UgbG9zdCBwb3dlciBkdXJpbmcgYW4gdXBn
cmFkZSBzbyB3YXNuJ3QgYm9vdGluZyBhbnkKPiBsb25nZXIuICBJIHJlZmxhc2hlZCB0aGUgU0Qg
Y2FyZCB0byBqdXN0IGRvIGEgY2xlYW4gaW5zdGFsbC4gIEJ1dCBJIGFtIG5vdwo+IGN1cmlvdXMg
aWYgdGhlcmUgaXMgYSB3YXkgdG8gZ2V0IE9SQ0Egb3Igb3RoZXIgc3BlZWNoIHRvIGRvIHNldHVw
Pwo+Cj4KPgo+IFRoZSBmaXJzdCB0aW1lIEkgZGlkIHRoaXMsIEkgaGFkIHNpZ2h0ZWQgYXNzaXN0
YW5jZSBiZWNhdXNlIEkgYW5kIGEgYnJvdGhlcgo+IHdlcmUgc2V0dGluZyB1cCBmb3VyIG9mIHRo
ZXNlIGF0IHRoZSBzYW1lIHRpbWUKPgo+Cj4KPiBJJ3ZlIHRyaWVkIGEgZmV3IHRoaW5ncyB0byB0
cnkgYW5kIGdldCB0aGluZ3MgdGFsa2luZyB3aXRoIG5vIGx1Y2suICBJJ20KPiB1c2luZyB0aGUg
ZGVmYXVsdCBSYXNwYmVycnkgUEkgaW1hZ2UgZnJvbSB0aGVpciBzaXRlLgo+Cj4KPgo+IEtlbGx5
Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJs
aW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczov
L2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBt
YWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

