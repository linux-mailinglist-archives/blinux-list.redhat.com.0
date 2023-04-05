Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C93546D7D88
	for <lists+blinux-list@lfdr.de>; Wed,  5 Apr 2023 15:19:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1680700753;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=0QrN+ypV2Fw9egB0C1EaGnou6F6Va0pUDbkl+iNQfqs=;
	b=Aj29o5H0c6h5TdqcHMjlBwz/qAgqIfGRvUZq70aQwsYSxKiiyUTtkX13mQ6n361IZksoEY
	QRJIYHYVd4z91irxZV9qaeyW1PoHGMeIPsuFeqNoxcVkUoAc1eFPmodN/EB0e1fglqkL6N
	hpN9L/vx66wPUbKfRPBj9wnAARWfRsk=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-644-Gf3xQR4DP_iTvNNmpvJ1Sg-1; Wed, 05 Apr 2023 09:19:12 -0400
X-MC-Unique: Gf3xQR4DP_iTvNNmpvJ1Sg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 96A401C02D3B;
	Wed,  5 Apr 2023 13:19:09 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D593D40C6EC4;
	Wed,  5 Apr 2023 13:19:08 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 1E47119465A4;
	Wed,  5 Apr 2023 13:19:02 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 5 Apr 2023 14:18:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: Debian beginner questions/looking for a good rolling distro
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.1235.1680685726.558769.blinux-list@redhat.com>
 <mailman.1912.1680698615.558774.blinux-list@redhat.com>
In-Reply-To: <mailman.1912.1680698615.558774.blinux-list@redhat.com>
Message-ID: <mailman.2047.1680700742.558772.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SXQgaXMsIG9yIGF0IGxlYXN0LCB5b3UgY2FuJ3QgdXBkYXRlIGFueSBtb3JlLiBXaGljaCBpcyB3
aHkgSSdtIG9uIHRoZSAKaHVudCBmb3LCoCBnb29kIGRpc3RybyB0aGF0IEkgY2FuIHdoYWNrIG9u
IG15IGxhcHRvcC4gU29sdXMgd2FzIHRoYXQsIApzYWRseSBubyBtb3JlLgoKClNvIG15IHF1ZXN0
aW9ucyBhcmUgZG93biB0aGVyZSwgYW5kIHRyeWluZyB0byBmaW5kIGEgZGVjZW50IHJvbGxpbmcg
CnJlbGVhc2UgdGhhdCBtZWV0cyB0aG9zZSBjcml0ZXJpYSwgSSBjYW4ndCBnZXQgRGViaWFuIHRv
IGJvb3QgdXAgaW4gcWVtdSAKc28uLi4KCk9uIDQvNS8yMyAxMTo1NSwgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBEaWQgbm90IGtub3cgU29sdXMgaXMgZ29uZS4K
Pgo+PiBPbiBBcHIgNSwgMjAyMywgYXQgMDQ6MDgsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRp
c2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+Pgo+PiBTbywgZ2l2ZW4g
U29sdXMncyBhcHBhcmVudCBzdWRkZW4gZGVtaXNlLi4ud2hpY2ggcGFpbnMgbWUgc2luY2UgSSBs
aWtlIHRoZSBkaXN0cm8uIEknbSBvbiB0aGUgaHVudCBmb3IgYSBkZWNlbnQsIHJvbGxpbmcgZGlz
dHJvCj4+Cj4+Cj4+IEkndmUgZ290IERlYmlhbiB0ZXNzdGluZyBhdG9wIG15IGxpc3QuCj4+Cj4+
Cj4+IFNvIGhlcmUncyBteSBxdWVzdGlvbnMKPj4KPj4KPj4gMS4gSXMgRGViaWFuIHRlc3Rpbmcg
YXMgY2xvc2UgdG8gYSByb2xsaW5nIHJlbGVhc2UgYXMgSSdsbCBnZXQ/Cj4+Cj4+Cj4+IDIuIEhv
dyBlYXN5IGlzIGl0IHRvIG1pZ3JhdGUgZnJvbSBTb2x1cyB0byBEZWJpYW4sIEkgd2FudCB0byBy
ZXByb2R1Y2UgbXkgc2V0dXAgYW5kIHdvcmtmbG93IG9uIERlYmlhbiwgaS5lLiBpMywgdGV4dCBl
ZGl0b3IsIHNhbWUgdGVybWluYWwsIGV0IGFsCj4+Cj4+Cj4+IDMuIEJlc2lkZXMgQXJjaCwgaXMg
dGhlcmUgYW5vdGhlciBnb29kIGRpc3RybyBJIGNhbiB1c2U/IE15IGxhcHRvcCBkb2Vzbid0IGdl
dCBjb25zdGFudCB1c2UgaG93ZXZlciBzbyBJJ20gbG9va2luZyBmb3Igc29tZXRoaW5nIHRoYXQg
aXMuLi4KPj4KPj4KPj4gYS4gU3RhYmxlCj4+Cj4+Cj4+IGIuIENhbiBlYXNpbHkgYnVpbGQgb3Jj
YS1tYXN0ZXIgYW5kIHVzZSBpdCBvciBoYXMgdGhlIGxhdGVzdCBPcmNhIGluIGl0cyByZXBvcwo+
Pgo+Pgo+PiBjLiBDYW4gYmUgaW5zdGFsbGVkIG9mZmxpbmUgKGJlY2F1c2Ugbm8gZXRoZXJuZXQg
cG9ydCkKPj4KPj4KPj4gU28gYW55IGlkZWFzIG9uIHRoZSBhYm92ZSBxdWVzdGlvbnM/Cj4+Cj4+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51
eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8v
bGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4KPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0
IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlz
dApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

