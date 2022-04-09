Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0826B4FA77C
	for <lists+blinux-list@lfdr.de>; Sat,  9 Apr 2022 14:09:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649506182;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tju6R/8xGWiHk7QjgOZzCJirRb/4qHKRb/LVBEW12x4=;
	b=OUJJU9InRrn/H0eXKuMrJ7WPyLX1r2oWUvexErP+B49DvWfbpo/Unq/ZH7colA53Zo5Lsa
	9IokWdlB85e5A02I4780cRoiRSh81dzKsr61Sx5L2mE6lVRTW2Rj4NbmDqXGc0qchrDYE2
	o3ZpNhK1YmW3v8fx9AR55x8mqOe5kLQ=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-137-U5Ahi-eMOjGVmksWsPkMCQ-1; Sat, 09 Apr 2022 08:09:40 -0400
X-MC-Unique: U5Ahi-eMOjGVmksWsPkMCQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4BAFF800B28;
	Sat,  9 Apr 2022 12:09:39 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 14AE940CF8E8;
	Sat,  9 Apr 2022 12:09:39 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 7804D1940379;
	Sat,  9 Apr 2022 12:09:38 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 9 Apr 2022 14:09:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: Dragonfm questions/NNN query
To: blinux-list@redhat.com
References: <mailman.7614.1649483669.111206.blinux-list@redhat.com>
 <mailman.7510.1649490124.111203.blinux-list@redhat.com>
 <mailman.7495.1649493025.111209.blinux-list@redhat.com>
 <mailman.7414.1649495618.111207.blinux-list@redhat.com>
 <mailman.7295.1649499971.111205.blinux-list@redhat.com>
 <mailman.7621.1649500471.111206.blinux-list@redhat.com>
 <mailman.7521.1649502333.111203.blinux-list@redhat.com>
 <mailman.7419.1649503102.111207.blinux-list@redhat.com>
 <mailman.7298.1649504160.111205.blinux-list@redhat.com>
 <mailman.7522.1649505602.111208.blinux-list@redhat.com>
In-Reply-To: <mailman.7522.1649505602.111208.blinux-list@redhat.com>
Message-ID: <mailman.7301.1649506177.111205.blinux-list@redhat.com>
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
Content-Language: de-DE
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SG93ZHksCgppdCBzaG91bGQgYmUgZml4ZWQgbXkgZnJpZW5kLiBTb3JyeSBmb3IgdGhhdCBeXi4K
CgpjaGVlcnMgY2hyeXMKCgpBbSAwOS4wNC4yMiB1bSAxMzo1OSBzY2hyaWViIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb246Cj4gVGhlIHNpbWxpbmsgcG9pbnRzIHRvIHlvdXIgaG9t
ZSBkaXJlY3RvcnkgYW5kIHNob3dzIHVwIGFzIGEgYnJva2VuIHNpbWxpbmsgaWYgSSBjaGVjay4g
SXQncyBzaG93biB1cCBhcyBhIHN5bWJvbGljIGxpbmssIGJyb2tlbiwgcG9pbnRpbmcgdG8gL2hv
bWUvY2hyeXMvZHJhZ29uZm0vc3JjLi4udGhlIC5weSBzY3JpcHQgdGhhdCBzaG91bGQgYmUgdGhl
cmUgdGhlcmUncyBhIHNpbWxpbmsgaW5zdGVhZC4KPgo+IE9uU2F0LCBBcHIgMDksIDIwMjIgYXQg
MDE6MzU6NDlQTSArMDIwMCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90
ZToKPj4gSG93ZHksCj4+Cj4+IGkgY2FudCByZXByb2R1Y2UgdGhpcyBoZXJlLgo+PiBJIGp1c3Qg
ZGlkIGEgbG9vayBhdCBnaXQsIGxvb2tzIGxpa2UgYWxsIGZpbGVzIGFyZSBwdXNoZWQgY29ycmVj
dGx5Lgo+Pgo+PiBtYXliZSBhIGNvbGxpc2lvbiB3aXRoIGFuIHdvcmsgaW4gcHJvZ3Jlc3MgY29t
bWl0LCB3cm9uZyBicmFuY2ggb3IgcHl0aG9uCj4+IGNhY2hlPwo+Pgo+PiBpIGd1ZXNzIGl0IG11
c3QgYmUgYSBsb2NhbCBpc3N1ZSwgc2V0dXAucHkgYW5kIFBLR0JVSUxEIHdvcmsgYXMgZXhwZWN0
ZWQKPj4gaGVyZS4KPj4KPj4gY2hlZXJzIGNocnlzCj4+Cj4+IEFtIDA5LjA0LjIyIHVtIDEzOjE4
IHNjaHJpZWIgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbjoKPj4+IE5vdCBzdXJl
IGlmIHRoYXQgYnJva2UgYnV0IG9uIG15IGVuZCB0aGF0J3MgdGhyb3dpbmcgdXAgYSBubyBzdWNo
IGZpbGUgZm9yIHRoZSBvcGVuIHNoZWxsIHdpdGguLi4gLnB5IG9uZSB3aGVuIEkgZG8gc3VkbyAu
L3NldHVwLnB5IHdpdGggYSBmcmVzaCBpbnN0YWxsIGFuZCBkb2luZyBpbiB0aGUgbWFudWFsIHdh
eS4gTm90IGJhY2sgb24gbXkgQXJjaCBib3ggcmlnaHQgbm93IHNvIGNhbid0IHRlc3QgdGhlIHBr
Z2J1aWxkIHRob3VnaC4uLi5idXQgdG8gcmVwbGljYXRlIGNsb25lIHRoZSBsYXRlc3QgdXJsIGFu
ZCBkbyBzdWRvIC4vc2V0dXAucHkgYW5kIHdhdGNoIGZvciB0aGUgdW5hYmxlIHRvIGNvcHkgZXJy
b3IKPj4+Cj4+PiBPbiBTYXQsIEFwciAwOSwgMjAyMiBhdCAwMTowNToxOFBNICswMjAwLCBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4+IEhvd2R5LAo+Pj4+Cj4+
Pj4gaSBqdXN0IGFkZCBhbiAib3BlbiBlbnRyeSB3aXRoIHNoZWxsIiBhY3Rpb24uCj4+Pj4gY3Vy
cmVudGx5IGFzc2lnbmVkIHRvIGN0cmwgKyBvLgo+Pj4+IHdoZW4geW91IHNlbGVjdCBhIGZpbGUs
IHByZXNzIGN0cmwgKyBvIGFuIGlucHV0IGJveCBhcHBlYXJzLiB0aGVyZSBpcyBhCj4+Pj4gZGVm
YXVsdCB2YWx1ZSAoY29uZmlndXJlYWJsZSBpbiBzZXR0aW5ncy5jb25mIHNlY3Rpb24gZm9sZGVy
IGtleQo+Pj4+IG9wZW5XaXRoU2hlbGxJbml0VmFsdWUpLiBwcmVzc2luZyBlbnRlciBleGVjdXRl
cyB0aGUgY29tbWFuZCB0aGVuLiB7MH0gaXMKPj4+PiB0aGUgcGxhY2Vob2xkZXIgZm9yIHRoZSBj
dXJyZW50IHNlbGVjdGVkIGZpbGUuCj4+Pj4KPj4+PiBkbyB5b3Ugd2FudAo+Pj4+IGN0cmwgKyBv
IGZvciBvcGVuCj4+Pj4gY3RybCArIHcgZm9yIG9wZW4gd2l0aD8KPj4+Pgo+Pj4+IHNob3VsZCBp
IHN3YXAgdGhlbSBvciBrZWVwIGl0IGFzIGl0IGlzPwo+Pj4+Cj4+Pj4gY2hlZXJzIGNocnlzCj4+
Pj4KPj4+PiBBbSAwOS4wNC4yMiB1bSAxMjozNCBzY2hyaWViIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb246Cj4+Pj4+IEhvd2R5LAo+Pj4+Pgo+Pj4+PiBpIGp1c3QgcHJvdmlkZWQg
YW4gUEtHQlVJTEQgZm9yIGRyYWdvbkZNIGFuZCB1cGxvYWRlZCBpdCB0byBBVVIuCj4+Pj4+IGl0
cyBjdXJyZW50bHkgYSBnaXQgcGFja2FnZSwgYXMgZHJhZ29uRk0gZG9lcyBub3QgeWV0IHNlZW4g
YW55IHN0YWJsZQo+Pj4+PiByZWxlYXNlIDspLgo+Pj4+PiBuYW1lOiBkcmFnb25mbS1naXQKPj4+
Pj4gdXJsOiBodHRwczovL2F1ci5hcmNobGludXgub3JnL3BhY2thZ2VzL2RyYWdvbmZtLWdpdAo+
Pj4+Pgo+Pj4+PiBpZiB5b3UgYWxyZWFkeSBpbnN0YWxsZWQgaXQgdXNpbmcgc2V0dXAucHkgeW91
IG1pZ2h0IG5lZWQgdG8gcmVtb3ZlCj4+Pj4+IGNvbmZsaWN0aW5nIGZpbGVzIGZyb20geW91ciBm
aWxlc3lzdGVtIGZpc3QuIChhcyBzZXR1cC5weSBkb2VzIGJ5cGFzcwo+Pj4+PiB0aGUgcGFja2Fn
ZSBtYW5hZ2VyKQo+Pj4+Pgo+Pj4+PiBpIGFkZGVkIGFuIHdpbGRjYXJkIG1pbWUgdHlwZS4gaWYg
dGhlcmUgaXMgbm8gc3BlY2lmaWMgZW50cnkgaW4gdGhlIG1pbWUKPj4+Pj4gbGlzdCwgdGhlIHhk
Zy1vcGVuIHBvcHMgdXAgbm93LiB0aGlzIG1pZ2h0IGJlIG1vcmUgaGVscGZ1bC4KPj4+Pj4gd2Vs
bCwgaSB3aWxsIGltcGxlbWVudCB0aGUgb3BlbiB3aXRoIGZvciB5b3UuIGdpdmUgbWUgYSBzZWNv
bmQuCj4+Pj4+IGkgd2lsbCBhc3NpZ24gaXQgdG8gY3RybCArIG8gYW5kIG1vdmUgdGhlIG9wZW4g
YWN0aW9uIHRvIGN0cmwgKyBtLgo+Pj4+Pgo+Pj4+PiBjaGVlcnMgY2hyeXMKPj4+Pj4KPj4+Pj4g
QW0gMDkuMDQuMjIgdW0gMTI6MjUgc2NocmllYiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uOgo+Pj4+Pj4gU3VyZSBJIGNhbiB0ZXN0IHRoZSBwa2didWlsZCBvbmNlIEknbSBiYWNr
IG9uIG15IEFyY2ggYm94Cj4+Pj4+Pgo+Pj4+Pj4gQW5kIHRoYXQgaW5wdXQgYm94IHdvcmtzIGZp
bmUuIEknbGwgc3VnZ2VzdCBDdHJsK08gYXMgdGhlIHNob3J0Y3V0IGZvcgo+Pj4+Pj4gaXQgc28g
eW91IGdvdCBFbnRlci9DdHJsK00gdG8gb3BlbiAobyBtYXliZSBtb3ZlIG9wZW4gd2l0aCB0byBj
dHJsK00gYW5kCj4+Pj4+PiBzZWUgaG93IHRoYXQgd29ya3M/KSwgYW5kIGEgY3RybCtPIGZvciBv
cGVuIHdpdGg/Cj4+Pj4+Pgo+Pj4+Pj4gQUFoIEkgZGlkbnQga25vdyBhYm91dCBqdXN0IGV4aXRp
bmcgdGhlIHNoZWxsLiBJIGFzc3VtZWQgdGhhdCdkIGNsb3NlCj4+Pj4+PiB0aGUgdGFiLiBNeSBm
aXJzdCB0aG91Z2h0IHdhcyBhbHJpZ2h0LCBmZyBkcmFnb25mbSB0byBnZXQgYmFjayB0byBpdAo+
Pj4+Pj4KPj4+Pj4+IE9uIFNhdCwgQXByIDA5LCAyMDIyIGF0IDExOjEzOjI1QU0gKzAyMDAsIExp
bnV4IGZvciBibGluZCBnZW5lcmFsCj4+Pj4+PiBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4+Pj4+IEhv
d2R5LAo+Pj4+Pj4+Cj4+Pj4+Pj4gLy8gWWVzIHRvIHB1dHRpbmcgaXQgaW4gdGhlIEFVUiBhbmQg
eWVzIGZvciB0aGUgZW52IHN0dWZmLgo+Pj4+Pj4+IE9LIGxldCBtZcKgIGNyZWF0ZSBhIFBLR0JV
SUxEIGZvciBkcmFnb25mbS1naXQKPj4+Pj4+Pgo+Pj4+Pj4+IC8vIEknbSBwb2tpbmcgYXQgdGhl
IGNvbmZpZyB0cnlpbmcgdG8gcmVwbGljYXRlIE5OTidzIG9wZW4gd2l0aCBhbmQgbm90Cj4+Pj4+
Pj4gLy8gaGF2aW5nIG11Y2ggbHVjay4gSXMgdGhhdCBqdXN0IGEgY2FzZSBvZiByZW1lbWJlcmlu
ZyB0byBkcm9wCj4+Pj4+Pj4gdG8gYSBzaGVsbAo+Pj4+Pj4+IC8vIGFuZCBkb2luZyB3aGF0IEkg
bmVlZD8KPj4+Pj4+PiBob3cgZG9lcyB0aGlzIGxvb2sgbGlrZT8ganVzdCBhIGlucHV0IGRpYWxv
ZyB0byBlbnRlciBhbnkKPj4+Pj4+PiBjb21tYW5kIHdpdGggdGhlCj4+Pj4+Pj4gY3VycmVudCBz
ZWxlY3RlZCBlbGVtZW50IGFzIHBhcmFtZXRlcj8KPj4+Pj4+Pgo+Pj4+Pj4+Cj4+Pj4+Pj4gLy8g
T24gdGhhdCBub3RlLi4uaXMgdGhlcmUgYSB3YXkgb25jZSBJIGhpdCBGNCwgdG8gZ2V0IGJhY2sg
dG8gZHJhZ29uZm0KPj4+Pj4+PiAvLyBlYXNpbHkgd2l0aG91dCByZWxhdW5jaGluZyBpdCBmcm9t
IHRoZSBzaGVsbD8KPj4+Pj4+PiB3ZWxsLCBqdXN0IGV4aXQgdGhlIHNoZWxsICh0eXBlICJleGl0
IiksIHlvdSB3aWxsIGJlIGJhY2sgaW4KPj4+Pj4+PiBkcmFnb25mbSB0aGVuCj4+Pj4+Pj4gOiku
Cj4+Pj4+Pj4KPj4+Pj4+PiBjaGVlcnMgY2hyeXMKPj4+Pj4+Pgo+Pj4+Pj4+IEFtIDA5LjA0LjIy
IHVtIDEwOjMwIHNjaHJpZWIgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbjoKPj4+
Pj4+Pj4gWWVzIHRvIHB1dHRpbmcgaXQgaW4gdGhlIEFVUiBhbmQgeWVzIGZvciB0aGUgZW52IHN0
dWZmLgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBJJ20gcG9raW5nIGF0IHRoZSBjb25maWcgdHJ5aW5nIHRv
IHJlcGxpY2F0ZSBOTk4ncyBvcGVuIHdpdGggYW5kIG5vdAo+Pj4+Pj4+PiBoYXZpbmcgbXVjaCBs
dWNrLiBJcyB0aGF0IGp1c3QgYSBjYXNlIG9mIHJlbWVtYmVyaW5nIHRvIGRyb3AKPj4+Pj4+Pj4g
dG8gYSBzaGVsbAo+Pj4+Pj4+PiBhbmQgZG9pbmcgd2hhdCBJIG5lZWQ/Cj4+Pj4+Pj4+Cj4+Pj4+
Pj4+IE9uIHRoYXQgbm90ZS4uLmlzIHRoZXJlIGEgd2F5IG9uY2UgSSBoaXQgRjQsIHRvIGdldCBi
YWNrIHRvIGRyYWdvbmZtCj4+Pj4+Pj4+IGVhc2lseSB3aXRob3V0IHJlbGF1bmNoaW5nIGl0IGZy
b20gdGhlIHNoZWxsPwo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBPbiBTYXQsIEFwciAwOSwgMjAyMiBhdCAw
OTo0MTo0OUFNICswMjAwLCBMaW51eCBmb3IgYmxpbmQKPj4+Pj4+Pj4gZ2VuZXJhbCBkaXNjdXNz
aW9uIHdyb3RlOgo+Pj4+Pj4+Pj4gSG93ZHksCj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+IO+7v0lzIERy
YWdvbkZNIGluIHRoZSBBcmNoIHJlcG8/Cj4+Pj4+Pj4+PiBDdXJyZW50bHkgaXRzIG5vdC4gSWYg
eW91IGxpa2UgaXQsIGkgY2FuIHB1dCBpdCBpbnRvIEFVUi4KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBD
aGVlcnMgY2hyeXMKPj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4gQW0gMDkuMDQuMjAyMiB1bSAwNzo1NCBz
Y2hyaWViIExpbnV4IGZvciBibGluZAo+Pj4+Pj4+Pj4+IGdlbmVyYWwgZGlzY3Vzc2lvbiA8Ymxp
bnV4LWxpc3RAcmVkaGF0LmNvbT46Cj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+PiDvu79JcyBEcmFnb25G
TSBpbiB0aGUgQXJjaCByZXBvPyBBbSB0cnlpbmcgdG8gZ2V0IGl0Cj4+Pj4+Pj4+Pj4gd2l0aCB5
YXkgZnJvbSB0aGlzIHNpZGUuCj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+PiBPbiBT
YXQsIEFwciAwOSwgMjAyMiBhdCAwMjoyNjoxNUFNICswMjAwLCBMaW51eAo+Pj4+Pj4+Pj4+PiBm
b3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4+Pj4+Pj4+PiBIb3dkeSwKPj4+
Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4gT2sgdGhlbiBpIGtlZXAgdGhhdCBhbHQgKyB1Lgo+Pj4+Pj4+
Pj4+Pgo+Pj4+Pj4+Pj4+Pj4gVGhhdCBzZWVtcyB0byB3b3JrIGJldHRlciwgYnV0IGRvZXMgdGhl
Cj4+Pj4+Pj4+Pj4+PiBQYXl0cmlvbiBsaW5rIHlvdSBzZW50IGluIGFub3RoZXIgbWVzc2FnZQo+
Pj4+Pj4+Pj4+Pj4gaGF2ZSB0aGUgaW5mbyBvbiBjaGFuZ2luZyB0aGUgc2hvcnRjdXRzIGFzCj4+
Pj4+Pj4+Pj4+PiB3ZWxsPwo+Pj4+Pj4+Pj4+PiBXZWxsIGkgY2hhbmdlZCB0aGUgc2hvcnRjdXRz
IGluIG1hc3Rlci4gU28gdGhlcmUKPj4+Pj4+Pj4+Pj4gaXMgbm8gbmVlZCB0byBjaGFuZ2UgdGhl
bSBieSBvdGhlcnMgYW55bW9yZS4KPj4+Pj4+Pj4+Pj4gT3Igd2hhdCBpbmZvIHlvdSBtZWFuIGV4
YWN0bHk/Cj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+IFRoZXJlIGlzIG5vdyBhdCBsZWFzdCBhIGJh
c2ljIGRvY3VtZW50YXRpb24gOikuCj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+IENoZWVycyBjaHJ5
cwo+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+IEFtIDA5LjA0LjIwMjIgdW0gMDI6MTUgc2Nocmll
YiBMaW51eCBmb3IKPj4+Pj4+Pj4+Pj4+PiBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24KPj4+Pj4+
Pj4+Pj4+PiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT46Cj4+Pj4+Pj4+Pj4+PiDvu79Pa2F5IGlm
IGl0J3MganVzdCBhbHQrdSB0aGVuIHllcyBrZWVwIGl0Cj4+Pj4+Pj4+Pj4+PiB0aGF0IHdheS4g
VGhhdCBzZWVtcyB0byB3b3JrIGJldHRlciwgYnV0Cj4+Pj4+Pj4+Pj4+PiBkb2VzIHRoZSBQYXl0
cmlvbiBsaW5rIHlvdSBzZW50IGluIGFub3RoZXIKPj4+Pj4+Pj4+Pj4+IG1lc3NhZ2UgaGF2ZSB0
aGUgaW5mbyBvbiBjaGFuZ2luZyB0aGUKPj4+Pj4+Pj4+Pj4+IHNob3J0Y3V0cyBhcyB3ZWxsPwo+
Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+PiBPbiBGcmksIEFwciAwOCwgMjAyMiBhdCAxMToyODoz
MFBNCj4+Pj4+Pj4+Pj4+Pj4gKzAyMDAsIExpbnV4IGZvciBibGluZCBnZW5lcmFsCj4+Pj4+Pj4+
Pj4+Pj4gZGlzY3Vzc2lvbiB3cm90ZToKPj4+Pj4+Pj4+Pj4+PiBIb3dkeSwKPj4+Pj4+Pj4+Pj4+
Pgo+Pj4+Pj4+Pj4+Pj4+IGkgaW5zdGFsbGVkIE1hdGUgdGVybWluYWwgZm9yIHRlc3RpbmcKPj4+
Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+IC8vIEN0cmwrRCBmb3IgZGV0YWlscyBpbnN0ZWVhZCBv
ZiBGMTAKPj4+Pj4+Pj4+Pj4+PiBvayB0aGlzIGlzIGNoYW5nZWQuCj4+Pj4+Pj4+Pj4+Pj4KPj4+
Pj4+Pj4+Pj4+PiBhYm91dCBeW3UgaSB3YXMgd3JvbmcuIGl0cyBqdXN0IGFsdCArIHUKPj4+Pj4+
Pj4+Pj4+PiBzbyBhIHNpbmdsZSBeIGlzIEN0cmwKPj4+Pj4+Pj4+Pj4+PiB0aGUgc2VxdWVuY2Ug
XlsgaXMgYWx0IGlmIGl0IGlzIGZvbGxvd2VkCj4+Pj4+Pj4+Pj4+Pj4gYnkgYW4gbGV0dGVyLiBp
ZiBub3QsIGl0cyBlc2NhcGUKPj4+Pj4+Pj4+Pj4+PiBjdHJsICsgYWx0ICsgeCB3b3VsZCBiZSBe
W15DCj4+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+PiBiYWNrIHRvIEFsdCArIHUsIHRoaXMgd29y
a2VkIGZvciBtZSwKPj4+Pj4+Pj4+Pj4+PiBzaG91bGQgaSBjaGFuZ2UgdGhlIHNob3J0Y3V0IGlu
IGFueQo+Pj4+Pj4+Pj4+Pj4+IHdheT8KPj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+IC8vIEkn
bSB0cnlpbmcgdG8gcmVwbGFjZSB1bnppcCBhbmQgdGFyIHdpdGggYXRvb2wKPj4+Pj4+Pj4+Pj4+
PiBpbiBzZWN0aW9uIFttaW1lXSB5b3Ugc2VlIGhvdyB0byBvcGVuIGFuIGZpbGUuCj4+Pj4+Pj4+
Pj4+Pj4gaW4gc2VjdGlvbiBbY29tcHJlc3NdIGFuZCBbZGVjb21wcmVzc10KPj4+Pj4+Pj4+Pj4+
PiB5b3UgY2FuIGNvbmZpZ3VyZSB0aGUgZGUtL2NvbXByZXNzaW5nCj4+Pj4+Pj4+Pj4+Pj4gcHJv
Y2Vzcy4KPj4+Pj4+Pj4+Pj4+PiBpIGNoYW5nZWQgdGhpcyBmb3IgeW91Cj4+Pj4+Pj4+Pj4+Pj4K
Pj4+Pj4+Pj4+Pj4+PiBjb21wcmVzcyAodGhlIHdvcmQgY29tcHJlc3MgYmV2b3JlIHRoZQo+Pj4+
Pj4+Pj4+Pj4+IGVxdWFsIGlzIGp1c3QgdGhlIGxhYmxlIHNob3duIGluCj4+Pj4+Pj4+Pj4+Pj4g
Y29udGV4dCBtZW51KToKPj4+Pj4+Pj4+Pj4+PiAjIHswfSA9IFNvdXJjZTogbGlzdCBvZiBmaWxl
cyBzZXBhcmF0ZWQKPj4+Pj4+Pj4+Pj4+PiBieSBzcGFjZSB3aXRoIGFic29sdXQgZmlsZXBhdGgK
Pj4+Pj4+Pj4+Pj4+PiAjIHsxfSA9IERlc3RpbmF0aW9uOsKgIGFyY2hpdmUgbmFtZQo+Pj4+Pj4+
Pj4+Pj4+IGNvbXByZXNzPWFwYWNrIC1xIHsxfSB7MH0KPj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+
Pj4+Cj4+Pj4+Pj4+Pj4+Pj4gZGVjb21wcmVzcyAoZm9yIHppcGZpbGVzLCB5b3UgY2FuIGp1c3QK
Pj4+Pj4+Pj4+Pj4+PiBjb3B5IHRoYXQgZm9yIGFueSBvdGhlciBmb3JtYXQKPj4+Pj4+Pj4+Pj4+
PiBzdXBwb3J0ZWQgYnkgYXRvb2wgYW5kIGNoYW5nZSB0aGUKPj4+Pj4+Pj4+Pj4+PiBhcHBsaWNh
dGlvbi96aXAgdG8gd2hhdGV2ZXIgbWltZXR5cGUgeW91Cj4+Pj4+Pj4+Pj4+Pj4gd2FudCB0byB1
bnppcCk6Cj4+Pj4+Pj4+Pj4+Pj4gIyB7MH0gPSBTb3VyY2U6IGZpbGUgdG8gZGVjb21wcmVzcwo+
Pj4+Pj4+Pj4+Pj4+ICMgezF9ID0gRGVzdGluYXRpb246IGZvbGRlciB3aXRoIGFyY2hpdmUgY29u
dGVudAo+Pj4+Pj4+Pj4+Pj4+IGFwcGxpY2F0aW9uL3ppcD1hdG9vbCAtZiAtcSAtLWV4dHJhY3Qt
dG89ezF9IHswfQo+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4gaSBqdXN0IHB1c2hlZC4KPj4+
Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+IGNoZWVycyBjaHJ5cwo+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+
Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+Pj4gQW0gMDguMDQuMjIgdW0gMjI6MTEgc2NocmllYiBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uOgo+Pj4+Pj4+Pj4+Pj4+PiBTdXJlIHRoaW5n
LiBIZXJlJydzIHdoYXQgSSB3aGlwcGVkIHVwcCByZWFsIHF1aWNrCj4+Pj4+Pj4+Pj4+Pj4+Cj4+
Pj4+Pj4+Pj4+Pj4+IEN0cmwrRCBmb3IgZGV0YWlscyBpbnN0ZWVhZCBvZiBGMTAKPj4+Pj4+Pj4+
Pj4+Pj4KPj4+Pj4+Pj4+Pj4+Pj4gQ3RybCthbHQreCBmb3IgZXh0cmFjdCBpbnN0ZWFkIG9mCj4+
Pj4+Pj4+Pj4+Pj4+IHRybCthbHQrdSAod2hpY2ggZG9lc250IHNlZW0gdG8gd29yawo+Pj4+Pj4+
Pj4+Pj4+PiBvbiBNYXRlPykKPj4+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+Pj4gSSdtIHRyeWlu
ZyB0byByZXBsYWNlIHVuemlwIGFuZCB0YXIKPj4+Pj4+Pj4+Pj4+Pj4gd2l0aCBhdG9vbCwgaG93
IE5OTiBoYW5kbGVzIGl0IHNpbmNlCj4+Pj4+Pj4+Pj4+Pj4+IGl0J3MgYSBsb3QgbmljZXIgdG8g
aGF2ZSBvbmUgdG9vbAo+Pj4+Pj4+Pj4+Pj4+PiB0aGF0IGhhbmRsZXMgYSB0b24gb2YgZm9ybWF0
cwo+Pj4+Pj4+Pj4+Pj4+PiB3aXRob3V0Cj4+Pj4+Pj4+Pj4+Pj4+IGhhdmluZyB0byBodW50IGRv
d24gMTAgZGlmZmVycmVudCBwcm9ncmFtcwo+Pj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+PiBB
c2lkZSBmcm9tIHRoYXQsIG5vdCBtYWRlIGFueSBvdGhlcgo+Pj4+Pj4+Pj4+Pj4+PiBjaGFuZ2Vz
IHRvIHRoZSAuY29uZiBmaWxlIHRob3VnaC4KPj4+Pj4+Pj4+Pj4+Pj4gSXQncyBhIG5lYXQgbGl0
dGxlIHByb2dyYW0sIHRob3VnaAo+Pj4+Pj4+Pj4+Pj4+PiBqdXN0IGluIGNhc2UgSSBtaXNzZWQg
YW55LCBnbwo+Pj4+Pj4+Pj4+Pj4+PiB0aHJvdWdoCj4+Pj4+Pj4+Pj4+Pj4+IGFuZCB1c2UgRHJh
Z29uRk0gd2l0aCBhIHRlcm1pbmFsCj4+Pj4+Pj4+Pj4+Pj4+IGVtdWxhdG9yIGFuZCBzZWUgd2hh
dCB5b3UgY2FuIGNvbWUKPj4+Pj4+Pj4+Pj4+Pj4gdXAKPj4+Pj4+Pj4+Pj4+Pj4gd2l0aCBmb3Ig
c2hvcnRjdXRzPyBJJ20gb24gYSBsYXB0b3AKPj4+Pj4+Pj4+Pj4+Pj4gY3VycmVudGx5IHNvIHRo
YXQga2luZCBvZiBoaW5kZXJzCj4+Pj4+Pj4+Pj4+Pj4+IHdoYXQgSSBjYW4gZG8gc2hvcnRjdXRz
IHdpc2UgaG93ZXZlcgo+Pj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+PiBPbiBGcmksIEFwciAw
OCwgMjAyMiBhdCAxMDowMzoyN1BNCj4+Pj4+Pj4+Pj4+Pj4+ICswMjAwLCBMaW51eCBmb3IgYmxp
bmQgZ2VuZXJhbAo+Pj4+Pj4+Pj4+Pj4+PiBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4+Pj4+Pj4+Pj4+
Pj4gSG93ZHksCj4+Pj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+Pj4gV2VsbCwgRjEyMyB3YXMg
bW9zdGx5IFRUWSBvbmx5Lgo+Pj4+Pj4+Pj4+Pj4+Pj4gU28gdGhlIGJpbmRpbmdzIGFyZSBzZXQg
d2l0aAo+Pj4+Pj4+Pj4+Pj4+Pj4gdGhhdCBpbiBtaW5kIDopLiBUaGUgcHJvamVjdAo+Pj4+Pj4+
Pj4+Pj4+Pj4gd2FudGVkIHRvIG1vbWljIEdVSSBzaG9ydGN1dHMKPj4+Pj4+Pj4+Pj4+Pj4+IGZv
ciBtb3N0IHBhcnRzLgo+Pj4+Pj4+Pj4+Pj4+Pj4gVGhlIGNvbGxpZGluZyBzaG9ydGN1dHMgY2Fu
IGJlCj4+Pj4+Pj4+Pj4+Pj4+PiBjaGFuZ2VkIHZlcnkgZWFzeSBpbiBzZXR0aW5ncwo+Pj4+Pj4+
Pj4+Pj4+Pj4gZmlsZS4KPj4+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+PiBJZiB5b3UgaGFu
ZCBtZSBhIGxpc3Qgd2l0aAo+Pj4+Pj4+Pj4+Pj4+Pj4gc2hvcnRjdXRzIHlvdSB3YW50IHRvIGhh
dmUKPj4+Pj4+Pj4+Pj4+Pj4+IGNoYW5nZWQsIGkgY2hhbmdlIHRoZW0gZm9yIHlvdQo+Pj4+Pj4+
Pj4+Pj4+Pj4gcmlnaHQgaW4gbWFzdGVyLgo+Pj4+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+Pj4+
IEFzIEYxMjMgaXMgbm8gbW9yZSwgVFRZIGNvbXBhdC4KPj4+Pj4+Pj4+Pj4+Pj4+IGRvZXMgbm90
IG1hdHRlciB0aGF0IG11Y2gKPj4+Pj4+Pj4+Pj4+Pj4+IGFueW1vcmUgdG8gbWUgYW5kIHdlIGNh
biBpbXByb3ZlCj4+Pj4+Pj4+Pj4+Pj4+PiBpdCBpbiB0ZXJtaW5hbCBlbXVsYXRvcnMgKG1vc3QK
Pj4+Pj4+Pj4+Pj4+Pj4+IG9mIHRoZW0gaGF2ZSBtb3JlIGNhcGFiaWxpdGllcwo+Pj4+Pj4+Pj4+
Pj4+Pj4gdGhhbiBUVFkgaW4gYW55IHdheSwgZm9yIGV4YW1wbGUKPj4+Pj4+Pj4+Pj4+Pj4+IGtv
bnNvbGUgKCB0aGUgS0RFIHRlcm1pbmFsCj4+Pj4+Pj4+Pj4+Pj4+PiBlbXVsYXRvciBoYXMgc3Bl
Y2lhbCBlc2NhcGUKPj4+Pj4+Pj4+Pj4+Pj4+IHNlcXVlbmNlcyBmb3Igc2hpZnQgYXJyb3cpCj4+
Pj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+Pj4gQ2hlZXJzIGNocnlzCj4+Pj4+Pj4+Pj4+Pj4+
Pgo+Pj4+Pj4+Pj4+Pj4+Pj4+IEFtIDA4LjA0LjIwMjIgdW0gMjE6NTMKPj4+Pj4+Pj4+Pj4+Pj4+
PiBzY2hyaWViIExpbnV4IGZvciBibGluZAo+Pj4+Pj4+Pj4+Pj4+Pj4+IGdlbmVyYWwgZGlzY3Vz
c2lvbgo+Pj4+Pj4+Pj4+Pj4+Pj4+IDxibGludXgtbGlzdEByZWRoYXQuY29tPjoKPj4+Pj4+Pj4+
Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+Pj4+IO+7v1VuZm9ydHVuYXRlbHksIERyYWdvbkZNCj4+Pj4+
Pj4+Pj4+Pj4+Pj4gZG9lc24ndCB3b3JrIHdlbGwgb3V0IG9mIHRoZQo+Pj4+Pj4+Pj4+Pj4+Pj4+
IGJveCB3aXRoIGEgdGVybWluYWwKPj4+Pj4+Pj4+Pj4+Pj4+PiBlbXVsYXRvciwgbW9zdGx5IGRv
d24gdG8KPj4+Pj4+Pj4+Pj4+Pj4+PiBjb25mbGljdHMgd2l0aCBrZXlzIGxpa2UKPj4+Pj4+Pj4+
Pj4+Pj4+PiBGMTAuIFllcyBJIGNhbiByZWRlZmluZQo+Pj4+Pj4+Pj4+Pj4+Pj4+IHRoZW0sIGJ1
dCB0aGF0J3Mga2luZCBvZgo+Pj4+Pj4+Pj4+Pj4+Pj4+IHNvbWV0aGluZyBJbSBzbHdseSBzbG93
bHkKPj4+Pj4+Pj4+Pj4+Pj4+PiBwb2tpbmcgYXQuIEknbSB1bmFibGUgdG8gZ2V0Cj4+Pj4+Pj4+
Pj4+Pj4+Pj4gTWF0ZS10ZXJtaW5hbCB0byByZWNvZ25pemUgYQo+Pj4+Pj4+Pj4+Pj4+Pj4+IGN0
cmwrYWx0IHBhdGVybiBob3VnaAo+Pj4+Pj4+Pj4+Pj4+Pj4+IHdoZXJlYXMgYSBUVFkgd29ya3Mg
ZmluZSBzbywKPj4+Pj4+Pj4+Pj4+Pj4+PiB1bnN1cmUgaWYgeW91IG5lZWQgdG8gdGVzdAo+Pj4+
Pj4+Pj4+Pj4+Pj4+IERyYWdvbmZtIG9uIHRlcm1pbmFsCj4+Pj4+Pj4+Pj4+Pj4+Pj4gZW11bGF0
b3JzIHdpdGggYSBkZXNrdG9wPwo+Pj4+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4gS2lu
ZCBvZiBhIHNoYW1lIHNpbmNlIEkgbGlrZQo+Pj4+Pj4+Pj4+Pj4+Pj4+IGhvdyBlYXN5IERyYWdv
biBpcyB0byB1c2UgdnMKPj4+Pj4+Pj4+Pj4+Pj4+PiBzb21ldGhpbmcgbGlrZQo+Pj4+Pj4+Pj4+
Pj4+Pj4+IE1DIG9yIFJhbmdlciBvciBOTk4gKG15Cj4+Pj4+Pj4+Pj4+Pj4+Pj4gY3VycmVudCBm
YXZvcml0ZSBvbmUgdGhhdAo+Pj4+Pj4+Pj4+Pj4+Pj4+IGRvZXNuJ3QgaGF2ZSBrZXlib2FyZAo+
Pj4+Pj4+Pj4+Pj4+Pj4+IGNvbmZsaWN0cykgdGhvdWdoCj4+Pj4+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+
Pj4+Pj4+Pj4+Pj4gT24gRnJpLCBBcHIgMDgsIDIwMjIgYXQKPj4+Pj4+Pj4+Pj4+Pj4+Pj4gMDk6
MzY6MjhQTSArMDIwMCwgTGludXgKPj4+Pj4+Pj4+Pj4+Pj4+Pj4gZm9yIGJsaW5kIGdlbmVyYWwK
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gZGlzY3Vzc2lvbiB3cm90ZToKPj4+Pj4+Pj4+Pj4+Pj4+Pj4gSG93
ZHksCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+IFdlbGwgdGhlcmUgaXMgYSBj
b250ZXh0Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+IG1lbnXCoCAoIGRyYWdvbkZNIGNhbGxzCj4+Pj4+Pj4+
Pj4+Pj4+Pj4+IGl0IERldGFpbHMsIGJlY2F1c2UgaXQKPj4+Pj4+Pj4+Pj4+Pj4+Pj4gYWxzbyBz
aG93cyBmaWxlCj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHByb3BlcnRpZXMgbGlrZSBzaXplLAo+Pj4+Pj4+
Pj4+Pj4+Pj4+PiBtaW1lIGFuZCBhIGxpc3Qgb2YKPj4+Pj4+Pj4+Pj4+Pj4+Pj4gYXZhaWxhYmxl
IGFjdGlvbnMpIHdpdGgKPj4+Pj4+Pj4+Pj4+Pj4+Pj4gYWxsIGF2YWlsYWJsZSBvcHRpb25zIGJ5
Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHByZXNzaW5nIEYxMAo+Pj4+Pj4+Pj4+Pj4+Pj4+PiBTb21lIGFj
dGlvbnMgYXJlIG9ubHkKPj4+Pj4+Pj4+Pj4+Pj4+Pj4gYXZhaWxhYmxlIGZvciBnaXZlbiBtaW1l
Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHR5cGVzIGxpa2UgY29tcHJlc3MKPj4+Pj4+Pj4+Pj4+Pj4+Pj4g
Y3VycmVudCBvbmx5IGZvciB6aXAgYW5kCj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHRhciwgb3RoZXJzIGNv
dWxkIGJlCj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGFkZGFkIHZlcnkgZWFzeS4gQnkKPj4+Pj4+Pj4+Pj4+
Pj4+Pj4gZGVmYXVsdCBkcmFnb25mbSBkb2VzCj4+Pj4+Pj4+Pj4+Pj4+Pj4+IG5vdCB1c2UgYXRv
b2wgYnV0IHVuemlwCj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGNvbW1hbmQgZm9yIHppcCBmaWxlcwo+Pj4+
Pj4+Pj4+Pj4+Pj4+PiBhbmQgdGFyIG9mIGNvdXJzZSBmb3IKPj4+Pj4+Pj4+Pj4+Pj4+Pj4gdGFy
IHRob3NlIG5lZWQgdG8gYmUKPj4+Pj4+Pj4+Pj4+Pj4+Pj4gaW5zdGFsbGVkIG9yIGNvbmZ1cmVk
IHRvCj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHVzZSBzb21ldGhpbmcgZWxzZS7CoCAoSQo+Pj4+Pj4+Pj4+
Pj4+Pj4+PiBjYW4gZ2l2ZSB5b3UgYSBtb3JlCj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGRldGFpbGVkIGlu
Zm9ybWF0aW9uIGhvdwo+Pj4+Pj4+Pj4+Pj4+Pj4+PiB0byBjb25maWd1cmUgdGhvc2Ugc3R1ZmYK
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gaWYgeW91IGFyZSBpbnRlcmVzdGVkCj4+Pj4+Pj4+Pj4+Pj4+Pj4+
IGluKQo+Pj4+Pj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+Pj4+PiBEcmFnb25GTSByZWFkcyB0
aGUKPj4+Pj4+Pj4+Pj4+Pj4+Pj4gRXNjYXBlIHNlcXVlbmNlcyBmcm9tCj4+Pj4+Pj4+Pj4+Pj4+
Pj4+IHN0ZGluIHRvIGRldGVjdAo+Pj4+Pj4+Pj4+Pj4+Pj4+PiBzaG9ydGN1dHMgKGxpa2UgYWxt
b3N0Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGFueSBvdGhlciBDTEkKPj4+Pj4+Pj4+Pj4+Pj4+Pj4gYXBw
bGljYXRpb24pCj4+Pj4+Pj4+Pj4+Pj4+Pj4+IFNvbWUgaW1wb3J0YW50IGJhc2ljCj4+Pj4+Pj4+
Pj4+Pj4+Pj4+IHRyYW5zbGF0aW9uIGhlbHAgKHdlCj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHNob3VsZCBh
ZGQgdGhlIHNob3J0Y3V0cwo+Pj4+Pj4+Pj4+Pj4+Pj4+PiBhcyBjb21tZW50cyB0byB0aGUKPj4+
Pj4+Pj4+Pj4+Pj4+Pj4gc2V0dGluZ3MgZmlsZSBsb2wgKQo+Pj4+Pj4+Pj4+Pj4+Pj4+PiBeID0g
Q1RSTAo+Pj4+Pj4+Pj4+Pj4+Pj4+PiBbID0gQWx0Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+IFVwcGVyY2Fz
ZSBsZXR0ZXIgPSBzaGlmdCArIGxldHRlcgo+Pj4+Pj4+Pj4+Pj4+Pj4+PiBsb3dlcmNhc2UgbGV0
dGVyID0ganVzdCB0aGUgbGV0dGVyCj4+Pj4+Pj4+Pj4+Pj4+Pj4+IEFuIG90aGVyIGV4YW1wbGU6
Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+IF5bdSB0cmFuc2xhdGVzIGFzIGN0cmwgKyBhbHQgKyB1Cj4+Pj4+
Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+IFRoZXJlIGFyZSBzb21lIHNwZWNpYWxzIGxp
a2UgYXJyb3cga2V5cyBvciBlc2NhcGUuCj4+Pj4+Pj4+Pj4+Pj4+Pj4+IEVzY2FwZSBpcyB0cmFu
c2xhdGVkIGJ5IF5bCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+IChieSB0aGUg
d2F5IG1hbnkKPj4+Pj4+Pj4+Pj4+Pj4+Pj4gc2hvcnRjdXRzIGFyZSBzaW1pbGFyIHRvCj4+Pj4+
Pj4+Pj4+Pj4+Pj4+IG90aGVyIGdyYXBoaWNhbCBmaWxlCj4+Pj4+Pj4+Pj4+Pj4+Pj4+IG1hbmFn
ZXJzIEJVVCBzaGlmdCArCj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGFycm93IGZvciBtYXJrIGZpbGVzIGlz
Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGRpZmZlcmVudCBhcyBpIGNvdWxkIG5vdAo+Pj4+Pj4+Pj4+Pj4+
Pj4+PiBmaWd1cmUgaG93IHRvIHJlYWQgdGhpcwo+Pj4+Pj4+Pj4+Pj4+Pj4+PiBmcm9tIGFuIGVz
Y2FwZSBzZXF1ZW5jZSwKPj4+Pj4+Pj4+Pj4+Pj4+Pj4gYmVjYXVzZSB0aGVyZSBpcyBubwo+Pj4+
Pj4+Pj4+Pj4+Pj4+PiB1cHBlcmNhc2UgYXJyb3cgKnNtaWxlKikKPj4+Pj4+Pj4+Pj4+Pj4+Pj4K
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gRGV2ZWxvcG1lbnQgd2FzCj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHNwb25z
b3JlZCBieSBGMTIzCj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHByb2plY3QuIFRvZGF5IGtub3duIGFzCj4+
Pj4+Pj4+Pj4+Pj4+Pj4+IHN0b3JtdXguIFNhZGx5IGkgZGlkIG5vdAo+Pj4+Pj4+Pj4+Pj4+Pj4+
PiB3aXJlIGEgbG90IG9mCj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGRvY3VtZW50YXRpb24gYnV0IHlvdQo+
Pj4+Pj4+Pj4+Pj4+Pj4+PiBjYW4gYXNrIG1lIGV2ZXJ5dGhpbmcKPj4+Pj4+Pj4+Pj4+Pj4+Pj4g
eW91IHdhbnQgdG8ga25vdyA6KS4KPj4+Pj4+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+Pj4+Pj4g
Q2hlZXJzIGNocnlzCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gQW0gMDgu
MDQuMjAyMiB1bQo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IDE4OjQxIHNjaHJpZWIKPj4+Pj4+Pj4+Pj4+
Pj4+Pj4+PiBMaW51eCBmb3IgYmxpbmQKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBnZW5lcmFsCj4+Pj4+
Pj4+Pj4+Pj4+Pj4+Pj4gZGlzY3Vzc2lvbgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IDxibGludXgtbGlz
dEByZWRoYXQuY29tPjoKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+IO+7v1NvIEkgZ2F2ZSBpdCBhIHNob3QK
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGFuZCBpdCBmZWVscyBsb2dpY2FsCj4+Pj4+Pj4+Pj4+Pj4+Pj4+
PiBhbmQgd2VsbCBsYWlkIG91dCwKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGZvciB0aGUgbW9zdAo+Pj4+
Pj4+Pj4+Pj4+Pj4+Pj4gcGFydAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+
IEJVdCBJJ20gc3RydWdnbGluZwo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gb24gYSBmZXcgdGhpbmdzLiBJ
Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBoYXZlIGl0IGdvaW5nIGFuZAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4g
d2FudCB0byB1bnppcCBhbgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gYXJjaGl2ZSBmcm9tIHdpdGhpbgo+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gaXQuIEluIE5OTiBJIGNhbgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4ganVz
dCBkbyB0aGF0IGFuZAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gd29yayB3aXRoIGF0b29sLiBJCj4+Pj4+
Pj4+Pj4+Pj4+Pj4+PiBjYW4ndCBzZWVtIHRvIGZpbmQKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHRoZSBr
ZXlzIHRvIHN0YXJ0Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBleHRyYWN0aW5nIGFuCj4+Pj4+Pj4+Pj4+
Pj4+Pj4+PiBhcmNoaXZlIG9yIGhvdwo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gRHJhZ29uZm0gaGFuZGxl
cwo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gdGhhdCBhdCBhbGwsIEl2ZQo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4g
b25seSBmb3VuZCB1bmV4dHJhY3QKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHdpdGggXihVIGluIHRoZQo+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gY29uZmlnLCB3aGljaCBJJ3ZlCj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBu
byBjbHVlIHdoYXQgaXQKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHRyYW5zbGF0ZXMgdG8gaW4KPj4+Pj4+
Pj4+Pj4+Pj4+Pj4+IHRlcm1zIG9mIGFjdHVhbCBrZXlzCj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBhc2lk
ZSBmcm9tIGN0cmwgYW5kIFUuIEl0J3MgdGhlICggSSdtIHN0dW1wZWQgb24KPj4+Pj4+Pj4+Pj4+
Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBTZWUgbXkgbWFpbiBncmlwZQo+Pj4+Pj4+Pj4+Pj4+
Pj4+Pj4gd2l0aCBOTk4gaXMgaWYgSSB1c2UKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGl0IGluIGEgdGVy
bWluYWwgSQo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gaGF2ZSB0byBoaXQgTywKPj4+Pj4+Pj4+Pj4+Pj4+
Pj4+IHczbSBhbmQgYyB0byBvcGVuIGFuCj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBodG1sIGRvYyBpbiB3
M20gZWxzZQo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gaXQgbG9hZHMgdXAgaW4KPj4+Pj4+Pj4+Pj4+Pj4+
Pj4+IEZpcmVmb3guIE5vdwo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gZ3JhbnRlZCBJJ3ZlIG5vdAo+Pj4+
Pj4+Pj4+Pj4+Pj4+Pj4gdHJpZWQgaXQgb24gYSBwdXJlCj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBUVFkg
YnV0Li4ub24gYQo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gdGVybWluYWwsIHhkZy1vcGVuCj4+Pj4+Pj4+
Pj4+Pj4+Pj4+PiBvdmVycmlkZXMgYnJvd3NlciBiZWluZyBzZXQgYXMgYW4gZW52aXJvbm1lbnQg
dmFyaWFibGUKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBCbGludXgtbGlzdEBy
ZWRoYXQuY29tCj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+
Pj4+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
Pj4+Pj4+Pj4+Pj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4+Pj4+Pj4+Pj4+
Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+Pj4+Pj4+Pj4+Pj4+PiBodHRwczovL2xpc3Rt
YW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+Pj4+Pj4+Pj4+
Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4+
Pj4+Pj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4+Pj4+Pj4+Pj4+PiBCbGlu
dXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+Pj4+Pj4+Pj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhh
dC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+Pj4+Pj4+Pj4+Pj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4+Pj4+Pj4+Pj4+
IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+Pj4+Pj4+Pj4+Pj4gQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQo+Pj4+Pj4+Pj4+Pj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+Pj4+Pj4+Pj4+PiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+Pj4+Pj4+Pj4+PiBCbGludXgtbGlzdCBt
YWlsaW5nIGxpc3QKPj4+Pj4+Pj4+Pj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+Pj4+
Pj4+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0Cj4+Pj4+Pj4+Pj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPj4+Pj4+Pj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4+
Pj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+Pj4+Pj4+Pj4gaHR0cHM6Ly9saXN0
bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+Pj4+Pj4+Pj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4+Pj4+
Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+Pj4+Pj4+Pj4gQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQo+Pj4+Pj4+Pj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdAo+Pj4+Pj4+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+Pj4+Pj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKPj4+Pj4+Pj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+Pj4+Pj4+PiBodHRwczov
L2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+Pj4+
Pj4gLS0gCj4+Pj4+Pj4+Pj4gR29vZCBwZW9wbGUgZG8gbm90IG5lZWQgbGF3cyB0byB0ZWxsIHRo
ZW0gdG8gYWN0Cj4+Pj4+Pj4+Pj4gcmVzcG9uc2libHksIHdoaWxlIGJhZCBwZW9wbGUgd2lsbCBm
aW5kIGEgd2F5IGFyb3VuZAo+Pj4+Pj4+Pj4+IHRoZSBsYXdzLgo+Pj4+Pj4+Pj4+IC0gUGxhdG8g
KDQyNy0zNDcgQi5DLikKPj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+Pj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0Cj4+Pj4+Pj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+Pj4+Pj4+IGh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pj4+
Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+
Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4+Pj4+IEJsaW51eC1saXN0QHJlZGhh
dC5jb20KPj4+Pj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3QKPj4+Pj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPj4+Pj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+Pj4+
IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5j
b20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+Pj4+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0Cj4+Pj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+Pj4+IGh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pj4+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+PiBCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4+IGh0
dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+
Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+
Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlz
dAo+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+
Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+
Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3QKPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+
PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+
IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK
Pj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1h
bi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

