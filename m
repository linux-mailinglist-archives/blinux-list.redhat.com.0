Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F434FA7F4
	for <lists+blinux-list@lfdr.de>; Sat,  9 Apr 2022 15:04:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649509470;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=eqCNoIcYlSqJ2bVv0qFwBPhNQm/A7j70WPs1zFYkM2Q=;
	b=R+O4anw5+qaXH1s9WejQk33SZJV7LqNTXt25Wn4Zz1pG1Ht4u3pdmspBhdkjrai7kAgaTa
	/JxkWNyVi8a9GKx3UjouZwkO8GvsYREt1HKgFI0T/RD8B+F8i/rAEWw7CgbH0B/coopvhr
	aw+nILE8x5i2dplbMFCdmfDhW1Iilbw=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-658-17xR54xRO0SENeuusu44bw-1; Sat, 09 Apr 2022 09:04:27 -0400
X-MC-Unique: 17xR54xRO0SENeuusu44bw-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5B5F480346F;
	Sat,  9 Apr 2022 13:04:25 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 02C7640314F;
	Sat,  9 Apr 2022 13:04:25 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 7AA781940379;
	Sat,  9 Apr 2022 13:04:24 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 9 Apr 2022 15:04:13 +0200
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
 <mailman.7571.1649509092.111202.blinux-list@redhat.com>
In-Reply-To: <mailman.7571.1649509092.111202.blinux-list@redhat.com>
Message-ID: <mailman.7547.1649509463.111204.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SG93ZHksCgppdHMgbWUgYWdhaW4sIHRoZSBwbGFjZWhvbGRlciAiezB9IiBpcyBub3QgbG9uZ2Vy
IG5lZWRlZCBpZiB0aGUgZmlsZSAKcGF0aCBoYXMgdG8gYmUgYXQgdGhlIGVuZCBvZiB0aGUgb3Bl
biB3aXRoIGNvbW1hbmQsIGJ1dCBzdGlsbCBjb3VsZCBiZSAKdXNlZCBpZiB0aGUgZmlsZSBwYXRo
IGlzIG5lZWRlZCBzb21ld2hlcmUgaW4gdGhlIG1pZGRsZS4Kc28gbm93IGl0IHNob3VsZCBiZSBl
bm91Z2h0IHRvIGVudGVyCmdlZGl0CgpjaGVlcnMgY2hyeXMKCkFtIDA5LjA0LjIyIHVtIDE0OjU4
IHNjaHJpZWIgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbjoKPiBIb3dkeSwKPgo+
IHRoYW5rcywgd2VsbCB3ZSBjYW4gaW1wcm92ZSBpdCBzdGVwIGJ5IHN0ZXAuIEl0cyB2ZXJ5IGZs
ZXhpYmxlIGFuZCAKPiB2ZXJ5IGVhc3kgdG8gZXh0ZW5kIChkZXBlbmRzIG9uIHNraWxscyB0byBj
cmVhdGUgc3ltYm9saWMgbGlua3MgbG9vb2wpCj4gYW55d2F5Lgo+Cj4gdGhlIHN5bnRheCBpcyBx
dWl0ZSBzaW1wbGUuIGp1c3QgZW50ZXIgdGhlIGhvdyB5b3Ugd291bGQgb3BlbiBpdCBmcm9tIAo+
IHNoZWxsIGJ1dCByZXBsYWNlIHRoZSBmaWxlbmFtZSB3aXRoIHswfSAodGhpcyBpcyBhIHBsYWNl
aG9sZGVyIGZvciB0aGUgCj4gY29tcGxldGUgZmlsZXBhdGgpCj4gZm9yIGdlZGl0IHRoaXMgd291
bGQganVzdCBiZQo+IGdlZGl0IHswfQo+IGZvciBtZSBnZWRpdCBvcGVucyB0aGVuIHdpdGggdGhl
IHNlbGVjdGVkIGZpbGUuIHRoaXMgY3VycmVudGx5IG9ubHkgCj4gd29ya3MgZm9yIGZpbGVzLiBp
ZiB5b3VyIGN1cnNvciBpcyBvbiBhbiBmb2xkZXIsIGl0IG9wZW5zIHRoZSBwYXRoIAo+IGN1cnJl
bnRseSBpbiBkcmFnb25GTS4KPiB0byBtZSBtb3JlIGNvbWZvcnRhYmxlLCBpIGNvdWxkIGp1c3Qg
YWRkIHRoZSB7MH0gaWYgaXQgZG9lcyBub3QgZXhpc3QgCj4gYXQgdGhlIGVuZC4KPgo+IGNoZWVy
cyBjaHJ5cwo+IEFtIDA5LjA0LjIyIHVtIDE0OjM0IHNjaHJpZWIgTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbjoKPj4gSW5kZWVkIGl0IGRvZXMuIFRoYW5rcywgREZNIGlzIGEgcmVh
bGx5IG5lYXQgYml0IG9mIHNvZnR3YXJlLgo+Pgo+PiBIb3dldmVyLCBob3cgZG9lcyB0aGUgb3Bl
biB3aXRoIHdvcms/IElmIEkgbG9hZCB1cCwgc2F5IGEgdGV4dCBmaWxlIGFuZAo+PiBoaXQgb3Bl
biB3aXRoLi4uIGl0IGdpdmVzIG1lIGNhdCB7MH0gfCBsZXNzCj4+Cj4+IFdoYXQncyB0aGUgc3lu
dGF4IGZvciB0aGF0IG9uZT8gSSB0cmllZCB0eXBpbmcgaW4gR2VkaXQgYW5kIGdvdCBub3RoaW5n
LAo+PiB0cmllZCBQbHVtYSwgdHJpZWQgbmFubywgbm8gbHVjawo+Pgo+PiBPbiBTYXQsIEFwciAw
OSwgMjAyMiBhdCAwMjozMDo0OFBNICswMjAwLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCAKPj4g
ZGlzY3Vzc2lvbiB3cm90ZToKPj4+IEhvd2R5LAo+Pj4KPj4+IE9rIHRoaXMgdGltZSBpdCB3YXMg
Z2l0cyBmYXVsdC4gaXQgZGlkbnQgcmVhbGl6ZSB0aGF0IGkgY2hhbmdlZCB0aGUgCj4+PiBzeW1s
aW5rCj4+PiBmcm9tIHRoZSBhYnNvbHV0ZSB0byBhbiByZWxhdGl2ZSBwYXRoLgo+Pj4gc28gaSBo
YXQgdG8gcmVtb3ZlIGNvbW1pdCBhbmQgcmVhY3JlYXRlIGNvbW1pdCA6KS4KPj4+IG5vdyBpdCB3
b3JrcyBmb3IgcmVhbCA6KS4KPj4+Cj4+PiBjaGVlcnMgY2hyeXMKPj4+Cj4+PiBBbSAwOS4wNC4y
MiB1bSAxNDoxNyBzY2hyaWViIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb246Cj4+
Pj4gaG1tIHN0aWxsIHNvbWUgaXNzdWVzLAo+Pj4+Cj4+Pj4gbGV0IG1lIHRha2UgYSBkZWVwZXIg
bG9vawo+Pj4+Cj4+Pj4gQW0gMDkuMDQuMjIgdW0gMTQ6MDkgc2NocmllYiBMaW51eCBmb3IgYmxp
bmQgZ2VuZXJhbCBkaXNjdXNzaW9uOgo+Pj4+PiBIb3dkeSwKPj4+Pj4KPj4+Pj4gaXQgc2hvdWxk
IGJlIGZpeGVkIG15IGZyaWVuZC4gU29ycnkgZm9yIHRoYXQgXl4uCj4+Pj4+Cj4+Pj4+Cj4+Pj4+
IGNoZWVycyBjaHJ5cwo+Pj4+Pgo+Pj4+Pgo+Pj4+PiBBbSAwOS4wNC4yMiB1bSAxMzo1OSBzY2hy
aWViIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb246Cj4+Pj4+PiBUaGUgc2ltbGlu
ayBwb2ludHMgdG8geW91ciBob21lIGRpcmVjdG9yeSBhbmQgc2hvd3MgdXAgYXMgYQo+Pj4+Pj4g
YnJva2VuIHNpbWxpbmsgaWYgSSBjaGVjay4gSXQncyBzaG93biB1cCBhcyBhIHN5bWJvbGljIGxp
bmssCj4+Pj4+PiBicm9rZW4sIHBvaW50aW5nIHRvIC9ob21lL2NocnlzL2RyYWdvbmZtL3NyYy4u
LnRoZSAucHkgc2NyaXB0Cj4+Pj4+PiB0aGF0IHNob3VsZCBiZSB0aGVyZSB0aGVyZSdzIGEgc2lt
bGluayBpbnN0ZWFkLgo+Pj4+Pj4KPj4+Pj4+IE9uU2F0LCBBcHIgMDksIDIwMjIgYXQgMDE6MzU6
NDlQTSArMDIwMCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwKPj4+Pj4+IGRpc2N1c3Npb24gd3Jv
dGU6Cj4+Pj4+Pj4gSG93ZHksCj4+Pj4+Pj4KPj4+Pj4+PiBpIGNhbnQgcmVwcm9kdWNlIHRoaXMg
aGVyZS4KPj4+Pj4+PiBJIGp1c3QgZGlkIGEgbG9vayBhdCBnaXQsIGxvb2tzIGxpa2UgYWxsIGZp
bGVzIGFyZSBwdXNoZWQgCj4+Pj4+Pj4gY29ycmVjdGx5Lgo+Pj4+Pj4+Cj4+Pj4+Pj4gbWF5YmUg
YSBjb2xsaXNpb24gd2l0aCBhbiB3b3JrIGluIHByb2dyZXNzIGNvbW1pdCwgd3JvbmcKPj4+Pj4+
PiBicmFuY2ggb3IgcHl0aG9uCj4+Pj4+Pj4gY2FjaGU/Cj4+Pj4+Pj4KPj4+Pj4+PiBpIGd1ZXNz
IGl0IG11c3QgYmUgYSBsb2NhbCBpc3N1ZSwgc2V0dXAucHkgYW5kIFBLR0JVSUxEIHdvcmsKPj4+
Pj4+PiBhcyBleHBlY3RlZAo+Pj4+Pj4+IGhlcmUuCj4+Pj4+Pj4KPj4+Pj4+PiBjaGVlcnMgY2hy
eXMKPj4+Pj4+Pgo+Pj4+Pj4+IEFtIDA5LjA0LjIyIHVtIDEzOjE4IHNjaHJpZWIgTGludXggZm9y
IGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbjoKPj4+Pj4+Pj4gTm90IHN1cmUgaWYgdGhhdCBicm9r
ZSBidXQgb24gbXkgZW5kIHRoYXQncyB0aHJvd2luZyB1cAo+Pj4+Pj4+PiBhIG5vIHN1Y2ggZmls
ZSBmb3IgdGhlIG9wZW4gc2hlbGwgd2l0aC4uLiAucHkgb25lIHdoZW4gSQo+Pj4+Pj4+PiBkbyBz
dWRvIC4vc2V0dXAucHkgd2l0aCBhIGZyZXNoIGluc3RhbGwgYW5kIGRvaW5nIGluIHRoZQo+Pj4+
Pj4+PiBtYW51YWwgd2F5LiBOb3QgYmFjayBvbiBteSBBcmNoIGJveCByaWdodCBub3cgc28gY2Fu
J3QKPj4+Pj4+Pj4gdGVzdCB0aGUgcGtnYnVpbGQgdGhvdWdoLi4uLmJ1dCB0byByZXBsaWNhdGUg
Y2xvbmUgdGhlCj4+Pj4+Pj4+IGxhdGVzdCB1cmwgYW5kIGRvIHN1ZG8gLi9zZXR1cC5weSBhbmQg
d2F0Y2ggZm9yIHRoZQo+Pj4+Pj4+PiB1bmFibGUgdG8gY29weSBlcnJvcgo+Pj4+Pj4+Pgo+Pj4+
Pj4+PiBPbiBTYXQsIEFwciAwOSwgMjAyMiBhdCAwMTowNToxOFBNICswMjAwLCBMaW51eCBmb3IK
Pj4+Pj4+Pj4gYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4+Pj4+Pj4gSG93ZHks
Cj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gaSBqdXN0IGFkZCBhbiAib3BlbiBlbnRyeSB3aXRoIHNoZWxs
IiBhY3Rpb24uCj4+Pj4+Pj4+PiBjdXJyZW50bHkgYXNzaWduZWQgdG8gY3RybCArIG8uCj4+Pj4+
Pj4+PiB3aGVuIHlvdSBzZWxlY3QgYSBmaWxlLCBwcmVzcyBjdHJsICsgbyBhbiBpbnB1dCBib3gK
Pj4+Pj4+Pj4+IGFwcGVhcnMuIHRoZXJlIGlzIGEKPj4+Pj4+Pj4+IGRlZmF1bHQgdmFsdWUgKGNv
bmZpZ3VyZWFibGUgaW4gc2V0dGluZ3MuY29uZiBzZWN0aW9uIGZvbGRlciBrZXkKPj4+Pj4+Pj4+
IG9wZW5XaXRoU2hlbGxJbml0VmFsdWUpLiBwcmVzc2luZyBlbnRlciBleGVjdXRlcyB0aGUKPj4+
Pj4+Pj4+IGNvbW1hbmQgdGhlbi4gezB9IGlzCj4+Pj4+Pj4+PiB0aGUgcGxhY2Vob2xkZXIgZm9y
IHRoZSBjdXJyZW50IHNlbGVjdGVkIGZpbGUuCj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gZG8geW91IHdh
bnQKPj4+Pj4+Pj4+IGN0cmwgKyBvIGZvciBvcGVuCj4+Pj4+Pj4+PiBjdHJsICsgdyBmb3Igb3Bl
biB3aXRoPwo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IHNob3VsZCBpIHN3YXAgdGhlbSBvciBrZWVwIGl0
IGFzIGl0IGlzPwo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IGNoZWVycyBjaHJ5cwo+Pj4+Pj4+Pj4KPj4+
Pj4+Pj4+IEFtIDA5LjA0LjIyIHVtIDEyOjM0IHNjaHJpZWIgTGludXggZm9yIGJsaW5kIGdlbmVy
YWwgZGlzY3Vzc2lvbjoKPj4+Pj4+Pj4+PiBIb3dkeSwKPj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+IGkg
anVzdCBwcm92aWRlZCBhbiBQS0dCVUlMRCBmb3IgZHJhZ29uRk0gYW5kIHVwbG9hZGVkIGl0IHRv
IEFVUi4KPj4+Pj4+Pj4+PiBpdHMgY3VycmVudGx5IGEgZ2l0IHBhY2thZ2UsIGFzIGRyYWdvbkZN
IGRvZXMKPj4+Pj4+Pj4+PiBub3QgeWV0IHNlZW4gYW55IHN0YWJsZQo+Pj4+Pj4+Pj4+IHJlbGVh
c2UgOykuCj4+Pj4+Pj4+Pj4gbmFtZTogZHJhZ29uZm0tZ2l0Cj4+Pj4+Pj4+Pj4gdXJsOiBodHRw
czovL2F1ci5hcmNobGludXgub3JnL3BhY2thZ2VzL2RyYWdvbmZtLWdpdAo+Pj4+Pj4+Pj4+Cj4+
Pj4+Pj4+Pj4gaWYgeW91IGFscmVhZHkgaW5zdGFsbGVkIGl0IHVzaW5nIHNldHVwLnB5IHlvdSBt
aWdodCBuZWVkIHRvIAo+Pj4+Pj4+Pj4+IHJlbW92ZQo+Pj4+Pj4+Pj4+IGNvbmZsaWN0aW5nIGZp
bGVzIGZyb20geW91ciBmaWxlc3lzdGVtIGZpc3QuIChhcwo+Pj4+Pj4+Pj4+IHNldHVwLnB5IGRv
ZXMgYnlwYXNzCj4+Pj4+Pj4+Pj4gdGhlIHBhY2thZ2UgbWFuYWdlcikKPj4+Pj4+Pj4+Pgo+Pj4+
Pj4+Pj4+IGkgYWRkZWQgYW4gd2lsZGNhcmQgbWltZSB0eXBlLiBpZiB0aGVyZSBpcyBubwo+Pj4+
Pj4+Pj4+IHNwZWNpZmljIGVudHJ5IGluIHRoZSBtaW1lCj4+Pj4+Pj4+Pj4gbGlzdCwgdGhlIHhk
Zy1vcGVuIHBvcHMgdXAgbm93LiB0aGlzIG1pZ2h0IGJlIG1vcmUgaGVscGZ1bC4KPj4+Pj4+Pj4+
PiB3ZWxsLCBpIHdpbGwgaW1wbGVtZW50IHRoZSBvcGVuIHdpdGggZm9yIHlvdS4gZ2l2ZSBtZSBh
IHNlY29uZC4KPj4+Pj4+Pj4+PiBpIHdpbGwgYXNzaWduIGl0IHRvIGN0cmwgKyBvIGFuZCBtb3Zl
IHRoZSBvcGVuIGFjdGlvbiB0byBjdHJsIAo+Pj4+Pj4+Pj4+ICsgbS4KPj4+Pj4+Pj4+Pgo+Pj4+
Pj4+Pj4+IGNoZWVycyBjaHJ5cwo+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4gQW0gMDkuMDQuMjIgdW0g
MTI6MjUgc2NocmllYiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uOgo+Pj4+Pj4+
Pj4+PiBTdXJlIEkgY2FuIHRlc3QgdGhlIHBrZ2J1aWxkIG9uY2UgSSdtIGJhY2sgb24gbXkgQXJj
aCBib3gKPj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4gQW5kIHRoYXQgaW5wdXQgYm94IHdvcmtzIGZp
bmUuIEknbGwgc3VnZ2VzdAo+Pj4+Pj4+Pj4+PiBDdHJsK08gYXMgdGhlIHNob3J0Y3V0IGZvcgo+
Pj4+Pj4+Pj4+PiBpdCBzbyB5b3UgZ290IEVudGVyL0N0cmwrTSB0byBvcGVuIChvIG1heWJlCj4+
Pj4+Pj4+Pj4+IG1vdmUgb3BlbiB3aXRoIHRvIGN0cmwrTSBhbmQKPj4+Pj4+Pj4+Pj4gc2VlIGhv
dyB0aGF0IHdvcmtzPyksIGFuZCBhIGN0cmwrTyBmb3Igb3BlbiB3aXRoPwo+Pj4+Pj4+Pj4+Pgo+
Pj4+Pj4+Pj4+PiBBQWggSSBkaWRudCBrbm93IGFib3V0IGp1c3QgZXhpdGluZyB0aGUKPj4+Pj4+
Pj4+Pj4gc2hlbGwuIEkgYXNzdW1lZCB0aGF0J2QgY2xvc2UKPj4+Pj4+Pj4+Pj4gdGhlIHRhYi4g
TXkgZmlyc3QgdGhvdWdodCB3YXMgYWxyaWdodCwgZmcKPj4+Pj4+Pj4+Pj4gZHJhZ29uZm0gdG8g
Z2V0IGJhY2sgdG8gaXQKPj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4gT24gU2F0LCBBcHIgMDksIDIw
MjIgYXQgMTE6MTM6MjVBTSArMDIwMCwgTGludXggZm9yIGJsaW5kIAo+Pj4+Pj4+Pj4+PiBnZW5l
cmFsCj4+Pj4+Pj4+Pj4+IGRpc2N1c3Npb24gd3JvdGU6Cj4+Pj4+Pj4+Pj4+PiBIb3dkeSwKPj4+
Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+PiAvLyBZZXMgdG8gcHV0dGluZyBpdCBpbiB0aGUgQVVSIGFu
ZCB5ZXMgZm9yIHRoZSBlbnYgc3R1ZmYuCj4+Pj4+Pj4+Pj4+PiBPSyBsZXQgbWXCoCBjcmVhdGUg
YSBQS0dCVUlMRCBmb3IgZHJhZ29uZm0tZ2l0Cj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4gLy8g
SSdtIHBva2luZyBhdCB0aGUgY29uZmlnIHRyeWluZyB0bwo+Pj4+Pj4+Pj4+Pj4gcmVwbGljYXRl
IE5OTidzIG9wZW4gd2l0aCBhbmQgbm90Cj4+Pj4+Pj4+Pj4+PiAvLyBoYXZpbmcgbXVjaCBsdWNr
LiBJcyB0aGF0IGp1c3QgYSBjYXNlIG9mIHJlbWVtYmVyaW5nIHRvIAo+Pj4+Pj4+Pj4+Pj4gZHJv
cAo+Pj4+Pj4+Pj4+Pj4gdG8gYSBzaGVsbAo+Pj4+Pj4+Pj4+Pj4gLy8gYW5kIGRvaW5nIHdoYXQg
SSBuZWVkPwo+Pj4+Pj4+Pj4+Pj4gaG93IGRvZXMgdGhpcyBsb29rIGxpa2U/IGp1c3QgYSBpbnB1
dCBkaWFsb2cgdG8gZW50ZXIgYW55Cj4+Pj4+Pj4+Pj4+PiBjb21tYW5kIHdpdGggdGhlCj4+Pj4+
Pj4+Pj4+PiBjdXJyZW50IHNlbGVjdGVkIGVsZW1lbnQgYXMgcGFyYW1ldGVyPwo+Pj4+Pj4+Pj4+
Pj4KPj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+PiAvLyBPbiB0aGF0IG5vdGUuLi5pcyB0aGVyZSBh
IHdheSBvbmNlIEkKPj4+Pj4+Pj4+Pj4+IGhpdCBGNCwgdG8gZ2V0IGJhY2sgdG8gZHJhZ29uZm0K
Pj4+Pj4+Pj4+Pj4+IC8vIGVhc2lseSB3aXRob3V0IHJlbGF1bmNoaW5nIGl0IGZyb20gdGhlIHNo
ZWxsPwo+Pj4+Pj4+Pj4+Pj4gd2VsbCwganVzdCBleGl0IHRoZSBzaGVsbCAodHlwZSAiZXhpdCIp
LCB5b3Ugd2lsbCBiZSBiYWNrIGluCj4+Pj4+Pj4+Pj4+PiBkcmFnb25mbSB0aGVuCj4+Pj4+Pj4+
Pj4+PiA6KS4KPj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+PiBjaGVlcnMgY2hyeXMKPj4+Pj4+Pj4+
Pj4+Cj4+Pj4+Pj4+Pj4+PiBBbSAwOS4wNC4yMiB1bSAxMDozMCBzY2hyaWViIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIAo+Pj4+Pj4+Pj4+Pj4gZGlzY3Vzc2lvbjoKPj4+Pj4+Pj4+Pj4+PiBZZXMg
dG8gcHV0dGluZyBpdCBpbiB0aGUgQVVSIGFuZCB5ZXMgZm9yIHRoZSBlbnYgc3R1ZmYuCj4+Pj4+
Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+PiBJJ20gcG9raW5nIGF0IHRoZSBjb25maWcgdHJ5aW5nIHRv
Cj4+Pj4+Pj4+Pj4+Pj4gcmVwbGljYXRlIE5OTidzIG9wZW4gd2l0aCBhbmQgbm90Cj4+Pj4+Pj4+
Pj4+Pj4gaGF2aW5nIG11Y2ggbHVjay4gSXMgdGhhdCBqdXN0IGEgY2FzZSBvZiByZW1lbWJlcmlu
ZyB0byBkcm9wCj4+Pj4+Pj4+Pj4+Pj4gdG8gYSBzaGVsbAo+Pj4+Pj4+Pj4+Pj4+IGFuZCBkb2lu
ZyB3aGF0IEkgbmVlZD8KPj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+IE9uIHRoYXQgbm90ZS4u
LmlzIHRoZXJlIGEgd2F5IG9uY2UgSQo+Pj4+Pj4+Pj4+Pj4+IGhpdCBGNCwgdG8gZ2V0IGJhY2sg
dG8gZHJhZ29uZm0KPj4+Pj4+Pj4+Pj4+PiBlYXNpbHkgd2l0aG91dCByZWxhdW5jaGluZyBpdCBm
cm9tIHRoZSBzaGVsbD8KPj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+IE9uIFNhdCwgQXByIDA5
LCAyMDIyIGF0IDA5OjQxOjQ5QU0gKzAyMDAsIExpbnV4IGZvciBibGluZAo+Pj4+Pj4+Pj4+Pj4+
IGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+Pj4+Pj4+Pj4+Pj4gSG93ZHksCj4+Pj4+Pj4+
Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+PiDvu79JcyBEcmFnb25GTSBpbiB0aGUgQXJjaCByZXBvPwo+
Pj4+Pj4+Pj4+Pj4+PiBDdXJyZW50bHkgaXRzIG5vdC4gSWYgeW91IGxpa2UgaXQsIGkgY2FuIHB1
dCBpdCBpbnRvIEFVUi4KPj4+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+Pj4gQ2hlZXJzIGNocnlz
Cj4+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+PiBBbSAwOS4wNC4yMDIyIHVtIDA3OjU0IHNj
aHJpZWIgTGludXggZm9yIGJsaW5kCj4+Pj4+Pj4+Pj4+Pj4+PiBnZW5lcmFsIGRpc2N1c3Npb24g
PGJsaW51eC1saXN0QHJlZGhhdC5jb20+Ogo+Pj4+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+Pj4+
IO+7v0lzIERyYWdvbkZNIGluIHRoZSBBcmNoIHJlcG8/IEFtIHRyeWluZyB0byBnZXQgaXQKPj4+
Pj4+Pj4+Pj4+Pj4+IHdpdGggeWF5IGZyb20gdGhpcyBzaWRlLgo+Pj4+Pj4+Pj4+Pj4+Pj4KPj4+
Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4gT24gU2F0LCBBcHIgMDksIDIwMjIgYXQgMDI6
MjY6MTVBTSArMDIwMCwgTGludXgKPj4+Pj4+Pj4+Pj4+Pj4+PiBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uIHdyb3RlOgo+Pj4+Pj4+Pj4+Pj4+Pj4+IEhvd2R5LAo+Pj4+Pj4+Pj4+Pj4+Pj4+
Cj4+Pj4+Pj4+Pj4+Pj4+Pj4gT2sgdGhlbiBpIGtlZXAgdGhhdCBhbHQgKyB1Lgo+Pj4+Pj4+Pj4+
Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+IFRoYXQgc2VlbXMgdG8gd29yayBiZXR0ZXIsIGJ1dCBk
b2VzIHRoZQo+Pj4+Pj4+Pj4+Pj4+Pj4+PiBQYXl0cmlvbiBsaW5rIHlvdSBzZW50IGluIGFub3Ro
ZXIgbWVzc2FnZQo+Pj4+Pj4+Pj4+Pj4+Pj4+PiBoYXZlIHRoZSBpbmZvIG9uIGNoYW5naW5nIHRo
ZSBzaG9ydGN1dHMgYXMKPj4+Pj4+Pj4+Pj4+Pj4+Pj4gd2VsbD8KPj4+Pj4+Pj4+Pj4+Pj4+PiBX
ZWxsIGkgY2hhbmdlZCB0aGUgc2hvcnRjdXRzIGluIG1hc3Rlci4gU28gdGhlcmUKPj4+Pj4+Pj4+
Pj4+Pj4+PiBpcyBubyBuZWVkIHRvIGNoYW5nZSB0aGVtIGJ5IG90aGVycyBhbnltb3JlLgo+Pj4+
Pj4+Pj4+Pj4+Pj4+IE9yIHdoYXQgaW5mbyB5b3UgbWVhbiBleGFjdGx5Pwo+Pj4+Pj4+Pj4+Pj4+
Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4gVGhlcmUgaXMgbm93IGF0IGxlYXN0IGEgYmFzaWMgZG9jdW1l
bnRhdGlvbiA6KS4KPj4+Pj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+Pj4+IENoZWVycyBjaHJ5
cwo+Pj4+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBBbSAwOS4wNC4yMDIyIHVtIDAy
OjE1IHNjaHJpZWIgTGludXggZm9yCj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBibGluZCBnZW5lcmFsIGRp
c2N1c3Npb24KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+IDxibGludXgtbGlzdEByZWRoYXQuY29tPjoKPj4+
Pj4+Pj4+Pj4+Pj4+Pj4g77u/T2theSBpZiBpdCdzIGp1c3QgYWx0K3UgdGhlbiB5ZXMga2VlcCBp
dAo+Pj4+Pj4+Pj4+Pj4+Pj4+PiB0aGF0IHdheS4gVGhhdCBzZWVtcyB0byB3b3JrIGJldHRlciwg
YnV0Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGRvZXMgdGhlIFBheXRyaW9uIGxpbmsgeW91IHNlbnQgaW4g
YW5vdGhlcgo+Pj4+Pj4+Pj4+Pj4+Pj4+PiBtZXNzYWdlIGhhdmUgdGhlIGluZm8gb24gY2hhbmdp
bmcgdGhlCj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHNob3J0Y3V0cyBhcyB3ZWxsPwo+Pj4+Pj4+Pj4+Pj4+
Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gT24gRnJpLCBBcHIgMDgsIDIwMjIgYXQgMTE6Mjg6MzBQ
TQo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gKzAyMDAsIExpbnV4IGZvciBibGluZCBnZW5lcmFsCj4+Pj4+
Pj4+Pj4+Pj4+Pj4+PiBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gSG93ZHks
Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gaSBpbnN0YWxsZWQgTWF0ZSB0
ZXJtaW5hbCBmb3IgdGVzdGluZwo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+
IC8vIEN0cmwrRCBmb3IgZGV0YWlscyBpbnN0ZWVhZCBvZiBGMTAKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+
IG9rIHRoaXMgaXMgY2hhbmdlZC4KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+
PiBhYm91dCBeW3UgaSB3YXMgd3JvbmcuIGl0cyBqdXN0IGFsdCArIHUKPj4+Pj4+Pj4+Pj4+Pj4+
Pj4+IHNvIGEgc2luZ2xlIF4gaXMgQ3RybAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gdGhlIHNlcXVlbmNl
IF5bIGlzIGFsdCBpZiBpdCBpcyBmb2xsb3dlZAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gYnkgYW4gbGV0
dGVyLiBpZiBub3QsIGl0cyBlc2NhcGUKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGN0cmwgKyBhbHQgKyB4
IHdvdWxkIGJlIF5bXkMKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBiYWNr
IHRvIEFsdCArIHUsIHRoaXMgd29ya2VkIGZvciBtZSwKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHNob3Vs
ZCBpIGNoYW5nZSB0aGUgc2hvcnRjdXQgaW4gYW55Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiB3YXk/Cj4+
Pj4+Pj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gLy8gSSdtIHRyeWluZyB0byByZXBs
YWNlIHVuemlwIGFuZCB0YXIgd2l0aCBhdG9vbAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gaW4gc2VjdGlv
biBbbWltZV0geW91IHNlZSBob3cgdG8gb3BlbiBhbiBmaWxlLgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4g
aW4gc2VjdGlvbiBbY29tcHJlc3NdIGFuZCBbZGVjb21wcmVzc10KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+
IHlvdSBjYW4gY29uZmlndXJlIHRoZSBkZS0vY29tcHJlc3NpbmcKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+
IHByb2Nlc3MuCj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBpIGNoYW5nZWQgdGhpcyBmb3IgeW91Cj4+Pj4+
Pj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gY29tcHJlc3MgKHRoZSB3b3JkIGNvbXBy
ZXNzIGJldm9yZSB0aGUKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGVxdWFsIGlzIGp1c3QgdGhlIGxhYmxl
IHNob3duIGluCj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBjb250ZXh0IG1lbnUpOgo+Pj4+Pj4+Pj4+Pj4+
Pj4+Pj4gIyB7MH0gPSBTb3VyY2U6IGxpc3Qgb2YgZmlsZXMgc2VwYXJhdGVkCj4+Pj4+Pj4+Pj4+
Pj4+Pj4+PiBieSBzcGFjZSB3aXRoIGFic29sdXQgZmlsZXBhdGgKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+
ICMgezF9ID0gRGVzdGluYXRpb246wqAgYXJjaGl2ZSBuYW1lCj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBj
b21wcmVzcz1hcGFjayAtcSB7MX0gezB9Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+
Pj4+Pj4KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGRlY29tcHJlc3MgKGZvciB6aXBmaWxlcywgeW91IGNh
biBqdXN0Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBjb3B5IHRoYXQgZm9yIGFueSBvdGhlciBmb3JtYXQK
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHN1cHBvcnRlZCBieSBhdG9vbCBhbmQgY2hhbmdlIHRoZQo+Pj4+
Pj4+Pj4+Pj4+Pj4+Pj4gYXBwbGljYXRpb24vemlwIHRvIHdoYXRldmVyIG1pbWV0eXBlIHlvdQo+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gd2FudCB0byB1bnppcCk6Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiAjIHsw
fSA9IFNvdXJjZTogZmlsZSB0byBkZWNvbXByZXNzCj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiAjIHsxfSA9
IERlc3RpbmF0aW9uOiBmb2xkZXIgd2l0aCBhcmNoaXZlIGNvbnRlbnQKPj4+Pj4+Pj4+Pj4+Pj4+
Pj4+IGFwcGxpY2F0aW9uL3ppcD1hdG9vbCAtZiAtcSAtLWV4dHJhY3QtdG89ezF9IHswfQo+Pj4+
Pj4+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGkganVzdCBwdXNoZWQuCj4+Pj4+Pj4+
Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gY2hlZXJzIGNocnlzCj4+Pj4+Pj4+Pj4+Pj4+
Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBBbSAwOC4wNC4yMgo+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHVtIDIyOjExCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gc2NocmllYgo+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IExpbnV4IGZvcgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGJsaW5kCj4+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gZ2VuZXJhbAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGRpc2N1c3Npb246
Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gU3VyZSB0aGluZy4gSGVyZScncyB3aGF0IEkgd2hpcHBlZCB1
cHAgcmVhbCBxdWljawo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gQ3Ry
bCtEIGZvciBkZXRhaWxzIGluc3RlZWFkIG9mIEYxMAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+
Pj4+Pj4+Pj4+Pj4+Pj4gQ3RybCthbHQreCBmb3IgZXh0cmFjdCBpbnN0ZWFkIG9mCj4+Pj4+Pj4+
Pj4+Pj4+Pj4+Pj4gdHJsK2FsdCt1ICh3aGljaCBkb2VzbnQgc2VlbSB0byB3b3JrCj4+Pj4+Pj4+
Pj4+Pj4+Pj4+Pj4gb24gTWF0ZT8pCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+Pj4+
Pj4+PiBJJ20gdHJ5aW5nIHRvIHJlcGxhY2UgdW56aXAgYW5kIHRhcgo+Pj4+Pj4+Pj4+Pj4+Pj4+
Pj4+IHdpdGggYXRvb2wsIGhvdyBOTk4gaGFuZGxlcyBpdCBzaW5jZQo+Pj4+Pj4+Pj4+Pj4+Pj4+
Pj4+IGl0J3MgYSBsb3QgbmljZXIgdG8gaGF2ZSBvbmUgdG9vbAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+
IHRoYXQgaGFuZGxlcyBhIHRvbiBvZiBmb3JtYXRzCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gd2l0aG91
dAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGhhdmluZyB0byBodW50IGRvd24gMTAgZGlmZmVycmVudCBw
cm9ncmFtcwo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gQXNpZGUgZnJv
bSB0aGF0LCBub3QgbWFkZSBhbnkgb3RoZXIKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBjaGFuZ2VzIHRv
IHRoZSAuY29uZiBmaWxlIHRob3VnaC4KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBJdCdzIGEgbmVhdCBs
aXR0bGUgcHJvZ3JhbSwgdGhvdWdoCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4ganVzdCBpbiBjYXNlIEkg
bWlzc2VkIGFueSwgZ28KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiB0aHJvdWdoCj4+Pj4+Pj4+Pj4+Pj4+
Pj4+Pj4gYW5kIHVzZSBEcmFnb25GTSB3aXRoIGEgdGVybWluYWwKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+
PiBlbXVsYXRvciBhbmQgc2VlIHdoYXQgeW91IGNhbiBjb21lCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4g
dXAKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiB3aXRoIGZvciBzaG9ydGN1dHM/IEknbSBvbiBhIGxhcHRv
cAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGN1cnJlbnRseSBzbyB0aGF0IGtpbmQgb2YgaGluZGVycwo+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHdoYXQgSSBjYW4gZG8gc2hvcnRjdXRzIHdpc2UgaG93ZXZlcgo+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gT24gRnJpLCBBcHIgMDgsIDIw
MjIgYXQgMTA6MDM6MjdQTQo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+ICswMjAwLCBMaW51eCBmb3IgYmxp
bmQgZ2VuZXJhbAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGRpc2N1c3Npb24gd3JvdGU6Cj4+Pj4+Pj4+
Pj4+Pj4+Pj4+Pj4+IEhvd2R5LAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+Pj4+
Pj4+PiBXZWxsLCBGMTIzIHdhcyBtb3N0bHkgVFRZIG9ubHkuCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+
IFNvIHRoZSBiaW5kaW5ncyBhcmUgc2V0IHdpdGgKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gdGhhdCBp
biBtaW5kIDopLiBUaGUgcHJvamVjdAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiB3YW50ZWQgdG8gbW9t
aWMgR1VJIHNob3J0Y3V0cwo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBmb3IgbW9zdCBwYXJ0cy4KPj4+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gVGhlIGNvbGxpZGluZyBzaG9ydGN1dHMgY2FuIGJlCj4+Pj4+Pj4+
Pj4+Pj4+Pj4+Pj4+IGNoYW5nZWQgdmVyeSBlYXN5IGluIHNldHRpbmdzCj4+Pj4+Pj4+Pj4+Pj4+
Pj4+Pj4+IGZpbGUuCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IElm
IHlvdSBoYW5kIG1lIGEgbGlzdCB3aXRoCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHNob3J0Y3V0cyB5
b3Ugd2FudCB0byBoYXZlCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGNoYW5nZWQsIGkgY2hhbmdlIHRo
ZW0gZm9yIHlvdQo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiByaWdodCBpbiBtYXN0ZXIuCj4+Pj4+Pj4+
Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IEFzIEYxMjMgaXMgbm8gbW9yZSwgVFRZ
IGNvbXBhdC4KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gZG9lcyBub3QgbWF0dGVyIHRoYXQgbXVjaAo+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBhbnltb3JlIHRvIG1lIGFuZCB3ZSBjYW4gaW1wcm92ZQo+Pj4+
Pj4+Pj4+Pj4+Pj4+Pj4+PiBpdCBpbiB0ZXJtaW5hbCBlbXVsYXRvcnMgKG1vc3QKPj4+Pj4+Pj4+
Pj4+Pj4+Pj4+Pj4gb2YgdGhlbSBoYXZlIG1vcmUgY2FwYWJpbGl0aWVzCj4+Pj4+Pj4+Pj4+Pj4+
Pj4+Pj4+IHRoYW4gVFRZIGluIGFueSB3YXksIGZvciBleGFtcGxlCj4+Pj4+Pj4+Pj4+Pj4+Pj4+
Pj4+IGtvbnNvbGUgKCB0aGUgS0RFIHRlcm1pbmFsCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGVtdWxh
dG9yIGhhcyBzcGVjaWFsIGVzY2FwZQo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBzZXF1ZW5jZXMgZm9y
IHNoaWZ0IGFycm93KQo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBD
aGVlcnMgY2hyeXMKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IEFt
IDA4LjA0LjIwMjIgdW0gMjE6NTMKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHNjaHJpZWIgTGludXgg
Zm9yIGJsaW5kCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBnZW5lcmFsIGRpc2N1c3Npb24KPj4+Pj4+
Pj4+Pj4+Pj4+Pj4+Pj4+IDxibGludXgtbGlzdEByZWRoYXQuY29tPjoKPj4+Pj4+Pj4+Pj4+Pj4+
Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiDvu79VbmZvcnR1bmF0ZWx5LCBEcmFnb25GTQo+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gZG9lc24ndCB3b3JrIHdlbGwgb3V0IG9mIHRoZQo+Pj4+Pj4+
Pj4+Pj4+Pj4+Pj4+Pj4gYm94IHdpdGggYSB0ZXJtaW5hbAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4g
ZW11bGF0b3IsIG1vc3RseSBkb3duIHRvCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBjb25mbGljdHMg
d2l0aCBrZXlzIGxpa2UKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IEYxMC4gWWVzIEkgY2FuIHJlZGVm
aW5lCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiB0aGVtLCBidXQgdGhhdCdzIGtpbmQgb2YKPj4+Pj4+
Pj4+Pj4+Pj4+Pj4+Pj4+IHNvbWV0aGluZyBJbSBzbHdseSBzbG93bHkKPj4+Pj4+Pj4+Pj4+Pj4+
Pj4+Pj4+IHBva2luZyBhdC4gSSdtIHVuYWJsZSB0byBnZXQKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+
IE1hdGUtdGVybWluYWwgdG8gcmVjb2duaXplIGEKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGN0cmwr
YWx0IHBhdGVybiBob3VnaAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gd2hlcmVhcyBhIFRUWSB3b3Jr
cyBmaW5lIHNvLAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gdW5zdXJlIGlmIHlvdSBuZWVkIHRvIHRl
c3QKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IERyYWdvbmZtIG9uIHRlcm1pbmFsCj4+Pj4+Pj4+Pj4+
Pj4+Pj4+Pj4+PiBlbXVsYXRvcnMgd2l0aCBhIGRlc2t0b3A/Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+
Pgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gS2luZCBvZiBhIHNoYW1lIHNpbmNlIEkgbGlrZQo+Pj4+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gaG93IGVhc3kgRHJhZ29uIGlzIHRvIHVzZSB2cwo+Pj4+Pj4+Pj4+
Pj4+Pj4+Pj4+Pj4gc29tZXRoaW5nIGxpa2UKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IE1DIG9yIFJh
bmdlciBvciBOTk4gKG15Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBjdXJyZW50IGZhdm9yaXRlIG9u
ZSB0aGF0Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBkb2Vzbid0IGhhdmUga2V5Ym9hcmQKPj4+Pj4+
Pj4+Pj4+Pj4+Pj4+Pj4+IGNvbmZsaWN0cykgdGhvdWdoCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pgo+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IE9uIEZyaSwgQXByIDA4LCAyMDIyIGF0Cj4+Pj4+Pj4+Pj4+
Pj4+Pj4+Pj4+Pj4gMDk6MzY6MjhQTSArMDIwMCwgTGludXgKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+
PiBmb3IgYmxpbmQgZ2VuZXJhbAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGRpc2N1c3Npb24gd3Jv
dGU6Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gSG93ZHksCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4K
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBXZWxsIHRoZXJlIGlzIGEgY29udGV4dAo+Pj4+Pj4+Pj4+
Pj4+Pj4+Pj4+Pj4+IG1lbnXCoCAoIGRyYWdvbkZNIGNhbGxzCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+
Pj4gaXQgRGV0YWlscywgYmVjYXVzZSBpdAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGFsc28gc2hv
d3MgZmlsZQo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHByb3BlcnRpZXMgbGlrZSBzaXplLAo+Pj4+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IG1pbWUgYW5kIGEgbGlzdCBvZgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+
Pj4+IGF2YWlsYWJsZSBhY3Rpb25zKSB3aXRoCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gYWxsIGF2
YWlsYWJsZSBvcHRpb25zIGJ5Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gcHJlc3NpbmcgRjEwCj4+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gU29tZSBhY3Rpb25zIGFyZSBvbmx5Cj4+Pj4+Pj4+Pj4+Pj4+
Pj4+Pj4+Pj4gYXZhaWxhYmxlIGZvciBnaXZlbiBtaW1lCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4g
dHlwZXMgbGlrZSBjb21wcmVzcwo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGN1cnJlbnQgb25seSBm
b3IgemlwIGFuZAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHRhciwgb3RoZXJzIGNvdWxkIGJlCj4+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gYWRkYWQgdmVyeSBlYXN5LiBCeQo+Pj4+Pj4+Pj4+Pj4+Pj4+
Pj4+Pj4+IGRlZmF1bHQgZHJhZ29uZm0gZG9lcwo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IG5vdCB1
c2UgYXRvb2wgYnV0IHVuemlwCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gY29tbWFuZCBmb3Igemlw
IGZpbGVzCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gYW5kIHRhciBvZiBjb3Vyc2UgZm9yCj4+Pj4+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gdGFyIHRob3NlIG5lZWQgdG8gYmUKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+
Pj4+PiBpbnN0YWxsZWQgb3IgY29uZnVyZWQgdG8KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiB1c2Ug
c29tZXRoaW5nIGVsc2UuwqAgKEkKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBjYW4gZ2l2ZSB5b3Ug
YSBtb3JlCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gZGV0YWlsZWQgaW5mb3JtYXRpb24gaG93Cj4+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gdG8gY29uZmlndXJlIHRob3NlIHN0dWZmCj4+Pj4+Pj4+Pj4+
Pj4+Pj4+Pj4+Pj4gaWYgeW91IGFyZSBpbnRlcmVzdGVkCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4g
aW4pCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBEcmFnb25G
TSByZWFkcyB0aGUKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBFc2NhcGUgc2VxdWVuY2VzIGZyb20K
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBzdGRpbiB0byBkZXRlY3QKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+
Pj4+PiBzaG9ydGN1dHMgKGxpa2UgYWxtb3N0Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gYW55IG90
aGVyIENMSQo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGFwcGxpY2F0aW9uKQo+Pj4+Pj4+Pj4+Pj4+
Pj4+Pj4+Pj4+IFNvbWUgaW1wb3J0YW50IGJhc2ljCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gdHJh
bnNsYXRpb24gaGVscCAod2UKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBzaG91bGQgYWRkIHRoZSBz
aG9ydGN1dHMKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBhcyBjb21tZW50cyB0byB0aGUKPj4+Pj4+
Pj4+Pj4+Pj4+Pj4+Pj4+PiBzZXR0aW5ncyBmaWxlIGxvbCApCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+
Pj4gXiA9IENUUkwKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBbID0gQWx0Cj4+Pj4+Pj4+Pj4+Pj4+
Pj4+Pj4+Pj4gVXBwZXJjYXNlIGxldHRlciA9IHNoaWZ0ICsgbGV0dGVyCj4+Pj4+Pj4+Pj4+Pj4+
Pj4+Pj4+Pj4gbG93ZXJjYXNlIGxldHRlciA9IGp1c3QgdGhlIGxldHRlcgo+Pj4+Pj4+Pj4+Pj4+
Pj4+Pj4+Pj4+IEFuIG90aGVyIGV4YW1wbGU6Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gXlt1IHRy
YW5zbGF0ZXMgYXMgY3RybCArIGFsdCArIHUKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+
Pj4+Pj4+Pj4+Pj4+Pj4+IFRoZXJlIGFyZSBzb21lIHNwZWNpYWxzIGxpa2UgYXJyb3cga2V5cyBv
ciBlc2NhcGUuCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gRXNjYXBlIGlzIHRyYW5zbGF0ZWQgYnkg
XlsKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IChieSB0aGUg
d2F5IG1hbnkKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBzaG9ydGN1dHMgYXJlIHNpbWlsYXIgdG8K
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBvdGhlciBncmFwaGljYWwgZmlsZQo+Pj4+Pj4+Pj4+Pj4+
Pj4+Pj4+Pj4+IG1hbmFnZXJzIEJVVCBzaGlmdCArCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gYXJy
b3cgZm9yIG1hcmsgZmlsZXMgaXMKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBkaWZmZXJlbnQgYXMg
aSBjb3VsZCBub3QKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBmaWd1cmUgaG93IHRvIHJlYWQgdGhp
cwo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGZyb20gYW4gZXNjYXBlIHNlcXVlbmNlLAo+Pj4+Pj4+
Pj4+Pj4+Pj4+Pj4+Pj4+IGJlY2F1c2UgdGhlcmUgaXMgbm8KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+
PiB1cHBlcmNhc2UgYXJyb3cgKnNtaWxlKikKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+
Pj4+Pj4+Pj4+Pj4+Pj4+IERldmVsb3BtZW50IHdhcwo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHNw
b25zb3JlZCBieSBGMTIzCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gcHJvamVjdC4gVG9kYXkga25v
d24gYXMKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBzdG9ybXV4LiBTYWRseSBpIGRpZCBub3QKPj4+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiB3aXJlIGEgbG90IG9mCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4g
ZG9jdW1lbnRhdGlvbiBidXQgeW91Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gY2FuIGFzayBtZSBl
dmVyeXRoaW5nCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4geW91IHdhbnQgdG8ga25vdyA6KS4KPj4+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IENoZWVycyBjaHJ5cwo+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBBbSAwOC4wNC4y
MDIyIHVtCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiAxODo0MSBzY2hyaWViCj4+Pj4+Pj4+Pj4+
Pj4+Pj4+Pj4+Pj4+PiBMaW51eCBmb3IgYmxpbmQKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGdl
bmVyYWwKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGRpc2N1c3Npb24KPj4+Pj4+Pj4+Pj4+Pj4+
Pj4+Pj4+Pj4+IDxibGludXgtbGlzdEByZWRoYXQuY29tPjoKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+
Pj4g77u/U28gSSBnYXZlIGl0IGEgc2hvdAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBhbmQgaXQg
ZmVlbHMgbG9naWNhbAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBhbmQgd2VsbCBsYWlkIG91dCwK
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gZm9yIHRoZSBtb3N0Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+
Pj4+IHBhcnQKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4g
QlV0IEknbSBzdHJ1Z2dsaW5nCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IG9uIGEgZmV3IHRoaW5n
cy4gSQo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBoYXZlIGl0IGdvaW5nIGFuZAo+Pj4+Pj4+Pj4+
Pj4+Pj4+Pj4+Pj4+PiB3YW50IHRvIHVuemlwIGFuCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGFy
Y2hpdmUgZnJvbSB3aXRoaW4KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gaXQuIEluIE5OTiBJIGNh
bgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBqdXN0IGRvIHRoYXQgYW5kCj4+Pj4+Pj4+Pj4+Pj4+
Pj4+Pj4+Pj4+IHdvcmsgd2l0aCBhdG9vbC4gSQo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBjYW4n
dCBzZWVtIHRvIGZpbmQKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gdGhlIGtleXMgdG8gc3RhcnQK
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gZXh0cmFjdGluZyBhbgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+
Pj4+PiBhcmNoaXZlIG9yIGhvdwo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBEcmFnb25mbSBoYW5k
bGVzCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHRoYXQgYXQgYWxsLCBJdmUKPj4+Pj4+Pj4+Pj4+
Pj4+Pj4+Pj4+Pj4gb25seSBmb3VuZCB1bmV4dHJhY3QKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4g
d2l0aCBeKFUgaW4gdGhlCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGNvbmZpZywgd2hpY2ggSSd2
ZQo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBubyBjbHVlIHdoYXQgaXQKPj4+Pj4+Pj4+Pj4+Pj4+
Pj4+Pj4+Pj4gdHJhbnNsYXRlcyB0byBpbgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiB0ZXJtcyBv
ZiBhY3R1YWwga2V5cwo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBhc2lkZSBmcm9tIGN0cmwgYW5k
IFUuIEl0J3MgdGhlICggSSdtIHN0dW1wZWQgb24KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4KPj4+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gU2VlIG15IG1haW4gZ3JpcGUKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+
Pj4+Pj4gd2l0aCBOTk4gaXMgaWYgSSB1c2UKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gaXQgaW4g
YSB0ZXJtaW5hbCBJCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGhhdmUgdG8gaGl0IE8sCj4+Pj4+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHczbSBhbmQgYyB0byBvcGVuIGFuCj4+Pj4+Pj4+Pj4+Pj4+Pj4+
Pj4+Pj4+IGh0bWwgZG9jIGluIHczbSBlbHNlCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGl0IGxv
YWRzIHVwIGluCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IEZpcmVmb3guIE5vdwo+Pj4+Pj4+Pj4+
Pj4+Pj4+Pj4+Pj4+PiBncmFudGVkIEkndmUgbm90Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHRy
aWVkIGl0IG9uIGEgcHVyZQo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBUVFkgYnV0Li4ub24gYQo+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiB0ZXJtaW5hbCwgeGRnLW9wZW4KPj4+Pj4+Pj4+Pj4+Pj4+
Pj4+Pj4+Pj4gb3ZlcnJpZGVzIGJyb3dzZXIgYmVpbmcgc2V0IGFzIGFuIGVudmlyb25tZW50IAo+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiB2YXJpYWJsZQo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pgo+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xp
c3RpbmZvL2JsaW51eC1saXN0IAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+
Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+Pj4+
Pj4+Pj4+Pj4+Pj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+
Pj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QgCj4+Pj4+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IEJsaW51eC1saXN0QHJl
ZGhhdC5jb20KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QgCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pgo+Pj4+
Pj4+Pj4+Pj4+Pj4+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+Pj4+Pj4+Pj4+Pj4+
Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0IAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+Pj4+Pj4+Pj4+Pj4+
PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+IEJsaW51eC1saXN0
QHJlZGhhdC5jb20KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pj4+Pj4+Pj4+Pj4+Pj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4+Pj4+Pj4+Pj4+Pj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+IEJsaW51eC1saXN0QHJl
ZGhhdC5jb20KPj4+Pj4+Pj4+Pj4+Pj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+Pj4+Pj4+Pj4+Pj4+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+Pj4+Pj4+Pj4+Pj4gQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+Pj4+Pj4+Pj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQo+Pj4+Pj4+Pj4+Pj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3QKPj4+Pj4+Pj4+Pj4+Pj4+IC0tIAo+Pj4+Pj4+Pj4+Pj4+Pj4gR29v
ZCBwZW9wbGUgZG8gbm90IG5lZWQgbGF3cyB0byB0ZWxsIHRoZW0gdG8gYWN0Cj4+Pj4+Pj4+Pj4+
Pj4+PiByZXNwb25zaWJseSwgd2hpbGUgYmFkIHBlb3BsZSB3aWxsIGZpbmQgYSB3YXkgYXJvdW5k
Cj4+Pj4+Pj4+Pj4+Pj4+PiB0aGUgbGF3cy4KPj4+Pj4+Pj4+Pj4+Pj4+IC0gUGxhdG8gKDQyNy0z
NDcgQi5DLikKPj4+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+PiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+Pj4+Pj4+Pj4+Pj4gQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0Cj4+Pj4+Pj4+Pj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+
Pj4+Pj4+Pj4+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0Cj4+Pj4+Pj4+Pj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4+Pj4+Pj4+Pj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlz
dAo+Pj4+Pj4+Pj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+Pj4+Pj4+Pj4+IGh0
dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+
Pj4+Pj4+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+Pj4+Pj4+Pj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+Pj4+Pj4+Pj4+IEJs
aW51eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4+Pj4+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+Pj4+Pj4+PiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+Pj4+Pj4+Pj4gQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+Pj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+
Pj4+Pj4+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2Js
aW51eC1saXN0Cj4+Pj4+Pj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4+Pj4+Pj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+Pj4+
Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+Pj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pj4+Pj4+PiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+Pj4+Pj4+IEJsaW51
eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+Pj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+
Pj4+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0Cj4+Pj4+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+Pj4+Pj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+Pj4+PiBCbGlu
dXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+Pj4+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcg
bGlzdAo+Pj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+Pj4+IGh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pj4+PiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+Pj4+IEJsaW51
eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4+
PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0
Cj4+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
Pj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQu
Y29tCj4+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2Js
aW51eC1saXN0Cj4+Pj4+Cj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+PiBCbGludXgt
bGlzdEByZWRoYXQuY29tCj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pgo+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4g
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Cj4+PiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+
PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGlu
dXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QKPgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlz
dEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0
dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

