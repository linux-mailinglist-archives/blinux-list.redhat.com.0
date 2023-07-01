Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AD25B744930
	for <lists+blinux-list@lfdr.de>; Sat,  1 Jul 2023 15:31:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1688218279;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=KL78xo+JGSxbFGuN8Xi61r8v53jb838YXI15rovHRYM=;
	b=TKIpOr6/aOaQILta9Bk7YM8vLsC+Mj4cKrWqvz+/dqAAubsqlM1J+5DFvCUlM+XIgNt6Gf
	hWSCCZ6PxcAmpEgd7Ombm4JGCe/lws/QMw7uAhAKXu+iAmxAwf4I9mWqgppTEcRcXw/wGK
	lj01Q8Nly7dBGD7dydQXSj4WveLvD1U=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-333-zZHHzkp8OpKiclZYcGE2LA-1; Sat, 01 Jul 2023 09:31:15 -0400
X-MC-Unique: zZHHzkp8OpKiclZYcGE2LA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AF1B13C021B6;
	Sat,  1 Jul 2023 13:31:13 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 5104140C206F;
	Sat,  1 Jul 2023 13:31:08 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 63F231946A52;
	Sat,  1 Jul 2023 13:31:07 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 01 Jul 2023 13:30:52 +0000
To: blinux-list@redhat.com
Subject: Re: v p n and linux
In-Reply-To: <mailman.44.1688212620.1378976.blinux-list@redhat.com>
References: <mailman.1554.1688134875.3098363.blinux-list@redhat.com>
 <mailman.38.1688204274.1378982.blinux-list@redhat.com>
 <mailman.44.1688212620.1378976.blinux-list@redhat.com>
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.47.1688218267.1378976.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiBJIGd1ZXNzIHRoZSBJUCB0aGF0IGlzIGJlaW5nIHVzZWQgdG8gY3JlYXRlIHRoZSBhY2NvdW50
IHdvdWxkIHF1YWxpZnkgYXMgc3VjaCEgOikKCk5vdCBuZWNlc3NhcmlseS4gWW91IGNhbiBjcmVh
dGUgdGhlIGFjY291bnQgdXNpbmcgVG9yLCB0aGUgc2VydmljZSBldmVuIHByb3ZpZGVzIGFuIG9u
aW9uIHNpdGUsIHNvIHRoZSB0cmFmZmljIGlzIGVuZCB0byBlbmQgZW5jcnlwdGVkIGFuZCB5b3Ug
ZG9u4oCZdCByaXNrIHJldmVhbGluZyBhbnl0aGluZy4KCj4gTm90IGluIGFueWNhc2UgZnJvbSB0
aGUgVlBOIHByb3ZpZGVyLCBhcyB0cmFmZmljIGlzIGRlY3JpcHRlZCBhdCB0aGUgVlBOIHByb3Zp
ZGVyISA6KSBCZWluZyBhYmxlIHRvIHJlYWQgdGhlIHRyYWZmaWMgaXMgbm90IHRoZSBzYW1lIGFz
IGtub3dpbmcgd2hvIHNlbnQgaXQsIHVubGVzIGl0IHdvdWxkIGJlIGxpbmtlZCB0byBzb21ldGhp
bmcgeW91IGF0IHRoZSBzYW1lIHRpbWUgdXNlIHRocm91Z2ggYSBzdGFuZGFyZCBjb25uZWN0aW9u
LiBXaGF0IHdvdWxkIHNvcnQgb2YgYmVhdCB0aGUgcG9pbnQgb2YgdXNpbmcgYW55IGFub255bWl6
YXRpb24gdGVjaG5pcXVlcy4gOikKCkFuZCB0aGluZ3MgYXJlbuKAmcWnIHNvIHNpbXBsZSB3aXRo
IHJlYWRpbmcgdGhlIHRyYWZmaWMgZWl0aGVyLCBldmVyeXRoaW5nIHVzZXMgU1NMIGNvbm5lY3Rp
b25zIHRoZXNlIGRheXMsIHNvIHdoaWxlIHRoZSBwcm92aWRlciBkb2VzIGhhdmUgc29tZSBjbHVl
cyBhYm91dCB3YXQgd2Vic2l0ZXMgZG9lcyBhbiB1bmtub3duIGV4aXN0ZW5jZSB1c2UsIHRoZSB0
cmFuc21pdHRlZCBpbmZvcm1hdGlvbiBhcmUgc3RpbGwgcHJvdGVjdGVkLgoKPiBIb3cgc28sIG9w
ZW5zb3VyY2UgZG9lcyBub3QgbWVhbiBzZWN1cml0eSwgaXQgc2ltcGx5IG1lYW5zIHRoYXQgeW91
IGNhbiByZXZpZXcgdGhlIGNvZGUhIDopIEluZGVlZCwgdGhhdOKAmXMgcmlnaHQuIEJ1dCB0aGUg
bW9yZSBwb3B1bGFyIGEgc2VydmljZSBpcywgdGhlIG1vcmUgcGVvcGxlIGFyZSBsaWtlbHkgdG8g
Y2hlY2sgb3V0IHRoZSBzb3VyY2UgY29kZS4KPiBBaXJWUE4gaXMgY2VydGFpbmx5IG5vdCB0aGUg
YmlnZ2VzdCBWUE4gYXJvdW5kLCBidXQgaXTigJlzIG5vdCBxdWl0ZSB1bmtub3duLCBlaXRoZXIu
Cj4gSXTigJlzIGZ1bGx5IHRyYW5zcGFyZW50IGFib3V0IGV2ZXJ5dGhpbmcgaXQgZG9lcywgbWVh
bmluZyBpdCB3b3VsZCBiZSBqdXN0IGEgbWF0dGVyIG9mIHRpbWUgdG8gcmV2ZWFsIGFueSBzbmVh
a3kgcHJhY3RpY2VzLgoKQXMgZm9yIHNlY3VyaXR5IGluIHRoZSBzZW5zZSBvZiB2dWxuZXJhYmls
aXRpZXMsIHRoaXMgaXMgYSB0aGluZyB3aXRoIGV2ZXJ5IHNpbmdsZSB0ZWNobm9sb2d5LgpZb3Ug
Y2FuIGNoZWNrIG91dCB0aGUgcmFuZ2Ugb2YgYWN0aXZpdGllcyBBaXJWUE4gaGFuZGxlcywgdGhl
IHBlb3BsZSBiZWhpbmQgdGhlbSBhbmQgZGV0ZXJtaW5lIHRoZWlyIGNvbXBldGVuY2UuClRoZXni
gJlyZSBub3QgaGlkaW5nIGFueXRoaW5nLgoKQmVzdCByZWdhcmRzCgpSYXN0aXNsYXYKCkTFiGEg
MS4gNy4gMjAyMyBvIDEzOjU2IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gbmFw
w61zYWwoYSk6Cgo+IE9uIDcvMS8yMyAxMTozNywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlz
Y3Vzc2lvbiB3cm90ZToKPgo+PiBXaGVuIGl0IGNvbWVzIHRvIHVzaW5nIFZQTiBmb3IgZGlzZ3Vp
c2luZyBpZGVudGl0eSwgcGVyc29uYWxseSBJIGxvdmUKPj4gQWlyVlBOLgo+Pgo+PiBZb3UgY2Fu
IHB1cmNoYXNlIGFuIGFjY291bnQgd2l0aCBNb25lcm8sIHdpdGhvdXQgcHJvdmlkaW5nIGFueSBw
ZXJzb25hbAo+PiBpbmZvcm1hdGlvbi4KPgo+IEkgZ3Vlc3MgdGhlIElQIHRoYXQgaXMgYmVpbmcg
dXNlZCB0byBjcmVhdGUgdGhlIGFjY291bnQgd291bGQgcXVhbGlmeSBhcwo+IHN1Y2ghIDopCj4K
Pj4gQWZ0ZXJ3YXJkcywgeW91IGNhbiB1c2UgdGhlIFZQTiBpbiBhIFZQTiBvdmVyIFRvciBtb2Rl
IGkuZS4geW91ciB0cmFmZmljCj4+IGlzIHJvdXRlZCB0aHJvdWdoIHRoZSBUb3IgbmV0d29yayBi
ZWZvcmUgaXQgcmVhY2hlcyB0aGUgVlBOIHNlcnZlcnMsCj4+IHRodXMgaGlkaW5nIHlvdXIgaWRl
bnRpdHkgZnJvbSB0aGUgc2VydmljZSBwcm92aWRlci4KPgo+IE5vdCBpbiBhbnljYXNlIGZyb20g
dGhlIFZQTiBwcm92aWRlciwgYXMgdHJhZmZpYyBpcyBkZWNyaXB0ZWQgYXQgdGhlIFZQTgo+IHBy
b3ZpZGVyISA6KQo+Cj4+IFRoZSBBaXJWUE4gc3RhY2sgaXMgb3BlbiBzb3VyY2UsIG1lYW5pbmcg
dGhlIHNlY3VyaXR5IGFuZCByZWxpYWJpbGl0eQo+PiBzaG91bGQgYmUgcXVpdGUgdHJ1c3Qtd29y
dGh5Lgo+Cj4gSG93IHNvLCBvcGVuc291cmNlIGRvZXMgbm90IG1lYW4gc2VjdXJpdHksIGl0IHNp
bXBseSBtZWFucyB0aGF0IHlvdSBjYW4KPiByZXZpZXcgdGhlIGNvZGUhIDopCj4KPiAtLQo+IEpv
aG4gRG9lCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPgo+
IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK
CuKAiwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3Rt
YW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

