Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 6A7333D4A87
	for <lists+blinux-list@lfdr.de>; Sun, 25 Jul 2021 00:55:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627167349;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=xkqt7sdwLRh20uHb20DLtfNGiAr6/wErpPRdhLZOm8M=;
	b=EMkTkr+mHfrtpN6N6rYZV4dPjTGlhIIP3ryLxhqvl0nehDc4PlX+cuQYe6cSBpKFe8lcFX
	L1CZw6UktAmXX9XMkA7DkeMQ4NsS90JW8b212QKuMDjTjmPLNGbAGWIIQs+y4Cko52sdNd
	dml0+APpAH6MUIFIoD2C9PiXT6n+QtQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-312-YlLh0pRaOK-aiCSyzU8VTA-1; Sat, 24 Jul 2021 18:55:47 -0400
X-MC-Unique: YlLh0pRaOK-aiCSyzU8VTA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 426358042E5;
	Sat, 24 Jul 2021 22:55:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 17F3C60C0F;
	Sat, 24 Jul 2021 22:55:41 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 312634BB7C;
	Sat, 24 Jul 2021 22:55:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16OMtSGm005140 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 24 Jul 2021 18:55:29 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D4FC8440E3; Sat, 24 Jul 2021 22:55:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D03256E1C3
	for <blinux-list@redhat.com>; Sat, 24 Jul 2021 22:55:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5724E805F49
	for <blinux-list@redhat.com>; Sat, 24 Jul 2021 22:55:25 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-571-aOUm2DW3NlWrMwtHDllQdw-1;
	Sat, 24 Jul 2021 18:55:23 -0400
X-MC-Unique: aOUm2DW3NlWrMwtHDllQdw-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 2D268A40A9
	for <blinux-list@redhat.com>; Sat, 24 Jul 2021 22:55:20 +0200 (CEST)
Subject: Re: Flatpak on Slint
To: blinux-list@redhat.com
References: <c7b551f8-499a-1ecc-f221-387de0801c63@gmail.com>
	<2c34c816-a1e1-7a47-5bca-f35884279da3@slint.fr>
	<58abee7f-4023-5adf-b49e-6c6fb3e20a60@gmail.com>
	<ED6E2EBB-21F6-4576-AF52-059F70F8BAF0@gmail.com>
Message-ID: <f8512e7f-e58f-305d-25e3-c7ddfe18d2ac@slint.fr>
Date: Sun, 25 Jul 2021 00:55:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <ED6E2EBB-21F6-4576-AF52-059F70F8BAF0@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from base64 to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 16OMtSGm005140
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGVsbG8sCgpJIHdpbGwgYW5zd2VyIG9ubHkgdGhlIGxhc3QgcGFyYWdyYXBoIHF1b3RlZCBiZWxv
dy4KCkluIFNsaW50LCBhcyBpbiBTbGFja3dhcmUgb24gd2hpY2ggaXQgaXMgYmFzZWQsIGEgZnVs
bCBidWlsZCB0b29sYm94IGlzCmluc3RhbGxlZCBieSBkZWZhdWx0LgoKQWxzbywgYWxsIHBhY2th
Z2VzIGluY2x1ZGUgdGhlIGFzc29jaWF0ZWQgIGhlYWRlciBmaWxlcyBhbmQgc2hhcmVkIApvYmpl
Y3RzIHRoYXQKb3RoZXIgZGlzdHJpYnV0aW9ucyBwYWNrYWdlIHNlcGFyYXRlbHkuCgpUaGlzIGlu
ZGVlZCBoZWxwIGJ1aWxkIHBhY2thZ2VzLCBhcyBhdCBsZWFzdCB0aGUgYnVpbGQgcmVxdWlyZW1l
bnQgYXJlIApnZW5lcmFsbHkKbWV0IHdpdGhvdXQgYWRkaW5nIHBhY2thZ2VzIHRvIHRoZSBzeXN0
ZW0uCgpBbHNvLCBzb2Z0d2FyZSB1c2VkIHRvIGJ1aWxkIHRoZSBwYWNrYWdlcyBzaGlwcGVkIGFy
ZSBpbmNsdWRlZCBieSAKZGVmYXVsdCwgd2l0aAp2ZXJ5IGZldyBleGNlcHRpb25zLgoKQ2hlZXJz
LApEaWRpZXIKCkxlIDI0LzA3LzIwMjEgw6AgMjE6NDIsIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPiBGb3IgYSDigJxQYWluIGZyZWUgZXhwZXJpZW5jZSwg
dXNlIGEgTWFjLuKAnQo+IAo+IE5vdywgYXMgZm9yIHRoZSBmbGF0IHBhY2sgaXNzdWUgaW4gU0xJ
TlQsIHlvdSBtaWdodCBuZWVkIHRvIG1ha2Ugc3VyZSB0aGF0IGFsbCBkZXBlbmRlbmNpZXMgYXJl
IGNvbXBsZXRlbHkgaW5zdGFsbGVkIGFuZCBjb25maWd1cmVkLiBBbHNvLCBhbnkgc2Vjb25kYXJ5
IGRlcGVuZGVuY2llcyBub3QgbGlzdGVkIChhbmQgSSBoYXZlIGZvdW5kIHF1aXRlIGEgZmV3IG92
ZXIgdGhlIHllYXJzIGJlY2F1c2UgZGV2IHRlYW1zIG9mdGVuIGZvcmdldCB0aGVzZSBsaXR0bGUg
ZGV0YWlscykuIEluIGZhY3QsIEkgaGF2ZSBmb3VuZCB0aGF0IHRoZSBvbmx5IHdheSB0byBjb3Zl
ciBhbGwgZXZlbnR1YWxpdGllcyBpcyB0byBzaW1wbHkgaW5zdGFsbCBldmVyeXRoaW5nIGluIHRo
ZSBkZXZlbG9wbWVudCBlbnZpcm9ubWVudC4gQmFzaWNhbGx5LCBncmFiIGFsbCB0aGUgZGV2ZWwg
cGFja2FnZXMgYW5kIHRoZW4gc3RhcnQgYnVpbGRpbmcgdGhlbS4gVGhpcyB3YXksIHlvdSBlbmQg
dXAgd2l0aCBhIGJ1aWxkIGVudmlyb25tZW50IHRoYXQgaXMgYXMgY29tcGxldGUgYXMgeW91IGNh
biBnZXQgaXQgYW5kIGlzIGFsc28gb3B0aW1pemVkIGZvciB5b3VyIG1hY2hpbmUuIEkgZGlkIHRo
aXMgcXVpdGUgYSBsb3Qgb3ZlciB0aGUgeWVhcnMgc3RhcnRpbmcgd2l0aCBidWlsZGluZyBhIG5l
dyBrZXJuZWwsIGNvbXBpbGluZyBpbiB0aGUgbW9kdWxlcyBmb3IgdGhhdCBoYXJkd2FyZSAodGhp
cyBtZXRob2Qgd291bGQgYmxvYXQgdGhlIGtlcm5lbCBhIGJpdCwgYnV0IHdvdWxkIHJlbW92ZSB0
aGUgaXNzdWUgb2YgaW5zdGFsbGluZyBvciBsb2FkaW5nIG5ldyBtb2R1bGVzIHdpdGggY2hhbmdl
cyBpbiBoYXJkd2FyZSwgd2hpY2ggZG9lc27igJl0IGhhcHBlbiBpbiBsYXB0b3BzKS4gQnVpbGRp
bmcgZXh0ZXJuYWwgbW9kdWxlcyB0aGF0IGNhbiBiZSBsb2FkZWQgc2xpbXMgZG93biB0aGUga2Vy
bmVsIGEgYml0IGFuZCB3b3VsZCB3b3JrIGJlc3QgaW4gYSBkZXNrdG9wIHRvd2VyIHdoZXJlIGhh
cmR3YXJlIGNhbiBiZSBjaGFuZ2VkLiBPbmUgbmljZSB0aGluZyBhYm91dCBidWlsZGluZyBhcHBz
IGxpa2UgdGhpcyBpcyB0aGF0IHlvdSBjYW4gY29tcGlsZSBpbiB0aGUgbGlicmFyaWVzLiBTdXJl
LCB0aGF0IGJsb2F0cyB0aGUgYXBwIGEgYml0LCBidXQgdGhlbiwgeW91IGNvdWxkIGJ1aWxkIGFu
ZCB0aGVuIG9uY2UgeW91IGhhdmUgYnVpbHQgYWxsIHlvdSBuZWVkLCB5b3UgY2FuIHJlbW92ZSB0
aGUgbGlicmFyaWVzIGFuZCBvdGhlciBmaWxlcyBpbiB0aGUgZGV2IHRyZWUgYW5kIHN0aWxsIGhh
dmUgZnVsbHkgcnVubmluZyBhcHBzLiBUaGF0IHdpbGwgc2xpbSBkb3duIHRoZSBzeXN0ZW0gYSBs
b3Qgd2hlbiB5b3UgZG9u4oCZdCBuZWVkIHRvbyBrZWVwIHRoZSBidWlsZCBlbnZpcm9ubWVudCBh
cm91bmQuIEl0IHJlYWxseSBhbGwgZGVwZW5kcyBvbiB3aGF0IHlvdSB3YW50IHRvIGRvLgo+IAo+
IC1FcmljCj4gTGVhZGVyIG9mIHRoZSBUZWNobm9tYWdlIEd1aWxkLgo+IAo+IAo+PiBPbiBKdWwg
MjQsIDIwMjEsIGF0IDEwOjQwIEFNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9u
IDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPj4KPj4gWWVwLCByZWFkaW5nIGFsbCB0
aGUgZG9jdW1lbnRhdGlvbiB3YXMgYWN0dWFsbHkgYSBnb29kIGlkZWEuCj4+Cj4+Cj4+IEkgZ290
IGNhd2JpcmQgdG8gd29yayBvbiBTbGludC4gWWVhaCwgaXQncyBhIHBhaW4sIGJ1dCB3aGF0IHRo
ZSBoZWNrLgo+Pgo+Pgo+PiBGb3IgYSBwYWluLWZyZWUgY29tcHV0aW5nIGV4cGVyaWVuY2UsIHVz
ZSBhIE1hYy4KPj4KPj4KPj4gV2FybSByZWdhcmRzLAo+Pgo+PiBCcmFuZHQgU3RlZW5rYW1wCj4+
Cj4+IFNlbnQgdXNpbmcgVGh1bmRlcmJpcmQgZnJvbSBTbGludAo+Pgo+PiBPbiA3LzI0LzIxIDQ6
NTMgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+PiBIaSBC
cmFuZHQsCj4+Pgo+Pj4gSSBuZXZlciB1c2VkIGZsYXRwYWsgb3IgdHdpdHRlciwgaG93ZXZlci4u
Lgo+Pj4KPj4+IG1heWJlIGEgcG9zdCBpbnN0YWxsYXRpb24gY29uZmlndXJhdGlvbiBpcyBuZWVk
ZWQsIGFzIGluZGljYXRlZCBpbjoKPj4+IGh0dHBzOi8vc2xhY2tidWlsZHMub3JnL3NsYWNrYnVp
bGRzLzE0LjIvZGVza3RvcC9mbGF0cGFrL1JFQURNRQo+Pj4KPj4+IElmIHRoaXMgZG9lc24ndCBo
ZWxwLCBwbGVhc2UgcG9zdCB0aGUgZXhhY3Qgc3RlcHMgeW91IHRvb2sgdG8gaW5zdGFsbCBmbGF0
cGFrCj4+PiB0aGVuIGNhd2JpcmQgYW5kIHN0YXJ0IGNhd2JpcmQuCj4+Pgo+Pj4gVGhlbiBJJ2xs
IHRyeSB0byByZXByb2R1Y2VzIGxhdGVyIHRvZGF5Lgo+Pj4KPj4+IENoZWVycywKPj4+Cj4+PiBE
aWRpZXIKPj4+IC0tIAo+Pj4gRGlkaWVyIFNwYWllcgo+Pj4KPj4+Cj4+PiBMZSAyNC8wNy8yMDIx
IMOgIDE2OjI3LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0IDoK
Pj4+PiBIaSBhbGwsCj4+Pj4KPj4+Pgo+Pj4+IEkgaW5zdGFsbGVkIGZsYXRwYWsgb24gbXkgU2xp
bnQgaW5zdGFsbGF0aW9uLCBmb3IgdGhlIHNpbXBsZSByZWFzb24sIHRoZXJlIGFyZSBubyB1cCB0
byBkYXRlIFR3aXR0ZXIgY2xpZW50cyB0aGF0IEkgY2FuIGZpbmQuCj4+Pj4KPj4+Pgo+Pj4+IEkg
bG9va2VkIGF0IHRoZSBTbGFja2J1aWxkcywgYnV0IG5vdGhpbmcuIENhd2JpcmQsIG15IGZhdm9y
aXRlIExpbnV4IGNsaWVudCwgZm9yIG5vdywgaXMgYXZhaWxhYmxlIGFzIGEgZmxhdHBhaywgYnV0
IHdoZW4gSSB0cnkgYW5kIHJ1biBpdCwgSSBnZXQgYSBicm9rZW4gUGlwZSBlcnJvci4gQ2FuIGFu
eW9uZSBoZWxwIHdpdGggdGhpcyBpc3N1ZT8KPj4+Pgo+Pj4KPj4+Cj4+PiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0Cj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+PiBodHRwczovL2xpc3RtYW4ucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Cj4+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcg
bGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiAKPiAKPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlz
dAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0

