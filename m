Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 585C34FA7D2
	for <lists+blinux-list@lfdr.de>; Sat,  9 Apr 2022 14:58:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649509104;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=1tOhz5ersTmBHrIlDe+HfLCVbum8aHkH2Ee09z9Lxng=;
	b=EBvguws38xumf9aNA7zmwVY4uQpV6+jOZzvHhpQXq4/f+7lloC0ziHVBFRtyGWZOig/G43
	CrjkFN45Gy2pDfP6Ei7aMnG54kGamofDm+J+D+Ddniap6rVzR03yGJgp2uO9xIsG6cv8K0
	OEGiu6ZImFE71V2V52GcFQArpI4ItN8=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-295-2R_SRzs5Meef2CHsuebeSw-1; Sat, 09 Apr 2022 08:58:23 -0400
X-MC-Unique: 2R_SRzs5Meef2CHsuebeSw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BA27B80A0AD;
	Sat,  9 Apr 2022 12:58:21 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 031ED407DEC5;
	Sat,  9 Apr 2022 12:58:16 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id DE6C91940379;
	Sat,  9 Apr 2022 12:58:13 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 9 Apr 2022 14:58:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: Dragonfm questions/NNN query
To: blinux-list@redhat.com
References: <mailman.7414.1649495618.111207.blinux-list@redhat.com>
 <mailman.7295.1649499971.111205.blinux-list@redhat.com>
 <mailman.7621.1649500471.111206.blinux-list@redhat.com>
 <mailman.7521.1649502333.111203.blinux-list@redhat.com>
 <mailman.7419.1649503102.111207.blinux-list@redhat.com>
 <mailman.7298.1649504160.111205.blinux-list@redhat.com>
 <mailman.7522.1649505602.111208.blinux-list@redhat.com>
 <mailman.7301.1649506177.111205.blinux-list@redhat.com>
 <mailman.7627.1649506669.111206.blinux-list@redhat.com>
 <mailman.7731.1649507457.111210.blinux-list@redhat.com>
 <mailman.7420.1649507701.111207.blinux-list@redhat.com>
In-Reply-To: <mailman.7420.1649507701.111207.blinux-list@redhat.com>
Message-ID: <mailman.7571.1649509092.111202.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SG93ZHksCgp0aGFua3MsIHdlbGwgd2UgY2FuIGltcHJvdmUgaXQgc3RlcCBieSBzdGVwLiBJdHMg
dmVyeSBmbGV4aWJsZSBhbmQgdmVyeSAKZWFzeSB0byBleHRlbmQgKGRlcGVuZHMgb24gc2tpbGxz
IHRvIGNyZWF0ZSBzeW1ib2xpYyBsaW5rcyBsb29vbCkKYW55d2F5LgoKdGhlIHN5bnRheCBpcyBx
dWl0ZSBzaW1wbGUuIGp1c3QgZW50ZXIgdGhlIGhvdyB5b3Ugd291bGQgb3BlbiBpdCBmcm9tIApz
aGVsbCBidXQgcmVwbGFjZSB0aGUgZmlsZW5hbWUgd2l0aCB7MH0gKHRoaXMgaXMgYSBwbGFjZWhv
bGRlciBmb3IgdGhlIApjb21wbGV0ZSBmaWxlcGF0aCkKZm9yIGdlZGl0IHRoaXMgd291bGQganVz
dCBiZQpnZWRpdCB7MH0KZm9yIG1lIGdlZGl0IG9wZW5zIHRoZW4gd2l0aCB0aGUgc2VsZWN0ZWQg
ZmlsZS4gdGhpcyBjdXJyZW50bHkgb25seSAKd29ya3MgZm9yIGZpbGVzLiBpZiB5b3VyIGN1cnNv
ciBpcyBvbiBhbiBmb2xkZXIsIGl0IG9wZW5zIHRoZSBwYXRoIApjdXJyZW50bHkgaW4gZHJhZ29u
Rk0uCnRvIG1lIG1vcmUgY29tZm9ydGFibGUsIGkgY291bGQganVzdCBhZGQgdGhlIHswfSBpZiBp
dCBkb2VzIG5vdCBleGlzdCBhdCAKdGhlIGVuZC4KCmNoZWVycyBjaHJ5cwpBbSAwOS4wNC4yMiB1
bSAxNDozNCBzY2hyaWViIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb246Cj4gSW5k
ZWVkIGl0IGRvZXMuIFRoYW5rcywgREZNIGlzIGEgcmVhbGx5IG5lYXQgYml0IG9mIHNvZnR3YXJl
Lgo+Cj4gSG93ZXZlciwgaG93IGRvZXMgdGhlIG9wZW4gd2l0aCB3b3JrPyBJZiBJIGxvYWQgdXAs
IHNheSBhIHRleHQgZmlsZSBhbmQKPiBoaXQgb3BlbiB3aXRoLi4uIGl0IGdpdmVzIG1lIGNhdCB7
MH0gfCBsZXNzCj4KPiBXaGF0J3MgdGhlIHN5bnRheCBmb3IgdGhhdCBvbmU/IEkgdHJpZWQgdHlw
aW5nIGluIEdlZGl0IGFuZCBnb3Qgbm90aGluZywKPiB0cmllZCBQbHVtYSwgdHJpZWQgbmFubywg
bm8gbHVjawo+Cj4gT24gU2F0LCBBcHIgMDksIDIwMjIgYXQgMDI6MzA6NDhQTSArMDIwMCwgTGlu
dXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4gSG93ZHksCj4+Cj4+IE9r
IHRoaXMgdGltZSBpdCB3YXMgZ2l0cyBmYXVsdC4gaXQgZGlkbnQgcmVhbGl6ZSB0aGF0IGkgY2hh
bmdlZCB0aGUgc3ltbGluawo+PiBmcm9tIHRoZSBhYnNvbHV0ZSB0byBhbiByZWxhdGl2ZSBwYXRo
Lgo+PiBzbyBpIGhhdCB0byByZW1vdmUgY29tbWl0IGFuZCByZWFjcmVhdGUgY29tbWl0IDopLgo+
PiBub3cgaXQgd29ya3MgZm9yIHJlYWwgOikuCj4+Cj4+IGNoZWVycyBjaHJ5cwo+Pgo+PiBBbSAw
OS4wNC4yMiB1bSAxNDoxNyBzY2hyaWViIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Np
b246Cj4+PiBobW0gc3RpbGwgc29tZSBpc3N1ZXMsCj4+Pgo+Pj4gbGV0IG1lIHRha2UgYSBkZWVw
ZXIgbG9vawo+Pj4KPj4+IEFtIDA5LjA0LjIyIHVtIDE0OjA5IHNjaHJpZWIgTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbjoKPj4+PiBIb3dkeSwKPj4+Pgo+Pj4+IGl0IHNob3VsZCBi
ZSBmaXhlZCBteSBmcmllbmQuIFNvcnJ5IGZvciB0aGF0IF5eLgo+Pj4+Cj4+Pj4KPj4+PiBjaGVl
cnMgY2hyeXMKPj4+Pgo+Pj4+Cj4+Pj4gQW0gMDkuMDQuMjIgdW0gMTM6NTkgc2NocmllYiBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uOgo+Pj4+PiBUaGUgc2ltbGluayBwb2ludHMg
dG8geW91ciBob21lIGRpcmVjdG9yeSBhbmQgc2hvd3MgdXAgYXMgYQo+Pj4+PiBicm9rZW4gc2lt
bGluayBpZiBJIGNoZWNrLiBJdCdzIHNob3duIHVwIGFzIGEgc3ltYm9saWMgbGluaywKPj4+Pj4g
YnJva2VuLCBwb2ludGluZyB0byAvaG9tZS9jaHJ5cy9kcmFnb25mbS9zcmMuLi50aGUgLnB5IHNj
cmlwdAo+Pj4+PiB0aGF0IHNob3VsZCBiZSB0aGVyZSB0aGVyZSdzIGEgc2ltbGluayBpbnN0ZWFk
Lgo+Pj4+Pgo+Pj4+PiBPblNhdCwgQXByIDA5LCAyMDIyIGF0IDAxOjM1OjQ5UE0gKzAyMDAsIExp
bnV4IGZvciBibGluZCBnZW5lcmFsCj4+Pj4+IGRpc2N1c3Npb24gd3JvdGU6Cj4+Pj4+PiBIb3dk
eSwKPj4+Pj4+Cj4+Pj4+PiBpIGNhbnQgcmVwcm9kdWNlIHRoaXMgaGVyZS4KPj4+Pj4+IEkganVz
dCBkaWQgYSBsb29rIGF0IGdpdCwgbG9va3MgbGlrZSBhbGwgZmlsZXMgYXJlIHB1c2hlZCBjb3Jy
ZWN0bHkuCj4+Pj4+Pgo+Pj4+Pj4gbWF5YmUgYSBjb2xsaXNpb24gd2l0aCBhbiB3b3JrIGluIHBy
b2dyZXNzIGNvbW1pdCwgd3JvbmcKPj4+Pj4+IGJyYW5jaCBvciBweXRob24KPj4+Pj4+IGNhY2hl
Pwo+Pj4+Pj4KPj4+Pj4+IGkgZ3Vlc3MgaXQgbXVzdCBiZSBhIGxvY2FsIGlzc3VlLCBzZXR1cC5w
eSBhbmQgUEtHQlVJTEQgd29yawo+Pj4+Pj4gYXMgZXhwZWN0ZWQKPj4+Pj4+IGhlcmUuCj4+Pj4+
Pgo+Pj4+Pj4gY2hlZXJzIGNocnlzCj4+Pj4+Pgo+Pj4+Pj4gQW0gMDkuMDQuMjIgdW0gMTM6MTgg
c2NocmllYiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uOgo+Pj4+Pj4+IE5vdCBz
dXJlIGlmIHRoYXQgYnJva2UgYnV0IG9uIG15IGVuZCB0aGF0J3MgdGhyb3dpbmcgdXAKPj4+Pj4+
PiBhIG5vIHN1Y2ggZmlsZSBmb3IgdGhlIG9wZW4gc2hlbGwgd2l0aC4uLiAucHkgb25lIHdoZW4g
SQo+Pj4+Pj4+IGRvIHN1ZG8gLi9zZXR1cC5weSB3aXRoIGEgZnJlc2ggaW5zdGFsbCBhbmQgZG9p
bmcgaW4gdGhlCj4+Pj4+Pj4gbWFudWFsIHdheS4gTm90IGJhY2sgb24gbXkgQXJjaCBib3ggcmln
aHQgbm93IHNvIGNhbid0Cj4+Pj4+Pj4gdGVzdCB0aGUgcGtnYnVpbGQgdGhvdWdoLi4uLmJ1dCB0
byByZXBsaWNhdGUgY2xvbmUgdGhlCj4+Pj4+Pj4gbGF0ZXN0IHVybCBhbmQgZG8gc3VkbyAuL3Nl
dHVwLnB5IGFuZCB3YXRjaCBmb3IgdGhlCj4+Pj4+Pj4gdW5hYmxlIHRvIGNvcHkgZXJyb3IKPj4+
Pj4+Pgo+Pj4+Pj4+IE9uIFNhdCwgQXByIDA5LCAyMDIyIGF0IDAxOjA1OjE4UE0gKzAyMDAsIExp
bnV4IGZvcgo+Pj4+Pj4+IGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+Pj4+Pj4g
SG93ZHksCj4+Pj4+Pj4+Cj4+Pj4+Pj4+IGkganVzdCBhZGQgYW4gIm9wZW4gZW50cnkgd2l0aCBz
aGVsbCIgYWN0aW9uLgo+Pj4+Pj4+PiBjdXJyZW50bHkgYXNzaWduZWQgdG8gY3RybCArIG8uCj4+
Pj4+Pj4+IHdoZW4geW91IHNlbGVjdCBhIGZpbGUsIHByZXNzIGN0cmwgKyBvIGFuIGlucHV0IGJv
eAo+Pj4+Pj4+PiBhcHBlYXJzLiB0aGVyZSBpcyBhCj4+Pj4+Pj4+IGRlZmF1bHQgdmFsdWUgKGNv
bmZpZ3VyZWFibGUgaW4gc2V0dGluZ3MuY29uZiBzZWN0aW9uIGZvbGRlciBrZXkKPj4+Pj4+Pj4g
b3BlbldpdGhTaGVsbEluaXRWYWx1ZSkuIHByZXNzaW5nIGVudGVyIGV4ZWN1dGVzIHRoZQo+Pj4+
Pj4+PiBjb21tYW5kIHRoZW4uIHswfSBpcwo+Pj4+Pj4+PiB0aGUgcGxhY2Vob2xkZXIgZm9yIHRo
ZSBjdXJyZW50IHNlbGVjdGVkIGZpbGUuCj4+Pj4+Pj4+Cj4+Pj4+Pj4+IGRvIHlvdSB3YW50Cj4+
Pj4+Pj4+IGN0cmwgKyBvIGZvciBvcGVuCj4+Pj4+Pj4+IGN0cmwgKyB3IGZvciBvcGVuIHdpdGg/
Cj4+Pj4+Pj4+Cj4+Pj4+Pj4+IHNob3VsZCBpIHN3YXAgdGhlbSBvciBrZWVwIGl0IGFzIGl0IGlz
Pwo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBjaGVlcnMgY2hyeXMKPj4+Pj4+Pj4KPj4+Pj4+Pj4gQW0gMDku
MDQuMjIgdW0gMTI6MzQgc2NocmllYiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9u
Ogo+Pj4+Pj4+Pj4gSG93ZHksCj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gaSBqdXN0IHByb3ZpZGVkIGFu
IFBLR0JVSUxEIGZvciBkcmFnb25GTSBhbmQgdXBsb2FkZWQgaXQgdG8gQVVSLgo+Pj4+Pj4+Pj4g
aXRzIGN1cnJlbnRseSBhIGdpdCBwYWNrYWdlLCBhcyBkcmFnb25GTSBkb2VzCj4+Pj4+Pj4+PiBu
b3QgeWV0IHNlZW4gYW55IHN0YWJsZQo+Pj4+Pj4+Pj4gcmVsZWFzZSA7KS4KPj4+Pj4+Pj4+IG5h
bWU6IGRyYWdvbmZtLWdpdAo+Pj4+Pj4+Pj4gdXJsOiBodHRwczovL2F1ci5hcmNobGludXgub3Jn
L3BhY2thZ2VzL2RyYWdvbmZtLWdpdAo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IGlmIHlvdSBhbHJlYWR5
IGluc3RhbGxlZCBpdCB1c2luZyBzZXR1cC5weSB5b3UgbWlnaHQgbmVlZCB0byByZW1vdmUKPj4+
Pj4+Pj4+IGNvbmZsaWN0aW5nIGZpbGVzIGZyb20geW91ciBmaWxlc3lzdGVtIGZpc3QuIChhcwo+
Pj4+Pj4+Pj4gc2V0dXAucHkgZG9lcyBieXBhc3MKPj4+Pj4+Pj4+IHRoZSBwYWNrYWdlIG1hbmFn
ZXIpCj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gaSBhZGRlZCBhbiB3aWxkY2FyZCBtaW1lIHR5cGUuIGlm
IHRoZXJlIGlzIG5vCj4+Pj4+Pj4+PiBzcGVjaWZpYyBlbnRyeSBpbiB0aGUgbWltZQo+Pj4+Pj4+
Pj4gbGlzdCwgdGhlIHhkZy1vcGVuIHBvcHMgdXAgbm93LiB0aGlzIG1pZ2h0IGJlIG1vcmUgaGVs
cGZ1bC4KPj4+Pj4+Pj4+IHdlbGwsIGkgd2lsbCBpbXBsZW1lbnQgdGhlIG9wZW4gd2l0aCBmb3Ig
eW91LiBnaXZlIG1lIGEgc2Vjb25kLgo+Pj4+Pj4+Pj4gaSB3aWxsIGFzc2lnbiBpdCB0byBjdHJs
ICsgbyBhbmQgbW92ZSB0aGUgb3BlbiBhY3Rpb24gdG8gY3RybCArIG0uCj4+Pj4+Pj4+Pgo+Pj4+
Pj4+Pj4gY2hlZXJzIGNocnlzCj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gQW0gMDkuMDQuMjIgdW0gMTI6
MjUgc2NocmllYiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uOgo+Pj4+Pj4+Pj4+
IFN1cmUgSSBjYW4gdGVzdCB0aGUgcGtnYnVpbGQgb25jZSBJJ20gYmFjayBvbiBteSBBcmNoIGJv
eAo+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4gQW5kIHRoYXQgaW5wdXQgYm94IHdvcmtzIGZpbmUuIEkn
bGwgc3VnZ2VzdAo+Pj4+Pj4+Pj4+IEN0cmwrTyBhcyB0aGUgc2hvcnRjdXQgZm9yCj4+Pj4+Pj4+
Pj4gaXQgc28geW91IGdvdCBFbnRlci9DdHJsK00gdG8gb3BlbiAobyBtYXliZQo+Pj4+Pj4+Pj4+
IG1vdmUgb3BlbiB3aXRoIHRvIGN0cmwrTSBhbmQKPj4+Pj4+Pj4+PiBzZWUgaG93IHRoYXQgd29y
a3M/KSwgYW5kIGEgY3RybCtPIGZvciBvcGVuIHdpdGg/Cj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+PiBB
QWggSSBkaWRudCBrbm93IGFib3V0IGp1c3QgZXhpdGluZyB0aGUKPj4+Pj4+Pj4+PiBzaGVsbC4g
SSBhc3N1bWVkIHRoYXQnZCBjbG9zZQo+Pj4+Pj4+Pj4+IHRoZSB0YWIuIE15IGZpcnN0IHRob3Vn
aHQgd2FzIGFscmlnaHQsIGZnCj4+Pj4+Pj4+Pj4gZHJhZ29uZm0gdG8gZ2V0IGJhY2sgdG8gaXQK
Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+IE9uIFNhdCwgQXByIDA5LCAyMDIyIGF0IDExOjEzOjI1QU0g
KzAyMDAsIExpbnV4IGZvciBibGluZCBnZW5lcmFsCj4+Pj4+Pj4+Pj4gZGlzY3Vzc2lvbiB3cm90
ZToKPj4+Pj4+Pj4+Pj4gSG93ZHksCj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+IC8vIFllcyB0byBw
dXR0aW5nIGl0IGluIHRoZSBBVVIgYW5kIHllcyBmb3IgdGhlIGVudiBzdHVmZi4KPj4+Pj4+Pj4+
Pj4gT0sgbGV0IG1lwqAgY3JlYXRlIGEgUEtHQlVJTEQgZm9yIGRyYWdvbmZtLWdpdAo+Pj4+Pj4+
Pj4+Pgo+Pj4+Pj4+Pj4+PiAvLyBJJ20gcG9raW5nIGF0IHRoZSBjb25maWcgdHJ5aW5nIHRvCj4+
Pj4+Pj4+Pj4+IHJlcGxpY2F0ZSBOTk4ncyBvcGVuIHdpdGggYW5kIG5vdAo+Pj4+Pj4+Pj4+PiAv
LyBoYXZpbmcgbXVjaCBsdWNrLiBJcyB0aGF0IGp1c3QgYSBjYXNlIG9mIHJlbWVtYmVyaW5nIHRv
IGRyb3AKPj4+Pj4+Pj4+Pj4gdG8gYSBzaGVsbAo+Pj4+Pj4+Pj4+PiAvLyBhbmQgZG9pbmcgd2hh
dCBJIG5lZWQ/Cj4+Pj4+Pj4+Pj4+IGhvdyBkb2VzIHRoaXMgbG9vayBsaWtlPyBqdXN0IGEgaW5w
dXQgZGlhbG9nIHRvIGVudGVyIGFueQo+Pj4+Pj4+Pj4+PiBjb21tYW5kIHdpdGggdGhlCj4+Pj4+
Pj4+Pj4+IGN1cnJlbnQgc2VsZWN0ZWQgZWxlbWVudCBhcyBwYXJhbWV0ZXI/Cj4+Pj4+Pj4+Pj4+
Cj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+IC8vIE9uIHRoYXQgbm90ZS4uLmlzIHRoZXJlIGEgd2F5
IG9uY2UgSQo+Pj4+Pj4+Pj4+PiBoaXQgRjQsIHRvIGdldCBiYWNrIHRvIGRyYWdvbmZtCj4+Pj4+
Pj4+Pj4+IC8vIGVhc2lseSB3aXRob3V0IHJlbGF1bmNoaW5nIGl0IGZyb20gdGhlIHNoZWxsPwo+
Pj4+Pj4+Pj4+PiB3ZWxsLCBqdXN0IGV4aXQgdGhlIHNoZWxsICh0eXBlICJleGl0IiksIHlvdSB3
aWxsIGJlIGJhY2sgaW4KPj4+Pj4+Pj4+Pj4gZHJhZ29uZm0gdGhlbgo+Pj4+Pj4+Pj4+PiA6KS4K
Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4gY2hlZXJzIGNocnlzCj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+
Pj4+IEFtIDA5LjA0LjIyIHVtIDEwOjMwIHNjaHJpZWIgTGludXggZm9yIGJsaW5kIGdlbmVyYWwg
ZGlzY3Vzc2lvbjoKPj4+Pj4+Pj4+Pj4+IFllcyB0byBwdXR0aW5nIGl0IGluIHRoZSBBVVIgYW5k
IHllcyBmb3IgdGhlIGVudiBzdHVmZi4KPj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+PiBJJ20gcG9r
aW5nIGF0IHRoZSBjb25maWcgdHJ5aW5nIHRvCj4+Pj4+Pj4+Pj4+PiByZXBsaWNhdGUgTk5OJ3Mg
b3BlbiB3aXRoIGFuZCBub3QKPj4+Pj4+Pj4+Pj4+IGhhdmluZyBtdWNoIGx1Y2suIElzIHRoYXQg
anVzdCBhIGNhc2Ugb2YgcmVtZW1iZXJpbmcgdG8gZHJvcAo+Pj4+Pj4+Pj4+Pj4gdG8gYSBzaGVs
bAo+Pj4+Pj4+Pj4+Pj4gYW5kIGRvaW5nIHdoYXQgSSBuZWVkPwo+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+
Pj4+Pj4+IE9uIHRoYXQgbm90ZS4uLmlzIHRoZXJlIGEgd2F5IG9uY2UgSQo+Pj4+Pj4+Pj4+Pj4g
aGl0IEY0LCB0byBnZXQgYmFjayB0byBkcmFnb25mbQo+Pj4+Pj4+Pj4+Pj4gZWFzaWx5IHdpdGhv
dXQgcmVsYXVuY2hpbmcgaXQgZnJvbSB0aGUgc2hlbGw/Cj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+
Pj4gT24gU2F0LCBBcHIgMDksIDIwMjIgYXQgMDk6NDE6NDlBTSArMDIwMCwgTGludXggZm9yIGJs
aW5kCj4+Pj4+Pj4+Pj4+PiBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+Pj4+Pj4+Pj4+Pj4g
SG93ZHksCj4+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+Pj4g77u/SXMgRHJhZ29uRk0gaW4gdGhl
IEFyY2ggcmVwbz8KPj4+Pj4+Pj4+Pj4+PiBDdXJyZW50bHkgaXRzIG5vdC4gSWYgeW91IGxpa2Ug
aXQsIGkgY2FuIHB1dCBpdCBpbnRvIEFVUi4KPj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+IENo
ZWVycyBjaHJ5cwo+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+IEFtIDA5LjA0LjIwMjIgdW0g
MDc6NTQgc2NocmllYiBMaW51eCBmb3IgYmxpbmQKPj4+Pj4+Pj4+Pj4+Pj4gZ2VuZXJhbCBkaXNj
dXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPjoKPj4+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+
Pj4+Pj4g77u/SXMgRHJhZ29uRk0gaW4gdGhlIEFyY2ggcmVwbz8gQW0gdHJ5aW5nIHRvIGdldCBp
dAo+Pj4+Pj4+Pj4+Pj4+PiB3aXRoIHlheSBmcm9tIHRoaXMgc2lkZS4KPj4+Pj4+Pj4+Pj4+Pj4K
Pj4+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+Pj4+IE9uIFNhdCwgQXByIDA5LCAyMDIyIGF0IDAy
OjI2OjE1QU0gKzAyMDAsIExpbnV4Cj4+Pj4+Pj4+Pj4+Pj4+PiBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uIHdyb3RlOgo+Pj4+Pj4+Pj4+Pj4+Pj4gSG93ZHksCj4+Pj4+Pj4+Pj4+Pj4+Pgo+
Pj4+Pj4+Pj4+Pj4+Pj4gT2sgdGhlbiBpIGtlZXAgdGhhdCBhbHQgKyB1Lgo+Pj4+Pj4+Pj4+Pj4+
Pj4KPj4+Pj4+Pj4+Pj4+Pj4+PiBUaGF0IHNlZW1zIHRvIHdvcmsgYmV0dGVyLCBidXQgZG9lcyB0
aGUKPj4+Pj4+Pj4+Pj4+Pj4+PiBQYXl0cmlvbiBsaW5rIHlvdSBzZW50IGluIGFub3RoZXIgbWVz
c2FnZQo+Pj4+Pj4+Pj4+Pj4+Pj4+IGhhdmUgdGhlIGluZm8gb24gY2hhbmdpbmcgdGhlIHNob3J0
Y3V0cyBhcwo+Pj4+Pj4+Pj4+Pj4+Pj4+IHdlbGw/Cj4+Pj4+Pj4+Pj4+Pj4+PiBXZWxsIGkgY2hh
bmdlZCB0aGUgc2hvcnRjdXRzIGluIG1hc3Rlci4gU28gdGhlcmUKPj4+Pj4+Pj4+Pj4+Pj4+IGlz
IG5vIG5lZWQgdG8gY2hhbmdlIHRoZW0gYnkgb3RoZXJzIGFueW1vcmUuCj4+Pj4+Pj4+Pj4+Pj4+
PiBPciB3aGF0IGluZm8geW91IG1lYW4gZXhhY3RseT8KPj4+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+
Pj4+Pj4+PiBUaGVyZSBpcyBub3cgYXQgbGVhc3QgYSBiYXNpYyBkb2N1bWVudGF0aW9uIDopLgo+
Pj4+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+Pj4+IENoZWVycyBjaHJ5cwo+Pj4+Pj4+Pj4+Pj4+
Pj4KPj4+Pj4+Pj4+Pj4+Pj4+Pj4gQW0gMDkuMDQuMjAyMiB1bSAwMjoxNSBzY2hyaWViIExpbnV4
IGZvcgo+Pj4+Pj4+Pj4+Pj4+Pj4+PiBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24KPj4+Pj4+Pj4+
Pj4+Pj4+Pj4gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+Ogo+Pj4+Pj4+Pj4+Pj4+Pj4+IO+7v09r
YXkgaWYgaXQncyBqdXN0IGFsdCt1IHRoZW4geWVzIGtlZXAgaXQKPj4+Pj4+Pj4+Pj4+Pj4+PiB0
aGF0IHdheS4gVGhhdCBzZWVtcyB0byB3b3JrIGJldHRlciwgYnV0Cj4+Pj4+Pj4+Pj4+Pj4+Pj4g
ZG9lcyB0aGUgUGF5dHJpb24gbGluayB5b3Ugc2VudCBpbiBhbm90aGVyCj4+Pj4+Pj4+Pj4+Pj4+
Pj4gbWVzc2FnZSBoYXZlIHRoZSBpbmZvIG9uIGNoYW5naW5nIHRoZQo+Pj4+Pj4+Pj4+Pj4+Pj4+
IHNob3J0Y3V0cyBhcyB3ZWxsPwo+Pj4+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+IE9u
IEZyaSwgQXByIDA4LCAyMDIyIGF0IDExOjI4OjMwUE0KPj4+Pj4+Pj4+Pj4+Pj4+Pj4gKzAyMDAs
IExpbnV4IGZvciBibGluZCBnZW5lcmFsCj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGRpc2N1c3Npb24gd3Jv
dGU6Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+IEhvd2R5LAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+
Pj4+Pj4+PiBpIGluc3RhbGxlZCBNYXRlIHRlcm1pbmFsIGZvciB0ZXN0aW5nCj4+Pj4+Pj4+Pj4+
Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+IC8vIEN0cmwrRCBmb3IgZGV0YWlscyBpbnN0ZWVhZCBv
ZiBGMTAKPj4+Pj4+Pj4+Pj4+Pj4+Pj4gb2sgdGhpcyBpcyBjaGFuZ2VkLgo+Pj4+Pj4+Pj4+Pj4+
Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+Pj4+PiBhYm91dCBeW3UgaSB3YXMgd3JvbmcuIGl0cyBqdXN0IGFs
dCArIHUKPj4+Pj4+Pj4+Pj4+Pj4+Pj4gc28gYSBzaW5nbGUgXiBpcyBDdHJsCj4+Pj4+Pj4+Pj4+
Pj4+Pj4+IHRoZSBzZXF1ZW5jZSBeWyBpcyBhbHQgaWYgaXQgaXMgZm9sbG93ZWQKPj4+Pj4+Pj4+
Pj4+Pj4+Pj4gYnkgYW4gbGV0dGVyLiBpZiBub3QsIGl0cyBlc2NhcGUKPj4+Pj4+Pj4+Pj4+Pj4+
Pj4gY3RybCArIGFsdCArIHggd291bGQgYmUgXlteQwo+Pj4+Pj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+
Pj4+Pj4+Pj4+PiBiYWNrIHRvIEFsdCArIHUsIHRoaXMgd29ya2VkIGZvciBtZSwKPj4+Pj4+Pj4+
Pj4+Pj4+Pj4gc2hvdWxkIGkgY2hhbmdlIHRoZSBzaG9ydGN1dCBpbiBhbnkKPj4+Pj4+Pj4+Pj4+
Pj4+Pj4gd2F5Pwo+Pj4+Pj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+Pj4+PiAvLyBJJ20gdHJ5
aW5nIHRvIHJlcGxhY2UgdW56aXAgYW5kIHRhciB3aXRoIGF0b29sCj4+Pj4+Pj4+Pj4+Pj4+Pj4+
IGluIHNlY3Rpb24gW21pbWVdIHlvdSBzZWUgaG93IHRvIG9wZW4gYW4gZmlsZS4KPj4+Pj4+Pj4+
Pj4+Pj4+Pj4gaW4gc2VjdGlvbiBbY29tcHJlc3NdIGFuZCBbZGVjb21wcmVzc10KPj4+Pj4+Pj4+
Pj4+Pj4+Pj4geW91IGNhbiBjb25maWd1cmUgdGhlIGRlLS9jb21wcmVzc2luZwo+Pj4+Pj4+Pj4+
Pj4+Pj4+PiBwcm9jZXNzLgo+Pj4+Pj4+Pj4+Pj4+Pj4+PiBpIGNoYW5nZWQgdGhpcyBmb3IgeW91
Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGNvbXByZXNzICh0aGUgd29yZCBj
b21wcmVzcyBiZXZvcmUgdGhlCj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGVxdWFsIGlzIGp1c3QgdGhlIGxh
YmxlIHNob3duIGluCj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGNvbnRleHQgbWVudSk6Cj4+Pj4+Pj4+Pj4+
Pj4+Pj4+ICMgezB9ID0gU291cmNlOiBsaXN0IG9mIGZpbGVzIHNlcGFyYXRlZAo+Pj4+Pj4+Pj4+
Pj4+Pj4+PiBieSBzcGFjZSB3aXRoIGFic29sdXQgZmlsZXBhdGgKPj4+Pj4+Pj4+Pj4+Pj4+Pj4g
IyB7MX0gPSBEZXN0aW5hdGlvbjrCoCBhcmNoaXZlIG5hbWUKPj4+Pj4+Pj4+Pj4+Pj4+Pj4gY29t
cHJlc3M9YXBhY2sgLXEgezF9IHswfQo+Pj4+Pj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+Pj4+
Pgo+Pj4+Pj4+Pj4+Pj4+Pj4+PiBkZWNvbXByZXNzIChmb3IgemlwZmlsZXMsIHlvdSBjYW4ganVz
dAo+Pj4+Pj4+Pj4+Pj4+Pj4+PiBjb3B5IHRoYXQgZm9yIGFueSBvdGhlciBmb3JtYXQKPj4+Pj4+
Pj4+Pj4+Pj4+Pj4gc3VwcG9ydGVkIGJ5IGF0b29sIGFuZCBjaGFuZ2UgdGhlCj4+Pj4+Pj4+Pj4+
Pj4+Pj4+IGFwcGxpY2F0aW9uL3ppcCB0byB3aGF0ZXZlciBtaW1ldHlwZSB5b3UKPj4+Pj4+Pj4+
Pj4+Pj4+Pj4gd2FudCB0byB1bnppcCk6Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+ICMgezB9ID0gU291cmNl
OiBmaWxlIHRvIGRlY29tcHJlc3MKPj4+Pj4+Pj4+Pj4+Pj4+Pj4gIyB7MX0gPSBEZXN0aW5hdGlv
bjogZm9sZGVyIHdpdGggYXJjaGl2ZSBjb250ZW50Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGFwcGxpY2F0
aW9uL3ppcD1hdG9vbCAtZiAtcSAtLWV4dHJhY3QtdG89ezF9IHswfQo+Pj4+Pj4+Pj4+Pj4+Pj4+
Pgo+Pj4+Pj4+Pj4+Pj4+Pj4+PiBpIGp1c3QgcHVzaGVkLgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pgo+Pj4+
Pj4+Pj4+Pj4+Pj4+PiBjaGVlcnMgY2hyeXMKPj4+Pj4+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+
Pj4+Pj4KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+IEFtIDA4LjA0LjIyCj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiB1
bSAyMjoxMQo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gc2NocmllYgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gTGlu
dXggZm9yCj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBibGluZAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gZ2VuZXJh
bAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gZGlzY3Vzc2lvbjoKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+IFN1cmUg
dGhpbmcuIEhlcmUnJ3Mgd2hhdCBJIHdoaXBwZWQgdXBwIHJlYWwgcXVpY2sKPj4+Pj4+Pj4+Pj4+
Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBDdHJsK0QgZm9yIGRldGFpbHMgaW5zdGVlYWQgb2Yg
RjEwCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gQ3RybCthbHQreCBmb3Ig
ZXh0cmFjdCBpbnN0ZWFkIG9mCj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiB0cmwrYWx0K3UgKHdoaWNoIGRv
ZXNudCBzZWVtIHRvIHdvcmsKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+IG9uIE1hdGU/KQo+Pj4+Pj4+Pj4+
Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+IEknbSB0cnlpbmcgdG8gcmVwbGFjZSB1bnppcCBh
bmQgdGFyCj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiB3aXRoIGF0b29sLCBob3cgTk5OIGhhbmRsZXMgaXQg
c2luY2UKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGl0J3MgYSBsb3QgbmljZXIgdG8gaGF2ZSBvbmUgdG9v
bAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gdGhhdCBoYW5kbGVzIGEgdG9uIG9mIGZvcm1hdHMKPj4+Pj4+
Pj4+Pj4+Pj4+Pj4+IHdpdGhvdXQKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGhhdmluZyB0byBodW50IGRv
d24gMTAgZGlmZmVycmVudCBwcm9ncmFtcwo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+
Pj4+Pj4+IEFzaWRlIGZyb20gdGhhdCwgbm90IG1hZGUgYW55IG90aGVyCj4+Pj4+Pj4+Pj4+Pj4+
Pj4+PiBjaGFuZ2VzIHRvIHRoZSAuY29uZiBmaWxlIHRob3VnaC4KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+
IEl0J3MgYSBuZWF0IGxpdHRsZSBwcm9ncmFtLCB0aG91Z2gKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGp1
c3QgaW4gY2FzZSBJIG1pc3NlZCBhbnksIGdvCj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiB0aHJvdWdoCj4+
Pj4+Pj4+Pj4+Pj4+Pj4+PiBhbmQgdXNlIERyYWdvbkZNIHdpdGggYSB0ZXJtaW5hbAo+Pj4+Pj4+
Pj4+Pj4+Pj4+Pj4gZW11bGF0b3IgYW5kIHNlZSB3aGF0IHlvdSBjYW4gY29tZQo+Pj4+Pj4+Pj4+
Pj4+Pj4+Pj4gdXAKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHdpdGggZm9yIHNob3J0Y3V0cz8gSSdtIG9u
IGEgbGFwdG9wCj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBjdXJyZW50bHkgc28gdGhhdCBraW5kIG9mIGhp
bmRlcnMKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHdoYXQgSSBjYW4gZG8gc2hvcnRjdXRzIHdpc2UgaG93
ZXZlcgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+IE9uIEZyaSwgQXByIDA4
LCAyMDIyIGF0IDEwOjAzOjI3UE0KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+ICswMjAwLCBMaW51eCBmb3Ig
YmxpbmQgZ2VuZXJhbAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gZGlzY3Vzc2lvbiB3cm90ZToKPj4+Pj4+
Pj4+Pj4+Pj4+Pj4+PiBIb3dkeSwKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+Pj4+
Pj4+IFdlbGwsIEYxMjMgd2FzIG1vc3RseSBUVFkgb25seS4KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBT
byB0aGUgYmluZGluZ3MgYXJlIHNldCB3aXRoCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gdGhhdCBpbiBt
aW5kIDopLiBUaGUgcHJvamVjdAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHdhbnRlZCB0byBtb21pYyBH
VUkgc2hvcnRjdXRzCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gZm9yIG1vc3QgcGFydHMuCj4+Pj4+Pj4+
Pj4+Pj4+Pj4+Pj4gVGhlIGNvbGxpZGluZyBzaG9ydGN1dHMgY2FuIGJlCj4+Pj4+Pj4+Pj4+Pj4+
Pj4+Pj4gY2hhbmdlZCB2ZXJ5IGVhc3kgaW4gc2V0dGluZ3MKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBm
aWxlLgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gSWYgeW91IGhhbmQg
bWUgYSBsaXN0IHdpdGgKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBzaG9ydGN1dHMgeW91IHdhbnQgdG8g
aGF2ZQo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGNoYW5nZWQsIGkgY2hhbmdlIHRoZW0gZm9yIHlvdQo+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHJpZ2h0IGluIG1hc3Rlci4KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pgo+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IEFzIEYxMjMgaXMgbm8gbW9yZSwgVFRZIGNvbXBhdC4KPj4+Pj4+
Pj4+Pj4+Pj4+Pj4+PiBkb2VzIG5vdCBtYXR0ZXIgdGhhdCBtdWNoCj4+Pj4+Pj4+Pj4+Pj4+Pj4+
Pj4gYW55bW9yZSB0byBtZSBhbmQgd2UgY2FuIGltcHJvdmUKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBp
dCBpbiB0ZXJtaW5hbCBlbXVsYXRvcnMgKG1vc3QKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBvZiB0aGVt
IGhhdmUgbW9yZSBjYXBhYmlsaXRpZXMKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiB0aGFuIFRUWSBpbiBh
bnkgd2F5LCBmb3IgZXhhbXBsZQo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGtvbnNvbGUgKCB0aGUgS0RF
IHRlcm1pbmFsCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gZW11bGF0b3IgaGFzIHNwZWNpYWwgZXNjYXBl
Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gc2VxdWVuY2VzIGZvciBzaGlmdCBhcnJvdykKPj4+Pj4+Pj4+
Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IENoZWVycyBjaHJ5cwo+Pj4+Pj4+Pj4+Pj4+
Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IEFtIDA4LjA0LjIwMjIgdW0gMjE6NTMKPj4+Pj4+
Pj4+Pj4+Pj4+Pj4+Pj4gc2NocmllYiBMaW51eCBmb3IgYmxpbmQKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+
Pj4gZ2VuZXJhbCBkaXNjdXNzaW9uCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IDxibGludXgtbGlzdEBy
ZWRoYXQuY29tPjoKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4g77u/
VW5mb3J0dW5hdGVseSwgRHJhZ29uRk0KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gZG9lc24ndCB3b3Jr
IHdlbGwgb3V0IG9mIHRoZQo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBib3ggd2l0aCBhIHRlcm1pbmFs
Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGVtdWxhdG9yLCBtb3N0bHkgZG93biB0bwo+Pj4+Pj4+Pj4+
Pj4+Pj4+Pj4+PiBjb25mbGljdHMgd2l0aCBrZXlzIGxpa2UKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4g
RjEwLiBZZXMgSSBjYW4gcmVkZWZpbmUKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gdGhlbSwgYnV0IHRo
YXQncyBraW5kIG9mCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHNvbWV0aGluZyBJbSBzbHdseSBzbG93
bHkKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gcG9raW5nIGF0LiBJJ20gdW5hYmxlIHRvIGdldAo+Pj4+
Pj4+Pj4+Pj4+Pj4+Pj4+PiBNYXRlLXRlcm1pbmFsIHRvIHJlY29nbml6ZSBhCj4+Pj4+Pj4+Pj4+
Pj4+Pj4+Pj4+IGN0cmwrYWx0IHBhdGVybiBob3VnaAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiB3aGVy
ZWFzIGEgVFRZIHdvcmtzIGZpbmUgc28sCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHVuc3VyZSBpZiB5
b3UgbmVlZCB0byB0ZXN0Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IERyYWdvbmZtIG9uIHRlcm1pbmFs
Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGVtdWxhdG9ycyB3aXRoIGEgZGVza3RvcD8KPj4+Pj4+Pj4+
Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gS2luZCBvZiBhIHNoYW1lIHNpbmNlIEkg
bGlrZQo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBob3cgZWFzeSBEcmFnb24gaXMgdG8gdXNlIHZzCj4+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHNvbWV0aGluZyBsaWtlCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IE1D
IG9yIFJhbmdlciBvciBOTk4gKG15Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGN1cnJlbnQgZmF2b3Jp
dGUgb25lIHRoYXQKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gZG9lc24ndCBoYXZlIGtleWJvYXJkCj4+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGNvbmZsaWN0cykgdGhvdWdoCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+
Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBPbiBGcmksIEFwciAwOCwgMjAyMiBhdAo+Pj4+Pj4+Pj4+
Pj4+Pj4+Pj4+Pj4gMDk6MzY6MjhQTSArMDIwMCwgTGludXgKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+
IGZvciBibGluZCBnZW5lcmFsCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBkaXNjdXNzaW9uIHdyb3Rl
Ogo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gSG93ZHksCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pgo+Pj4+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gV2VsbCB0aGVyZSBpcyBhIGNvbnRleHQKPj4+Pj4+Pj4+Pj4+Pj4+
Pj4+Pj4+IG1lbnXCoCAoIGRyYWdvbkZNIGNhbGxzCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBpdCBE
ZXRhaWxzLCBiZWNhdXNlIGl0Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBhbHNvIHNob3dzIGZpbGUK
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHByb3BlcnRpZXMgbGlrZSBzaXplLAo+Pj4+Pj4+Pj4+Pj4+
Pj4+Pj4+Pj4gbWltZSBhbmQgYSBsaXN0IG9mCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBhdmFpbGFi
bGUgYWN0aW9ucykgd2l0aAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gYWxsIGF2YWlsYWJsZSBvcHRp
b25zIGJ5Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBwcmVzc2luZyBGMTAKPj4+Pj4+Pj4+Pj4+Pj4+
Pj4+Pj4+IFNvbWUgYWN0aW9ucyBhcmUgb25seQo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gYXZhaWxh
YmxlIGZvciBnaXZlbiBtaW1lCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiB0eXBlcyBsaWtlIGNvbXBy
ZXNzCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBjdXJyZW50IG9ubHkgZm9yIHppcCBhbmQKPj4+Pj4+
Pj4+Pj4+Pj4+Pj4+Pj4+IHRhciwgb3RoZXJzIGNvdWxkIGJlCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+
PiBhZGRhZCB2ZXJ5IGVhc3kuIEJ5Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBkZWZhdWx0IGRyYWdv
bmZtIGRvZXMKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IG5vdCB1c2UgYXRvb2wgYnV0IHVuemlwCj4+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBjb21tYW5kIGZvciB6aXAgZmlsZXMKPj4+Pj4+Pj4+Pj4+Pj4+
Pj4+Pj4+IGFuZCB0YXIgb2YgY291cnNlIGZvcgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gdGFyIHRo
b3NlIG5lZWQgdG8gYmUKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGluc3RhbGxlZCBvciBjb25mdXJl
ZCB0bwo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gdXNlIHNvbWV0aGluZyBlbHNlLsKgIChJCj4+Pj4+
Pj4+Pj4+Pj4+Pj4+Pj4+PiBjYW4gZ2l2ZSB5b3UgYSBtb3JlCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+
PiBkZXRhaWxlZCBpbmZvcm1hdGlvbiBob3cKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHRvIGNvbmZp
Z3VyZSB0aG9zZSBzdHVmZgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gaWYgeW91IGFyZSBpbnRlcmVz
dGVkCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBpbikKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+
Pj4+Pj4+Pj4+Pj4+Pj4+PiBEcmFnb25GTSByZWFkcyB0aGUKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+
IEVzY2FwZSBzZXF1ZW5jZXMgZnJvbQo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gc3RkaW4gdG8gZGV0
ZWN0Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBzaG9ydGN1dHMgKGxpa2UgYWxtb3N0Cj4+Pj4+Pj4+
Pj4+Pj4+Pj4+Pj4+PiBhbnkgb3RoZXIgQ0xJCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBhcHBsaWNh
dGlvbikKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IFNvbWUgaW1wb3J0YW50IGJhc2ljCj4+Pj4+Pj4+
Pj4+Pj4+Pj4+Pj4+PiB0cmFuc2xhdGlvbiBoZWxwICh3ZQo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4g
c2hvdWxkIGFkZCB0aGUgc2hvcnRjdXRzCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBhcyBjb21tZW50
cyB0byB0aGUKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHNldHRpbmdzIGZpbGUgbG9sICkKPj4+Pj4+
Pj4+Pj4+Pj4+Pj4+Pj4+IF4gPSBDVFJMCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBbID0gQWx0Cj4+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBVcHBlcmNhc2UgbGV0dGVyID0gc2hpZnQgKyBsZXR0ZXIKPj4+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGxvd2VyY2FzZSBsZXR0ZXIgPSBqdXN0IHRoZSBsZXR0ZXIKPj4+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IEFuIG90aGVyIGV4YW1wbGU6Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+
PiBeW3UgdHJhbnNsYXRlcyBhcyBjdHJsICsgYWx0ICsgdQo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4K
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IFRoZXJlIGFyZSBzb21lIHNwZWNpYWxzIGxpa2UgYXJyb3cg
a2V5cyBvciBlc2NhcGUuCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBFc2NhcGUgaXMgdHJhbnNsYXRl
ZCBieSBeWwo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IChieSB0
aGUgd2F5IG1hbnkKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHNob3J0Y3V0cyBhcmUgc2ltaWxhciB0
bwo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gb3RoZXIgZ3JhcGhpY2FsIGZpbGUKPj4+Pj4+Pj4+Pj4+
Pj4+Pj4+Pj4+IG1hbmFnZXJzIEJVVCBzaGlmdCArCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBhcnJv
dyBmb3IgbWFyayBmaWxlcyBpcwo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gZGlmZmVyZW50IGFzIGkg
Y291bGQgbm90Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBmaWd1cmUgaG93IHRvIHJlYWQgdGhpcwo+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gZnJvbSBhbiBlc2NhcGUgc2VxdWVuY2UsCj4+Pj4+Pj4+Pj4+
Pj4+Pj4+Pj4+PiBiZWNhdXNlIHRoZXJlIGlzIG5vCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiB1cHBl
cmNhc2UgYXJyb3cgKnNtaWxlKikKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+
Pj4+Pj4+PiBEZXZlbG9wbWVudCB3YXMKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHNwb25zb3JlZCBi
eSBGMTIzCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBwcm9qZWN0LiBUb2RheSBrbm93biBhcwo+Pj4+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gc3Rvcm11eC4gU2FkbHkgaSBkaWQgbm90Cj4+Pj4+Pj4+Pj4+Pj4+
Pj4+Pj4+PiB3aXJlIGEgbG90IG9mCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBkb2N1bWVudGF0aW9u
IGJ1dCB5b3UKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGNhbiBhc2sgbWUgZXZlcnl0aGluZwo+Pj4+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4geW91IHdhbnQgdG8ga25vdyA6KS4KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+
Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBDaGVlcnMgY2hyeXMKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+
Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IEFtIDA4LjA0LjIwMjIgdW0KPj4+Pj4+Pj4+Pj4+
Pj4+Pj4+Pj4+Pj4gMTg6NDEgc2NocmllYgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBMaW51eCBm
b3IgYmxpbmQKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gZ2VuZXJhbAo+Pj4+Pj4+Pj4+Pj4+Pj4+
Pj4+Pj4+PiBkaXNjdXNzaW9uCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IDxibGludXgtbGlzdEBy
ZWRoYXQuY29tPjoKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiDvu79TbyBJIGdhdmUgaXQgYSBzaG90
Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gYW5kIGl0IGZlZWxzIGxvZ2ljYWwKPj4+Pj4+Pj4+Pj4+
Pj4+Pj4+Pj4+PiBhbmQgd2VsbCBsYWlkIG91dCwKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBmb3Ig
dGhlIG1vc3QKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBwYXJ0Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+
Pj4KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBCVXQgSSdtIHN0cnVnZ2xpbmcKPj4+Pj4+Pj4+Pj4+
Pj4+Pj4+Pj4+PiBvbiBhIGZldyB0aGluZ3MuIEkKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBoYXZl
IGl0IGdvaW5nIGFuZAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHdhbnQgdG8gdW56aXAgYW4KPj4+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBhcmNoaXZlIGZyb20gd2l0aGluCj4+Pj4+Pj4+Pj4+Pj4+Pj4+
Pj4+Pj4gaXQuIEluIE5OTiBJIGNhbgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGp1c3QgZG8gdGhh
dCBhbmQKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiB3b3JrIHdpdGggYXRvb2wuIEkKPj4+Pj4+Pj4+
Pj4+Pj4+Pj4+Pj4+PiBjYW4ndCBzZWVtIHRvIGZpbmQKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiB0
aGUga2V5cyB0byBzdGFydAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGV4dHJhY3RpbmcgYW4KPj4+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBhcmNoaXZlIG9yIGhvdwo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+
IERyYWdvbmZtIGhhbmRsZXMKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiB0aGF0IGF0IGFsbCwgSXZl
Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gb25seSBmb3VuZCB1bmV4dHJhY3QKPj4+Pj4+Pj4+Pj4+
Pj4+Pj4+Pj4+PiB3aXRoIF4oVSBpbiB0aGUKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBjb25maWcs
IHdoaWNoIEkndmUKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBubyBjbHVlIHdoYXQgaXQKPj4+Pj4+
Pj4+Pj4+Pj4+Pj4+Pj4+PiB0cmFuc2xhdGVzIHRvIGluCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4g
dGVybXMgb2YgYWN0dWFsIGtleXMKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBhc2lkZSBmcm9tIGN0
cmwgYW5kIFUuIEl0J3MgdGhlICggSSdtIHN0dW1wZWQgb24KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+
Pgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IFNlZSBteSBtYWluIGdyaXBlCj4+Pj4+Pj4+Pj4+Pj4+
Pj4+Pj4+Pj4gd2l0aCBOTk4gaXMgaWYgSSB1c2UKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBpdCBp
biBhIHRlcm1pbmFsIEkKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBoYXZlIHRvIGhpdCBPLAo+Pj4+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHczbSBhbmQgYyB0byBvcGVuIGFuCj4+Pj4+Pj4+Pj4+Pj4+Pj4+
Pj4+Pj4gaHRtbCBkb2MgaW4gdzNtIGVsc2UKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBpdCBsb2Fk
cyB1cCBpbgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IEZpcmVmb3guIE5vdwo+Pj4+Pj4+Pj4+Pj4+
Pj4+Pj4+Pj4+IGdyYW50ZWQgSSd2ZSBub3QKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiB0cmllZCBp
dCBvbiBhIHB1cmUKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBUVFkgYnV0Li4ub24gYQo+Pj4+Pj4+
Pj4+Pj4+Pj4+Pj4+Pj4+IHRlcm1pbmFsLCB4ZGctb3Blbgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+
IG92ZXJyaWRlcyBicm93c2VyIGJlaW5nIHNldCBhcyBhbiBlbnZpcm9ubWVudCB2YXJpYWJsZQo+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+
PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBCbGludXgt
bGlzdEByZWRoYXQuY29tCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJl
ZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+
Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+Pj4+Pj4+Pj4+Pj4+
Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IEJsaW51
eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+
Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4+
Pj4+Pj4+Pj4+Pj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+
Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+Pj4+Pj4+
Pj4+Pj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+Pj4+Pj4+
Pj4+Pj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pj4+
Pj4+Pj4+Pj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4+Pj4+
Pj4+Pj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pj4+
Pj4+Pj4+Pj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPj4+Pj4+Pj4+Pj4+Pj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+Pj4+Pj4+
Pj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4+Pj4+Pj4+Pj4+Pj4gaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+Pj4+Pj4+
Pj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+
Pj4+Pj4+Pj4+Pj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+Pj4+Pj4+Pj4+Pj4g
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+Pj4+Pj4+Pj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pj4+Pj4+Pj4+Pj4+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+Pj4+Pj4+
Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4+Pj4+Pj4+Pj4+IEJsaW51eC1saXN0
QHJlZGhhdC5jb20KPj4+Pj4+Pj4+Pj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pj4+Pj4+Pj4+Pj4gLS0gCj4+Pj4+Pj4+Pj4+
Pj4+IEdvb2QgcGVvcGxlIGRvIG5vdCBuZWVkIGxhd3MgdG8gdGVsbCB0aGVtIHRvIGFjdAo+Pj4+
Pj4+Pj4+Pj4+PiByZXNwb25zaWJseSwgd2hpbGUgYmFkIHBlb3BsZSB3aWxsIGZpbmQgYSB3YXkg
YXJvdW5kCj4+Pj4+Pj4+Pj4+Pj4+IHRoZSBsYXdzLgo+Pj4+Pj4+Pj4+Pj4+PiAtIFBsYXRvICg0
MjctMzQ3IEIuQy4pCj4+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+Pj4+Pj4+Pj4+IEJsaW51eC1s
aXN0IG1haWxpbmcgbGlzdAo+Pj4+Pj4+Pj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+
Pj4+Pj4+Pj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QKPj4+Pj4+Pj4+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+Pj4+Pj4+Pj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+
Pj4+Pj4+Pj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4+Pj4+Pj4+PiBodHRwczov
L2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+Pj4+
Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+
Pj4+Pj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+Pj4+Pj4+PiBCbGludXgtbGlz
dEByZWRoYXQuY29tCj4+Pj4+Pj4+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+Pj4+Pj4+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+Pj4+Pj4+IEJsaW51eC1saXN0IG1haWxp
bmcgbGlzdAo+Pj4+Pj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+Pj4+Pj4+IGh0
dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+
Pj4+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
Pj4+Pj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+Pj4+Pj4+IEJsaW51eC1saXN0
QHJlZGhhdC5jb20KPj4+Pj4+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+Pj4+Pj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0
Cj4+Pj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+Pj4+PiBodHRwczovL2xpc3Rt
YW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+Pj4+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+Pj4+IEJsaW51
eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+
Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3QKPj4+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+Pj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+Pj4+IEJsaW51eC1saXN0QHJl
ZGhhdC5jb20KPj4+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0Cj4+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+Pj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+PiBCbGlu
dXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+
PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pgo+Pj4+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBs
aXN0Cj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Cj4+PiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0Cj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+PiBodHRwczovL2xpc3RtYW4ucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Cj4+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcg
bGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJs
aW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhh
dC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdAo=

