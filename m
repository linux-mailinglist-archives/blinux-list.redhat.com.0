Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B8B24F9F34
	for <lists+blinux-list@lfdr.de>; Fri,  8 Apr 2022 23:31:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649453493;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=dcuM+aBZzgOz0SVXu+hkKk85M4DC9QyFH89nYdEohjU=;
	b=GhqTgFL7S0/Glqptn29cSmguJc9cYw8ctF2ofGOGCSUCYWewhTMLXiuk9cFGZT4c9wGKBb
	o8HOqikJ+3s5+BKnImOtabTj1ZIJ2iq9ovXgl3Za7FuyRf5inWsb78Sh4U6YIbbxso6OKU
	3+WqGbdqCv02TEtUqUvtz8PPj0CAjkU=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-526-hf3iVcLoPg-mzE_PjiajeA-1; Fri, 08 Apr 2022 17:31:32 -0400
X-MC-Unique: hf3iVcLoPg-mzE_PjiajeA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A33501C01525;
	Fri,  8 Apr 2022 21:31:30 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 8F750C44AE2;
	Fri,  8 Apr 2022 21:31:30 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 1AE48194034C;
	Fri,  8 Apr 2022 21:31:30 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 8 Apr 2022 23:31:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: Dragonfm questions/NNN query
To: blinux-list@redhat.com
References: <mailman.7446.1649447610.111209.blinux-list@redhat.com>
 <mailman.7561.1649448212.111206.blinux-list@redhat.com>
 <mailman.7684.1649448727.111210.blinux-list@redhat.com>
 <mailman.7689.1649453320.111210.blinux-list@redhat.com>
In-Reply-To: <mailman.7689.1649453320.111210.blinux-list@redhat.com>
Message-ID: <mailman.7470.1649453489.111203.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: de-DE
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SG93ZHksCgpzb3JyeSBpIGZvcmdvdHQsCmkgY2hhbmdlZCB0aGUgd2F5IHRvIHZpZXcgdGhlIGZp
bGVzIGFzIHdlbGwgKGZvciB0YXIgYW5kIHppcCwgb3RoZXJzIApjb3VsZCBqdXN0IGJlZW4gYWRk
ZWQgYnkgY29weSBhbmQgY2hhbmdlIG1pbWUgdG8gdGhlIGdpdmVuIG9uZSk6CnNlY3Rpb24gW21p
bWVdCiMgezB9ID0gZmlsZXBhdGgKYXBwbGljYXRpb24vemlwPWFscyB7MH0gfCBsZXNzCmFwcGxp
Y2F0aW9uL3gtdGFyPWFscyB7MH0gfCBsZXNzCgp0aGUgbWltZSB0eXBlIGlzIHNob3duIGluIHRo
ZSBmb2xkZXIgbGlzdCBieSBkZWZhdWx0CgpjaGVlcnMgY2hyeXMKCkFtIDA4LjA0LjIyIHVtIDIz
OjI4IHNjaHJpZWIgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbjoKPiBIb3dkeSwK
Pgo+IGkgaW5zdGFsbGVkIE1hdGUgdGVybWluYWwgZm9yIHRlc3RpbmcKPgo+IC8vIEN0cmwrRCBm
b3IgZGV0YWlscyBpbnN0ZWVhZCBvZiBGMTAKPiBvayB0aGlzIGlzIGNoYW5nZWQuCj4KPiBhYm91
dCBeW3UgaSB3YXMgd3JvbmcuIGl0cyBqdXN0IGFsdCArIHUKPiBzbyBhIHNpbmdsZSBeIGlzIEN0
cmwKPiB0aGUgc2VxdWVuY2UgXlsgaXMgYWx0IGlmIGl0IGlzIGZvbGxvd2VkIGJ5IGFuIGxldHRl
ci4gaWYgbm90LCBpdHMgZXNjYXBlCj4gY3RybCArIGFsdCArIHggd291bGQgYmUgXlteQwo+Cj4g
YmFjayB0byBBbHQgKyB1LCB0aGlzIHdvcmtlZCBmb3IgbWUsIHNob3VsZCBpIGNoYW5nZSB0aGUg
c2hvcnRjdXQgaW4gCj4gYW55IHdheT8KPgo+IC8vIEknbSB0cnlpbmcgdG8gcmVwbGFjZSB1bnpp
cCBhbmQgdGFyIHdpdGggYXRvb2wKPiBpbiBzZWN0aW9uIFttaW1lXSB5b3Ugc2VlIGhvdyB0byBv
cGVuIGFuIGZpbGUuCj4gaW4gc2VjdGlvbiBbY29tcHJlc3NdIGFuZCBbZGVjb21wcmVzc10geW91
IGNhbiBjb25maWd1cmUgdGhlIAo+IGRlLS9jb21wcmVzc2luZyBwcm9jZXNzLgo+IGkgY2hhbmdl
ZCB0aGlzIGZvciB5b3UKPgo+IGNvbXByZXNzICh0aGUgd29yZCBjb21wcmVzcyBiZXZvcmUgdGhl
IGVxdWFsIGlzIGp1c3QgdGhlIGxhYmxlIHNob3duIAo+IGluIGNvbnRleHQgbWVudSk6Cj4gIyB7
MH0gPSBTb3VyY2U6IGxpc3Qgb2YgZmlsZXMgc2VwYXJhdGVkIGJ5IHNwYWNlIHdpdGggYWJzb2x1
dCBmaWxlcGF0aAo+ICMgezF9ID0gRGVzdGluYXRpb246wqAgYXJjaGl2ZSBuYW1lCj4gY29tcHJl
c3M9YXBhY2sgLXEgezF9IHswfQo+Cj4KPiBkZWNvbXByZXNzIChmb3IgemlwZmlsZXMsIHlvdSBj
YW4ganVzdCBjb3B5IHRoYXQgZm9yIGFueSBvdGhlciBmb3JtYXQgCj4gc3VwcG9ydGVkIGJ5IGF0
b29sIGFuZCBjaGFuZ2UgdGhlIGFwcGxpY2F0aW9uL3ppcCB0byB3aGF0ZXZlciBtaW1ldHlwZSAK
PiB5b3Ugd2FudCB0byB1bnppcCk6Cj4gIyB7MH0gPSBTb3VyY2U6IGZpbGUgdG8gZGVjb21wcmVz
cwo+ICMgezF9ID0gRGVzdGluYXRpb246IGZvbGRlciB3aXRoIGFyY2hpdmUgY29udGVudAo+IGFw
cGxpY2F0aW9uL3ppcD1hdG9vbCAtZiAtcSAtLWV4dHJhY3QtdG89ezF9IHswfQo+Cj4gaSBqdXN0
IHB1c2hlZC4KPgo+IGNoZWVycyBjaHJ5cwo+Cj4KPiBBbSAwOC4wNC4yMiB1bSAyMjoxMSBzY2hy
aWViIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb246Cj4+IFN1cmUgdGhpbmcuIEhl
cmUnJ3Mgd2hhdCBJIHdoaXBwZWQgdXBwIHJlYWwgcXVpY2sKPj4KPj4gQ3RybCtEIGZvciBkZXRh
aWxzIGluc3RlZWFkIG9mIEYxMAo+Pgo+PiBDdHJsK2FsdCt4IGZvciBleHRyYWN0IGluc3RlYWQg
b2YgdHJsK2FsdCt1ICh3aGljaCBkb2VzbnQgc2VlbSB0byB3b3JrCj4+IG9uIE1hdGU/KQo+Pgo+
PiBJJ20gdHJ5aW5nIHRvIHJlcGxhY2UgdW56aXAgYW5kIHRhciB3aXRoIGF0b29sLCBob3cgTk5O
IGhhbmRsZXMgaXQgc2luY2UKPj4gaXQncyBhIGxvdCBuaWNlciB0byBoYXZlIG9uZSB0b29sIHRo
YXQgaGFuZGxlcyBhIHRvbiBvZiBmb3JtYXRzIHdpdGhvdXQKPj4gaGF2aW5nIHRvIGh1bnQgZG93
biAxMCBkaWZmZXJyZW50IHByb2dyYW1zCj4+Cj4+IEFzaWRlIGZyb20gdGhhdCwgbm90IG1hZGUg
YW55IG90aGVyIGNoYW5nZXMgdG8gdGhlIC5jb25mIGZpbGUgdGhvdWdoLgo+PiBJdCdzIGEgbmVh
dCBsaXR0bGUgcHJvZ3JhbSwgdGhvdWdoIGp1c3QgaW4gY2FzZSBJIG1pc3NlZCBhbnksIGdvIHRo
cm91Z2gKPj4gYW5kIHVzZSBEcmFnb25GTSB3aXRoIGEgdGVybWluYWwgZW11bGF0b3IgYW5kIHNl
ZSB3aGF0IHlvdSBjYW4gY29tZSB1cAo+PiB3aXRoIGZvciBzaG9ydGN1dHM/IEknbSBvbiBhIGxh
cHRvcCBjdXJyZW50bHkgc28gdGhhdCBraW5kIG9mIGhpbmRlcnMKPj4gd2hhdCBJIGNhbiBkbyBz
aG9ydGN1dHMgd2lzZSBob3dldmVyCj4+Cj4+IE9uIEZyaSwgQXByIDA4LCAyMDIyIGF0IDEwOjAz
OjI3UE0gKzAyMDAsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIAo+PiBkaXNjdXNzaW9uIHdyb3Rl
Ogo+Pj4gSG93ZHksCj4+Pgo+Pj4gV2VsbCwgRjEyMyB3YXMgbW9zdGx5IFRUWSBvbmx5LiBTbyB0
aGUgYmluZGluZ3MgYXJlIHNldCB3aXRoIHRoYXQgaW4gCj4+PiBtaW5kIDopLiBUaGUgcHJvamVj
dCB3YW50ZWQgdG8gbW9taWMgR1VJIHNob3J0Y3V0cyBmb3IgbW9zdCBwYXJ0cy4KPj4+IFRoZSBj
b2xsaWRpbmcgc2hvcnRjdXRzIGNhbiBiZSBjaGFuZ2VkIHZlcnkgZWFzeSBpbiBzZXR0aW5ncyBm
aWxlLgo+Pj4KPj4+IElmIHlvdSBoYW5kIG1lIGEgbGlzdCB3aXRoIHNob3J0Y3V0cyB5b3Ugd2Fu
dCB0byBoYXZlIGNoYW5nZWQsIGkgCj4+PiBjaGFuZ2UgdGhlbSBmb3IgeW91IHJpZ2h0IGluIG1h
c3Rlci4KPj4+Cj4+PiBBcyBGMTIzIGlzIG5vIG1vcmUsIFRUWSBjb21wYXQuIGRvZXMgbm90IG1h
dHRlciB0aGF0IG11Y2ggYW55bW9yZSB0byAKPj4+IG1lIGFuZCB3ZSBjYW4gaW1wcm92ZSBpdCBp
biB0ZXJtaW5hbCBlbXVsYXRvcnMgKG1vc3Qgb2YgdGhlbSBoYXZlIAo+Pj4gbW9yZSBjYXBhYmls
aXRpZXMgdGhhbiBUVFkgaW4gYW55IHdheSwgZm9yIGV4YW1wbGUga29uc29sZSAoIHRoZSBLREUg
Cj4+PiB0ZXJtaW5hbCBlbXVsYXRvciBoYXMgc3BlY2lhbCBlc2NhcGUgc2VxdWVuY2VzIGZvciBz
aGlmdCBhcnJvdykKPj4+Cj4+PiBDaGVlcnMgY2hyeXMKPj4+Cj4+Pj4gQW0gMDguMDQuMjAyMiB1
bSAyMTo1MyBzY2hyaWViIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gCj4+Pj4g
PGJsaW51eC1saXN0QHJlZGhhdC5jb20+Ogo+Pj4+Cj4+Pj4g77u/VW5mb3J0dW5hdGVseSwgRHJh
Z29uRk0gZG9lc24ndCB3b3JrIHdlbGwgb3V0IG9mIHRoZSBib3ggd2l0aCBhIAo+Pj4+IHRlcm1p
bmFsIGVtdWxhdG9yLCBtb3N0bHkgZG93biB0byBjb25mbGljdHMgd2l0aCBrZXlzIGxpa2UgRjEw
LiBZZXMgCj4+Pj4gSSBjYW4gcmVkZWZpbmUgdGhlbSwgYnV0IHRoYXQncyBraW5kIG9mIHNvbWV0
aGluZyBJbSBzbHdseSBzbG93bHkgCj4+Pj4gcG9raW5nIGF0LiBJJ20gdW5hYmxlIHRvIGdldCBN
YXRlLXRlcm1pbmFsIHRvIHJlY29nbml6ZSBhIGN0cmwrYWx0IAo+Pj4+IHBhdGVybiBob3VnaCB3
aGVyZWFzIGEgVFRZIHdvcmtzIGZpbmUgc28sIHVuc3VyZSBpZiB5b3UgbmVlZCB0byAKPj4+PiB0
ZXN0IERyYWdvbmZtIG9uIHRlcm1pbmFsIGVtdWxhdG9ycyB3aXRoIGEgZGVza3RvcD8KPj4+Pgo+
Pj4+IEtpbmQgb2YgYSBzaGFtZSBzaW5jZSBJIGxpa2UgaG93IGVhc3kgRHJhZ29uIGlzIHRvIHVz
ZSB2cyBzb21ldGhpbmcgCj4+Pj4gbGlrZQo+Pj4+IE1DIG9yIFJhbmdlciBvciBOTk4gKG15IGN1
cnJlbnQgZmF2b3JpdGUgb25lIHRoYXQgZG9lc24ndCBoYXZlIAo+Pj4+IGtleWJvYXJkCj4+Pj4g
Y29uZmxpY3RzKSB0aG91Z2gKPj4+Pgo+Pj4+PiBPbiBGcmksIEFwciAwOCwgMjAyMiBhdCAwOToz
NjoyOFBNICswMjAwLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCAKPj4+Pj4gZGlzY3Vzc2lvbiB3
cm90ZToKPj4+Pj4gSG93ZHksCj4+Pj4+Cj4+Pj4+IFdlbGwgdGhlcmUgaXMgYSBjb250ZXh0IG1l
bnXCoCAoIGRyYWdvbkZNIGNhbGxzIGl0IERldGFpbHMsIGJlY2F1c2UgCj4+Pj4+IGl0IGFsc28g
c2hvd3MgZmlsZSBwcm9wZXJ0aWVzIGxpa2Ugc2l6ZSwgbWltZSBhbmQgYSBsaXN0IG9mIAo+Pj4+
PiBhdmFpbGFibGUgYWN0aW9ucykgd2l0aCBhbGwgYXZhaWxhYmxlIG9wdGlvbnMgYnkgcHJlc3Np
bmcgRjEwCj4+Pj4+IFNvbWUgYWN0aW9ucyBhcmUgb25seSBhdmFpbGFibGUgZm9yIGdpdmVuIG1p
bWUgdHlwZXMgbGlrZSBjb21wcmVzcyAKPj4+Pj4gY3VycmVudCBvbmx5IGZvciB6aXAgYW5kIHRh
ciwgb3RoZXJzIGNvdWxkIGJlIGFkZGFkIHZlcnkgZWFzeS4gQnkgCj4+Pj4+IGRlZmF1bHQgZHJh
Z29uZm0gZG9lcyBub3QgdXNlIGF0b29sIGJ1dCB1bnppcCBjb21tYW5kIGZvciB6aXAgCj4+Pj4+
IGZpbGVzIGFuZCB0YXIgb2YgY291cnNlIGZvciB0YXIgdGhvc2UgbmVlZCB0byBiZSBpbnN0YWxs
ZWQgb3IgCj4+Pj4+IGNvbmZ1cmVkIHRvIHVzZSBzb21ldGhpbmcgZWxzZS7CoCAoSSBjYW4gZ2l2
ZSB5b3UgYSBtb3JlIGRldGFpbGVkIAo+Pj4+PiBpbmZvcm1hdGlvbiBob3cgdG8gY29uZmlndXJl
IHRob3NlIHN0dWZmIGlmIHlvdSBhcmUgaW50ZXJlc3RlZCBpbikKPj4+Pj4KPj4+Pj4gRHJhZ29u
Rk0gcmVhZHMgdGhlIEVzY2FwZSBzZXF1ZW5jZXMgZnJvbSBzdGRpbiB0byBkZXRlY3Qgc2hvcnRj
dXRzIAo+Pj4+PiAobGlrZSBhbG1vc3QgYW55IG90aGVyIENMSSBhcHBsaWNhdGlvbikKPj4+Pj4g
U29tZSBpbXBvcnRhbnQgYmFzaWMgdHJhbnNsYXRpb24gaGVscCAod2Ugc2hvdWxkIGFkZCB0aGUg
c2hvcnRjdXRzIAo+Pj4+PiBhcyBjb21tZW50cyB0byB0aGUgc2V0dGluZ3MgZmlsZSBsb2wgKQo+
Pj4+PiBeID0gQ1RSTAo+Pj4+PiBbID0gQWx0Cj4+Pj4+IFVwcGVyY2FzZSBsZXR0ZXIgPSBzaGlm
dCArIGxldHRlcgo+Pj4+PiBsb3dlcmNhc2UgbGV0dGVyID0ganVzdCB0aGUgbGV0dGVyCj4+Pj4+
IEFuIG90aGVyIGV4YW1wbGU6Cj4+Pj4+IF5bdSB0cmFuc2xhdGVzIGFzIGN0cmwgKyBhbHQgKyB1
Cj4+Pj4+Cj4+Pj4+IFRoZXJlIGFyZSBzb21lIHNwZWNpYWxzIGxpa2UgYXJyb3cga2V5cyBvciBl
c2NhcGUuCj4+Pj4+IEVzY2FwZSBpcyB0cmFuc2xhdGVkIGJ5IF5bCj4+Pj4+Cj4+Pj4+IChieSB0
aGUgd2F5IG1hbnkgc2hvcnRjdXRzIGFyZSBzaW1pbGFyIHRvIG90aGVyIGdyYXBoaWNhbCBmaWxl
IAo+Pj4+PiBtYW5hZ2VycyBCVVQgc2hpZnQgKyBhcnJvdyBmb3IgbWFyayBmaWxlcyBpcyBkaWZm
ZXJlbnQgYXMgaSBjb3VsZCAKPj4+Pj4gbm90IGZpZ3VyZSBob3cgdG8gcmVhZCB0aGlzIGZyb20g
YW4gZXNjYXBlIHNlcXVlbmNlLCBiZWNhdXNlIHRoZXJlIAo+Pj4+PiBpcyBubyB1cHBlcmNhc2Ug
YXJyb3cgKnNtaWxlKikKPj4+Pj4KPj4+Pj4gRGV2ZWxvcG1lbnQgd2FzIHNwb25zb3JlZCBieSBG
MTIzIHByb2plY3QuIFRvZGF5IGtub3duIGFzIHN0b3JtdXguIAo+Pj4+PiBTYWRseSBpIGRpZCBu
b3Qgd2lyZSBhIGxvdCBvZiBkb2N1bWVudGF0aW9uIGJ1dCB5b3UgY2FuIGFzayBtZSAKPj4+Pj4g
ZXZlcnl0aGluZyB5b3Ugd2FudCB0byBrbm93IDopLgo+Pj4+Pgo+Pj4+PiBDaGVlcnMgY2hyeXMK
Pj4+Pj4KPj4+Pj4+PiBBbSAwOC4wNC4yMDIyIHVtIDE4OjQxIHNjaHJpZWIgTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgCj4+Pj4+Pj4gZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT46
Cj4+Pj4+PiDvu79TbyBJIGdhdmUgaXQgYSBzaG90IGFuZCBpdCBmZWVscyBsb2dpY2FsIGFuZCB3
ZWxsIGxhaWQgb3V0LCBmb3IgCj4+Pj4+PiB0aGUgbW9zdAo+Pj4+Pj4gcGFydAo+Pj4+Pj4KPj4+
Pj4+IEJVdCBJJ20gc3RydWdnbGluZyBvbiBhIGZldyB0aGluZ3MuIEkgaGF2ZSBpdCBnb2luZyBh
bmQgd2FudCB0byAKPj4+Pj4+IHVuemlwIGFuCj4+Pj4+PiBhcmNoaXZlIGZyb20gd2l0aGluIGl0
LiBJbiBOTk4gSSBjYW4ganVzdCBkbyB0aGF0IGFuZCB3b3JrIHdpdGggCj4+Pj4+PiBhdG9vbC4g
SQo+Pj4+Pj4gY2FuJ3Qgc2VlbSB0byBmaW5kIHRoZSBrZXlzIHRvIHN0YXJ0IGV4dHJhY3Rpbmcg
YW4gYXJjaGl2ZSBvciBob3cKPj4+Pj4+IERyYWdvbmZtIGhhbmRsZXMgdGhhdCBhdCBhbGwsIEl2
ZSBvbmx5IGZvdW5kIHVuZXh0cmFjdCB3aXRoIF4oVSAKPj4+Pj4+IGluIHRoZQo+Pj4+Pj4gY29u
ZmlnLCB3aGljaCBJJ3ZlIG5vIGNsdWUgd2hhdCBpdCB0cmFuc2xhdGVzIHRvIGluIHRlcm1zIG9m
IAo+Pj4+Pj4gYWN0dWFsIGtleXMKPj4+Pj4+IGFzaWRlIGZyb20gY3RybCBhbmQgVS4gSXQncyB0
aGUgKCBJJ20gc3R1bXBlZCBvbgo+Pj4+Pj4KPj4+Pj4+IFNlZSBteSBtYWluIGdyaXBlIHdpdGgg
Tk5OIGlzIGlmIEkgdXNlIGl0IGluIGEgdGVybWluYWwgSSBoYXZlIHRvIAo+Pj4+Pj4gaGl0IE8s
Cj4+Pj4+PiB3M20gYW5kIGMgdG8gb3BlbiBhbiBodG1sIGRvYyBpbiB3M20gZWxzZSBpdCBsb2Fk
cyB1cCBpbiBGaXJlZm94LiAKPj4+Pj4+IE5vdwo+Pj4+Pj4gZ3JhbnRlZCBJJ3ZlIG5vdCB0cmll
ZCBpdCBvbiBhIHB1cmUgVFRZIGJ1dC4uLm9uIGEgdGVybWluYWwsIAo+Pj4+Pj4geGRnLW9wZW4K
Pj4+Pj4+IG92ZXJyaWRlcyBicm93c2VyIGJlaW5nIHNldCBhcyBhbiBlbnZpcm9ubWVudCB2YXJp
YWJsZQo+Pj4+Pj4KPj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4+IEJsaW51eC1s
aXN0QHJlZGhhdC5jb20KPj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pj4+Cj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+
Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+PiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlz
dAo+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+PiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0
Cj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNv
bS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBC
bGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgt
bGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29t
Cmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

