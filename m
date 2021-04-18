Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id D97793633D6
	for <lists+blinux-list@lfdr.de>; Sun, 18 Apr 2021 07:31:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618723899;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=2TSJbZ01VfBttT/6hsogFonDch8j8SdxgvQlEmTLy1U=;
	b=hWyBa5fjYTPYcZzrpgUUU8XddyF+Tcetml4JASUGjqmMJfx6ntQKQ8HLyhMzGMihHFjrcx
	jmB96wiTyRH1JBQlYYV2NBllEs+k4pQYztA4i1pTixIVCdS/VCWyMl1cV/RN+BV7VA1mQC
	Om0RPL1LOTY3/VDCkjuBLoAt8FuES6o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-568-19RojH0ANFyoroFKs34tQQ-1; Sun, 18 Apr 2021 01:31:37 -0400
X-MC-Unique: 19RojH0ANFyoroFKs34tQQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DE7C850204;
	Sun, 18 Apr 2021 05:31:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CCCEC5D9CD;
	Sun, 18 Apr 2021 05:31:32 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A303A1806D16;
	Sun, 18 Apr 2021 05:31:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13I5VTnx025196 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 18 Apr 2021 01:31:29 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0A4802087A5B; Sun, 18 Apr 2021 05:31:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0511D2087A40
	for <blinux-list@redhat.com>; Sun, 18 Apr 2021 05:31:26 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BCDE6101A52C
	for <blinux-list@redhat.com>; Sun, 18 Apr 2021 05:31:26 +0000 (UTC)
Received: from mx1.simplelogin.co (mx1.simplelogin.co [94.237.111.15])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-578-IXcvzzz1Oka-yKK6rgognw-1; Sun, 18 Apr 2021 01:31:23 -0400
X-MC-Unique: IXcvzzz1Oka-yKK6rgognw-1
X-SimpleLogin-Client-IP: 2a04:3544:1000:1510:8c7a:9cff:fe3c:4b2c
Received: from [172.17.0.3] (mx1.simplelogin.co
	[IPv6:2a04:3544:1000:1510:8c7a:9cff:fe3c:4b2c])
	by mx1.simplelogin.co (Postfix) with ESMTP id 4120F5E7FA
	for <blinux-list@redhat.com>; Sun, 18 Apr 2021 05:25:27 +0000 (UTC)
In-Reply-To: <161870783828.7.7052329592837058755.5970391@simplelogin.co>
References: <161866688954.6.12074603936546144678.5956995@simplelogin.co>
	<161870350119.8.17896736538043458897.5969450@slmail.me>
	<CAO2sX33vz_y4yBAAy7JDdv5PWmRoS_QvTXxV+ghoWpyuhuRSig@mail.gmail.com>
	<161870783828.7.7052329592837058755.5970391@simplelogin.co>
Subject: Re: Formatting - was Would you be interested in having natural
	sounding TTS voices by Readspeaker on Linux? demo link included
MIME-Version: 1.0
To: blinux-list@redhat.com
Cc: blinux-list@redhat.com
Message-ID: <161872352710.7.7198123855397945809.5973213@slmail.me>
Date: Sun, 18 Apr 2021 05:25:27 -0000
X-SimpleLogin-Type: Reply
X-SimpleLogin-EmailLog-ID: 5973213
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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

WWVhaCwgc29tZXRpbWVzIHRoZSBzcGxpY2luZyB3aXRoIG5hdHVyYWwtbGlrZSB2b2ljZXMgY2Fu
IGJlIHF1aXRlIGlycml0YXRpbmcuIEknZCBzdGlsbCByYXRoZXIgdGhhdCB0aGFuIGNvbXB1dGVy
aXplZCB2b2ljZXMgdGhvdWdoIGxvbC4KwqAgSSB0aGluayBJdm9uYSBkaWQgcHJldHR5IGdvb2Qg
YXQgbWFraW5nIGFsbW9zdCBodW1hbi1saWtlIHZvaWNlcy4gSSBoYXZuJ3QgZm91bmQgYW55IG90
aGVyIFRUUyB0aGF0IGNvbXBhcmVzIHRvIEl2b25hLiBMaWtlLCBpZiB5b3UgZXZlciBoYXZlIHRo
ZSBjaGFuY2UgdG8gbGlzdGVuIHRvIHRoZSBJdm9uYSB2b2ljZSBjYWxsZWQgS2VuZHJhLCBvZiBj
b3Vyc2UsIGl0cyBub3QgY29tcGxldGVseSBodW1hbiwgYnV0IGl0IGhhcyBzb21lIG9mIHRoZSBt
b3N0IG5hdHVyYWwgZmxvdyBhbmQgYWNjdXJhdGUgaW5mbGVjdGlvbiBJJ3ZlIGV2ZXIgaGVhcmQg
aW4gYSBUVFMuIEkgaGF2ZSBJdm9uYSdzIEtlbmRyYSBvbiBXaW5kb3dzIHdpdGggTlZEQSBhbmQg
SSBqdXN0IGluY3JlYXNlIHRoZSBzcGVlZCBhIGxpdHRsZSBiaXQgKHN0aWxsIGF0IG5vcm1hbCBo
dW1hbiBzcGVha2luZyBzcGVlZCBqdXN0IGEgYml0IGZhc3RlciB0aGFuIHRoZSBkZWZhdWx0IHJh
dGUpIGFuZCB0byBtZSwgdGhhdCBzb3VuZHMgZXZlbiBtb3JlIG5hdHVyYWwgdGhhbiB0aGUgZGVm
YXVsdCBzcGVlZCB1c2VkIG9uIEJvb2tzaGFyZSBmb3IgZXhhbXBsZS4gTGFzdCBJIGNoZWNrZWQs
IEJvb2tzaGFyZSB1c2VkIEl2b25hIEtlbmRyYSB0byB2b2ljZSBpdHMgYm9va3Mgd2hlbiB5b3Ug
Y2hvb3NlIGF1ZGlvLiAKQnV0IHdoZW4gSSBsaXN0ZW4gdG8gc29tZXRoaW5nIGxpa2UgdGhlIE51
YW5jZSB2b2ljZXMsIHRoZSBpbmZsZWN0aW9uIGp1c3QgZG9lc24ndCBjb21wYXJlIHRvIHRoZSBm
bG93IG9mIEl2b25hLiBUaGF0cyB3aHkgaXRzIHNvIGZydXN0cmF0aW5nIHRoYXQgd2UgY2FuJ3Qg
c2VlbSB0byBnZXQgSXZvbmEgb24gTGludXguClN0aWxsLCBJIHdvdWxkwqAgdGFrZSBOdWFuY2Ug
b3IganVzdCBhYm91dCBhbnkgb3RoZXIgbmF0dXJhbCBUVFMgc3ludGgsIGV2ZW4gaWYgaXQgaGFz
IHNvbWUgYXVrd2FyZCBpbmZsZWN0aW9ucywgSSdkIHN0aWxsIHRha2UgdGhhdCBhbnkgZGF5LCBv
dmVyIEVzcGVhayBvciBFbG9xdWVuY2UsIGJ1dCB0aGF0cyBqdXN0IG1lIGxvbC4gSSBjYW4gdG9s
bGVyYXRlIHNob3J0IHRhc2tzIHdpdGggY29tcHV0ZXJpemVkIHNwZWVjaCwgYnV0IGlmIGl0cyBh
IGxvbmdlciBwaWVjZSBvZiB0ZXh0LCBhbnl0aGluZyB0aGF0IEkgYW0gc3VwcG9zZWQgdG8gZm9j
dXMgb24gb3IgZW5qb3ksIHRoZW4gSSB3YW50IGEgbmF0dXJhbCBUVFMgZm9yIHRoYXQuIEJ1dCBJ
J20gZ2xhZCB0aGUgY29tcHV0ZXJpemVkIHZvaWNlcyBhcmUgYXZhaWxhYmxlLiBJdHMgcmVhbGx5
IGp1c3QgYSBwZXJzb25hbCBwcmVmZXJlbmNlLiBTb21lIGxpa2UgdGhlIGNvbXB1dGVyaXplZCBv
bmVzLCBhbmQgc29tZSBsaWtlIHRoZSBuYXR1cmFsLWlzaCBvbmVzLiBJJ3ZlIGFsd2F5cyBjaG9z
ZSB0aGUgbmF0dXJhbCBvbmVzIHdoZW5ldmVyIEkgaGF2ZSB0aGUgY2hvaWNlLiBFdmVuIHRob3Vn
aCB0aGV5J3JlIG5vdCBxdWl0ZSBodW1hbiwgdG8gbWUgSSBqdXN0IGZpbmQgdGhlbSBlYXNpZXIg
dG8gbGlzdGVuIHRvLgpTTApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpo
dHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

