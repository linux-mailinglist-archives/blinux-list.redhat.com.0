Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B08A6F0833
	for <lists+blinux-list@lfdr.de>; Thu, 27 Apr 2023 17:26:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1682609173;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=hbcXT+j/aKw8AOHRNWgb9Ceq/rUo2p+wpBPDF+2N4wM=;
	b=JyHymxJKv1y+c9LnuIx14vdffRn+VICCPnp0CoMw482QZGUqCIKosXHJ5l0cS4EOKyR0nV
	9CIjfkhHT3tsqP/tYqwl1CTKGNo6BKS1EKrFfqNFaU3N+HjLqzNnFE/1R2YGaBrLpmmzcw
	ZWzCbAjWG/NRweZx7w2FlvOvMib03FQ=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-75-K9I0Wi02ONmQ9mMcXQj74Q-1; Thu, 27 Apr 2023 11:26:09 -0400
X-MC-Unique: K9I0Wi02ONmQ9mMcXQj74Q-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2974981B54D;
	Thu, 27 Apr 2023 15:24:34 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 3043040C201F;
	Thu, 27 Apr 2023 15:24:33 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 950971946A52;
	Thu, 27 Apr 2023 15:24:32 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (1.0)
Subject: Re: Two Arch beginner questions
Date: Thu, 27 Apr 2023 08:22:15 -0700
References: <mailman.2214.1682605732.2351818.blinux-list@redhat.com>
In-Reply-To: <mailman.2214.1682605732.2351818.blinux-list@redhat.com>
To: blinux-list@redhat.com
Message-ID: <mailman.2227.1682609071.2351818.blinux-list@redhat.com>
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

dGhlcmUgYXJlIHByb2JhYmx5IGFsc28gc2V2ZXJhbCBvdGhlciBzY3JlZW4gcmVhZGVyLCBvcHRp
b25zIGZvciB0aGUgY29uc3VsL3Rlcm1pbmFsLiBXaGVuIGRpZCBJIGhhdmUgZm91bmQgbW9zdCB1
c2VmdWwgaXMgQlJMVFRZLiBJdOKAmXMgcHJvYmFibHkgb25lIG9mIHRoZSBvbGRlc3Qgb2YgdGhl
IGxvdCBhbmQgaXQgc3RpbGwgd29ya3MuIE5vdywgYXMgZm9yIHRoZSBncmFwaGljYWwgdXNlciBp
bnRlcmZhY2UsIEnigJl2ZSBiZWVuIGluIHRoZSBoYWJpdCBvZiBhY3R1YWxseSBzdGFydGluZyB1
cCBpbiBDb25zb2wgbW9kZSBmaXJzdCBhbmQgdGhlbiBydW5uaW5nIFNUQVJUWC4gSXTigJlzIGVh
c3kgaXTigJlzIHNpbXBsZSBhbmQgeW91IGRvbuKAmXQgaGF2ZSB0byB3b3JyeSBhYm91dCBhIGRp
c3BsYXkgbWFuYWdlci4gQSBhbHNvLCB5b3UgZG9u4oCZdCBoYXZlIHRvIHdvcnJ5IGFib3V0IGEg
YnVuY2ggb2YgYWRkaXRpb25hbCBhcHBzIHlvdSBtYXkgbmV2ZXIgdXNlIHdoZW4gcnVubmluZyB0
aGUgZGlzcGxheSBtYW5hZ2VyLiBTbyBjaG9vc2Ugd2hpY2hldmVyIGRlc2t0b3AgeW91IHdhbnQs
IHdoaWNoIGV2ZXIgYXBwcyB5b3Ugd2FudCwgYW5kIGluc3RhbGwgdGhvc2UgYnkgd2hhdGV2ZXIg
bWV0aG9kIGlzIGNhbGxlZCBmb3IgaW4geW91ciB2ZXJzaW9uIG9mIExpbnV4LgoKRXJpYy4KCgpT
ZW50IGZyb20gbXkgaVBob25lCgo+IE9uIEFwciAyNywgMjAyMywgYXQgMDc6MzksIExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3Rl
Ogo+IAo+IO+7v0kgZmluZCBsaWdodGRtIHdpdGggbGlnaHRkbS1zbGljay1ncmVldGVyIHRvIGJl
IGFib3V0IHRoZSBiZXN0IGRpc3BsYXkgbWFuYWdlciBvcHRpb24uIFlvdSBzaG91bGQgYmUgYWJs
ZSB0byBzdGFydCBvcmNhIHVzaW5nIGFsdCtzdXBlcitzIGZyb20gdGhlIGRpc3BsYXkgbWFuYWdl
cidzIHdpbmRvdy4KPiAKPiAKPiBGZW5yaXIgaXMgcHJvYmFibHkgdGhlIG1vc3QgY29tcHJlaGVu
c2l2ZSBmdWxseSB1c2Vyc3BhY2Ugc2NyZWVuIHJlYWRlciBmb3IgdGV4dCBtb2RlIFRUWXMgYW5k
IHRlcm1pbmFscywgbWVhbmluZyB0aGF0IGl0IGRvZXNuJ3QgbGl2ZSBpbiB0aGUga2VybmVsLCBh
bHRob3VnaCBPcmNhIHdvcmtzIHByZXR0eSB3ZWxsIGluIG1hdGUtdGVybWluYWwuIFBlcnNvbmFs
bHkgdGhvdWdoLCBJIGZpbmQgdGhhdCBkZXNrdG9wIHdlYiBicm93c2VycyBhbmQgZW1haWwgYXBw
bGljYXRpb25zIHdvcmsgbXVjaCBiZXR0ZXIgdGhhbiB0aGVpciB0ZXJtaW5hbCBjb3VudGVycGFy
dHMsIGluY2x1ZGluZyBiZWluZyBlYXNpZXIgdG8gc2V0IHVwLCBlYXNpZXIgdG8gbmF2aWdhdGUg
YnkgdmFyaW91cyBlbGVtZW50cyBzdWNoIGFzIGhlYWRlcnMgb3IgbGlua3MsIGFuZCBlc3BlY2lh
bGx5IGZvciBicm93c2Vycywgc3VwcG9ydGluZyBtYW55IG1vcmUgd2Vic2l0ZXMgaW4gYSBtb3Jl
IGFjY2Vzc2libGUgd2F5LiBKdXN0IGFzIGFuIGV4YW1wbGUgb2YgdGhpcywgSSBoYXZlIGJlZW4g
YWJsZSB0byBhY2Nlc3Mgb25saW5lIGJhbmtpbmcgdGhyb3VnaCBGaXJlZm94IGZvciBjb21pbmcg
dXAgb24gMjAgeWVhcnMsIGJ1dCBub25lIG9mIHRoZSB0ZXJtaW5hbC1iYXNlZCBicm93c2VycyBo
YXZlIGV2ZXIgYWxsb3dlZCBtZSB0byBsb2cgaW50byBhbnkgYmFuaydzIHdlYnNpdGUsIGFuZCBt
YW55IHdvbid0IGV2ZW4gc2hvdyB0aGUgbG9naW4gcGFnZSBjb3JyZWN0bHksIG5vdCBldmVuIGlu
IDIwMjMuCj4gCj4gfkt5bGUKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJl
ZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2Js
aW51eC1saXN0Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRw
czovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

