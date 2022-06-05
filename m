Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B386353DD6C
	for <lists+blinux-list@lfdr.de>; Sun,  5 Jun 2022 19:51:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1654451488;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=gWYaVFvLb9DgjH3Ml3oZTFrUuvsXi0tfP36cg63ZwWo=;
	b=Iwpf2rweB/gbwW95jlPfvdrUZF5oagzaGA0MO/LnEnzS1J0JldSyJj9wRjEK+X84Xrph3F
	49SK7PKBrZF8xZZaFU1oelmi0nN2tWSC2Pr71EnY3C6DenxBu6FEefXrhpuZ93XnsgbR9N
	O5SrSohZG2oW3EYoVdmVxWgZKKprEkM=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-593-JTgcLA5uPF2pxZEqqHBQyA-1; Sun, 05 Jun 2022 13:51:25 -0400
X-MC-Unique: JTgcLA5uPF2pxZEqqHBQyA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7758E858EED;
	Sun,  5 Jun 2022 17:51:23 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id AAD621410F3B;
	Sun,  5 Jun 2022 17:51:18 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id E2E09194707B;
	Sun,  5 Jun 2022 17:51:17 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (1.0)
Subject: Re: nvda2speechd, let Windows programs talk through Speech dispatcher
Date: Sun, 5 Jun 2022 19:48:15 +0200
References: <mailman.21931.1654440086.111204.blinux-list@redhat.com>
In-Reply-To: <mailman.21931.1654440086.111204.blinux-list@redhat.com>
To: blinux-list@redhat.com
Message-ID: <mailman.21730.1654451477.111203.blinux-list@redhat.com>
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
Cc: speechd-discuss@nongnu.org
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SG93ZHkgUmFzdGlzbGF2LAoKVGhpcyBzb3VuZHMgdmVyeSBleGl0aW5nLiBHcmVhdCB3b3JrLCBh
cyB1c3VhbC4KCkNoZWVycyBjaHJ5cwoKVm9uIG1laW5lbSBpUGhvbmUgZ2VzZW5kZXQKCj4gQW0g
MDUuMDYuMjAyMiB1bSAxNjo0MSBzY2hyaWViIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1
c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+Ogo+IAo+IO+7v0hlbGxvIGV2ZXJ5b25lLAo+
IAo+IEkndmUgYmVlbiBkZWFsaW5nIGEgYml0IHJlY2VudGx5IHdpdGggV2luZG93cyBnYW1lcywg
dGhyb3VnaCB2YXJpb3VzCj4gbWVhbnMgLSBydW5uaW5nIHRoZW0gdXNpbmcgV2luZSwgVk0gZXRj
LiBBbmQgSSd2ZSBnb3QgYSBiaXQuLi4gdW5wbGVhc2VkCj4gYnkgdGhlIHN0YXRlIG9mIHNwZWVj
aCBzeW50aGVzaXMgaW4gV2luZS4gSSdtIG5vdCBjcml0aWNpemluZyBpdCwgaXQncyBhCj4gYmln
IGVub3VnaCBkcmFnIHRvIGltcGxlbWVudCBhIHNhcGkgdm9pY2UgaW4gV2luZG93cyBpdHNlbGYs
IHNwZWFrIG9mCj4gZ2V0dGluZyBzYXBpIGl0c2VsZiB0byBydW4gb24gYSBjb21wbGV0ZWx5IGRp
ZmZlcmVudCBzeXN0ZW0sIHNvIHRoaXMgaXMKPiBjb21wbGV0ZWx5IHVuZGVyc3RhbmRhYmxlLgo+
IAo+IEJ1dCB0aGF0IGRvZXNuJ3QgY2hhbmdlIGFueXRoaW5nIG9uIHRoZSBmYWN0dWFsIHVzYWJp
bGl0eSwgd2hlcmUgeW91Cj4gbmVlZCB0byBkZWFsIHdpdGggYSB3aG9sZSBzcGVlY2ggc3lzdGVt
IGluIGFuIGluYWNjZXNzaWJsZSB3YXksIHdoaWNoCj4gZG9lc24ndCBldmVuIHdvcmsgaW4gbXkg
Vk0gYnR3LCBoYXMgc29tZSBub3RpY2VhYmxlIGRlbGFpcyAoYXQgbGVhc3QKPiB3aXRoIHRoZSBk
ZWZhdWx0IHZvaWNlcykgYW5kIGlzIHRoZXJlIGEgd2F5IHRvIGFjdHVhbGx5IGNvbmZpZ3VyZSBp
dD8KPiAKPiBObyBzYXJjYXNtLCBJIGRvbid0IGtub3cuCj4gCj4gCj4gQW55d2F5LCB0aGUgdXNh
YmlsaXR5IGlzIGluY29udmVuaWVudCBhdCBiZXN0LCB3aGF0IGlzIHNsaWdodGx5Cj4gZGlzdHVy
YmluZyB3aGVuIHBsYXlpbmcgZ2FtZXMgKGVzcGVjaWFsbHkgdGhvc2Ugd2hlcmUgeW91IG5lZWQg
cXVpY2sKPiBmZWVkYmFjayBlLmcuIFN3YW1wKS4KPiAKPiAKPiBCdXQgeWVzdGVyZGF5LCBJJ3Zl
IGNhbWUgdXAgd2l0aCBhbiBpZGVhLiBPbiBXaW5kb3dzLCB0aGVyZSBpcyBhIGxpYnJhcnkKPiBj
YWxsZWQgbnZkYUNvbnRyb2xsZXJDbGllbnQzMi5kbGwgKG9yIDY0IGZvciA2NC1iaXQgcHJvZ3Jh
bXMsIGxpa2VseQo+IG1vcmUgdXNlZCBieSBub3cpLCB3aGljaCBpcyB1c2VkIGJ5IHByb2dyYW1z
IGFuZCB2YXJpb3VzIHNwZWVjaCBvdXRwdXQKPiBsaWJyYXJpZXMgdG8gdGFsayB0aHJvdWdoIE5W
REEuCj4gCj4gCj4gVGhlIGdvb2QgdGhpbmcgYWJvdXQgdGhpcyBsaWJyYXJ5IGlzIGl0cyBhYnNv
bHV0ZSBzaW1wbGljaXR5LCBhdCBsZWFzdAo+IGluIHRlcm1zIG9mIHRoZSBpbnRlcmZhY2UsIGp1
c3QgNCBmdW5jdGlvbnMgd2l0aCBlbGVtZW50YXJ5IGRhdGF0eXBlcy4KPiAKPiAKPiBTbywgd2hh
dCBJIGRpZCwgd2FzIHRoYXQgSSBjcmVhdGVkIG15IG93biBsaWJyYXJ5IHdpdGggZXhhY3RseSB0
aGUgc2FtZQo+IGludGVyZmFjZSBpbiBSdXN0LCBleGNlcHQgdGhhdCBpbnN0ZWFkIG9mIHRhbGtp
bmcgdG8gTlZEQSwgaXQgb3BlbnMgYQo+IGNvbm5lY3Rpb24gdG8gYSBzZXJ2ZXIgb24gTGludXgs
IHdoaWNoIHRyYW5zbGF0ZXMgYWxsIHJlcXVlc3RzIGFpbWVkIGZvcgo+IE5WREEgdG8gU3BlZWNo
IGRpc3BhdGNoZXIuCj4gCj4gCj4gVGhpcyB3YXksIGFuIGFwcCBpbiBXaW5lIGNhbiB1c2UgU3Bl
ZWNoIGRpc3BhdGNoZXIhCj4gCj4gCj4gQWxsIHlvdXIgdm9pY2VzLCBhbGwgeW91ciBjb25maWd1
cmF0aW9uIHByZXNlcnZlZCBqdXN0IGxpa2UgeW91J2QgYmUKPiBydW5uaW5nIGEgbmF0aXZlIGFw
cC4KPiAKPiAKPiBJJ3ZlIHRyaWVkIGl0IGFuZCBpdCByZWFsbHkgd29ya3MuCj4gCj4gSSBjYW4n
dCB0ZWxsIHJpZ2h0IG5vdyBob3cgZ29vZCBpcyBpdCwgaXQncyBqdXN0IGFuIGV4cGVyaW1lbnQs
IHRoZSBhcHAKPiBJJ3ZlIHRlc3RlZCB3aXRoIHdvcmtlZCBxdWl0ZSB3ZWxsLCBidXQgdGhhdCB3
YXMganVzdCBhIHNpbXBsZSBiaW5hcnkKPiBlZGl0b3IgSSBtYWRlIGxvbmcgdGltZSBhZ28uCj4g
Cj4gVGhlIHJlYWwgdGVzdCB3aWxsIGNvbWUsIHdoZW4gSSBtYW5hZ2UgdG8gZG93bmxvYWQgU3dh
bXAuIEkgdHJpZWQgYWJvdXQKPiA1IHRpbWVzIGFuZCB0aGUgZG93bmxvYWQgaGFzIGFsd2F5cyBm
YWlsZWQsIEkgZ3Vlc3MgdGhlcmUgaXMgZWl0aGVyIGhpZ2gKPiB0cmFmZmljIG9uIEFwcm9uZSdz
IHNlcnZlcnMsIG9yIHBlcmhhcHMgaGUgaGFzIHNvbWUgaXNzdWVzIHdpdGggaW50ZXJuZXQKPiBj
b25uZWN0aW9uLgo+IAo+IAo+IEFuZCBmb3Igc29tZSByZWFzb24sIGFnYXJjaGl2ZS5uZXQgZG9l
c24ndCBzZWVtIHRvIGhhdmUgdGhlIGxhdGVzdAo+IHZlcnNpb24gKGFueW9uZSBrbm93cyB3aHkg
aXMgdGhhdD8pCj4gCj4gCj4gQW55d2F5LCBpZiB5b3UgZmVlbCBsaWtlIHBsYXlpbmcgc29tZSBX
aW5kb3dzIGdhbWUgY29tcGF0aWJsZSB3aXRoIE5WREEsCj4gYW5kIHdvdWxkIGxpa2UgdGhlIG5h
dGl2ZSBzcGVlY2gsIGZlZWwgZnJlZSB0byB0cnkgaXQgb3V0Ogo+IAo+IGh0dHBzOi8vZ2l0aHVi
LmNvbS9SYXN0aXNsYXZLaXNoL252ZGEyc3BlZWNoZAo+IAo+IAo+IEJlc3QgcmVnYXJkcwo+IAo+
IAo+IFJhc3Rpc2xhdgo+IAo+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0
dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

