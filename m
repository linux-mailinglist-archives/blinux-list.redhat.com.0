Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 02EBD38CC3B
	for <lists+blinux-list@lfdr.de>; Fri, 21 May 2021 19:34:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1621618486;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=AV+It0BgenTAddUovifQqI6n6W53UadtBnN2WFNLjwk=;
	b=UmPgKLBBg+lok0NJ+1RUOFhJRvODp6ilHM3+Tb/XT+vaa9ZDHqFJIKHHl6LnaJ/gUv0hyM
	i7UfGpNRRnTUWHiQU0TnpSygFoiC+sMeGbzI6gXyJyd23DuAcb0vo9wlIxHv0v47qj6NfA
	lyF06CPt3UkQNqp8v+WNMT1Pet7KVKQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-82-EUwNZiGhMPidUuKs6dHVnQ-1; Fri, 21 May 2021 13:34:42 -0400
X-MC-Unique: EUwNZiGhMPidUuKs6dHVnQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 04CDD10CE7A0;
	Fri, 21 May 2021 17:34:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5BD065D9D5;
	Fri, 21 May 2021 17:34:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E24BC44A66;
	Fri, 21 May 2021 17:34:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14LHY8dT025230 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 21 May 2021 13:34:08 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 506A110AF434; Fri, 21 May 2021 17:34:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4AE7110BBCD2
	for <blinux-list@redhat.com>; Fri, 21 May 2021 17:34:05 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 495F49124CA
	for <blinux-list@redhat.com>; Fri, 21 May 2021 17:34:05 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-191-q9rpQppgPuu94d6RE56SSQ-1; Fri, 21 May 2021 13:34:02 -0400
X-MC-Unique: q9rpQppgPuu94d6RE56SSQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Fmty20Zyyz44LB
	for <blinux-list@redhat.com>; Fri, 21 May 2021 13:34:02 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Fmty1754rzcbc; Fri, 21 May 2021 13:34:01 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Fmty16bTgzcbV
	for <blinux-list@redhat.com>; Fri, 21 May 2021 13:34:01 -0400 (EDT)
Date: Fri, 21 May 2021 13:34:01 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: A question about Fenrir on Arch linux
In-Reply-To: <3b3d3279-de17-85f4-3212-6d724d5275ee@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2105211333140.19566@panix1.panix.com>
References: <0e57a608-299f-e90f-f5aa-432e6cab3eb5@gmail.com>
	<16e11231-c90b-c724-157f-f4017ff23ab6@slint.fr>
	<4d72b722-1e65-6b34-d1d4-2d168f3fff9c@gmail.com>
	<a8000f0d-1831-4a35-c7c5-da79f853000c@linux-a11y.org>
	<43d3b1f6-a50a-2e99-a9b4-5a9a6026faf3@gmail.com>
	<9a7f1b78-1b65-774a-494a-d2c5bc2090f9@linux-a11y.org>
	<2dd1a3a9-93e5-c1c8-6188-0f1b61e9367f@gmail.com>
	<760ead03-5616-e06e-d8e2-8961a0ba970a@linux-a11y.org>
	<7e97d005-f579-329d-b89a-877cd850b424@gmail.com>
	<alpine.NEB.2.23.451.2105211016530.24532@panix1.panix.com>
	<3b3d3279-de17-85f4-3212-6d724d5275ee@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from QUOTED-PRINTABLE to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 14LHY8dT025230
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

R29vZCBzbyBmYXIsIHdoZXJlIGlzIHNvdW5kIGdvaW5nPyAgU2xpbnQgdXNlcyBsaWJhbyBmb3Ig
dGhpcyByYXRoZXIgdGhhbgpwdWxzZSBvciBhbHNhLgoKCk9uIEZyaSwgMjEgTWF5IDIwMjEsIExp
bnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cgo+IEhlbGxvIHRoZXJlLAo+
Cj4KPiBZZXMgSSBoYXZlIHJ1biBTcGQtY29uZiwgYnV0IG5vIGx1Y2suIHRoZSBvdXRwdXQgbW9k
dWxlIGlzIHNldCB0byBlc3BlYWstbmcuCj4KPiBCZXN0IHJlZ2FyZHMuCj4KPiBGcmFuY2lzY28K
Pgo+IE9uIDUvMjEvMjEgNDoxNyBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biB3cm90ZToKPiA+IEhhdmUgeW91IHJ1biBzcGQtY29uZiBhbmQgc2VsZWN0ZWQgZXNwZWFrLW5n
IGFzIHlvdXIgc3ludGhlc2l6ZXIgZm9yCj4gPiBzcGVlY2gtZGlzcGF0Y2hlcj8KPiA+Cj4gPgo+
ID4gT24gRnJpLCAyMSBNYXkgMjAyMSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biB3cm90ZToKPiA+Cj4gPj4gSGVsbG8gdGhlcmUsCj4gPj4KPiA+Pgo+ID4+IHJlbW92aW5nIGVz
cGVhayBkb2Vzbid0IGZpeCBpdCwgdGhlIHNhbWUgcHJvYmxlbSBzdGlsbCBwZXJzaXN0cy4KPiA+
Pgo+ID4+IEJlc3QgcmVnYXJkcy4KPiA+Pgo+ID4+IEZyYW5jaXNjby4KPiA+Pgo+ID4+Cj4gPj4g
T24gNS8yMS8yMSAxMjozNiBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3
cm90ZToKPiA+Pj4gSG93ZHkKPiA+Pj4KPiA+Pj4+IEkgaGF2ZSBlc3BlYWssIHNveCwgYW5kIHhj
bGlwIGluc3RhbGxlZCwgcGx1cyBwdWxzZWF1ZGlvLAo+ID4+Pj4gcHVsc2VhdWRpby1hbHNhLAo+
ID4+Pj4gYWxzYS11dGlscyBhbmQgcGx1Z2lucy4KPiA+Pj4gZXNwZWFrLW5nIGlzIHVzZWQgYnkg
ZGVmYXVsdCBpbnN0ZWFkIG9mIGVzcGVhay4gZXNwZWFrLW5nIGlzIHRoZSBzdWNjZXNzb3IKPiA+
Pj4gb2YgZXNwZWFrLiBkbyB0YWtlIGNhcmUgdG8gbm90IGluc3RhbGwgZXNwZWFrIGJ1dCBlc3Bl
YWstbmcgYW5kIGdpdmUKPiA+Pj4gYW5vdGhlcgo+ID4+PiBzaG90IDopLgo+ID4+Pgo+ID4+Pgo+
ID4+PiBBbSAyMS4wNS4yMSB1bSAxMTo0NyBzY2hyaWViIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb246Cj4gPj4+PiBIZWxsbyB0aGVyZSwKPiA+Pj4+Cj4gPj4+Pgo+ID4+Pj4gSnVz
dCBmb3IgdGhlIGhlY2sgb2YgaXQsIEkgcmVkaWQgYSBjbGVhbiBpbnN0YWxsIG9mIGFyY2ggd2l0
aCBwdWxzZWF1ZGlvCj4gPj4+PiB0aGlzIHRpbWUsIGFuZCBJIGNvbmZpZ3VyZWQgZXZlcnl0aGlu
ZyBJIG5lZWRlZCBydW5uaW5nIHRoZSBzaCBzY3JpcHQgeW91Cj4gPj4+PiBpbmRpY2F0ZWQuCj4g
Pj4+Pgo+ID4+Pj4gSXQgaGFsZiB3b3JrcywgYW5kIGhhbGYgZG9lc24ndC4KPiA+Pj4+Cj4gPj4+
PiBXaGF0IEkgbWVhbiBieSB0aGF0IGlzIHRoYXQgd2hlbiBJIHJlc3RhcnRlZCB0aGUgbWFjaGlu
ZSwganVzdCBhIGZldwo+ID4+Pj4gc2Vjb25kcyBhZ28gYW5kIHJhbiBmZW5yaXIgYXMgc3Vkb2Vy
LCBpdCBwbGF5ZWQgdGhlIHNvdW5kIGljb24sIHRoaW5nCj4gPj4+PiB0aGF0Cj4gPj4+PiB3aXRo
IHBpcGV3aXJlIGRpZG4ndCBoYXBwZW4sIGJ1dCBnYXZlIG1lIG5vIHNwZWVjaCBhdCBhbGwuCj4g
Pj4+Pgo+ID4+Pj4gSSBoYXZlIGVzcGVhaywgc294LCBhbmQgeGNsaXAgaW5zdGFsbGVkLCBwbHVz
IHB1bHNlYXVkaW8sCj4gPj4+PiBwdWxzZWF1ZGlvLWFsc2EsCj4gPj4+PiBhbHNhLXV0aWxzIGFu
ZCBwbHVnaW5zLgo+ID4+Pj4KPiA+Pj4+IEFueSBzdWdnZXN0aW9ucz8KPiA+Pj4+Cj4gPj4+PiBU
aGFua3MgYWdhaW4uCj4gPj4+Pgo+ID4+Pj4gQmVzdCByZWdhcmRzLgo+ID4+Pj4KPiA+Pj4+IEZy
YW5jaXNjby4KPiA+Pj4+Cj4gPj4+PiBPbiA1LzE4LzIxIDU6MDYgUE0sIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gPj4+Pj4gSG93ZHksCj4gPj4+Pj4KPiA+Pj4+
PiBkbyB5b3UgaGF2ZSB0aGUgcmVxdWlyZW1lbnRzIGZvciB0aGUgZ2VuZXJpYyBzb3VuZCAvIHZv
aWNlIGRyaXZlcnMKPiA+Pj4+PiBpbnN0YWxsZWQ/Cj4gPj4+Pj4gVG8gZ2V0IHN1cmUsIHJlaW5z
dGFsbCBpdCBleGVjdXRlOgo+ID4+Pj4+IHN1ZG8gcGFjbWFuIC1TIHNveCBlc3BlYWstbmcgeGNs
aXAKPiA+Pj4+Pgo+ID4+Pj4+IHNveCBpcyB1c2VkIGZvciBwbGF5IHNvdW5kLCBlc3BlYWsgZm9y
IHZvaWNlIG91dHB1dCBpbiB0aGUgZGVmYXVsdAo+ID4+Pj4+IGNvbmZpZ3VyYXRpb24sIHhjbGlw
IGlzIGEgZnVubnkgdG95IHRvIGxldCBmZW5yaXIgc2hhcmUgdGhlIGNsaXBib2FyZAo+ID4+Pj4+
IGJldHdlZW4geW91ciBHVUkgYW5kIFRlcm1pbmFsLgo+ID4+Pj4+Cj4gPj4+Pj4gc3RhcnQgZmVu
cmlyIGZvciB0ZXN0aW5nIGluIGZvcmVncm91bmQgLSB5b3UgY2FuIHN0b3AgaXQgdXNpbmcgQ1RS
TCArIEMKPiA+Pj4+PiBzdWRvIGZlbnJpcgo+ID4+Pj4+Cj4gPj4+Pj4gZGlkIHlvdSBoZWFyIHRo
ZSBzdGFydHVwIHNvdW5kPyBmZW5yaXIgcGxheXMgYSBsaXR0bGUgc291bmRpY29uIGF0Cj4gPj4+
Pj4gc3RhcnR1cC4KPiA+Pj4+Pgo+ID4+Pj4+IGlmIG5vdCwgdGhlbiBwdWxzZWF1ZGlvIGlzIG5v
dCBjb25maWd1cmVkLgo+ID4+Pj4+IHNob3J0IHN0b3J5IGV4ZWN1dGU6Cj4gPj4+Pj4gIyBjb25m
aWd1cmUgdXNlcgo+ID4+Pj4+IC91c3Ivc2hhcmUvZmVucmlyc2NyZWVucmVhZGVyL3Rvb2xzL2Nv
bmZpZ3VyZV9wdWxzZS5zaAo+ID4+Pj4+ICMgY29uZmlndXJlIHJvb3QKPiA+Pj4+PiBzdWRvIC91
c3Ivc2hhcmUvZmVucmlyc2NyZWVucmVhZGVyL3Rvb2xzL2NvbmZpZ3VyZV9wdWxzZS5zaAo+ID4+
Pj4+Cj4gPj4+Pj4gIyBuZWVkIHRvIHJlc3RhcnQgdGhhdCB0aGUgY29uZmlndXJhdGlvbiBmb3Ig
Ym90aCBnZXQgYWN0aXZlCj4gPj4+Pj4KPiA+Pj4+PiByZXN0YXJ0Cj4gPj4+Pj4KPiA+Pj4+PiB0
aGVuIHJldHJ5Cj4gPj4+Pj4KPiA+Pj4+PiBzdWRvIGZlbnJpcgo+ID4+Pj4+Cj4gPj4+Pj4gbG9u
ZyBzdG9ycnk6IGZlbnJpciBuZWVkcyBieSBkZWZhdWx0IHRvIHJ1biBhcyByb290IHRvIGNvbGxl
Y3QgdGhlIGRhdGEKPiA+Pj4+PiBvbgo+ID4+Pj4+IHlvdXIgc2NyZWVuIG9yIGNhcHV0cmUgdGhl
IGlucHV0IGRldmljZXMuIGlmIGZlbnJpciBzcGVha3Mgb3IgY3JlYXRlcwo+ID4+Pj4+IHNvdW5k
LCBpdCBkb2VzIHRoaXMgYXMgcm9vdCB1c2VyLiB5b3Ugd29udCBoZWFyIHNvdW5kIG9mIGFuIG90
aGVyIHVzZXIKPiA+Pj4+PiBieQo+ID4+Pj4+IHB1bHNlYXVkaW8gKHNvdW5kIHNlcnZlcikgZGVz
aWduLiBXZSBuZWVkIHRvIHRyYW5zcG9ydCB0aGUgc291bmQgY3JlYXRlZAo+ID4+Pj4+IGFzIHJv
b3QgdG8gdGhlIHNvdW5kIHNlcnZlciB5b3UgaGF2ZSBydW5uaW5nIGFzIHVzZXIgdG8gZmluYWxs
eSBoZWFyIHRoZQo+ID4+Pj4+IHNvdW5kLgo+ID4+Pj4+Cj4gPj4+Pj4gZmVucmlyIHByb3ZpZGVz
IDIgc2NyaXB0cyAoc2VlIGFib3ZlKSB0byBjb25maWd1cmUgdGhlIHJvb3QgcHVzZSBhdWRpbwo+
ID4+Pj4+IHRvCj4gPj4+Pj4gc2VuZCB0aGUgZGF0YSB0byB5b3VyIHVzZXIgYW5kIGNvbmZpZ3Vy
ZSB1c2VyIHB1bHNlIGF1ZGlvIHRvIGxpc3RlbiB0bwo+ID4+Pj4+IHRoZQo+ID4+Pj4+IHNvdW5k
IHNlbnQgYnkgcm9vdCBhbmQgcGxheSBpdC4KPiA+Pj4+Pgo+ID4+Pj4+IGNoZWVycyBjaHJ5cwo+
ID4+Pj4+Cj4gPj4+Pj4KPiA+Pj4+PiAxOC4wNS4yMSB1bSAxNDo0NiBzY2hyaWViIExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb246Cj4gPj4+Pj4KPiA+Pj4+Pj4gSGVsbG8gdGhlcmUs
Cj4gPj4+Pj4+Cj4gPj4+Pj4+Cj4gPj4+Pj4+IFRoYW5rcyBzbyBtdWNoLCBub3csIHRoYXQgcGFy
dCBvZiB0aGUgcHJvYmxlbSBpcyBzb2x2ZWQhCj4gPj4+Pj4+Cj4gPj4+Pj4+IFRoZSBvdGhlciBw
YXJ0LCBob3cgZXZlciwgdGhhdCBpcyBub3Qgc29sdmVkLCBpcyB0aGF0IGZlbnJpciBkb2Vzbid0
Cj4gPj4+Pj4+IHNwZWFrIHdpdGggZXNwZWFrLCBvciBlc3BlYWstbmcuCj4gPj4+Pj4+Cj4gPj4+
Pj4+IERvIEkgaGF2ZSB0byBzZXQgc29tZXRoaW5nIHNvbWV3aGVyZSBmb3IgdGhhdCB0byBoYXBw
ZW4/Cj4gPj4+Pj4+Cj4gPj4+Pj4+IFRoYW5rcyBhZ2Fpbi4KPiA+Pj4+Pj4KPiA+Pj4+Pj4gQmVz
dCByZWdhcmRzLgo+ID4+Pj4+Pgo+ID4+Pj4+PiBGcmFuY2lzY28uCj4gPj4+Pj4+Cj4gPj4+Pj4+
IE9uIDUvMTgvMjEgMTA6MjQgQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
d3JvdGU6Cj4gPj4+Pj4+PiBIb3dkeSBGcmFuY2lzY28sCj4gPj4+Pj4+Pgo+ID4+Pj4+Pj4gaSBk
b250IGtub3cgd2h5IHRob3NlIGxpYnMgYXJlIG5vdCBhbiBkZXBlbmRlbmN5IGJ5IHB5dGhvbi1w
eWVuY2hhbnQKPiA+Pj4+Pj4+IGlmCj4gPj4+Pj4+PiB0aG9zZSBhcmUgc3ByZWFkIHdhcm5pbmdz
LiBNYXliZSB0aGlzIHNob3VsZCBiZSByZXBvcnRlZCB0byB0aGUKPiA+Pj4+Pj4+IHBhY2thZ2UK
PiA+Pj4+Pj4+IG1haW50YWluZXIuIEJ1dCBhbnl3YXkuCj4gPj4+Pj4+Pgo+ID4+Pj4+Pj4geW91
IGNhbiBhc2sgcGFjbWFuIHdoYXQgcGFja2FnZSBjb250YWlucyB0aGUgc3BlY2lmaWMgZmlsZSB5
b3UgbmVlZCBieQo+ID4+Pj4+Pj4gInN1ZG8gcGFjbWFuIC1GeSBmaWxlbmFtZSIuIGhlcmUgaSBk
aWQgdGhpcyBmb3IgZm9yIGV4YW1wbGUgaW4KPiA+Pj4+Pj4+IGxpYnZva2tvLnNvOgo+ID4+Pj4+
Pj4KPiA+Pj4+Pj4+IDEwOjE0IFtjaHJ5c0BibGFja2JlYXN0IH5dIDopICQgc3VkbyBwYWNtYW4g
LUZ5IGxpYnZvaWtrby5zbwo+ID4+Pj4+Pj4gW3N1ZG9dIFBhc3N3b3J0IGY/ciBjaHJ5czoKPiA+
Pj4+Pj4+IDo6IFN5bmNocm9uaXNpZXJlIFBha2V0ZGF0ZW5iYW5rZW4uLi4KPiA+Pj4+Pj4+IMKg
Y29yZSA5MDMsNSBLaULCoCA2LDE3IE1pQi9zIDAwOjAwCj4gPj4+Pj4+PiBbIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjI10KPiA+Pj4+Pj4+IDEwMCUKPiA+Pj4+Pj4+IMKgZXh0cmEgOSwzIE1pQsKgIDI2LDkgTWlC
L3MgMDA6MDAKPiA+Pj4+Pj4+IFsjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjXQo+ID4+Pj4+Pj4gMTAwJQo+ID4+
Pj4+Pj4gwqBjb21tdW5pdHkgMjIsOCBNaULCoCAyOSw2IE1pQi9zIDAwOjAxCj4gPj4+Pj4+PiBb
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjI10KPiA+Pj4+Pj4+IDEwMCUKPiA+Pj4+Pj4+IMKgbXVsdGlsaWIgMjIy
LDUgS2lCwqAgMTIsOCBNaUIvcyAwMDowMAo+ID4+Pj4+Pj4gWyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyNdCj4g
Pj4+Pj4+PiAxMDAlCj4gPj4+Pj4+PiBleHRyYS9saWJ2b2lra28gNC4zLjEtMQo+ID4+Pj4+Pj4g
wqDCoMKgIHVzci9saWIvbGlidm9pa2tvLnNvCj4gPj4+Pj4+PiAxMDoxNSBbY2hyeXNAYmxhY2ti
ZWFzdCB+XSA6KSAkCj4gPj4+Pj4+Pgo+ID4+Pj4+Pj4gc28gdGhlIHBhY2thZ2UgeW91IG5lZWQg
Zm9yIGxpYnZva2tvLnNvIGlzICJsaWJ2b2lra28iCj4gPj4+Pj4+PiB0byBzaWxlbmNlIG91dCBh
bGwgdGhlIHdhcm5pbmdzIGRvIHRoaXM6Cj4gPj4+Pj4+PiBzdWRvIHBhY21hbiAtUyBsaWJ2b2lr
a28gbnVzcGVsbCBoc3BlbGwKPiA+Pj4+Pj4+Cj4gPj4+Pj4+PiB0aGlzIGluc3RhbGwgYWxsIDMg
KElNTyBvcHRpb25hbCBkZXBlbmRlbmN5J3MsIHdoYXQgc2hvdWxkIG5vdCBjcmVhdGUKPiA+Pj4+
Pj4+IGEKPiA+Pj4+Pj4+IHdhcm5pbmcsIGJ1dCB3ZWxsLCBpdCBpcyBsaWtlIGl0IGlzKQo+ID4+
Pj4+Pj4KPiA+Pj4+Pj4+IGkgdXNlIGlyc3NpIGFzIElSQyAoY29tbWFuZGxpbmUpIGNsaWVudC4g
dGhlcmUgaXMgYWxzbyBQaWRnaW4gKGFzCj4gPj4+Pj4+PiBncmFwaGljYWwgY2xpZW50KS4gYm90
aCBhcmUgdmVyeSBuaWNlLgo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+IGxvb2tpbmcgZm9yd2FyZCB0byBz
ZWUgeW91IGluIElSQyA6KS4KPiA+Pj4+Pj4+Cj4gPj4+Pj4+PiBjaGVlcnMgY2hyeXMKPiA+Pj4+
Pj4+Cj4gPj4+Pj4+Pgo+ID4+Pj4+Pj4gQW0gMTguMDUuMjEgdW0gMDg6NTcgc2NocmllYiBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uOgo+ID4+Pj4+Pj4+IEhlbGxvIHRoZXJlLAo+
ID4+Pj4+Pj4+Cj4gPj4+Pj4+Pj4KPiA+Pj4+Pj4+PiBJIG1hbmFnZWQgdG8gaW5zdGFsbCBvbmUg
b2YgdGhlIGxpYnJhcmllcywgYnV0IG5vdCB0aGUgb3RoZXIgdHdvLCBzbwo+ID4+Pj4+Pj4+IHRo
YW5rcyBmb3IgdGhhdC4KPiA+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+IEFsc28sIHRoYW5rcyBmb3Igc3Vn
Z2VzdGluZyB0byB1c2UgeWF5LCBJIGp1c3QgaW5zdGFsbGVkIGl0LCBJIGRpZG4ndAo+ID4+Pj4+
Pj4+IGtub3cgeWFvdXJ0IHdhcyBkZXByZWNhdGVkLgo+ID4+Pj4+Pj4+Cj4gPj4+Pj4+Pj4gTXkg
cXVlc3Rpb24gbm93IGlzLCBhbmQgdGhpcydsbCBiZSBkdW0sIHdoYXQgYXJlIHJlY29tbWVuZGVk
IElSQwo+ID4+Pj4+Pj4+IGNsaWVudHM/IGhvdyBkbyBJIGdldCB0aGVtIHdvcmtpbmc/IHdoYXQg
c2hvdWxkIEkga25vdyBiZWZvcmUgam9pbmluZwo+ID4+Pj4+Pj4+IGFuIElSQyBjaGFubmVsLCB3
aGF0IGV2ZXIgaXQgbWlnaHQgYmU/Cj4gPj4+Pj4+Pj4KPiA+Pj4+Pj4+PiBUaGFua3MgYWdhaW4u
Cj4gPj4+Pj4+Pj4KPiA+Pj4+Pj4+PiBCZXN0IHJlZ2FyZHMuCj4gPj4+Pj4+Pj4KPiA+Pj4+Pj4+
PiBGcmFuY2lzY28uCj4gPj4+Pj4+Pj4KPiA+Pj4+Pj4+PiBPbiA1LzE3LzIxIDk6MTkgUE0sIExp
bnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gPj4+Pj4+Pj4+IEhpLCBJ
IGp1c3QgcG9zdGVkIGEgbGluayB0byB0aGlzIG1lc3NhZ2UgaW50ZW5kZWQgdG8gY2hyeXMgKEZl
bnJpcgo+ID4+Pj4+Pj4+PiBhdXRob3IpIG9uIHRoZSAjYTExeSBjaGFubmVsIG9mIGlyYy5saW51
eC1hMTF5Lm9yZy4KPiA+Pj4+Pj4+Pj4KPiA+Pj4+Pj4+Pj4gTWF5YmUgam9pbiBoaW0gdGhlcmU/
Cj4gPj4+Pj4+Pj4+Cj4gPj4+Pj4+Pj4+IERpZGllcgo+ID4+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+PiBM
ZSAxNy8wNS8yMDIxID8gMjA6MTUsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
YSA/Y3JpdMKgOgo+ID4+Pj4+Pj4+Pj4gSGVsbG8gZXZlcnlvbmUsCj4gPj4+Pj4+Pj4+Pgo+ID4+
Pj4+Pj4+Pj4KPiA+Pj4+Pj4+Pj4+IEkganVzdCBkb3dubG9hZGVkIGZlbnJpci1naXQgZnJvbSB0
aGUgQVVSIHVzaW5nIHlhb3VydC4KPiA+Pj4+Pj4+Pj4+Cj4gPj4+Pj4+Pj4+PiBXaGVuIEkgdHJ5
IHRvIHJ1biBmZW5yaXIgd2l0aCB0aGUgY29tbWFuZAo+ID4+Pj4+Pj4+Pj4KPiA+Pj4+Pj4+Pj4+
IGZlbnJpcgo+ID4+Pj4+Pj4+Pj4KPiA+Pj4+Pj4+Pj4+IGluIGEgdGVybWluYWwsIGhvdyBldmVy
LCBpIGdldCBmZW5yaXIncyBzdGFydHVwIHNvdW5kLCBhbmQgdGhpczoKPiA+Pj4+Pj4+Pj4+Cj4g
Pj4+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+Pj4gW2ZyYW5jaXNjb0BCbHVlYmxpbmsgfl0kIGZlbnJpcgo+
ID4+Pj4+Pj4+Pj4gKiogKHByb2Nlc3M6NzAwOCk6IFdBUk5JTkcgKio6IDIwOjEyOjQ1LjM3NDog
RXJyb3IgbG9hZGluZyBwbHVnaW46Cj4gPj4+Pj4+Pj4+PiBsaWJoc3BlbGwuc28uCj4gPj4+Pj4+
Pj4+PiAwOiBjYW5ub3Qgb3BlbiBzaGFyZWQgb2JqZWN0IGZpbGU6IE5vIHN1Y2ggZmlsZSBvciBk
aXJlY3RvcnkKPiA+Pj4+Pj4+Pj4+ICoqIChwcm9jZXNzOjcwMDgpOiBXQVJOSU5HICoqOiAyMDox
Mjo0NS4zNzQ6IEVycm9yIGxvYWRpbmcgcGx1Z2luOgo+ID4+Pj4+Pj4+Pj4gbGlidm9pa2tvLnNv
Lgo+ID4+Pj4+Pj4+Pj4gMTogY2Fubm90IG9wZW4gc2hhcmVkIG9iamVjdCBmaWxlOiBObyBzdWNo
IGZpbGUgb3IgZGlyZWN0b3J5Cj4gPj4+Pj4+Pj4+PiAqKiAocHJvY2Vzczo3MDA4KTogV0FSTklO
RyAqKjogMjA6MTI6NDUuMzc3OiBFcnJvciBsb2FkaW5nIHBsdWdpbjoKPiA+Pj4+Pj4+Pj4+IGxp
Ym51c3BlbGwuc28KPiA+Pj4+Pj4+Pj4+IC40OiBjYW5ub3Qgb3BlbiBzaGFyZWQgb2JqZWN0IGZp
bGU6IE5vIHN1Y2ggZmlsZSBvciBkaXJlY3RvcnkKPiA+Pj4+Pj4+Pj4+Cj4gPj4+Pj4+Pj4+Pgo+
ID4+Pj4+Pj4+Pj4gQW55IGlkZWFzIG9uIGhvdyB0byBmaXggaXQsIGFuZCBubyBzcGVlY2ggZWl0
aGVyLgo+ID4+Pj4+Pj4+Pj4KPiA+Pj4+Pj4+Pj4+IFRoYW5rIHlvdSBmb3IgYW55IGFuc3dlci4K
PiA+Pj4+Pj4+Pj4+Cj4gPj4+Pj4+Pj4+PiBCZXN0IHJlZ2FyZHMuCj4gPj4+Pj4+Pj4+Pgo+ID4+
Pj4+Pj4+Pj4gRnJhbmNpc2NvLgo+ID4+Pj4+Pj4+Pj4KPiA+Pj4+Pj4+Pj4+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPj4+Pj4+Pj4+PiBCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKPiA+Pj4+Pj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiA+
Pj4+Pj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3QKPiA+Pj4+Pj4+Pj4+Cj4gPj4+Pj4+Pj4+Cj4gPj4+Pj4+Pj4+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPj4+Pj4+Pj4+IEJsaW51eC1s
aXN0IG1haWxpbmcgbGlzdAo+ID4+Pj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gPj4+
Pj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QKPiA+Pj4+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+ID4+Pj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+ID4+Pj4+Pj4+IEJs
aW51eC1saXN0QHJlZGhhdC5jb20KPiA+Pj4+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNv
bS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gPj4+Pj4+Pgo+ID4+Pj4+Pj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+Pj4+Pj4+IEJsaW51
eC1saXN0IG1haWxpbmcgbGlzdAo+ID4+Pj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4+
Pj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdAo+ID4+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+ID4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+Pj4+Pj4gQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQo+ID4+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gPj4+Pj4KPiA+Pj4+PiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcg
bGlzdAo+ID4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiA+Pj4+PiBodHRwczovL2xpc3Rt
YW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gPj4+PiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4+Pj4gQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0Cj4gPj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gPj4+PiBodHRw
czovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gPj4+
Cj4gPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4g
Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+ID4+PiBCbGludXgtbGlzdEByZWRoYXQuY29t
Cj4gPj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QKPiA+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+ID4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+ID4+IEJsaW51eC1saXN0QHJlZGhhdC5j
b20KPiA+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0Cj4gPj4KPiA+Cj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+ID4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPiBCbGludXgtbGlzdEBy
ZWRoYXQuY29tCj4gPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5j
b20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0Cj4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xp
c3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

