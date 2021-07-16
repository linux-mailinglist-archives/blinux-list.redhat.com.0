Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id B82073CB691
	for <lists+blinux-list@lfdr.de>; Fri, 16 Jul 2021 13:08:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626433706;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=sz1iA6NmKX2L5Kuf63z0z40kdQkOAB7iAtW6PFKZVhM=;
	b=i6Zdxrze4W/i8o6KwjeKF4H9O5n6FKbsR79gupVP2WodAWV7rlM7oBY1j+7mf5e58ZbQDz
	/Bn/wRVwyX/tPP7Xc6FTv3nSb21kCfvwvZEraIxtnKT9kTDsSrn/pfjmHN1eUxOCnchaPZ
	fwQhztxgTC50nFxxvdxqECOOhnZgQQI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-126-mMl3ALfjPwyxoKthYJ_mrw-1; Fri, 16 Jul 2021 07:08:25 -0400
X-MC-Unique: mMl3ALfjPwyxoKthYJ_mrw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1AD9E1005E65;
	Fri, 16 Jul 2021 11:08:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 155C7604CD;
	Fri, 16 Jul 2021 11:08:19 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 410D34E9F5;
	Fri, 16 Jul 2021 11:08:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16GB895C012254 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 16 Jul 2021 07:08:09 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3F74F20A8C55; Fri, 16 Jul 2021 11:08:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3ACDE209D0CF
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 11:08:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2CD6418A01A0
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 11:08:06 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-557-e7m-CxRXNwWIVZtLcSvFgw-1;
	Fri, 16 Jul 2021 07:08:03 -0400
X-MC-Unique: e7m-CxRXNwWIVZtLcSvFgw-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 79787A4185
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 12:07:30 +0200 (CEST)
Subject: Re: Transfering Thunderbird folder
To: blinux-list@redhat.com
References: <4037ad15-b52e-f0a5-4af5-2b8b6f782205@gmail.com>
	<388d8a75-302b-1519-cf7d-17cdc5c81345@protonmail.com>
	<c917c3f4-6ee3-4a42-cf5f-cf59c22ae981@gmail.com>
Message-ID: <a5fd7406-b1df-33d6-caad-e3a6e7b0a94a@slint.fr>
Date: Fri, 16 Jul 2021 13:07:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <c917c3f4-6ee3-4a42-cf5f-cf59c22ae981@gmail.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 16GB895C012254
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
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGksCgpUaHVuZGVyYmlyZCBjcmVhdGVzIGEgbmV3IGZvbGRlciBidXQgeW91IGNhbiBzdGlsbCB1
c2UgYW5vdGhlciBvbmUuIEp1c3QgCnN0YXJ0IGl0IGxpa2UgdGhpczoKCnRodW5kZXJiaXJkIC1Q
IC0tYWxsb3ctLWRvd25ncmFkZQoKYW5kIHNlbGVjdCB0aGUgcHJvZmlsZSB5b3Ugd2FudC4KCkJl
Zm9yZSBkb2luZyB0aGF0LCBwdXQgdGhlIHByb2ZpbGVzIHlvdSB3YW50IGluIH4vLnRodW5kZXJi
aXJkCgpGb3IgaW5zdGFuY2UgbXkgcHJvZmlsZXMgYXJlIGluOgoKL2hvbWUvZGlkaWVyLy50aHVu
ZGVyYmlyZAoKQ2hlZXJzLApEaWRpZXIKLS0KRGlkaWVyIFNwYWllcgpTbGludCBtYWludGFpbmVy
CmRpZGllcmF0c2xpbnRkb3RmcgpodHRwczovL3NsaW50LmZyCgoKCkxlIDE2LzA3LzIwMjEgw6Ag
MTI6MzQsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPiBP
a2F5LCBUaHVuZGVyYmlyZCBhYnNvbHV0ZWxseSBpZ25vcmVzIG15IHByb2ZpbGUgYW5kIGNyZWF0
ZXMgYSBuZXcgb25lLCAKPiBzbyBJIHRoaW5rIHNvbWV0aGluZyBjaGFuZ2VkIGluIHByb2ZpbGVz
LmluaSBvciBpbnN0YWxscy5pbmkuIFdoZW4gSSAKPiB0cmFuc2ZlciBteSBwcm9maWxlIGZyb20g
V2luIHRvIFdpbiwgaXQgd29ya3MsIGJ1dCBmcm9tIFdpbiB0byBMaW51eCAKPiBub3QsIHNvIEkg
d2lsbCBjcmVhdGUgYWxsIG15IHNldHVwIGFnYWluLCBpdCB3aWxsIGJlIGVhc3llciBmb3IgbWUu
Cj4gCj4gUGF2ZWwKPiAKPiAKPiBEbmUgMTUuMDcuMjAyMSB2IDIyOjQ5IExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gbmFwc2FsKGEpOgo+PiBIZWxsbywKPj4KPj4gd2VsbCwgSSBo
YXZlIHF1aXRlIGJhZCBleHBlcmllbmNlcyBkb2luZyB0aGlzIGFueXdoZXJlIGF0IGFueSB0aW1l
LAo+PiBpbmRlcGVuZGVudGx5IG9uIHBsYXRmb3JtIG9yIFRCIHZlcnNpb24sIHNvIEkgcGVyc29u
YWxseSBwcmVmZXIgdG8gc2V0Cj4+IHVwIHRoaW5ncyBmcm9tIHNjcmF0Y2ggYXMgbW9zdCBvZiB0
aGUgY29uZmlndXJhdGlvbiBpcyBkb25lIG9uIHRoZQo+PiBzZXJ2ZXIgYW55d2F5Lgo+Pgo+Pgo+
PiBCdXQgeW91IGNhbiB0cnkgaXQgb3V0IGlmIHlvdSB3YW50LiBKdXN0IGxldCBUQiBjcmVhdGUg
YSBwcm9maWxlIGZvbGRlcgo+PiBhbmQgcmVwbGFjZSB0aGUgY29udGVudCBvZiB0aGUgZm9sZGVy
IHdpdGggeW91ciBvd24sIHRoYXQgc2hvdWxkIHdvcmsgaWYKPj4geW91ciBwcmV2aW91cyB2ZXJz
aW9uIG9mIFRCIHdhcyB1cGdyYWRlZCB0byB2ZXJzaW9uIDc4IHdpdGggdGhlIHByb2ZpbGUuCj4+
Cj4+Cj4+IEJlc3QgcmVnYXJkcwo+Pgo+Pgo+PiBSYXN0aXNsYXYKPj4KPj4KPj4gRMWIYSAxNS4g
Ny4gMjAyMSBvIDE3OjM1IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gbmFww61z
YWwoYSk6Cj4+PiBIaSwKPj4+Cj4+PiBJIHdhbnQgdG8gdHJhbnNmZXIgbXkgVGh1bmRlcmJpcmQg
Zm9sZGVyIGZyb20gV2luIHRvIExpbnV4LiBJdCB3YXMKPj4+IHBvc3NpYmxlIDMgNCB5ZWFycyBh
Z28gd2l0aG91dCBhbnkgaXNzdWVzLCBidXQgZnJvbSBzb21lIG5ldyBUaHVuZGVyYmlyZAo+Pj4g
dmVyc2lvbiwgc29tZXRoaW5nIG11c3QgYmUgY2hhbmdldCB0byBnZXQgdHJhbnNmZXJlZCBmb2xk
ZXIgd29ya2luZyBhcwo+Pj4gZXhwZWN0ZWQuIENhbiB5b3UgaGVscCBwbGVhc2U/IFdoZW4gSSB0
cmFuc2ZlciBteSBmb2xkZXIgdG8KPj4+IC5UaHVuZGVyYmlyZCwgYXBwIGlnbm9yZXMgYWxsIGV4
aXN0aW5nIHByb2ZpbGVzIGFuZCBjcmVhdGVzIGFub3RoZXIgYW5kCj4+PiBhc2tzIG1lIHRvIGxv
Z2luIHRvIG15IG1haWwgYWNjb3VudHMuCj4+Pgo+Pj4gVGhhbmtzLAo+Pj4KPj4+IFBhdmVsCj4+
Pgo+Pj4KPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20K
Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3QKPj4+Cj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29t
Cj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3QKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRw
czovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3Qg
bWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhh
dC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

