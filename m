Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 448934FA7AC
	for <lists+blinux-list@lfdr.de>; Sat,  9 Apr 2022 14:31:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649507466;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tQSfh5xNlwpWXFyOhpnN87Z29n1bJKCl62PVWHkL7NM=;
	b=IQW6wggEf7UROcN2kCi2QY3UpWQ72nC1AefEbdddERQ353gySUEO5ga3oM4sprGqEQPdr6
	BNhRi1jHDJwp+tsNNuL0rocGFCoURESoqgW8Cj3hHE19e3V1kZKRe9DjD9i71Nls4u21bV
	CFthvnDv3yAzqV9C0A5/56HOlu9jjv0=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-27-d2jGfaMvN3KV0Hk14glWEw-1; Sat, 09 Apr 2022 08:31:02 -0400
X-MC-Unique: d2jGfaMvN3KV0Hk14glWEw-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4839E3804537;
	Sat,  9 Apr 2022 12:31:01 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id B4CFE492D1D;
	Sat,  9 Apr 2022 12:31:00 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 410971940379;
	Sat,  9 Apr 2022 12:30:58 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 9 Apr 2022 14:30:48 +0200
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
 <mailman.7301.1649506177.111205.blinux-list@redhat.com>
 <mailman.7627.1649506669.111206.blinux-list@redhat.com>
In-Reply-To: <mailman.7627.1649506669.111206.blinux-list@redhat.com>
Message-ID: <mailman.7731.1649507457.111210.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: de-DE
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SG93ZHksCgpPayB0aGlzIHRpbWUgaXQgd2FzIGdpdHMgZmF1bHQuIGl0IGRpZG50IHJlYWxpemUg
dGhhdCBpIGNoYW5nZWQgdGhlIApzeW1saW5rIGZyb20gdGhlIGFic29sdXRlIHRvIGFuIHJlbGF0
aXZlIHBhdGguCnNvIGkgaGF0IHRvIHJlbW92ZSBjb21taXQgYW5kIHJlYWNyZWF0ZSBjb21taXQg
OikuCm5vdyBpdCB3b3JrcyBmb3IgcmVhbCA6KS4KCmNoZWVycyBjaHJ5cwoKQW0gMDkuMDQuMjIg
dW0gMTQ6MTcgc2NocmllYiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uOgo+IGht
bSBzdGlsbCBzb21lIGlzc3VlcywKPgo+IGxldCBtZSB0YWtlIGEgZGVlcGVyIGxvb2sKPgo+IEFt
IDA5LjA0LjIyIHVtIDE0OjA5IHNjaHJpZWIgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vz
c2lvbjoKPj4gSG93ZHksCj4+Cj4+IGl0IHNob3VsZCBiZSBmaXhlZCBteSBmcmllbmQuIFNvcnJ5
IGZvciB0aGF0IF5eLgo+Pgo+Pgo+PiBjaGVlcnMgY2hyeXMKPj4KPj4KPj4gQW0gMDkuMDQuMjIg
dW0gMTM6NTkgc2NocmllYiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uOgo+Pj4g
VGhlIHNpbWxpbmsgcG9pbnRzIHRvIHlvdXIgaG9tZSBkaXJlY3RvcnkgYW5kIHNob3dzIHVwIGFz
IGEgYnJva2VuIAo+Pj4gc2ltbGluayBpZiBJIGNoZWNrLiBJdCdzIHNob3duIHVwIGFzIGEgc3lt
Ym9saWMgbGluaywgYnJva2VuLCAKPj4+IHBvaW50aW5nIHRvIC9ob21lL2NocnlzL2RyYWdvbmZt
L3NyYy4uLnRoZSAucHkgc2NyaXB0IHRoYXQgc2hvdWxkIGJlIAo+Pj4gdGhlcmUgdGhlcmUncyBh
IHNpbWxpbmsgaW5zdGVhZC4KPj4+Cj4+PiBPblNhdCwgQXByIDA5LCAyMDIyIGF0IDAxOjM1OjQ5
UE0gKzAyMDAsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIAo+Pj4gZGlzY3Vzc2lvbiB3cm90ZToK
Pj4+PiBIb3dkeSwKPj4+Pgo+Pj4+IGkgY2FudCByZXByb2R1Y2UgdGhpcyBoZXJlLgo+Pj4+IEkg
anVzdCBkaWQgYSBsb29rIGF0IGdpdCwgbG9va3MgbGlrZSBhbGwgZmlsZXMgYXJlIHB1c2hlZCBj
b3JyZWN0bHkuCj4+Pj4KPj4+PiBtYXliZSBhIGNvbGxpc2lvbiB3aXRoIGFuIHdvcmsgaW4gcHJv
Z3Jlc3MgY29tbWl0LCB3cm9uZyBicmFuY2ggb3IgCj4+Pj4gcHl0aG9uCj4+Pj4gY2FjaGU/Cj4+
Pj4KPj4+PiBpIGd1ZXNzIGl0IG11c3QgYmUgYSBsb2NhbCBpc3N1ZSwgc2V0dXAucHkgYW5kIFBL
R0JVSUxEIHdvcmsgYXMgCj4+Pj4gZXhwZWN0ZWQKPj4+PiBoZXJlLgo+Pj4+Cj4+Pj4gY2hlZXJz
IGNocnlzCj4+Pj4KPj4+PiBBbSAwOS4wNC4yMiB1bSAxMzoxOCBzY2hyaWViIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb246Cj4+Pj4+IE5vdCBzdXJlIGlmIHRoYXQgYnJva2UgYnV0
IG9uIG15IGVuZCB0aGF0J3MgdGhyb3dpbmcgdXAgYSBubyBzdWNoIAo+Pj4+PiBmaWxlIGZvciB0
aGUgb3BlbiBzaGVsbCB3aXRoLi4uIC5weSBvbmUgd2hlbiBJIGRvIHN1ZG8gLi9zZXR1cC5weSAK
Pj4+Pj4gd2l0aCBhIGZyZXNoIGluc3RhbGwgYW5kIGRvaW5nIGluIHRoZSBtYW51YWwgd2F5LiBO
b3QgYmFjayBvbiBteSAKPj4+Pj4gQXJjaCBib3ggcmlnaHQgbm93IHNvIGNhbid0IHRlc3QgdGhl
IHBrZ2J1aWxkIHRob3VnaC4uLi5idXQgdG8gCj4+Pj4+IHJlcGxpY2F0ZSBjbG9uZSB0aGUgbGF0
ZXN0IHVybCBhbmQgZG8gc3VkbyAuL3NldHVwLnB5IGFuZCB3YXRjaCAKPj4+Pj4gZm9yIHRoZSB1
bmFibGUgdG8gY29weSBlcnJvcgo+Pj4+Pgo+Pj4+PiBPbiBTYXQsIEFwciAwOSwgMjAyMiBhdCAw
MTowNToxOFBNICswMjAwLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCAKPj4+Pj4gZGlzY3Vzc2lv
biB3cm90ZToKPj4+Pj4+IEhvd2R5LAo+Pj4+Pj4KPj4+Pj4+IGkganVzdCBhZGQgYW4gIm9wZW4g
ZW50cnkgd2l0aCBzaGVsbCIgYWN0aW9uLgo+Pj4+Pj4gY3VycmVudGx5IGFzc2lnbmVkIHRvIGN0
cmwgKyBvLgo+Pj4+Pj4gd2hlbiB5b3Ugc2VsZWN0IGEgZmlsZSwgcHJlc3MgY3RybCArIG8gYW4g
aW5wdXQgYm94IGFwcGVhcnMuIAo+Pj4+Pj4gdGhlcmUgaXMgYQo+Pj4+Pj4gZGVmYXVsdCB2YWx1
ZSAoY29uZmlndXJlYWJsZSBpbiBzZXR0aW5ncy5jb25mIHNlY3Rpb24gZm9sZGVyIGtleQo+Pj4+
Pj4gb3BlbldpdGhTaGVsbEluaXRWYWx1ZSkuIHByZXNzaW5nIGVudGVyIGV4ZWN1dGVzIHRoZSBj
b21tYW5kIAo+Pj4+Pj4gdGhlbi4gezB9IGlzCj4+Pj4+PiB0aGUgcGxhY2Vob2xkZXIgZm9yIHRo
ZSBjdXJyZW50IHNlbGVjdGVkIGZpbGUuCj4+Pj4+Pgo+Pj4+Pj4gZG8geW91IHdhbnQKPj4+Pj4+
IGN0cmwgKyBvIGZvciBvcGVuCj4+Pj4+PiBjdHJsICsgdyBmb3Igb3BlbiB3aXRoPwo+Pj4+Pj4K
Pj4+Pj4+IHNob3VsZCBpIHN3YXAgdGhlbSBvciBrZWVwIGl0IGFzIGl0IGlzPwo+Pj4+Pj4KPj4+
Pj4+IGNoZWVycyBjaHJ5cwo+Pj4+Pj4KPj4+Pj4+IEFtIDA5LjA0LjIyIHVtIDEyOjM0IHNjaHJp
ZWIgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbjoKPj4+Pj4+PiBIb3dkeSwKPj4+
Pj4+Pgo+Pj4+Pj4+IGkganVzdCBwcm92aWRlZCBhbiBQS0dCVUlMRCBmb3IgZHJhZ29uRk0gYW5k
IHVwbG9hZGVkIGl0IHRvIEFVUi4KPj4+Pj4+PiBpdHMgY3VycmVudGx5IGEgZ2l0IHBhY2thZ2Us
IGFzIGRyYWdvbkZNIGRvZXMgbm90IHlldCBzZWVuIGFueSAKPj4+Pj4+PiBzdGFibGUKPj4+Pj4+
PiByZWxlYXNlIDspLgo+Pj4+Pj4+IG5hbWU6IGRyYWdvbmZtLWdpdAo+Pj4+Pj4+IHVybDogaHR0
cHM6Ly9hdXIuYXJjaGxpbnV4Lm9yZy9wYWNrYWdlcy9kcmFnb25mbS1naXQKPj4+Pj4+Pgo+Pj4+
Pj4+IGlmIHlvdSBhbHJlYWR5IGluc3RhbGxlZCBpdCB1c2luZyBzZXR1cC5weSB5b3UgbWlnaHQg
bmVlZCB0byByZW1vdmUKPj4+Pj4+PiBjb25mbGljdGluZyBmaWxlcyBmcm9tIHlvdXIgZmlsZXN5
c3RlbSBmaXN0LiAoYXMgc2V0dXAucHkgZG9lcyAKPj4+Pj4+PiBieXBhc3MKPj4+Pj4+PiB0aGUg
cGFja2FnZSBtYW5hZ2VyKQo+Pj4+Pj4+Cj4+Pj4+Pj4gaSBhZGRlZCBhbiB3aWxkY2FyZCBtaW1l
IHR5cGUuIGlmIHRoZXJlIGlzIG5vIHNwZWNpZmljIGVudHJ5IGluIAo+Pj4+Pj4+IHRoZSBtaW1l
Cj4+Pj4+Pj4gbGlzdCwgdGhlIHhkZy1vcGVuIHBvcHMgdXAgbm93LiB0aGlzIG1pZ2h0IGJlIG1v
cmUgaGVscGZ1bC4KPj4+Pj4+PiB3ZWxsLCBpIHdpbGwgaW1wbGVtZW50IHRoZSBvcGVuIHdpdGgg
Zm9yIHlvdS4gZ2l2ZSBtZSBhIHNlY29uZC4KPj4+Pj4+PiBpIHdpbGwgYXNzaWduIGl0IHRvIGN0
cmwgKyBvIGFuZCBtb3ZlIHRoZSBvcGVuIGFjdGlvbiB0byBjdHJsICsgbS4KPj4+Pj4+Pgo+Pj4+
Pj4+IGNoZWVycyBjaHJ5cwo+Pj4+Pj4+Cj4+Pj4+Pj4gQW0gMDkuMDQuMjIgdW0gMTI6MjUgc2No
cmllYiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uOgo+Pj4+Pj4+PiBTdXJlIEkg
Y2FuIHRlc3QgdGhlIHBrZ2J1aWxkIG9uY2UgSSdtIGJhY2sgb24gbXkgQXJjaCBib3gKPj4+Pj4+
Pj4KPj4+Pj4+Pj4gQW5kIHRoYXQgaW5wdXQgYm94IHdvcmtzIGZpbmUuIEknbGwgc3VnZ2VzdCBD
dHJsK08gYXMgdGhlIAo+Pj4+Pj4+PiBzaG9ydGN1dCBmb3IKPj4+Pj4+Pj4gaXQgc28geW91IGdv
dCBFbnRlci9DdHJsK00gdG8gb3BlbiAobyBtYXliZSBtb3ZlIG9wZW4gd2l0aCB0byAKPj4+Pj4+
Pj4gY3RybCtNIGFuZAo+Pj4+Pj4+PiBzZWUgaG93IHRoYXQgd29ya3M/KSwgYW5kIGEgY3RybCtP
IGZvciBvcGVuIHdpdGg/Cj4+Pj4+Pj4+Cj4+Pj4+Pj4+IEFBaCBJIGRpZG50IGtub3cgYWJvdXQg
anVzdCBleGl0aW5nIHRoZSBzaGVsbC4gSSBhc3N1bWVkIHRoYXQnZCAKPj4+Pj4+Pj4gY2xvc2UK
Pj4+Pj4+Pj4gdGhlIHRhYi4gTXkgZmlyc3QgdGhvdWdodCB3YXMgYWxyaWdodCwgZmcgZHJhZ29u
Zm0gdG8gZ2V0IGJhY2sgCj4+Pj4+Pj4+IHRvIGl0Cj4+Pj4+Pj4+Cj4+Pj4+Pj4+IE9uIFNhdCwg
QXByIDA5LCAyMDIyIGF0IDExOjEzOjI1QU0gKzAyMDAsIExpbnV4IGZvciBibGluZCBnZW5lcmFs
Cj4+Pj4+Pj4+IGRpc2N1c3Npb24gd3JvdGU6Cj4+Pj4+Pj4+PiBIb3dkeSwKPj4+Pj4+Pj4+Cj4+
Pj4+Pj4+PiAvLyBZZXMgdG8gcHV0dGluZyBpdCBpbiB0aGUgQVVSIGFuZCB5ZXMgZm9yIHRoZSBl
bnYgc3R1ZmYuCj4+Pj4+Pj4+PiBPSyBsZXQgbWXCoCBjcmVhdGUgYSBQS0dCVUlMRCBmb3IgZHJh
Z29uZm0tZ2l0Cj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gLy8gSSdtIHBva2luZyBhdCB0aGUgY29uZmln
IHRyeWluZyB0byByZXBsaWNhdGUgTk5OJ3Mgb3BlbiAKPj4+Pj4+Pj4+IHdpdGggYW5kIG5vdAo+
Pj4+Pj4+Pj4gLy8gaGF2aW5nIG11Y2ggbHVjay4gSXMgdGhhdCBqdXN0IGEgY2FzZSBvZiByZW1l
bWJlcmluZyB0byBkcm9wCj4+Pj4+Pj4+PiB0byBhIHNoZWxsCj4+Pj4+Pj4+PiAvLyBhbmQgZG9p
bmcgd2hhdCBJIG5lZWQ/Cj4+Pj4+Pj4+PiBob3cgZG9lcyB0aGlzIGxvb2sgbGlrZT8ganVzdCBh
IGlucHV0IGRpYWxvZyB0byBlbnRlciBhbnkKPj4+Pj4+Pj4+IGNvbW1hbmQgd2l0aCB0aGUKPj4+
Pj4+Pj4+IGN1cnJlbnQgc2VsZWN0ZWQgZWxlbWVudCBhcyBwYXJhbWV0ZXI/Cj4+Pj4+Pj4+Pgo+
Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IC8vIE9uIHRoYXQgbm90ZS4uLmlzIHRoZXJlIGEgd2F5IG9uY2Ug
SSBoaXQgRjQsIHRvIGdldCBiYWNrIHRvIAo+Pj4+Pj4+Pj4gZHJhZ29uZm0KPj4+Pj4+Pj4+IC8v
IGVhc2lseSB3aXRob3V0IHJlbGF1bmNoaW5nIGl0IGZyb20gdGhlIHNoZWxsPwo+Pj4+Pj4+Pj4g
d2VsbCwganVzdCBleGl0IHRoZSBzaGVsbCAodHlwZSAiZXhpdCIpLCB5b3Ugd2lsbCBiZSBiYWNr
IGluCj4+Pj4+Pj4+PiBkcmFnb25mbSB0aGVuCj4+Pj4+Pj4+PiA6KS4KPj4+Pj4+Pj4+Cj4+Pj4+
Pj4+PiBjaGVlcnMgY2hyeXMKPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBBbSAwOS4wNC4yMiB1bSAxMDoz
MCBzY2hyaWViIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb246Cj4+Pj4+Pj4+Pj4g
WWVzIHRvIHB1dHRpbmcgaXQgaW4gdGhlIEFVUiBhbmQgeWVzIGZvciB0aGUgZW52IHN0dWZmLgo+
Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4gSSdtIHBva2luZyBhdCB0aGUgY29uZmlnIHRyeWluZyB0byBy
ZXBsaWNhdGUgTk5OJ3Mgb3BlbiB3aXRoIAo+Pj4+Pj4+Pj4+IGFuZCBub3QKPj4+Pj4+Pj4+PiBo
YXZpbmcgbXVjaCBsdWNrLiBJcyB0aGF0IGp1c3QgYSBjYXNlIG9mIHJlbWVtYmVyaW5nIHRvIGRy
b3AKPj4+Pj4+Pj4+PiB0byBhIHNoZWxsCj4+Pj4+Pj4+Pj4gYW5kIGRvaW5nIHdoYXQgSSBuZWVk
Pwo+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4gT24gdGhhdCBub3RlLi4uaXMgdGhlcmUgYSB3YXkgb25j
ZSBJIGhpdCBGNCwgdG8gZ2V0IGJhY2sgdG8gCj4+Pj4+Pj4+Pj4gZHJhZ29uZm0KPj4+Pj4+Pj4+
PiBlYXNpbHkgd2l0aG91dCByZWxhdW5jaGluZyBpdCBmcm9tIHRoZSBzaGVsbD8KPj4+Pj4+Pj4+
Pgo+Pj4+Pj4+Pj4+IE9uIFNhdCwgQXByIDA5LCAyMDIyIGF0IDA5OjQxOjQ5QU0gKzAyMDAsIExp
bnV4IGZvciBibGluZAo+Pj4+Pj4+Pj4+IGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+Pj4+
Pj4+Pj4gSG93ZHksCj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+PiDvu79JcyBEcmFnb25GTSBpbiB0
aGUgQXJjaCByZXBvPwo+Pj4+Pj4+Pj4+PiBDdXJyZW50bHkgaXRzIG5vdC4gSWYgeW91IGxpa2Ug
aXQsIGkgY2FuIHB1dCBpdCBpbnRvIEFVUi4KPj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4gQ2hlZXJz
IGNocnlzCj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+PiBBbSAwOS4wNC4yMDIyIHVtIDA3OjU0IHNj
aHJpZWIgTGludXggZm9yIGJsaW5kCj4+Pj4+Pj4+Pj4+PiBnZW5lcmFsIGRpc2N1c3Npb24gPGJs
aW51eC1saXN0QHJlZGhhdC5jb20+Ogo+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+IO+7v0lzIERy
YWdvbkZNIGluIHRoZSBBcmNoIHJlcG8/IEFtIHRyeWluZyB0byBnZXQgaXQKPj4+Pj4+Pj4+Pj4+
IHdpdGggeWF5IGZyb20gdGhpcyBzaWRlLgo+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+Cj4+Pj4+
Pj4+Pj4+Pj4gT24gU2F0LCBBcHIgMDksIDIwMjIgYXQgMDI6MjY6MTVBTSArMDIwMCwgTGludXgK
Pj4+Pj4+Pj4+Pj4+PiBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4+Pj4+
Pj4+Pj4+IEhvd2R5LAo+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4gT2sgdGhlbiBpIGtlZXAg
dGhhdCBhbHQgKyB1Lgo+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+IFRoYXQgc2VlbXMgdG8g
d29yayBiZXR0ZXIsIGJ1dCBkb2VzIHRoZQo+Pj4+Pj4+Pj4+Pj4+PiBQYXl0cmlvbiBsaW5rIHlv
dSBzZW50IGluIGFub3RoZXIgbWVzc2FnZQo+Pj4+Pj4+Pj4+Pj4+PiBoYXZlIHRoZSBpbmZvIG9u
IGNoYW5naW5nIHRoZSBzaG9ydGN1dHMgYXMKPj4+Pj4+Pj4+Pj4+Pj4gd2VsbD8KPj4+Pj4+Pj4+
Pj4+PiBXZWxsIGkgY2hhbmdlZCB0aGUgc2hvcnRjdXRzIGluIG1hc3Rlci4gU28gdGhlcmUKPj4+
Pj4+Pj4+Pj4+PiBpcyBubyBuZWVkIHRvIGNoYW5nZSB0aGVtIGJ5IG90aGVycyBhbnltb3JlLgo+
Pj4+Pj4+Pj4+Pj4+IE9yIHdoYXQgaW5mbyB5b3UgbWVhbiBleGFjdGx5Pwo+Pj4+Pj4+Pj4+Pj4+
Cj4+Pj4+Pj4+Pj4+Pj4gVGhlcmUgaXMgbm93IGF0IGxlYXN0IGEgYmFzaWMgZG9jdW1lbnRhdGlv
biA6KS4KPj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+IENoZWVycyBjaHJ5cwo+Pj4+Pj4+Pj4+
Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+PiBBbSAwOS4wNC4yMDIyIHVtIDAyOjE1IHNjaHJpZWIgTGludXgg
Zm9yCj4+Pj4+Pj4+Pj4+Pj4+PiBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24KPj4+Pj4+Pj4+Pj4+
Pj4+IDxibGludXgtbGlzdEByZWRoYXQuY29tPjoKPj4+Pj4+Pj4+Pj4+Pj4g77u/T2theSBpZiBp
dCdzIGp1c3QgYWx0K3UgdGhlbiB5ZXMga2VlcCBpdAo+Pj4+Pj4+Pj4+Pj4+PiB0aGF0IHdheS4g
VGhhdCBzZWVtcyB0byB3b3JrIGJldHRlciwgYnV0Cj4+Pj4+Pj4+Pj4+Pj4+IGRvZXMgdGhlIFBh
eXRyaW9uIGxpbmsgeW91IHNlbnQgaW4gYW5vdGhlcgo+Pj4+Pj4+Pj4+Pj4+PiBtZXNzYWdlIGhh
dmUgdGhlIGluZm8gb24gY2hhbmdpbmcgdGhlCj4+Pj4+Pj4+Pj4+Pj4+IHNob3J0Y3V0cyBhcyB3
ZWxsPwo+Pj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+Pj4gT24gRnJpLCBBcHIgMDgsIDIwMjIg
YXQgMTE6Mjg6MzBQTQo+Pj4+Pj4+Pj4+Pj4+Pj4gKzAyMDAsIExpbnV4IGZvciBibGluZCBnZW5l
cmFsCj4+Pj4+Pj4+Pj4+Pj4+PiBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4+Pj4+Pj4+Pj4+Pj4gSG93
ZHksCj4+Pj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+Pj4gaSBpbnN0YWxsZWQgTWF0ZSB0ZXJt
aW5hbCBmb3IgdGVzdGluZwo+Pj4+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+Pj4+IC8vIEN0cmwr
RCBmb3IgZGV0YWlscyBpbnN0ZWVhZCBvZiBGMTAKPj4+Pj4+Pj4+Pj4+Pj4+IG9rIHRoaXMgaXMg
Y2hhbmdlZC4KPj4+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+PiBhYm91dCBeW3UgaSB3YXMg
d3JvbmcuIGl0cyBqdXN0IGFsdCArIHUKPj4+Pj4+Pj4+Pj4+Pj4+IHNvIGEgc2luZ2xlIF4gaXMg
Q3RybAo+Pj4+Pj4+Pj4+Pj4+Pj4gdGhlIHNlcXVlbmNlIF5bIGlzIGFsdCBpZiBpdCBpcyBmb2xs
b3dlZAo+Pj4+Pj4+Pj4+Pj4+Pj4gYnkgYW4gbGV0dGVyLiBpZiBub3QsIGl0cyBlc2NhcGUKPj4+
Pj4+Pj4+Pj4+Pj4+IGN0cmwgKyBhbHQgKyB4IHdvdWxkIGJlIF5bXkMKPj4+Pj4+Pj4+Pj4+Pj4+
Cj4+Pj4+Pj4+Pj4+Pj4+PiBiYWNrIHRvIEFsdCArIHUsIHRoaXMgd29ya2VkIGZvciBtZSwKPj4+
Pj4+Pj4+Pj4+Pj4+IHNob3VsZCBpIGNoYW5nZSB0aGUgc2hvcnRjdXQgaW4gYW55Cj4+Pj4+Pj4+
Pj4+Pj4+PiB3YXk/Cj4+Pj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+Pj4gLy8gSSdtIHRyeWlu
ZyB0byByZXBsYWNlIHVuemlwIGFuZCB0YXIgd2l0aCBhdG9vbAo+Pj4+Pj4+Pj4+Pj4+Pj4gaW4g
c2VjdGlvbiBbbWltZV0geW91IHNlZSBob3cgdG8gb3BlbiBhbiBmaWxlLgo+Pj4+Pj4+Pj4+Pj4+
Pj4gaW4gc2VjdGlvbiBbY29tcHJlc3NdIGFuZCBbZGVjb21wcmVzc10KPj4+Pj4+Pj4+Pj4+Pj4+
IHlvdSBjYW4gY29uZmlndXJlIHRoZSBkZS0vY29tcHJlc3NpbmcKPj4+Pj4+Pj4+Pj4+Pj4+IHBy
b2Nlc3MuCj4+Pj4+Pj4+Pj4+Pj4+PiBpIGNoYW5nZWQgdGhpcyBmb3IgeW91Cj4+Pj4+Pj4+Pj4+
Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+Pj4gY29tcHJlc3MgKHRoZSB3b3JkIGNvbXByZXNzIGJldm9yZSB0
aGUKPj4+Pj4+Pj4+Pj4+Pj4+IGVxdWFsIGlzIGp1c3QgdGhlIGxhYmxlIHNob3duIGluCj4+Pj4+
Pj4+Pj4+Pj4+PiBjb250ZXh0IG1lbnUpOgo+Pj4+Pj4+Pj4+Pj4+Pj4gIyB7MH0gPSBTb3VyY2U6
IGxpc3Qgb2YgZmlsZXMgc2VwYXJhdGVkCj4+Pj4+Pj4+Pj4+Pj4+PiBieSBzcGFjZSB3aXRoIGFi
c29sdXQgZmlsZXBhdGgKPj4+Pj4+Pj4+Pj4+Pj4+ICMgezF9ID0gRGVzdGluYXRpb246wqAgYXJj
aGl2ZSBuYW1lCj4+Pj4+Pj4+Pj4+Pj4+PiBjb21wcmVzcz1hcGFjayAtcSB7MX0gezB9Cj4+Pj4+
Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+Pj4+IGRlY29tcHJlc3MgKGZv
ciB6aXBmaWxlcywgeW91IGNhbiBqdXN0Cj4+Pj4+Pj4+Pj4+Pj4+PiBjb3B5IHRoYXQgZm9yIGFu
eSBvdGhlciBmb3JtYXQKPj4+Pj4+Pj4+Pj4+Pj4+IHN1cHBvcnRlZCBieSBhdG9vbCBhbmQgY2hh
bmdlIHRoZQo+Pj4+Pj4+Pj4+Pj4+Pj4gYXBwbGljYXRpb24vemlwIHRvIHdoYXRldmVyIG1pbWV0
eXBlIHlvdQo+Pj4+Pj4+Pj4+Pj4+Pj4gd2FudCB0byB1bnppcCk6Cj4+Pj4+Pj4+Pj4+Pj4+PiAj
IHswfSA9IFNvdXJjZTogZmlsZSB0byBkZWNvbXByZXNzCj4+Pj4+Pj4+Pj4+Pj4+PiAjIHsxfSA9
IERlc3RpbmF0aW9uOiBmb2xkZXIgd2l0aCBhcmNoaXZlIGNvbnRlbnQKPj4+Pj4+Pj4+Pj4+Pj4+
IGFwcGxpY2F0aW9uL3ppcD1hdG9vbCAtZiAtcSAtLWV4dHJhY3QtdG89ezF9IHswfQo+Pj4+Pj4+
Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+Pj4+IGkganVzdCBwdXNoZWQuCj4+Pj4+Pj4+Pj4+Pj4+Pgo+
Pj4+Pj4+Pj4+Pj4+Pj4gY2hlZXJzIGNocnlzCj4+Pj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+
Pj4KPj4+Pj4+Pj4+Pj4+Pj4+PiBBbSAwOC4wNC4yMiB1bSAyMjoxMSBzY2hyaWViIExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIAo+Pj4+Pj4+Pj4+Pj4+Pj4+IGRpc2N1c3Npb246Cj4+Pj4+Pj4+Pj4+
Pj4+Pj4gU3VyZSB0aGluZy4gSGVyZScncyB3aGF0IEkgd2hpcHBlZCB1cHAgcmVhbCBxdWljawo+
Pj4+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4gQ3RybCtEIGZvciBkZXRhaWxzIGluc3Rl
ZWFkIG9mIEYxMAo+Pj4+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4gQ3RybCthbHQreCBm
b3IgZXh0cmFjdCBpbnN0ZWFkIG9mCj4+Pj4+Pj4+Pj4+Pj4+Pj4gdHJsK2FsdCt1ICh3aGljaCBk
b2VzbnQgc2VlbSB0byB3b3JrCj4+Pj4+Pj4+Pj4+Pj4+Pj4gb24gTWF0ZT8pCj4+Pj4+Pj4+Pj4+
Pj4+Pj4KPj4+Pj4+Pj4+Pj4+Pj4+PiBJJ20gdHJ5aW5nIHRvIHJlcGxhY2UgdW56aXAgYW5kIHRh
cgo+Pj4+Pj4+Pj4+Pj4+Pj4+IHdpdGggYXRvb2wsIGhvdyBOTk4gaGFuZGxlcyBpdCBzaW5jZQo+
Pj4+Pj4+Pj4+Pj4+Pj4+IGl0J3MgYSBsb3QgbmljZXIgdG8gaGF2ZSBvbmUgdG9vbAo+Pj4+Pj4+
Pj4+Pj4+Pj4+IHRoYXQgaGFuZGxlcyBhIHRvbiBvZiBmb3JtYXRzCj4+Pj4+Pj4+Pj4+Pj4+Pj4g
d2l0aG91dAo+Pj4+Pj4+Pj4+Pj4+Pj4+IGhhdmluZyB0byBodW50IGRvd24gMTAgZGlmZmVycmVu
dCBwcm9ncmFtcwo+Pj4+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4gQXNpZGUgZnJvbSB0
aGF0LCBub3QgbWFkZSBhbnkgb3RoZXIKPj4+Pj4+Pj4+Pj4+Pj4+PiBjaGFuZ2VzIHRvIHRoZSAu
Y29uZiBmaWxlIHRob3VnaC4KPj4+Pj4+Pj4+Pj4+Pj4+PiBJdCdzIGEgbmVhdCBsaXR0bGUgcHJv
Z3JhbSwgdGhvdWdoCj4+Pj4+Pj4+Pj4+Pj4+Pj4ganVzdCBpbiBjYXNlIEkgbWlzc2VkIGFueSwg
Z28KPj4+Pj4+Pj4+Pj4+Pj4+PiB0aHJvdWdoCj4+Pj4+Pj4+Pj4+Pj4+Pj4gYW5kIHVzZSBEcmFn
b25GTSB3aXRoIGEgdGVybWluYWwKPj4+Pj4+Pj4+Pj4+Pj4+PiBlbXVsYXRvciBhbmQgc2VlIHdo
YXQgeW91IGNhbiBjb21lCj4+Pj4+Pj4+Pj4+Pj4+Pj4gdXAKPj4+Pj4+Pj4+Pj4+Pj4+PiB3aXRo
IGZvciBzaG9ydGN1dHM/IEknbSBvbiBhIGxhcHRvcAo+Pj4+Pj4+Pj4+Pj4+Pj4+IGN1cnJlbnRs
eSBzbyB0aGF0IGtpbmQgb2YgaGluZGVycwo+Pj4+Pj4+Pj4+Pj4+Pj4+IHdoYXQgSSBjYW4gZG8g
c2hvcnRjdXRzIHdpc2UgaG93ZXZlcgo+Pj4+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4g
T24gRnJpLCBBcHIgMDgsIDIwMjIgYXQgMTA6MDM6MjdQTQo+Pj4+Pj4+Pj4+Pj4+Pj4+ICswMjAw
LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbAo+Pj4+Pj4+Pj4+Pj4+Pj4+IGRpc2N1c3Npb24gd3Jv
dGU6Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+IEhvd2R5LAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+
Pj4+Pj4+PiBXZWxsLCBGMTIzIHdhcyBtb3N0bHkgVFRZIG9ubHkuCj4+Pj4+Pj4+Pj4+Pj4+Pj4+
IFNvIHRoZSBiaW5kaW5ncyBhcmUgc2V0IHdpdGgKPj4+Pj4+Pj4+Pj4+Pj4+Pj4gdGhhdCBpbiBt
aW5kIDopLiBUaGUgcHJvamVjdAo+Pj4+Pj4+Pj4+Pj4+Pj4+PiB3YW50ZWQgdG8gbW9taWMgR1VJ
IHNob3J0Y3V0cwo+Pj4+Pj4+Pj4+Pj4+Pj4+PiBmb3IgbW9zdCBwYXJ0cy4KPj4+Pj4+Pj4+Pj4+
Pj4+Pj4gVGhlIGNvbGxpZGluZyBzaG9ydGN1dHMgY2FuIGJlCj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGNo
YW5nZWQgdmVyeSBlYXN5IGluIHNldHRpbmdzCj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGZpbGUuCj4+Pj4+
Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+IElmIHlvdSBoYW5kIG1lIGEgbGlzdCB3aXRo
Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHNob3J0Y3V0cyB5b3Ugd2FudCB0byBoYXZlCj4+Pj4+Pj4+Pj4+
Pj4+Pj4+IGNoYW5nZWQsIGkgY2hhbmdlIHRoZW0gZm9yIHlvdQo+Pj4+Pj4+Pj4+Pj4+Pj4+PiBy
aWdodCBpbiBtYXN0ZXIuCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+IEFzIEYx
MjMgaXMgbm8gbW9yZSwgVFRZIGNvbXBhdC4KPj4+Pj4+Pj4+Pj4+Pj4+Pj4gZG9lcyBub3QgbWF0
dGVyIHRoYXQgbXVjaAo+Pj4+Pj4+Pj4+Pj4+Pj4+PiBhbnltb3JlIHRvIG1lIGFuZCB3ZSBjYW4g
aW1wcm92ZQo+Pj4+Pj4+Pj4+Pj4+Pj4+PiBpdCBpbiB0ZXJtaW5hbCBlbXVsYXRvcnMgKG1vc3QK
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gb2YgdGhlbSBoYXZlIG1vcmUgY2FwYWJpbGl0aWVzCj4+Pj4+Pj4+
Pj4+Pj4+Pj4+IHRoYW4gVFRZIGluIGFueSB3YXksIGZvciBleGFtcGxlCj4+Pj4+Pj4+Pj4+Pj4+
Pj4+IGtvbnNvbGUgKCB0aGUgS0RFIHRlcm1pbmFsCj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGVtdWxhdG9y
IGhhcyBzcGVjaWFsIGVzY2FwZQo+Pj4+Pj4+Pj4+Pj4+Pj4+PiBzZXF1ZW5jZXMgZm9yIHNoaWZ0
IGFycm93KQo+Pj4+Pj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+Pj4+PiBDaGVlcnMgY2hyeXMK
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+IEFtIDA4LjA0LjIwMjIgdW0gMjE6
NTMKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHNjaHJpZWIgTGludXggZm9yIGJsaW5kCj4+Pj4+Pj4+Pj4+
Pj4+Pj4+PiBnZW5lcmFsIGRpc2N1c3Npb24KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+IDxibGludXgtbGlz
dEByZWRoYXQuY29tPjoKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiDvu79V
bmZvcnR1bmF0ZWx5LCBEcmFnb25GTQo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gZG9lc24ndCB3b3JrIHdl
bGwgb3V0IG9mIHRoZQo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gYm94IHdpdGggYSB0ZXJtaW5hbAo+Pj4+
Pj4+Pj4+Pj4+Pj4+Pj4gZW11bGF0b3IsIG1vc3RseSBkb3duIHRvCj4+Pj4+Pj4+Pj4+Pj4+Pj4+
PiBjb25mbGljdHMgd2l0aCBrZXlzIGxpa2UKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+IEYxMC4gWWVzIEkg
Y2FuIHJlZGVmaW5lCj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiB0aGVtLCBidXQgdGhhdCdzIGtpbmQgb2YK
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHNvbWV0aGluZyBJbSBzbHdseSBzbG93bHkKPj4+Pj4+Pj4+Pj4+
Pj4+Pj4+IHBva2luZyBhdC4gSSdtIHVuYWJsZSB0byBnZXQKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+IE1h
dGUtdGVybWluYWwgdG8gcmVjb2duaXplIGEKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGN0cmwrYWx0IHBh
dGVybiBob3VnaAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gd2hlcmVhcyBhIFRUWSB3b3JrcyBmaW5lIHNv
LAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gdW5zdXJlIGlmIHlvdSBuZWVkIHRvIHRlc3QKPj4+Pj4+Pj4+
Pj4+Pj4+Pj4+IERyYWdvbmZtIG9uIHRlcm1pbmFsCj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBlbXVsYXRv
cnMgd2l0aCBhIGRlc2t0b3A/Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4g
S2luZCBvZiBhIHNoYW1lIHNpbmNlIEkgbGlrZQo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gaG93IGVhc3kg
RHJhZ29uIGlzIHRvIHVzZSB2cwo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gc29tZXRoaW5nIGxpa2UKPj4+
Pj4+Pj4+Pj4+Pj4+Pj4+IE1DIG9yIFJhbmdlciBvciBOTk4gKG15Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+
PiBjdXJyZW50IGZhdm9yaXRlIG9uZSB0aGF0Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBkb2Vzbid0IGhh
dmUga2V5Ym9hcmQKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGNvbmZsaWN0cykgdGhvdWdoCj4+Pj4+Pj4+
Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IE9uIEZyaSwgQXByIDA4LCAyMDIyIGF0Cj4+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gMDk6MzY6MjhQTSArMDIwMCwgTGludXgKPj4+Pj4+Pj4+Pj4+Pj4+
Pj4+PiBmb3IgYmxpbmQgZ2VuZXJhbAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGRpc2N1c3Npb24gd3Jv
dGU6Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gSG93ZHksCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+
Pj4+Pj4+Pj4+Pj4+PiBXZWxsIHRoZXJlIGlzIGEgY29udGV4dAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+
IG1lbnXCoCAoIGRyYWdvbkZNIGNhbGxzCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gaXQgRGV0YWlscywg
YmVjYXVzZSBpdAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGFsc28gc2hvd3MgZmlsZQo+Pj4+Pj4+Pj4+
Pj4+Pj4+Pj4+IHByb3BlcnRpZXMgbGlrZSBzaXplLAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IG1pbWUg
YW5kIGEgbGlzdCBvZgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGF2YWlsYWJsZSBhY3Rpb25zKSB3aXRo
Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gYWxsIGF2YWlsYWJsZSBvcHRpb25zIGJ5Cj4+Pj4+Pj4+Pj4+
Pj4+Pj4+Pj4gcHJlc3NpbmcgRjEwCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gU29tZSBhY3Rpb25zIGFy
ZSBvbmx5Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gYXZhaWxhYmxlIGZvciBnaXZlbiBtaW1lCj4+Pj4+
Pj4+Pj4+Pj4+Pj4+Pj4gdHlwZXMgbGlrZSBjb21wcmVzcwo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGN1
cnJlbnQgb25seSBmb3IgemlwIGFuZAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHRhciwgb3RoZXJzIGNv
dWxkIGJlCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gYWRkYWQgdmVyeSBlYXN5LiBCeQo+Pj4+Pj4+Pj4+
Pj4+Pj4+Pj4+IGRlZmF1bHQgZHJhZ29uZm0gZG9lcwo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IG5vdCB1
c2UgYXRvb2wgYnV0IHVuemlwCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gY29tbWFuZCBmb3IgemlwIGZp
bGVzCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gYW5kIHRhciBvZiBjb3Vyc2UgZm9yCj4+Pj4+Pj4+Pj4+
Pj4+Pj4+Pj4gdGFyIHRob3NlIG5lZWQgdG8gYmUKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBpbnN0YWxs
ZWQgb3IgY29uZnVyZWQgdG8KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiB1c2Ugc29tZXRoaW5nIGVsc2Uu
wqAgKEkKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBjYW4gZ2l2ZSB5b3UgYSBtb3JlCj4+Pj4+Pj4+Pj4+
Pj4+Pj4+Pj4gZGV0YWlsZWQgaW5mb3JtYXRpb24gaG93Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gdG8g
Y29uZmlndXJlIHRob3NlIHN0dWZmCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gaWYgeW91IGFyZSBpbnRl
cmVzdGVkCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gaW4pCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+
Pj4+Pj4+Pj4+Pj4+PiBEcmFnb25GTSByZWFkcyB0aGUKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBFc2Nh
cGUgc2VxdWVuY2VzIGZyb20KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBzdGRpbiB0byBkZXRlY3QKPj4+
Pj4+Pj4+Pj4+Pj4+Pj4+PiBzaG9ydGN1dHMgKGxpa2UgYWxtb3N0Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+
Pj4gYW55IG90aGVyIENMSQo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGFwcGxpY2F0aW9uKQo+Pj4+Pj4+
Pj4+Pj4+Pj4+Pj4+IFNvbWUgaW1wb3J0YW50IGJhc2ljCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gdHJh
bnNsYXRpb24gaGVscCAod2UKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBzaG91bGQgYWRkIHRoZSBzaG9y
dGN1dHMKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBhcyBjb21tZW50cyB0byB0aGUKPj4+Pj4+Pj4+Pj4+
Pj4+Pj4+PiBzZXR0aW5ncyBmaWxlIGxvbCApCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gXiA9IENUUkwK
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBbID0gQWx0Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gVXBwZXJjYXNl
IGxldHRlciA9IHNoaWZ0ICsgbGV0dGVyCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gbG93ZXJjYXNlIGxl
dHRlciA9IGp1c3QgdGhlIGxldHRlcgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IEFuIG90aGVyIGV4YW1w
bGU6Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gXlt1IHRyYW5zbGF0ZXMgYXMgY3RybCArIGFsdCArIHUK
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IFRoZXJlIGFyZSBzb21lIHNw
ZWNpYWxzIGxpa2UgYXJyb3cga2V5cyBvciBlc2NhcGUuCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gRXNj
YXBlIGlzIHRyYW5zbGF0ZWQgYnkgXlsKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+
Pj4+Pj4+IChieSB0aGUgd2F5IG1hbnkKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBzaG9ydGN1dHMgYXJl
IHNpbWlsYXIgdG8KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBvdGhlciBncmFwaGljYWwgZmlsZQo+Pj4+
Pj4+Pj4+Pj4+Pj4+Pj4+IG1hbmFnZXJzIEJVVCBzaGlmdCArCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4g
YXJyb3cgZm9yIG1hcmsgZmlsZXMgaXMKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBkaWZmZXJlbnQgYXMg
aSBjb3VsZCBub3QKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBmaWd1cmUgaG93IHRvIHJlYWQgdGhpcwo+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGZyb20gYW4gZXNjYXBlIHNlcXVlbmNlLAo+Pj4+Pj4+Pj4+Pj4+
Pj4+Pj4+IGJlY2F1c2UgdGhlcmUgaXMgbm8KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiB1cHBlcmNhc2Ug
YXJyb3cgKnNtaWxlKikKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IERl
dmVsb3BtZW50IHdhcwo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHNwb25zb3JlZCBieSBGMTIzCj4+Pj4+
Pj4+Pj4+Pj4+Pj4+Pj4gcHJvamVjdC4gVG9kYXkga25vd24gYXMKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+
PiBzdG9ybXV4LiBTYWRseSBpIGRpZCBub3QKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiB3aXJlIGEgbG90
IG9mCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gZG9jdW1lbnRhdGlvbiBidXQgeW91Cj4+Pj4+Pj4+Pj4+
Pj4+Pj4+Pj4gY2FuIGFzayBtZSBldmVyeXRoaW5nCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4geW91IHdh
bnQgdG8ga25vdyA6KS4KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IENo
ZWVycyBjaHJ5cwo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBBbSAw
OC4wNC4yMDIyIHVtCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiAxODo0MSBzY2hyaWViCj4+Pj4+Pj4+
Pj4+Pj4+Pj4+Pj4+PiBMaW51eCBmb3IgYmxpbmQKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGdlbmVy
YWwKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGRpc2N1c3Npb24KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+
IDxibGludXgtbGlzdEByZWRoYXQuY29tPjoKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4g77u/U28gSSBn
YXZlIGl0IGEgc2hvdAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBhbmQgaXQgZmVlbHMgbG9naWNhbAo+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBhbmQgd2VsbCBsYWlkIG91dCwKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+
Pj4gZm9yIHRoZSBtb3N0Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHBhcnQKPj4+Pj4+Pj4+Pj4+Pj4+
Pj4+Pj4KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gQlV0IEknbSBzdHJ1Z2dsaW5nCj4+Pj4+Pj4+Pj4+
Pj4+Pj4+Pj4+IG9uIGEgZmV3IHRoaW5ncy4gSQo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBoYXZlIGl0
IGdvaW5nIGFuZAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiB3YW50IHRvIHVuemlwIGFuCj4+Pj4+Pj4+
Pj4+Pj4+Pj4+Pj4+IGFyY2hpdmUgZnJvbSB3aXRoaW4KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gaXQu
IEluIE5OTiBJIGNhbgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBqdXN0IGRvIHRoYXQgYW5kCj4+Pj4+
Pj4+Pj4+Pj4+Pj4+Pj4+IHdvcmsgd2l0aCBhdG9vbC4gSQo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBj
YW4ndCBzZWVtIHRvIGZpbmQKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gdGhlIGtleXMgdG8gc3RhcnQK
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gZXh0cmFjdGluZyBhbgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBh
cmNoaXZlIG9yIGhvdwo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBEcmFnb25mbSBoYW5kbGVzCj4+Pj4+
Pj4+Pj4+Pj4+Pj4+Pj4+IHRoYXQgYXQgYWxsLCBJdmUKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gb25s
eSBmb3VuZCB1bmV4dHJhY3QKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gd2l0aCBeKFUgaW4gdGhlCj4+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGNvbmZpZywgd2hpY2ggSSd2ZQo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+
PiBubyBjbHVlIHdoYXQgaXQKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gdHJhbnNsYXRlcyB0byBpbgo+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiB0ZXJtcyBvZiBhY3R1YWwga2V5cwo+Pj4+Pj4+Pj4+Pj4+Pj4+
Pj4+PiBhc2lkZSBmcm9tIGN0cmwgYW5kIFUuIEl0J3MgdGhlICggSSdtIHN0dW1wZWQgb24KPj4+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gU2VlIG15IG1haW4gZ3JpcGUK
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gd2l0aCBOTk4gaXMgaWYgSSB1c2UKPj4+Pj4+Pj4+Pj4+Pj4+
Pj4+Pj4gaXQgaW4gYSB0ZXJtaW5hbCBJCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGhhdmUgdG8gaGl0
IE8sCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHczbSBhbmQgYyB0byBvcGVuIGFuCj4+Pj4+Pj4+Pj4+
Pj4+Pj4+Pj4+IGh0bWwgZG9jIGluIHczbSBlbHNlCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGl0IGxv
YWRzIHVwIGluCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IEZpcmVmb3guIE5vdwo+Pj4+Pj4+Pj4+Pj4+
Pj4+Pj4+PiBncmFudGVkIEkndmUgbm90Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHRyaWVkIGl0IG9u
IGEgcHVyZQo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBUVFkgYnV0Li4ub24gYQo+Pj4+Pj4+Pj4+Pj4+
Pj4+Pj4+PiB0ZXJtaW5hbCwgeGRnLW9wZW4KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gb3ZlcnJpZGVz
IGJyb3dzZXIgYmVpbmcgc2V0IGFzIGFuIGVudmlyb25tZW50IHZhcmlhYmxlCj4+Pj4+Pj4+Pj4+
Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IEJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3QgCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+
Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+Pj4+Pj4+
Pj4+Pj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcg
bGlzdAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+Pj4+Pj4+
Pj4+Pj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdAo+Pj4+Pj4+Pj4+Pj4+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+Pj4+Pj4+Pj4+Pj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKPj4+Pj4+Pj4+Pj4+Pj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+Pj4+Pj4+Pj4+
Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0Cj4+Pj4+Pj4+Pj4+Pj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPj4+Pj4+Pj4+Pj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+
Pj4+Pj4+Pj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+Pj4+Pj4+Pj4+Pj4gaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+
Pj4+Pj4+Pj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPj4+Pj4+Pj4+Pj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+Pj4+Pj4+Pj4+
Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+Pj4+Pj4+Pj4+Pj4gaHR0cHM6Ly9saXN0bWFu
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+Pj4+Pj4+Pj4+PiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+Pj4+Pj4+
Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4+Pj4+Pj4+Pj4gQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQo+Pj4+Pj4+Pj4+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+Pj4+Pj4+Pj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4+Pj4+Pj4+PiBCbGludXgtbGlzdCBt
YWlsaW5nIGxpc3QKPj4+Pj4+Pj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+Pj4+
Pj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdAo+Pj4+Pj4+Pj4+Pj4gLS0gCj4+Pj4+Pj4+Pj4+PiBHb29kIHBlb3BsZSBkbyBub3QgbmVl
ZCBsYXdzIHRvIHRlbGwgdGhlbSB0byBhY3QKPj4+Pj4+Pj4+Pj4+IHJlc3BvbnNpYmx5LCB3aGls
ZSBiYWQgcGVvcGxlIHdpbGwgZmluZCBhIHdheSBhcm91bmQKPj4+Pj4+Pj4+Pj4+IHRoZSBsYXdz
Lgo+Pj4+Pj4+Pj4+Pj4gLSBQbGF0byAoNDI3LTM0NyBCLkMuKQo+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+
Pj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+
Pj4+Pj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4+Pj4+Pj4+IEJsaW51eC1s
aXN0QHJlZGhhdC5jb20KPj4+Pj4+Pj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pj4+Pj4+Pj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4+Pj4+Pj4gQmxpbnV4LWxpc3QgbWFp
bGluZyBsaXN0Cj4+Pj4+Pj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4+Pj4+Pj4g
aHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+
Pj4+Pj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4+Pj4+Pj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+Pj4+Pj4gQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQo+Pj4+Pj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKPj4+Pj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4+Pj4+IGh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pj4+Pj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4+Pj4gQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+
Pj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdAo+Pj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4+Pj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+Pj4gQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQo+Pj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3QKPj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4+IEJs
aW51eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+
Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5j
b20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+Cj4+Pj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+PiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJl
ZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+IEJsaW51eC1saXN0IG1haWxpbmcg
bGlzdAo+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhh
dC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pgo+Pgo+PiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KPgo+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0
Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2Js
aW51eC1saXN0Cg==

