Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 5FAAC3DD490
	for <lists+blinux-list@lfdr.de>; Mon,  2 Aug 2021 13:21:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627903284;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Tnxzs1kJfDnBumhVlB1pYHDiZIlksrBZyoSU4aJIkXo=;
	b=Ejc5DwqGWrv0qmsC90Uj/dmCLJwFtBF12EvKXCmhgvxc9W3tv6mAid9TUnZ7YwJpss7ali
	f06nPvO4/uUFkc/fUgs0hlR4HODSKeLpOS9ZpYR9yXGvS0QgCmyoR79n6tZ4ve22bwgP2O
	usl32j73S0/aQl7nkX85Wmb/vYDWZaA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-391-40d7ALbsNTmnBBtwhYZ7uA-1; Mon, 02 Aug 2021 07:21:22 -0400
X-MC-Unique: 40d7ALbsNTmnBBtwhYZ7uA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 554CA190D340;
	Mon,  2 Aug 2021 11:21:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CE8E2421F;
	Mon,  2 Aug 2021 11:21:17 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D077F4BB7C;
	Mon,  2 Aug 2021 11:21:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 172BLAQq015821 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 2 Aug 2021 07:21:10 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id AE3351134CBB; Mon,  2 Aug 2021 11:21:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AA18D1134CBD
	for <blinux-list@redhat.com>; Mon,  2 Aug 2021 11:21:07 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7FC401875068
	for <blinux-list@redhat.com>; Mon,  2 Aug 2021 11:21:07 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-576-34u4d3GOOEO3wRhw8xYfpg-1;
	Mon, 02 Aug 2021 07:21:05 -0400
X-MC-Unique: 34u4d3GOOEO3wRhw8xYfpg-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id A1259A00AC
	for <blinux-list@redhat.com>; Mon,  2 Aug 2021 11:20:59 +0200 (CEST)
Subject: Re: Installing the Orolux IBMTTS version of Eloquence on Slint?
To: blinux-list@redhat.com
References: <e1e89997-d831-ff6d-0b95-3a92f611e099@gmail.com>
	<87zgu0xop6.fsf@brainpower.wer>
	<0a9f8d88-9149-cb20-a3bb-82cf860cbee0@gmail.com>
	<e7299b99-0dbc-32be-7425-73ff8dacd166@slint.fr>
	<AA8158C9-5C0A-45E6-9A77-E41B66E54DCE@gmail.com>
Message-ID: <09cbb88b-1070-bb45-4114-7cb10ca65f98@slint.fr>
Date: Mon, 2 Aug 2021 13:21:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <AA8158C9-5C0A-45E6-9A77-E41B66E54DCE@gmail.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 172BLAQq015821
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

SGkgQnJhbmR0LAoKYXMgdGhlIGVuZCBvZiB0aGUgd29ybGQgaGFzIGJlZW4gZGVsYXllZC4uLgoK
RWRpdCBhcyByb290IC9ldGMvc3BlZWNoLWRpc3BhdGNoZXIvc3BlZWNoZC5jb25mIHRvIGhhdmUg
aW4gaXQgdGhpcyBsaW5lOgpEZWZhdWx0TW9kdWxlIHZveGluCgpUaGVuLCByZXN0YXJ0IHNwZWVj
aGQtdXAKCkNoZWVycywKRGlkaWVyCgoKTGUgMDIvMDgvMjAyMSDDoCAxMjozNSwgTGludXggZm9y
IGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IEhpIERpZGllciwKPiAKPiBP
ayB0aGVuLCBteSBmYXVsdC4gSSBoYXZlIGFuIG9sZGVyIHZlcnNpb24gb2YgdGhlIHNvZnR3YXJl
LCBSQzQgdG8gYmUgZXhhY3QuIEhvd2V2ZXIsIGludGVyZXN0aW5nbHkgZW5vdWdoLCBhZnRlciBp
bnN0YWxsaW5nIHRoZSB0aGluZywgSSBmb3VuZCBpdCBkb2VzIHdvcmsgd2l0aCBPcmNhLiBJIGFt
IGp1c3Qgbm93IHRyeWluZyB0byBmaWd1cmUgb3V0IGhvdyB0byBtYWtlIGl0IHdvcmsgd2l0aCBz
cGVlY2hkLXVwLiBJZiBJIGNhbm5vdCwgaXQncyBub3QgdGhlIGVuZCBvZiB0aGUgd29ybGQuCj4g
Cj4gV2FybSByZWdhcmRzLAo+IAo+IEJyYW5kdCBTdGVlbmthbXAKPiAKPiBTZW50IGZyb20gbXkg
TWFjQm9vayBBaXIKPiAKPiBDb250YWN0Ogo+IAo+IFBob25lOiArMjcgKDApNjAgNTI1IDkxODEg
PHRlbDovLysyNzYwNTI1OTE4MT4KPiAKPiBFbWFpbDogYnJhbmR0LnN0ZWVua2FtcEBnbWFpbC5j
b20gPG1haWx0bzpicmFuZHQuc3RlZW5rYW1wQGdtYWlsLmNvbT4KPiAKPiBUd2l0dGVyOiBAYnJh
bmR0c3RlZW5rYW1wIDxodHRwOi8vd3d3LnR3aXR0ZXIuY29tL2JyYW5kdHN0ZWVua2FtcD4KPiAK
PiAKPiAKPiAKPj4gT24gMDIgQXVnIDIwMjEsIGF0IDEyOjMwLCBMaW51eCBmb3IgYmxpbmQgZ2Vu
ZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPj4KPj4gSGkg
QnJhbmR0LAo+Pgo+PiBlaXRoZXIgc3BlZWNoLWRpc3BhdGNoZXIgb3IgdGhlIHZveGluIGluc3Rh
bGxlciBpcyBub3QgdXAgdG8gZGF0ZS4KPj4KPj4gVGhlIG91dHB1dCBvZiA6Cj4+IGxzIC92YXIv
bG9nL3BhY2thZ2VzL3NwZWVjaC1kaXNwYXRjaGVyKgo+PiBzaG91bGQgYmU6Cj4+IC92YXIvbG9n
L3BhY2thZ2VzL3NwZWVjaC1kaXNwYXRjaGVyLWdpdDI0NjgzOWRlLXg4Nl82NC0xc2xpbnQKPj4K
Pj4gSWYgbm90LCB5b3UgbmVlZCB0byBrZWVwIHlvdXIgc3lzdGVtIHVwIHRvIGRhdGUuCj4+IEFz
IGEgcmVtaW5kZXIgZm9yIHdob2V2ZXIgaW4gdGhlIHNhbWUgc2l0dWF0aW9uLCB0eXBlIGFzIHJv
b3Q6Cj4+IHNsYXB0LWhldCAtdQo+PiBzbGFwdC1nZXQgLS11cGdyYWRlCj4+IHNsYXB0LWdldC0t
aW5zdGFsbC1zZXQgc2xpbnQKPj4KPj4gSWYgeWVzLCBpbiBjYXNlIHlvdXIgdm94aW4gdGFyYmFs
bCBiZSBvbGQsIGRvd2xvYWQgdGhlIG1vc3QgcmVjZW50IG9uZQo+PiAoMy4zcmM1IGF0IHRpbWUg
b2Ygd3JpdGluZykKPj4gVElQOiB5b3UgYWx3YXlzIGNhbiBnZXQgdGhlIGN1cnJuZXQgdmVyc2lv
biByZS11c2luZyB0aGUgc2FtZSBkb3dubG9hZCBsaW5rKHMpCj4+IHlvdSBnb3Qgd2hlbiAgYnV5
aW5nIHRoZSB2b2ljZShzKQo+Pgo+PiBUaGVuIHJ1biB0aGUgaW5zdGFsbGVyIGFuZCBqdXN0IHBy
ZXNzIEVudGVyIHRvIGFncmVlCj4+IG9uIGFsbCB0aHJlZSBxdWVzdGlvbnMKPj4KPj4gSWYgYWxs
IHRoYXQgZmFpbHMsIHBsZWFzZSBnZXQgYmFjayB0byB1cy4KPj4gRGlkaWVyCj4+IC0tCj4+IERp
ZGllciBTcGFpZXIKPj4gU2xpbnQgbWFpbnRhaW5lcgo+Pgo+Pgo+PiBMZSAwMi8wOC8yMDIxIMOg
IDExOjMyLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0IDoKPj4+
IEhpLAo+Pj4gSXQncyB0ZWxsaW5nIG1lLCAieW91ciB2ZXJzaW9uIG9mIHNwZWFjaGRpc3BhdGNo
ZXIgaGFzIG5vdCBiZWVuIHJlY29nbml6ZWQiIHdoeSBpdCdzIGRvaW5nIHRoYXQsIEkgaGF2ZSBu
byBpZGVhLgo+Pj4gV2FybSByZWdhcmRzLAo+Pj4gQnJhbmR0IFN0ZWVua2FtcAo+Pj4gU2VudCB1
c2luZyBUaHVuZGVyYmlyZCBmcm9tIFNsaW50Cj4+PiBPbiA4LzIvMjEgOTo1OCBBTSwgTGludXgg
Zm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+PiBIaSwKPj4+Pgo+Pj4+IEkg
c3VjY2Vzc2Z1bGx5IGluc3RhbGxlZCBWb3hpbiBvbiBteSBTbGludCBtYWNoaW5lLiBBdCB3aGF0
IHBvaW50IGFyZQo+Pj4+IHlvdSBoYXZpbmcgIHByb2JsZW1zPwo+Pj4+Cj4+Pj4gV2hhdCBJIGRp
ZCB3YXMgdG8KPj4+PiAxLiBUYXIgeHhmenYgdm94aW4tMy4wLnRhci5nego+Pj4+IDIuIENoYW5n
ZSB0byB0aGUgZm9sZGVyIHdpdGggdGhlIHVuemlwcGVkIGZpbGVzIHdpdGggY2Qgdm94aW4tMy4w
Lwo+Pj4+IDMuIENoYW5nZSB0byBydW4gYXMgcm9vdCB3aXRoIHN1IGFuZCBwcmVzcyBlbnRlci4K
Pj4+PiA0LiBBcyByb290LCBydW4gdGhlIGluc3RhbGwgc2NyaXB0LCAuL2luc3RsbC5zaCBhbmQg
eW91IGFyZSBkb25lLgo+Pj4+Cj4+Pj4gR29vZCBsdWNrLAo+Pj4+Cj4+Pj4KPj4+Pgo+Pj4+Cj4+
Pj4gTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0
LmNvbT4gd3JpdGVzOgo+Pj4+PiBIaSBhbGwsCj4+Pj4+Cj4+Pj4+Cj4+Pj4+IE9rLCB0aGlzIG9u
ZSBoYXMgYmVlbiBkcml2aW5nIG1lIGNyYXp5LiBJIGhhdmUgc3VjY2Vzc2Z1bGx5IGluc3RhbGxl
ZAo+Pj4+PiBlbG9xdWVuY2Ugb24gcHVyZSBBcmNoLCBNYW5qYXJvLCBGZWRvcmEsIERlYmlhbiwg
VWJ1bnR1IGFuZCBNaW50LiBJIGp1c3QKPj4+Pj4gY2Fubm90IGdldCB0aGUgZGFtbiB0aGluZyB0
byBpbnN0YWxsIG9uIG15IFNsaW50IHN5c3RlbS4KPj4+Pj4KPj4+Pj4KPj4+Pj4gSWYgYW55b25l
IGNhbiBoZWxwLCBJIHdvdWxkIGJlIHJlYWxseSBncmF0ZWZ1bC4KPj4+PiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+IEJsaW51eC1saXN0IG1haWxp
bmcgbGlzdAo+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+PiBodHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4KPj4+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+PiBCbGludXgtbGlzdCBt
YWlsaW5nIGxpc3QKPj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+IGh0dHBzOi8vbGlzdG1h
bi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4KPj4KPj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3Qg
bWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFu
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+IAo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiAKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xp
c3RpbmZvL2JsaW51eC1saXN0

