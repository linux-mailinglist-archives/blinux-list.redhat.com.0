Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3282B57F4A1
	for <lists+blinux-list@lfdr.de>; Sun, 24 Jul 2022 12:10:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1658657431;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=yorfQo3I1XLEusNE3sXJg4llpzZAGsylx8heOFGvwco=;
	b=YAHgvvqQfZHomkA4kyTelGSKyNMvdI/LLadNHJT5u/oaTtV2sQ9fVa9ZFXRazReMZre8Rr
	3L0U5mMYuEbur0cwtUlCfpdFbKBQg2PU7fCgXwWQ2gxpCQdqHFk/xNk8CAFS1mqytrIDEi
	J3rtzS8oFWEgYJsF2G3E8Lk/Fpb23/s=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-222-MKhlaN8sMe2zPiTFd9_8Bw-1; Sun, 24 Jul 2022 06:10:29 -0400
X-MC-Unique: MKhlaN8sMe2zPiTFd9_8Bw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 914BF801755;
	Sun, 24 Jul 2022 10:10:28 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 395061121314;
	Sun, 24 Jul 2022 10:10:17 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 061E91945D86;
	Sun, 24 Jul 2022 10:10:17 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 24 Jul 2022 11:10:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: A question about how to install Lennix as a second operating
 system on a modern Dell laptop?
To: blinux-list@redhat.com
References: <mailman.35571.1658501727.111207.blinux-list@redhat.com>
 <1764ad6f-992a-3067-5432-cdd7d9118064@hubert-humphrey.com>
 <mailman.35980.1658504582.111209.blinux-list@redhat.com>
 <mailman.7471.1658507923.3475251.blinux-list@redhat.com>
 <mailman.35751.1658510592.111205.blinux-list@redhat.com>
 <mailman.36108.1658511328.111208.blinux-list@redhat.com>
 <mailman.35873.1658512716.111210.blinux-list@redhat.com>
 <mailman.35612.1658516884.111207.blinux-list@redhat.com>
In-Reply-To: <mailman.35612.1658516884.111207.blinux-list@redhat.com>
Message-ID: <mailman.35987.1658657416.111205.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SSB3b3VsZG4ndCBwdXQgdGhlbSBvbiB0aGUgc2FtZSBoYXJkIGRyaXZlIGFzIGEgc3RhcnRpbmcg
cG9pbnQuIElmIHlvdSAKaGF2ZSB0d28gaGFyZCBkcml2ZXMsIHlvdSBjYW4gaGF2ZSBXaW5kb3dz
IG9uIG9uZSwgYW5kIERlYmlhbiwgb3IgCndoaWNoZXZlciBkaXN0cm8geW91IHdhbnQgb24gdGhl
IG90aGVyLiBUaGF0IHdheSBXaW5kb3dzIHVwZGF0ZXMgZG9uJ3QgCmJyZWFrIHRoaW5ncyBmb3Ig
TGludXguCgoKSWRlYWxseSwgeW91J2Qgd2FudCB0byBoYXZlIGJvdGggaW5zdGFsbGVkLCBidXQg
b24gc2VwZXJhdGUgZHJpdmVzLiBUaGUgCmlzc3VlIHdpdGggaGF2aW5nIHRoZW0gb24gdGhlIHNh
bWUgZHJpdmUgaXMgdGhleSB3aWxsLCBpbiBlZmVjdCwgYmUgCmZpZ2h0aW5nIG92ZXIgYSBidW5j
aCBvZiBzdHVmZiBhbmQgaXQncyBhIGxvdCBtb3JlIHRyb3VibGUgdGhhbiBpdCdzIHdvcnRoCgpP
biA3LzIyLzIyIDIwOjA3LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3Rl
Ogo+IEdvb2QgYWZ0ZXJub29uIGV2ZXJ5b25lLCBJIGFtIHdvbmRlcmluZyBpcyB0aGVyZSBhIHdh
eSBmb3IgYmxpbmQgcGVyc29uIHRvIGluc3RhbGwgYW55IHZlcnNpb24gb2YgTGVubml4IG9uIGEg
bW9kZXJuIERlbGwgbGFwdG9wIHdpdGhvdXQgY2l0ZWQgYXNzaXN0YW5jZT8KPgo+IFRoZSBiaWcg
Y2F2ZWF0IGhlcmUgaXMgdGhhdCB0aGVyZSBpcyBhIHdheSB0byBkbyBpdCBpbiBzdWNoIGEgbWFu
bmVyIHRoYXQgdGhlIG1haW4gb3BlcmF0aW5nIHN5c3RlbSBpbiB0aGlzIGNhc2UgV2luZG93cyAx
MSB3aWxsIG5vdCBiZSBkaXN0dXJiZWQ/IERvZXMgYW55b25lIGhhdmUgYW55IGdvb2Qgc3VnZ2Vz
dGlvbnMgZm9yIGhvdyB0byBkbyB0aGlzPyBJIGRvIGhhdmUgYSBVYnVudHUgZGlzayBpbWFnZSBz
aXR0aW5nIG9uIG15IGhhcmQgZHJpdmUuIEkgYmVsaWV2ZSBpdCBpcyB0aGUgY3VycmVudCB2ZXJz
aW9uIG9mIHRoaXMgTGVubml4IGRpc3RyaWJ1dGlvbi4KPgo+IFNpbmNlcmVseSBNYXVyaWNlIG1p
bmVzLgo+Cj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiBGcm9tOiBCbGludXgtbGlzdCA8
YmxpbnV4LWxpc3QtYm91bmNlc0ByZWRoYXQuY29tPiBPbiBCZWhhbGYgT2YgTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbgo+IFNlbnQ6IEZyaWRheSwgSnVseSAyMiwgMjAyMiAxMDo1
OSBBTQo+IFRvOiBibGludXgtbGlzdEByZWRoYXQuY29tCj4gU3ViamVjdDogUmU6IFtzbGludF0g
UmU6IFRoZSBSZWdpc3RlcjogVGF2aXMgT3JtYW5keSBwb3J0cyBXb3JkUGVyZmVjdCBmb3IgVU5J
WCB0byBMaW51eCAoZndkKQo+Cj4gTm8KPiBEaWRpZXIKPgo+Cj4gTGUgMjIvMDcvMjAyMiDDoCAx
OTozNSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdCA6Cj4+IFRo
YW5rcyBhbG90IERpZGllci4gSXMgdGhlaXIgYW4gZWFzeSB3YXkgb2YgY29udmVydGluZyBhbiBp
Mzg2IHRvIGFuCj4+IGFtYjY0PyBkcGtnIGRpZG4ndCBsaWtlIHRoaXMgb25lLgo+PiBDaGltZQo+
Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRw
czovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Cj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0
bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Cj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWls
aW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhh
dC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51
eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdAo=

