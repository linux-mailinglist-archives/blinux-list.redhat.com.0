Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AB46E45161C
	for <lists+blinux-list@lfdr.de>; Mon, 15 Nov 2021 22:10:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637010649;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ExczZSNNS/PjJvfj5vhUTOtcUwiIIVBkV4S+sAiJpZo=;
	b=MGFb/nvsVFiTIUxhaFsaGIibLLbNpYPbjd82emqKryLjZ0O04Ic5eGsZIW0fvi0KxWz/PD
	6ODc0umXyKbBkftvFF2YS+qoA2tMGFjoZmGKP4WuavBS30DpmFilDtyL4NN0LmEbbYGEHZ
	J0Zad3o74O46IXjVicFcJDaA/LXD/hI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-584-RjVDWXo0MVGKX_IkZppmjQ-1; Mon, 15 Nov 2021 16:10:48 -0500
X-MC-Unique: RjVDWXo0MVGKX_IkZppmjQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 953C3102CC39;
	Mon, 15 Nov 2021 21:10:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CF63E196E5;
	Mon, 15 Nov 2021 21:10:43 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1D20A1819AC1;
	Mon, 15 Nov 2021 21:10:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AFL5ttJ021132 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 15 Nov 2021 16:05:55 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5782251DD; Mon, 15 Nov 2021 21:05:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 51DEF51DC
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 21:05:52 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 68ECA8011A5
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 21:05:52 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
	[209.85.128.42]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-373-JugWqD1JPMWzUhUJoxlhTw-1; Mon, 15 Nov 2021 16:05:49 -0500
X-MC-Unique: JugWqD1JPMWzUhUJoxlhTw-1
Received: by mail-wm1-f42.google.com with SMTP id
	f7-20020a1c1f07000000b0032ee11917ceso803463wmf.0
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 13:05:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=au7iypkvPSFkHIkD7OkkRMOnVWYUefW3bgo4QYcomKs=;
	b=1NN+Q8p7FM6tqCSgK/MWfdc+MQzPJcyvM+jhQWU3cMn2S2Bj6gr4jTIV1VtYrKywWM
	nUuI+8kemZXrbbb9ER1QQDULc+bqWNLCxni4U/TUdGCXatkmfbH9aYfYWWFeuze7XTov
	jTFIDjqdDzp2hfTcEbFItKdHolTviCBV5yYe6NDAwbClZY95cTRVCsZIx35X//ts8Eem
	rli8b9ZnoAkruD11EEYG2OUT65/0uRK2DHwlUOrgDQSYARaj/qtZWdvBmfPwUTeBwGor
	pii3COizVLrrf6BeLqVO7J3ZAcyPS8K3xMWgOQGKIjKkhgo0CAy1e1hzchDEwqK6p3+M
	XQXA==
X-Gm-Message-State: AOAM533LbYMt8mWreSEAmbsiwG8D188EvGb2ZPEeDhKbAqLXAEI6d5sE
	Yf8gedzPakvNcOE97SHYVWF57Ah4jb3lsOQc
X-Google-Smtp-Source: ABdhPJwqEvR5yTSzESIMQlsrC8EehqyvSwSZ8lH4xsYyRQq2/IDt4646tptxZn2lPbBlfri2PbB3uw==
X-Received: by 2002:a7b:cd90:: with SMTP id y16mr1691743wmj.84.1637010348066; 
	Mon, 15 Nov 2021 13:05:48 -0800 (PST)
Received: from [192.168.1.130] ([90.254.199.66])
	by smtp.gmail.com with ESMTPSA id
	j8sm14982342wrh.16.2021.11.15.13.05.47 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 15 Nov 2021 13:05:47 -0800 (PST)
Message-ID: <93dfd31d-c5e5-a27a-dde5-32e07196f24e@gmail.com>
Date: Mon, 15 Nov 2021 21:05:38 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: Gui vs. cli software
To: blinux-list@redhat.com,
	Linux for blind general discussion <blinux-list@redhat.com>
References: <d5a6f4b2-a8ed-da3f-37bc-4c948b6f1a97@gmail.com>
	<6e96b0a1-2e90-8d58-59a2-81a60fbf608a@seznam.cz>
	<CAM+Q2c7PzGGQ7rY_FUWtcxiSOxfGJH_bVbjtZ6DMRZpjF2_v3A@mail.gmail.com>
	<a0539f37-ed62-2fa0-d3ad-3568f0936ac2@seznam.cz>
	<alpine.NEB.2.23.451.2111151600130.15392@panix1.panix.com>
In-Reply-To: <alpine.NEB.2.23.451.2111151600130.15392@panix1.panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

VG8gbWUgdGhlcmUncyBhwqAgcGxhY2UgZm9yIGJvdGgsIGJ1dCBJIHBlcnNvbmFsbHkgZmluZCBp
dCBlYXNpZXIgdG8gdXNlIApHVUkgc3R1ZmYgYW5kIHRoZXJlJ3MgY2VydGFpbiB0aGluZ3MgKGxp
a2UgVk9JUCBhbmQgc3VjaCkgSSBjYW4ndCBkbyBhcyAKZWFzaWx5KiBmcm9tIGEgQ0xJIGludGVy
ZmFjZSBob3dldmVyLCBvciBZb3V0dWJlIHZpZGVvcyB3aXRob3V0IGEgbG90IG9mIApjb25maWd1
cmluZyBvciBzZXR0aW5nIHRoaW5ncyB1cC4gVGhlIHJlY2VudCBkaXNjdXNzaW9uIG9uIEFscGlu
ZSAKaGlnaGxpZ2h0cyB0aGlzIHByZXR0eSB3ZWxsLCB3aXRoIEFscGluZSBiZWluZyB0cmlja2ll
ciB0byBzZXQgdXAgCmNvbXBhcmVkIHRvIGEgR1VJIGVtYWlsIGNsaWVudC4gQm90aCBoYXZlIHRo
ZWlyIHBsYWNlcywgYnV0IGFsc28gYm90aCAKY2FuL3Nob3VsZCBjb2V4aXN0LgoKCiogQnkgVk9J
UCBJIG1lYW4gc3R1ZmYgbGlrZSBTa3lwZS9EaXNjb3JkL2V0YyB3aGljaCB0byBteSBrbm93bGVk
Z2UsIAp0aGV5IGhhdmUgZWl0aGVyIGtpbGxlZCBvZmYgb3IgaGVhdmlseSBjcmFjayBkb3duIG9u
IENMSSBzdHVmZgoKT24gMTEvMTUvMjEgMjE6MDEsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRp
c2N1c3Npb24gd3JvdGU6Cj4gVGhlcmUgaGF2ZSBhbHdheXMgYmVlbiBtb3JlIGNvbW1hbmQgbGlu
ZSBwYWNrYWdlcyB0aGFuIGcudS5pLiBwYWNrYWdlcyBob3cKPiBlbHNlIGNvdWxkIGNvbW1hbmQg
bGluZSBwYWNrYWdlcyBoYXZlIGV2ZXIgYmVlbiB3aGVyZSB5b3UgZ28gdG8gZ2V0IHVuZGVyCj4g
dGhlIGhvb2Q/Cj4KPgo+IE9uIE1vbiwgMTUgTm92IDIwMjEsIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4KPj4gSGVsbG8sCj4+Cj4+IGlmIHRoZXJlIHdpbGwgYmUg
bW9yZSBjbGkgdGhhbiBndWkgYXBwcywgSSBhbSBhZnJhaWQgb2YgdGhlIGVuZCBvZiBPcmNhCj4+
IGRldmVsb3BtZW50LiBJZiBhbGwgcGVvcGxlIHdpbGwgaGF2ZSBjbGkgb25seSwgZ3VpIGNhbiBi
ZSBsZXNzIGFjY2Vzc2libGUuCj4+IFRoYXQncyBvbmx5IG15IG9waW5pb24sIEkgYW0gbm90IHNh
eWluZyBJIGFtIDEwMCUgY29ycmVjdC4KPj4KPj4gVm9qdGEuCj4+Cj4+IERuZSAxNS4gMTEuIDIx
IHYgMTk6MjEgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBuYXBzYWwoYSk6Cj4+
PiBZb3UgZXZlciBoZWFyZCB0aGUgc2F5aW5nLCAidGhlIGNvbW1hbmQgbGluZSBtYWtlcyBkaWZm
aWN1bHQgdGFza3MKPj4+IGVhc3kgYW5kIGltcG9zc2libGUgdGFza3MgbWVyZWx5IGRpZmZpY3Vs
dCI/IiBUaGVyZSBpcyBhIGxvdCBvZiB0cnV0aAo+Pj4gdG8gdGhhdC4gT2Z0ZW4gSSBjYW4sIHcv
YSBmZXcga2V5c3Ryb2tlcywgcmVsYXRpdmVseSBzcGVha2luZywKPj4+IGFjY29tcGxpc2ggaW4g
bWludXRlcyB3aGF0IGl0IHdvdWxkIHRha2UgaG91cnMgZm9yIGEgR1VJIHRvCj4+PiBhY2NvbXBs
aXNoLCBhc3N1bWluZyBpdCBjb3VsZCBkbyBzbyBhdCBhbGwsIHdoaWNoIGlzIG5vdCBhbHdheXMK
Pj4+IGFjY3VyYXRlLgo+Pj4KPj4+IE9mIGNvdXJzZSBJJ20gc2F5aW5nIHRoZXJlIHNob3VsZCBi
ZSBhY2Nlc3NpYmxlIEdVSSBhcHBzIGZvciB0aG9zZSB3aG8KPj4+IHdpc2ggdG8gdXNlIHRoZW0u
IEJ1dCBldmVuIGluIGNlbnR1cnkgMjEsIHRoZXJlIGFyZSBzdGlsbCBtYW55IGNhc2VzCj4+PiB3
aGVyZSB0aGUgY2xpIGlzIG1vcmUgcG93ZXJmdWwuIFllYWgsIHRoZXJlIGFyZSBleGNlcHRpb25z
LCBidXQgZm9yCj4+PiB0aGUgbW9zdCBwYXJ0IGl0IGhvbGRzIHRydWUuCj4+Pgo+Pj4gT24gMTEv
MTUvMjEsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJl
ZGhhdC5jb20+Cj4+PiB3cm90ZToKPj4+PiBIZWxsbywKPj4+Pgo+Pj4+IEkgcHJlZmVyIGd1aSBh
cHBzLCBiZWNhdXNlIGlzIDIxc3QgY2VudHVyeSwgbm90IHRpbWUgb2YgZmlyc3QgY29tcHV0ZXJz
Lgo+Pj4+IElmIHdlIHdhbnQgbGludXggd2lsbCBtb3JlIHBvcHVsYXIsIGl0IG11c3QgaGF2ZSBt
b3JlIGd1aSBhcHBzLiBJIGFncmVlLAo+Pj4+IGNsaSBpcyBiZXR0ZXIgZm9yIG9sZGVyIGFuZCBz
bG93IGNvbXB1dGVycyBvciBpZiB5b3Ugd2FudCB3b3JrIHdpdGhvdXQKPj4+PiBzcGlubmluZyBj
b21wdXRlciB2ZW50aWxhdG9ycywgYnV0IGxlYXJuIHdpdGggZ3VpIGlzIGluIG15IG9wcGluaW9u
Cj4+Pj4gZWFzaWVyIHRoYW4gY2xpLgo+Pj4+Cj4+Pj4gVGFrZSBjYXJlLgo+Pj4+Cj4+Pj4gQmVz
dCByZWdhcmRzCj4+Pj4KPj4+PiBWb2p0YS4KPj4+Pgo+Pj4+IERuZSAxNS4gMTEuIDIxIHYgMTg6
NTkgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBuYXBzYWwoYSk6Cj4+Pj4+IFRo
ZSB0b3BpYyBvZiB1c2luZyBndWkgdnMuIGNsaSBjYW1lIHVwIHJlY2VudGx5LiAgTXkgdmlldyBp
cyB0aGUgY2xpCj4+Pj4+IGFsbG93cyBtdWNoIG1vcmUgaW5kaXZpZHVhbCBjb250cm9sIG92ZXIg
c29mdHdhcmUgZnVuY3Rpb25zLiAgVGhlIGd1aSBpcwo+Pj4+PiBvZnRuIGxpbWl0ZWQgdG8gd2hh
dCB0aGUgZGV2ZWxvcGVyIGRlY2lkZXMgaXMgYmVzdCBmb3IgeW91IGFzIHRvIGZ1bmN0aW9uCj4+
Pj4+IGFuZCBpbmRpdmlkdWFsIGNvbnRyb2wuICBUaGUgZ3VpIHdhcyBvcmlnaW5hbGx5IHNvbGQg
YXMgYW4gZWFzaWVyCj4+Pj4+IHdheSB0byB1c2UgY29tcHV0ZXJzOyB3aGljaCBtZWFudCBpbiBw
cmFjdGljZSB0aGUgZGV2ZWxvcGVyIHRyeWluZyB0bwo+Pj4+PiBndWVzcyBob3cgdXNlcnMgbWln
aHQgd2FudCB0byB1c2UgaXQgYXQgdGhlIGNvc3Qgb2YgZ3JlYXRlciBpbmRpdmlkdWFsCj4+Pj4+
IGNvbnRyb2wuCj4+Pj4+Cj4+Pj4+IE1lbnUgZHJpdmVuIGNsaSBzb2Z0d2FyZSBpcyB0aGUgb2J2
aW91cyBtaWRkbGUgZ3JvdW5kIGZvciBlYXNlIG9mIGxlYXJuaW5nCj4+Pj4+IGFuZCB1c2luZyBw
cm9ncmFtcywgd2hpY2ggY291bGQgZWFzaWx5IHVzZSBtb3VzZSBpbnB1dC4gIFRoZQo+Pj4+PiBk
ZXZlbG9wZXIgY291bGQgaGF2ZSBhIGRlZmF1bHQgc2V0dXAgZm9yIGVhc2Ugb2YgYmVnaW5uZXIg
dXNlLiAgQnV0IGl0IHdhcwo+Pj4+PiBhdCB0aGUgdGltZSBub3QgdGhlIG5ldyBzZXh5IGZsYXNo
IGJhbmcgZXllIGNhbmR5IHdoaWNoIGdyYXBoaWNzCj4+Pj4+IGFsbG93ZWQuCj4+Pj4+Cj4+Pj4+
Cj4+Pj4+ICAgICAtLSBlbnQtIFhSCj4+Pj4+Cj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+
Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pj4KPj4+PiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+IEJsaW51eC1saXN0IG1haWxp
bmcgbGlzdAo+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+PiBodHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4KPj4+Pgo+Pj4KPj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pgo+Pgo+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1h
bi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBs
aXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

