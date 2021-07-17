Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 20E8B3CC59E
	for <lists+blinux-list@lfdr.de>; Sat, 17 Jul 2021 21:21:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626549714;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=oAYTt7RdLaJMQ96S9YroFBY1CJBGKVMJbvHdrBEN81U=;
	b=VEPXK/NCRIb9uFwB1f7kUohCDB+hi3SscGD74SAbLBVk3sUwI3k0+bwIL5yv8zaeROAG1g
	+KSgyxmaFI60si59dIokXa2PisKV126fMEvgUnD/HJ7w8hYXAwHjOBInu+XnvO7sBcW600
	901AKR5qPYBMM9SBZdLHJEqKwndllgk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-463-2cSrODudP6mVQAcCe4SKlw-1; Sat, 17 Jul 2021 15:21:52 -0400
X-MC-Unique: 2cSrODudP6mVQAcCe4SKlw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A3FB9800050;
	Sat, 17 Jul 2021 19:21:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1044E5C1D0;
	Sat, 17 Jul 2021 19:21:47 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AA75E4EA2A;
	Sat, 17 Jul 2021 19:21:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16HJLbOf027110 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 17 Jul 2021 15:21:37 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9156D11360E6; Sat, 17 Jul 2021 19:21:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8D40B11360E5
	for <blinux-list@redhat.com>; Sat, 17 Jul 2021 19:21:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E86F2800B28
	for <blinux-list@redhat.com>; Sat, 17 Jul 2021 19:21:33 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-143-x40Xu_l_NTC83tfeGWD5LQ-1;
	Sat, 17 Jul 2021 15:21:31 -0400
X-MC-Unique: x40Xu_l_NTC83tfeGWD5LQ-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 4ED83A4063
	for <blinux-list@redhat.com>; Sat, 17 Jul 2021 20:20:58 +0200 (CEST)
Subject: Re: recommended OCR solutions on Arch Linux
To: blinux-list@redhat.com
References: <CAD_4ddS4g1jpYPKc_35ziy700JXbS+W2P95XYToAyULNeAAmpg@mail.gmail.com>
	<0671f3ab-3695-f330-5261-3f45531a4a9a@slint.fr>
	<CAD_4ddR+NxQ5Tjd4c0Kpiwk=2m2bRfBO+Mio2KDswbKmxv_aVQ@mail.gmail.com>
Message-ID: <c5b8b31c-5b2d-e90e-9903-f054b9127a50@slint.fr>
Date: Sat, 17 Jul 2021 21:21:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAD_4ddR+NxQ5Tjd4c0Kpiwk=2m2bRfBO+Mio2KDswbKmxv_aVQ@mail.gmail.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 16HJLbOf027110
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SSdkIHN1c3BlY3QgYW4gaXNzdWUgd2l0aCB5b3VyIHZlcnNpb24gb2YgcHl0aG9uLWdvYmplY3Qs
IGJ1dCBiZXR0ZXIgYXNrIApDaHJ5cwpkaXJlY3RseS4gWW91IGNhbiBvZnRlbiB0aW1lcyBmaW5k
IGhpbSBpbiAjYTExeSBAIGlyYy5saW51eC1hMTF5Lm9yZywgCmJ1dCBub3QKcmlnaHQgbm93LgoK
RGlkaWVyCgpMZSAxNy8wNy8yMDIxIMOgIDIyOjU0LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4gSGVsbG8gdGhlcmUsCj4gCj4gSSBoYXZlIGluc3RhbGxl
ZCBsaW9zLWdpdCwgYnV0IHdoZW4gSSB0cnkgcnVubmluZyBpdCBmcm9tIG15IEdVSSwgaXQKPiBk
b2Vzbid0LCB3aGlsZSB3aGVuIEkgdHJ5IHJ1bm5pbmcgaXQgZnJvbSB0ZXJtaW5hbCwgdGhlIGNv
bW1hbmQgSSB0cmllZCB3YXMKPiBsaW9zCj4gdGhpcyBpcyB0aGUgb3V0cHV0IEkgZ2V0LCBhbHRo
b3VnaCBJIGFtIHN1cmUgYWxsIHRoZSBkZXBzIGFyZSBzYXRpc2ZpZWQuCj4gCj4gW2ZyYW5jaXNj
b0BCbHVlYmxpbmsgfl0kIGxpb3MKPiAvdXNyL2xpYi9weXRob24zLjkvc2l0ZS1wYWNrYWdlcy9s
aW9zL3VpL2d0ay90ZXh0X3ZpZXcucHk6MjE6IFB5R0lXYXJuaW5nOgo+IEd0ayB3YXMgaW1wb3J0
ZWQgd2l0aG91dCBzcGVjaWZ5aW5nIGEgdmVyc2lvbiBmaXJzdC4gVXNlCj4gZ2kucmVxdWlyZV92
ZXJzaW9uKCdHdGsnLCAnNC4wJykgYmVmb3JlIGltcG9ydCB0byBlbnN1cmUgdGhhdCB0aGUgcmln
aHQKPiB2ZXJzaW9uIGdldHMgbG9hZGVkLgo+ICAgIGZyb20gZ2kucmVwb3NpdG9yeSBpbXBvcnQg
R3RrCj4gL3Vzci9saWIvcHl0aG9uMy45L3NpdGUtcGFja2FnZXMvbGlvcy91aS9ndGsvd2lkZ2V0
LnB5OjI0OiBQeUdJV2FybmluZzogQXRrCj4gd2FzIGltcG9ydGVkIHdpdGhvdXQgc3BlY2lmeWlu
ZyBhIHZlcnNpb24gZmlyc3QuIFVzZQo+IGdpLnJlcXVpcmVfdmVyc2lvbignQXRrJywgJzEuMCcp
IGJlZm9yZSBpbXBvcnQgdG8gZW5zdXJlIHRoYXQgdGhlIHJpZ2h0Cj4gdmVyc2lvbiBnZXRzIGxv
YWRlZC4KPiAgICBmcm9tIGdpLnJlcG9zaXRvcnkgaW1wb3J0IEF0awo+IFRyYWNlYmFjayAobW9z
dCByZWNlbnQgY2FsbCBsYXN0KToKPiAgICBGaWxlICIvdXNyL2Jpbi9saW9zIiwgbGluZSAxOSwg
aW4gPG1vZHVsZT4KPiAgICAgIGZyb20gbGlvcy5tYWluIGltcG9ydCAqCj4gICAgRmlsZSAiL3Vz
ci9saWIvcHl0aG9uMy45L3NpdGUtcGFja2FnZXMvbGlvcy9tYWluLnB5IiwgbGluZSAyNywgaW4K
PiA8bW9kdWxlPiAgICBmcm9tIGxpb3MgaW1wb3J0IHNjYW5uZXIsIGVkaXRvciwgaW1hZ2V2aWV3
LCBjYW0sIG9jciwKPiBwcmVmZXJlbmNlcywgc3BlZWNoCj4gICAgRmlsZSAiL3Vzci9saWIvcHl0
aG9uMy45L3NpdGUtcGFja2FnZXMvbGlvcy9lZGl0b3IucHkiLCBsaW5lIDIwLCBpbgo+IDxtb2R1
bGU+Cj4gICAgICBmcm9tIGxpb3MudWkuZ3RrIGltcG9ydCB0ZXh0X3ZpZXcsIHRyZWVfdmlldywg
d2lkZ2V0LCBkaWFsb2csCj4gZmlsZV9jaG9vc2VyLAo+IGNvbnRhaW5lcnMsIHdpbmRvdwo+ICAg
IEZpbGUgIi91c3IvbGliL3B5dGhvbjMuOS9zaXRlLXBhY2thZ2VzL2xpb3MvdWkvZ3RrL3dpZGdl
dC5weSIsIGxpbmUgMTY2LAo+IGluIDxtb2R1bGU+Cj4gICAgICBjbGFzcyBTZXBhcmF0b3IoR3Rr
LkhTZXBhcmF0b3IpOgo+ICAgIEZpbGUgIi91c3IvbGliL3B5dGhvbjMuOS9zaXRlLXBhY2thZ2Vz
L2dpL292ZXJyaWRlcy9fX2luaXRfXy5weSIsIGxpbmUKPiAzMiwgaW4gX19nZXRhdHRyX18KPiAg
ICAgIHJldHVybiBnZXRhdHRyKHNlbGYuX2ludHJvc3BlY3Rpb25fbW9kdWxlLCBuYW1lKQo+ICAg
IEZpbGUgIi91c3IvbGliL3B5dGhvbjMuOS9zaXRlLXBhY2thZ2VzL2dpL21vZHVsZS5weSIsIGxp
bmUgMTIzLCBpbgo+IF9fZ2V0YXR0cl9fCj4gICAgICAgIHJhaXNlIEF0dHJpYnV0ZUVycm9yKCIl
ciBvYmplY3QgaGFzIG5vIGF0dHJpYnV0ZSAlciIgJSAoCj4gQXR0cmlidXRlRXJyb3I6ICdnaS5y
ZXBvc2l0b3J5Lkd0aycgb2JqZWN0IGhhcyBubyBhdHRyaWJ1dGUgJ0hTZXBhcmF0b3InCj4gW2Zy
YW5jaXNjb0BCbHVlYmxpbmsgfl0kCj4gRG9lcyBhbnlvbmUga25vdyB3aGF0IHRoaXMgaXMgYW5k
IGhvdyB0byBmaXggaXQ/Cj4gVGhhbmtzIGZvciBhbnkgYW5zd2VyLgo+IEJlc3QgcmVnYXJkcy4K
PiBGcmFuY2lzY28uCj4gCj4gT24gU2F0LCBKdWwgMTcsIDIwMjEgYXQgNjozNyBQTSBMaW51eCBm
b3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDwKPiBibGludXgtbGlzdEByZWRoYXQuY29tPiB3
cm90ZToKPiAKPj4gaHR0cHM6Ly9hdXIuYXJjaGxpbnV4Lm9yZy9wYWNrYWdlcy9saW9zLWdpdC8K
Pj4KPj4gRGlkaWVyCj4+IC0tCj4+IERpZGllciBTcGFpZXIKPj4gU2xpbnQgbWFpbnRhaW5lcgo+
PiBodHRwczovL3NsaW50LmZyCj4+IGRpZGllcmF0c2xpbnRkb3Rmcgo+Pgo+PiBMZSAxNy8wNy8y
MDIxIMOgIDIyOjI1LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0
IDoKPj4+IEhlbGxvIGV2ZXJ5b25lLAo+Pj4KPj4+IEkgZG8gbm90IGtub3cgaWYgdGhpcyBxdWVz
dGlvbiBoYXMgYmVlbiBhc2tlZCBpbiB0aGUgcGFzdCwgc28gSSBhbSBzb3JyeQo+PiBpZgo+Pj4g
SSBtaWdodCBiZSBicmluZ2luZyB1cCBzb21ldGhpbmcgdGhhdCBtaWdodCBoYXZlIGFscmVhZHkg
YmVlbiBkaXNjdXNzZWQuCj4+PiBNeSBxdWVzdGlvbiBpcywgd2hhdCBHVUkgdGVzc2VyYWN0IG9y
IGN1bmVpZm9ybSBmcm9udCBlbmRzIHdvdWxkIHlvdQo+Pj4gcmVjb21tZW5kIHRvIGEgZmFpcmx5
IG5ldyBhcmNoIHVzZXIsIHdobyB3YW50cyBzb21ldGhpbmcgcmVjb2duaXplZCBpbgo+Pj4gZGlm
ZmVyZW50IGxhbmd1YWdlcywgYW5kIG5lZWRzIHRoZSBhYmlsaXR5IHRvIHVzZSBhIHNjYW5uZXI/
Cj4+PiBUaGFua3MgZm9yIGFueSBhbnN3ZXIuCj4+PiBCZXN0IHJlZ2FyZHMuCj4+PiBGcmFuY2lz
Y28uCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0
bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

