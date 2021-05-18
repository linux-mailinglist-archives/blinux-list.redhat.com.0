Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id C491C3882B7
	for <lists+blinux-list@lfdr.de>; Wed, 19 May 2021 00:28:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1621376902;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=LwuKgT16ljrChWM3BtoNiU5Ai1OGT4HmRzZ01x8c/mc=;
	b=cCTOIvSDX+++16oG+AbsTgOpsbTJSbQ4g4qhfAhlF23Jw3JpcVEkELMfRU18+UQhOQV4rJ
	8pBJEM6oKP0Xr+sK2s88DlBf0lKqC2Fwbg/MPXKxBlDmzHvRdDcY+Xd3DmiOeeN90hB8Y1
	fg4H1HYwzGw+QaiRcfXoLVQqWzOr4o0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-573-sURgESWdOpqG4ySO_DZ0dw-1; Tue, 18 May 2021 18:28:20 -0400
X-MC-Unique: sURgESWdOpqG4ySO_DZ0dw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7D507107ACF3;
	Tue, 18 May 2021 22:28:16 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 41E7A19C97;
	Tue, 18 May 2021 22:28:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id F3D6A180102A;
	Tue, 18 May 2021 22:28:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14IMS9oR006094 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 18 May 2021 18:28:09 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0AED8102F15C; Tue, 18 May 2021 22:28:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 06546101B895
	for <blinux-list@redhat.com>; Tue, 18 May 2021 22:28:04 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7E08980D0E1
	for <blinux-list@redhat.com>; Tue, 18 May 2021 22:28:04 +0000 (UTC)
Received: from smtprelay02.ispgateway.de (smtprelay02.ispgateway.de
	[80.67.18.14]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-308-2XGGpGc8Oe2POHHyehWMOA-1; Tue, 18 May 2021 18:28:02 -0400
X-MC-Unique: 2XGGpGc8Oe2POHHyehWMOA-1
Received: from [37.4.229.143] (helo=[192.168.178.104])
	by smtprelay02.ispgateway.de with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
	(envelope-from <chrys@linux-a11y.org>) id 1lj8BU-0006BG-K2
	for blinux-list@redhat.com; Wed, 19 May 2021 00:27:28 +0200
Subject: Re: A question about Fenrir on Arch linux
To: blinux-list@redhat.com
References: <0e57a608-299f-e90f-f5aa-432e6cab3eb5@gmail.com>
	<16e11231-c90b-c724-157f-f4017ff23ab6@slint.fr>
	<4d72b722-1e65-6b34-d1d4-2d168f3fff9c@gmail.com>
	<a8000f0d-1831-4a35-c7c5-da79f853000c@linux-a11y.org>
	<43d3b1f6-a50a-2e99-a9b4-5a9a6026faf3@gmail.com>
	<9a7f1b78-1b65-774a-494a-d2c5bc2090f9@linux-a11y.org>
	<76d051a3-abec-5852-eab0-01930524a21c@gmail.com>
	<76c7f8a5-8161-ff55-c98c-092f895f4bd3@linux-a11y.org>
	<alpine.NEB.2.23.451.2105181809120.4726@panix1.panix.com>
Message-ID: <ee7ede90-6c57-e658-cc6c-7a3b0c4da2d3@linux-a11y.org>
Date: Wed, 19 May 2021 00:28:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2105181809120.4726@panix1.panix.com>
X-Df-Sender: Y2hyeXNAbGludXgtYTExeS5vcmc=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
Content-Language: de-DE
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SG93ZHksCgpqZW51eCBoYXMgaW5zdGFsbGVkIGZlbnJpciBieSBkZWZhdWx0PyB2ZXJ5IGludGVy
ZXN0aW5nLCBpIGRpZG50IGtub3cgCnRoYXQgKG9yIGZvcmdvdHQgYWJvdXQgdGhhdCkuIHdobyBp
cyB0aGUgY3JlYXRvciBvZiBqZW51eD8gc29tZWJvZHkgaSAKa25vdyBmcm9tIGxpc3RzPwoKY2hl
ZXJzIGNocnlzCgpBbSAxOS4wNS4yMSB1bSAwMDoxMiBzY2hyaWViIExpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb246Cj4gT25lIHBvc3NpYmxlIHF1aWNrIHdheSB0byBnZXQgYW4gYW5z
d2VyIHdvdWxkIGJlIHRvIGluc3RhbGwgamVudXggd2hpY2gKPiBoYXMgZmVucmlyIGluc3RhbGxl
ZCBhbmQgd29ya2luZyBhcyBpdHMgc2NyZWVuIHJlYWRlciBieSBkZWZhdWx0LiAgVGhlbgo+IGlu
c3RhbGwgcGlwZXdpcmUgYW5kIGFsbG93IHB1bHNlYXVkaW8gdG8gYmUgdW5pbnN0YWxsZWQuICBU
aGVuIHNldCB1cAo+IHBpcGV3aXJlIGFzIGZhciBhcyB5b3UgY2FuIGFuZCByZWJvb3QgdGhlIHN5
c3RlbS4gIElmIGZlbnJpciBjb21lcyB1cAo+IHRhbGtpbmcsIGZlbnJpciBhbmQgcGlwZXdpcmUg
Y2FuIHdvcmsgdG9nZXRoZXIuICBJZiBub3QsIG1heWJlIGZlbnJpciBhbmQKPiBwaXBld2lyZSBj
YW4gYmUgbWFkZSB0byB3b3JrIHRvZ2V0aGVyIGFmdGVyIHByb3BlciBjb25maWd1cmF0aW9uLgo+
Cj4KPgo+IE9uIFR1ZSwgMTggTWF5IDIwMjEsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1
c3Npb24gd3JvdGU6Cj4KPj4gSG93ZHksCj4+Cj4+IC8vIERvIEkgbmVjZXNzYXJpbHkgaGF2ZSB0
byBoYXZlIHB1bHNlYXVkaW8/IGNhbid0IEkgbWFuYWdlIHdpdGggcGlwZXdpcmU/Cj4+Cj4+IHlv
dSBjYW4gaGF2ZSBwaXBld2lyZSBhcyB3ZWxsLiB5b3UgY2FuIGhhdmUgYW55dGhpbmcgd2hhdCBw
cm9kdWNlIHNvdW5kCj4+IDopLiBCdXQgaSBjYW50IHNheSBhbnl0aGluZyBhYm91dCB0aGF0IHNv
cnJ5Lgo+Pgo+PiBpIGRvbid0IGtub3cgYWJvdXQgdGhlIGNvbmNlcHQgaW4gdGhlIGJhY2tncm91
bmQuIElmIHBpcGV3aXJlIGhhcyBhbiBzaW1pbGFyCj4+IGNvbmNlcHQgYXMgcHVsc2UgYXVkaW8g
KHBlciB1c2VyIGluc3RhbmNlIGFuZCBpc29sYXRpb24gbGV2ZWwpLCB5b3UgbWlnaHQgbmVlZAo+
PiBhbiBzaW1pbGFyIHdvcmthcm91bmRzIGhlcmUuIGJ1dCB0aGUgY29uZmlndXJhdGlvbiBzY3Jp
cHRzIG1pZ2h0IG5vdCB3b3JrCj4+IHRoZW4uCj4+Cj4+IGlmIHlvdSBsaWtlIGV4cGVyaW1lbnRz
LCBpdHMgd29ydGggYSB0cnkuIGlmIHlvdSBmaW5kIGEgd2F5LCBsZXQgbWUga25vdywgdGhlbgo+
PiB3ZSBjYW4gaW50ZWdyYXRlIGEgY29uZmlndXJlLXBpcGV3aXJlIGFzIHdlbGwuCj4+Cj4+IC8v
IEkgcmFuIHRoZSBzY3JpcHRzLCBhbmQgaSBkaWQgaGVhciBmZW5yaXIncyBzdGFydHVwIHNvdW5k
IGljb24sIGJ1dCBvbmx5Cj4+IHdoZW4gcnVubmluZyBGZW5yaXIgYXMgY3VycmVudCB1c2VyLCBu
b3QgYXMgcm9vdCwgZXZlbiBhZnRlciBydW5uaW5nIHRoZQo+PiBzY3JpcHQgeW91IHN1Z2dlc3Rl
ZC4KPj4KPj4geWVhIHRoaXMgc291bmRzIGxpa2UgdGhlIHN5bXB0b20gd2hhdCB0aGUgcHVsc2Ug
Y29uZmlndXJhdGlvbiBzY3JpcHRzIHNvbHZlLgo+PiBmZW5yaXIgY2FudCBydW4gYXMgdXNlciBj
dXJyZW50bHkgKGl0cyBwbGFubmVkLCBidXQgbm90IHlldCBjb21wbGV0ZSkuIHNvCj4+IGZlbnJp
ciBkb250IGdldCBhbnkgaW5wdXQgZGF0YSB0byBwcm9jZXNzIChzbyB0aGUgc2NyZWVlbnJlYWRl
ciBjYW50IHJlYWQgeW91cgo+PiBzY3JlZW4gOiksIGl0c8KgIGEgbm9uIHNjcmVlbiByZWFkZXIg
WEQpCj4+Cj4+IGNoZWVycyBjaHJ5cwo+Pgo+Pgo+PiBBbSAxOC4wNS4yMSB1bSAxODo1MiBzY2hy
aWViIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb246Cj4+PiBIaSB0aGVyZSwKPj4+
Cj4+Pgo+Pj4gRG8gSSBuZWNlc3NhcmlseSBoYXZlIHRvIGhhdmUgcHVsc2VhdWRpbz8gY2FuJ3Qg
SSBtYW5hZ2Ugd2l0aCBwaXBld2lyZT8KPj4+Cj4+PiBJIHJhbiB0aGUgc2NyaXB0cywgYW5kIGkg
ZGlkIGhlYXIgZmVucmlyJ3Mgc3RhcnR1cCBzb3VuZCBpY29uLCBidXQgb25seSB3aGVuCj4+PiBy
dW5uaW5nIEZlbnJpciBhcyBjdXJyZW50IHVzZXIsIG5vdCBhcyByb290LCBldmVuIGFmdGVyIHJ1
bm5pbmcgdGhlIHNjcmlwdAo+Pj4geW91IHN1Z2dlc3RlZC4KPj4+Cj4+PiBUaGFua3MgYWdhaW4u
Cj4+Pgo+Pj4gQmVzdCByZWdhcmRzLgo+Pj4KPj4+IEZyYW5jaXNjby4KPj4+Cj4+PiBPbiA1LzE4
LzIxIDU6MDYgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+
Pj4gSG93ZHksCj4+Pj4KPj4+PiBkbyB5b3UgaGF2ZSB0aGUgcmVxdWlyZW1lbnRzIGZvciB0aGUg
Z2VuZXJpYyBzb3VuZCAvIHZvaWNlIGRyaXZlcnMKPj4+PiBpbnN0YWxsZWQ/Cj4+Pj4gVG8gZ2V0
IHN1cmUsIHJlaW5zdGFsbCBpdCBleGVjdXRlOgo+Pj4+IHN1ZG8gcGFjbWFuIC1TIHNveCBlc3Bl
YWstbmcgeGNsaXAKPj4+Pgo+Pj4+IHNveCBpcyB1c2VkIGZvciBwbGF5IHNvdW5kLCBlc3BlYWsg
Zm9yIHZvaWNlIG91dHB1dCBpbiB0aGUgZGVmYXVsdAo+Pj4+IGNvbmZpZ3VyYXRpb24sIHhjbGlw
IGlzIGEgZnVubnkgdG95IHRvIGxldCBmZW5yaXIgc2hhcmUgdGhlIGNsaXBib2FyZAo+Pj4+IGJl
dHdlZW4geW91ciBHVUkgYW5kIFRlcm1pbmFsLgo+Pj4+Cj4+Pj4gc3RhcnQgZmVucmlyIGZvciB0
ZXN0aW5nIGluIGZvcmVncm91bmQgLSB5b3UgY2FuIHN0b3AgaXQgdXNpbmcgQ1RSTCArIEMKPj4+
PiBzdWRvIGZlbnJpcgo+Pj4+Cj4+Pj4gZGlkIHlvdSBoZWFyIHRoZSBzdGFydHVwIHNvdW5kPyBm
ZW5yaXIgcGxheXMgYSBsaXR0bGUgc291bmRpY29uIGF0IHN0YXJ0dXAuCj4+Pj4KPj4+PiBpZiBu
b3QsIHRoZW4gcHVsc2VhdWRpbyBpcyBub3QgY29uZmlndXJlZC4KPj4+PiBzaG9ydCBzdG9yeSBl
eGVjdXRlOgo+Pj4+ICMgY29uZmlndXJlIHVzZXIKPj4+PiAvdXNyL3NoYXJlL2ZlbnJpcnNjcmVl
bnJlYWRlci90b29scy9jb25maWd1cmVfcHVsc2Uuc2gKPj4+PiAjIGNvbmZpZ3VyZSByb290Cj4+
Pj4gc3VkbyAvdXNyL3NoYXJlL2ZlbnJpcnNjcmVlbnJlYWRlci90b29scy9jb25maWd1cmVfcHVs
c2Uuc2gKPj4+Pgo+Pj4+ICMgbmVlZCB0byByZXN0YXJ0IHRoYXQgdGhlIGNvbmZpZ3VyYXRpb24g
Zm9yIGJvdGggZ2V0IGFjdGl2ZQo+Pj4+Cj4+Pj4gcmVzdGFydAo+Pj4+Cj4+Pj4gdGhlbiByZXRy
eQo+Pj4+Cj4+Pj4gc3VkbyBmZW5yaXIKPj4+Pgo+Pj4+IGxvbmcgc3RvcnJ5OiBmZW5yaXIgbmVl
ZHMgYnkgZGVmYXVsdCB0byBydW4gYXMgcm9vdCB0byBjb2xsZWN0IHRoZSBkYXRhIG9uCj4+Pj4g
eW91ciBzY3JlZW4gb3IgY2FwdXRyZSB0aGUgaW5wdXQgZGV2aWNlcy4gaWYgZmVucmlyIHNwZWFr
cyBvciBjcmVhdGVzCj4+Pj4gc291bmQsIGl0IGRvZXMgdGhpcyBhcyByb290IHVzZXIuIHlvdSB3
b250IGhlYXIgc291bmQgb2YgYW4gb3RoZXIgdXNlciBieQo+Pj4+IHB1bHNlYXVkaW8gKHNvdW5k
IHNlcnZlcikgZGVzaWduLiBXZSBuZWVkIHRvIHRyYW5zcG9ydCB0aGUgc291bmQgY3JlYXRlZCBh
cwo+Pj4+IHJvb3QgdG8gdGhlIHNvdW5kIHNlcnZlciB5b3UgaGF2ZSBydW5uaW5nIGFzIHVzZXIg
dG8gZmluYWxseSBoZWFyIHRoZQo+Pj4+IHNvdW5kLgo+Pj4+Cj4+Pj4gZmVucmlyIHByb3ZpZGVz
IDIgc2NyaXB0cyAoc2VlIGFib3ZlKSB0byBjb25maWd1cmUgdGhlIHJvb3QgcHVzZSBhdWRpbyB0
bwo+Pj4+IHNlbmQgdGhlIGRhdGEgdG8geW91ciB1c2VyIGFuZCBjb25maWd1cmUgdXNlciBwdWxz
ZSBhdWRpbyB0byBsaXN0ZW4gdG8gdGhlCj4+Pj4gc291bmQgc2VudCBieSByb290IGFuZCBwbGF5
IGl0Lgo+Pj4+Cj4+Pj4gY2hlZXJzIGNocnlzCj4+Pj4KPj4+Pgo+Pj4+IDE4LjA1LjIxIHVtIDE0
OjQ2IHNjaHJpZWIgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbjoKPj4+Pgo+Pj4+
PiBIZWxsbyB0aGVyZSwKPj4+Pj4KPj4+Pj4KPj4+Pj4gVGhhbmtzIHNvIG11Y2gsIG5vdywgdGhh
dCBwYXJ0IG9mIHRoZSBwcm9ibGVtIGlzIHNvbHZlZCEKPj4+Pj4KPj4+Pj4gVGhlIG90aGVyIHBh
cnQsIGhvdyBldmVyLCB0aGF0IGlzIG5vdCBzb2x2ZWQsIGlzIHRoYXQgZmVucmlyIGRvZXNuJ3Qg
c3BlYWsKPj4+Pj4gd2l0aCBlc3BlYWssIG9yIGVzcGVhay1uZy4KPj4+Pj4KPj4+Pj4gRG8gSSBo
YXZlIHRvIHNldCBzb21ldGhpbmcgc29tZXdoZXJlIGZvciB0aGF0IHRvIGhhcHBlbj8KPj4+Pj4K
Pj4+Pj4gVGhhbmtzIGFnYWluLgo+Pj4+Pgo+Pj4+PiBCZXN0IHJlZ2FyZHMuCj4+Pj4+Cj4+Pj4+
IEZyYW5jaXNjby4KPj4+Pj4KPj4+Pj4gT24gNS8xOC8yMSAxMDoyNCBBTSwgTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+Pj4+IEhvd2R5IEZyYW5jaXNjbywKPj4+
Pj4+Cj4+Pj4+PiBpIGRvbnQga25vdyB3aHkgdGhvc2UgbGlicyBhcmUgbm90IGFuIGRlcGVuZGVu
Y3kgYnkgcHl0aG9uLXB5ZW5jaGFudCBpZgo+Pj4+Pj4gdGhvc2UgYXJlIHNwcmVhZCB3YXJuaW5n
cy4gTWF5YmUgdGhpcyBzaG91bGQgYmUgcmVwb3J0ZWQgdG8gdGhlIHBhY2thZ2UKPj4+Pj4+IG1h
aW50YWluZXIuIEJ1dCBhbnl3YXkuCj4+Pj4+Pgo+Pj4+Pj4geW91IGNhbiBhc2sgcGFjbWFuIHdo
YXQgcGFja2FnZSBjb250YWlucyB0aGUgc3BlY2lmaWMgZmlsZSB5b3UgbmVlZCBieQo+Pj4+Pj4g
InN1ZG8gcGFjbWFuIC1GeSBmaWxlbmFtZSIuIGhlcmUgaSBkaWQgdGhpcyBmb3IgZm9yIGV4YW1w
bGUgaW4KPj4+Pj4+IGxpYnZva2tvLnNvOgo+Pj4+Pj4KPj4+Pj4+IDEwOjE0IFtjaHJ5c0BibGFj
a2JlYXN0IH5dIDopICQgc3VkbyBwYWNtYW4gLUZ5IGxpYnZvaWtrby5zbwo+Pj4+Pj4gW3N1ZG9d
IFBhc3N3b3J0IGY/ciBjaHJ5czoKPj4+Pj4+IDo6IFN5bmNocm9uaXNpZXJlIFBha2V0ZGF0ZW5i
YW5rZW4uLi4KPj4+Pj4+ICDCoGNvcmUgOTAzLDUgS2lCwqAgNiwxNyBNaUIvcyAwMDowMAo+Pj4+
Pj4gWyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyNdCj4+Pj4+PiAxMDAlCj4+Pj4+PiAgwqBleHRyYSA5LDMgTWlC
wqAgMjYsOSBNaUIvcyAwMDowMAo+Pj4+Pj4gWyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyNdCj4+Pj4+PiAxMDAl
Cj4+Pj4+PiAgwqBjb21tdW5pdHkgMjIsOCBNaULCoCAyOSw2IE1pQi9zIDAwOjAxCj4+Pj4+PiBb
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjI10KPj4+Pj4+IDEwMCUKPj4+Pj4+ICDCoG11bHRpbGliIDIyMiw1IEtp
QsKgIDEyLDggTWlCL3MgMDA6MDAKPj4+Pj4+IFsjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjXQo+Pj4+Pj4gMTAw
JQo+Pj4+Pj4gZXh0cmEvbGlidm9pa2tvIDQuMy4xLTEKPj4+Pj4+ICDCoMKgwqAgdXNyL2xpYi9s
aWJ2b2lra28uc28KPj4+Pj4+IDEwOjE1IFtjaHJ5c0BibGFja2JlYXN0IH5dIDopICQKPj4+Pj4+
Cj4+Pj4+PiBzbyB0aGUgcGFja2FnZSB5b3UgbmVlZCBmb3IgbGlidm9ra28uc28gaXMgImxpYnZv
aWtrbyIKPj4+Pj4+IHRvIHNpbGVuY2Ugb3V0IGFsbCB0aGUgd2FybmluZ3MgZG8gdGhpczoKPj4+
Pj4+IHN1ZG8gcGFjbWFuIC1TIGxpYnZvaWtrbyBudXNwZWxsIGhzcGVsbAo+Pj4+Pj4KPj4+Pj4+
IHRoaXMgaW5zdGFsbCBhbGwgMyAoSU1PIG9wdGlvbmFsIGRlcGVuZGVuY3kncywgd2hhdCBzaG91
bGQgbm90IGNyZWF0ZSBhCj4+Pj4+PiB3YXJuaW5nLCBidXQgd2VsbCwgaXQgaXMgbGlrZSBpdCBp
cykKPj4+Pj4+Cj4+Pj4+PiBpIHVzZSBpcnNzaSBhcyBJUkMgKGNvbW1hbmRsaW5lKSBjbGllbnQu
IHRoZXJlIGlzIGFsc28gUGlkZ2luIChhcwo+Pj4+Pj4gZ3JhcGhpY2FsIGNsaWVudCkuIGJvdGgg
YXJlIHZlcnkgbmljZS4KPj4+Pj4+Cj4+Pj4+PiBsb29raW5nIGZvcndhcmQgdG8gc2VlIHlvdSBp
biBJUkMgOikuCj4+Pj4+Pgo+Pj4+Pj4gY2hlZXJzIGNocnlzCj4+Pj4+Pgo+Pj4+Pj4KPj4+Pj4+
IEFtIDE4LjA1LjIxIHVtIDA4OjU3IHNjaHJpZWIgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlz
Y3Vzc2lvbjoKPj4+Pj4+PiBIZWxsbyB0aGVyZSwKPj4+Pj4+Pgo+Pj4+Pj4+Cj4+Pj4+Pj4gSSBt
YW5hZ2VkIHRvIGluc3RhbGwgb25lIG9mIHRoZSBsaWJyYXJpZXMsIGJ1dCBub3QgdGhlIG90aGVy
IHR3bywgc28KPj4+Pj4+PiB0aGFua3MgZm9yIHRoYXQuCj4+Pj4+Pj4KPj4+Pj4+PiBBbHNvLCB0
aGFua3MgZm9yIHN1Z2dlc3RpbmcgdG8gdXNlIHlheSwgSSBqdXN0IGluc3RhbGxlZCBpdCwgSSBk
aWRuJ3QKPj4+Pj4+PiBrbm93IHlhb3VydCB3YXMgZGVwcmVjYXRlZC4KPj4+Pj4+Pgo+Pj4+Pj4+
IE15IHF1ZXN0aW9uIG5vdyBpcywgYW5kIHRoaXMnbGwgYmUgZHVtLCB3aGF0IGFyZSByZWNvbW1l
bmRlZCBJUkMKPj4+Pj4+PiBjbGllbnRzPyBob3cgZG8gSSBnZXQgdGhlbSB3b3JraW5nPyB3aGF0
IHNob3VsZCBJIGtub3cgYmVmb3JlIGpvaW5pbmcgYW4KPj4+Pj4+PiBJUkMgY2hhbm5lbCwgd2hh
dCBldmVyIGl0IG1pZ2h0IGJlPwo+Pj4+Pj4+Cj4+Pj4+Pj4gVGhhbmtzIGFnYWluLgo+Pj4+Pj4+
Cj4+Pj4+Pj4gQmVzdCByZWdhcmRzLgo+Pj4+Pj4+Cj4+Pj4+Pj4gRnJhbmNpc2NvLgo+Pj4+Pj4+
Cj4+Pj4+Pj4gT24gNS8xNy8yMSA5OjE5IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uIHdyb3RlOgo+Pj4+Pj4+PiBIaSwgSSBqdXN0IHBvc3RlZCBhIGxpbmsgdG8gdGhpcyBt
ZXNzYWdlIGludGVuZGVkIHRvIGNocnlzIChGZW5yaXIKPj4+Pj4+Pj4gYXV0aG9yKSBvbiB0aGUg
I2ExMXkgY2hhbm5lbCBvZiBpcmMubGludXgtYTExeS5vcmcuCj4+Pj4+Pj4+Cj4+Pj4+Pj4+IE1h
eWJlIGpvaW4gaGltIHRoZXJlPwo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBEaWRpZXIKPj4+Pj4+Pj4KPj4+
Pj4+Pj4gTGUgMTcvMDUvMjAyMSA/IDIwOjE1LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uIGEgP2NyaXTCoDoKPj4+Pj4+Pj4+IEhlbGxvIGV2ZXJ5b25lLAo+Pj4+Pj4+Pj4KPj4+
Pj4+Pj4+Cj4+Pj4+Pj4+PiBJIGp1c3QgZG93bmxvYWRlZCBmZW5yaXItZ2l0IGZyb20gdGhlIEFV
UiB1c2luZyB5YW91cnQuCj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gV2hlbiBJIHRyeSB0byBydW4gZmVu
cmlyIHdpdGggdGhlIGNvbW1hbmQKPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBmZW5yaXIKPj4+Pj4+Pj4+
Cj4+Pj4+Pj4+PiBpbiBhIHRlcm1pbmFsLCBob3cgZXZlciwgaSBnZXQgZmVucmlyJ3Mgc3RhcnR1
cCBzb3VuZCwgYW5kIHRoaXM6Cj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IFtmcmFuY2lz
Y29AQmx1ZWJsaW5rIH5dJCBmZW5yaXIKPj4+Pj4+Pj4+ICoqIChwcm9jZXNzOjcwMDgpOiBXQVJO
SU5HICoqOiAyMDoxMjo0NS4zNzQ6IEVycm9yIGxvYWRpbmcgcGx1Z2luOgo+Pj4+Pj4+Pj4gbGli
aHNwZWxsLnNvLgo+Pj4+Pj4+Pj4gMDogY2Fubm90IG9wZW4gc2hhcmVkIG9iamVjdCBmaWxlOiBO
byBzdWNoIGZpbGUgb3IgZGlyZWN0b3J5Cj4+Pj4+Pj4+PiAqKiAocHJvY2Vzczo3MDA4KTogV0FS
TklORyAqKjogMjA6MTI6NDUuMzc0OiBFcnJvciBsb2FkaW5nIHBsdWdpbjoKPj4+Pj4+Pj4+IGxp
YnZvaWtrby5zby4KPj4+Pj4+Pj4+IDE6IGNhbm5vdCBvcGVuIHNoYXJlZCBvYmplY3QgZmlsZTog
Tm8gc3VjaCBmaWxlIG9yIGRpcmVjdG9yeQo+Pj4+Pj4+Pj4gKiogKHByb2Nlc3M6NzAwOCk6IFdB
Uk5JTkcgKio6IDIwOjEyOjQ1LjM3NzogRXJyb3IgbG9hZGluZyBwbHVnaW46Cj4+Pj4+Pj4+PiBs
aWJudXNwZWxsLnNvCj4+Pj4+Pj4+PiAuNDogY2Fubm90IG9wZW4gc2hhcmVkIG9iamVjdCBmaWxl
OiBObyBzdWNoIGZpbGUgb3IgZGlyZWN0b3J5Cj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+
IEFueSBpZGVhcyBvbiBob3cgdG8gZml4IGl0LCBhbmQgbm8gc3BlZWNoIGVpdGhlci4KPj4+Pj4+
Pj4+Cj4+Pj4+Pj4+PiBUaGFuayB5b3UgZm9yIGFueSBhbnN3ZXIuCj4+Pj4+Pj4+Pgo+Pj4+Pj4+
Pj4gQmVzdCByZWdhcmRzLgo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IEZyYW5jaXNjby4KPj4+Pj4+Pj4+
Cj4+Pj4+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+Pj4+Pj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+Pj4+PiBCbGludXgtbGlz
dEByZWRoYXQuY29tCj4+Pj4+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+Pj4+PiBCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+Pj4+
PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0
Cj4+Pj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
Pj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4+PiBCbGludXgtbGlzdEByZWRo
YXQuY29tCj4+Pj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdAo+Pj4+Pj4KPj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4+
IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0
Cj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhh
dC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+Cj4+Pj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+PiBCbGludXgtbGlzdCBtYWls
aW5nIGxpc3QKPj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4gaHR0cHM6Ly9saXN0bWFu
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+IEJsaW51eC1saXN0IG1haWxp
bmcgbGlzdAo+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4gaHR0cHM6Ly9saXN0bWFuLnJl
ZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pgo+PiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Cj4KPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlz
dAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0
QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdA==

