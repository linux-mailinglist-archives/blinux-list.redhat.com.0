Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 63B4F3E5E3B
	for <lists+blinux-list@lfdr.de>; Tue, 10 Aug 2021 16:44:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628606689;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=15HGCFG7yNcK7Q3uyPglxvgj17Qp5VwfSvGNZ2SnQxk=;
	b=YkWtj1YbeCTivq4PgOAZUDZ+k+zeAq4AUP+1UCxx50ag/NNSRAcr7fmrCm4t5dkrScL4kZ
	1kK62fpzq2QX98sjOPSnNdH4Lxee7kagNCN0o7YUmzryl3OvkugPPyZCgN0emAujpAUTsC
	ZJbrSWSxZhKCXatEEhVl6V5+pb+U25g=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-556-MwRJuVr9NoKqzkRkghd8_w-1; Tue, 10 Aug 2021 10:44:47 -0400
X-MC-Unique: MwRJuVr9NoKqzkRkghd8_w-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DB73C801AEB;
	Tue, 10 Aug 2021 14:44:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5657A6F97F;
	Tue, 10 Aug 2021 14:44:43 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BEA4D4BB7C;
	Tue, 10 Aug 2021 14:44:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17AEid5J004791 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 10 Aug 2021 10:44:39 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 7B4D22138CFE; Tue, 10 Aug 2021 14:44:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 74F572138CF9
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 14:44:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 89400185A7A4
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 14:44:36 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-187-2a-P5t9HPumPK6fNezEKqA-1;
	Tue, 10 Aug 2021 10:44:34 -0400
X-MC-Unique: 2a-P5t9HPumPK6fNezEKqA-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 9EACEA1CEF
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 14:44:26 +0200 (CEST)
Subject: Re: Help, I need a Windows VM for my work
To: blinux-list@redhat.com
References: <3d854105-bb2b-5501-235f-eb05dc13f1f4@gmail.com>
	<6b512da3-e808-5c33-b0d3-700b55397580@slint.fr>
	<64366d3c-fdd0-3b9a-b771-7dbc6d720f4e@slint.fr>
	<20210810143027.nrhkrccb5lxpnjzm@k.n5t.de>
Message-ID: <7dd4954e-8e84-dbd5-e289-68b54addd195@slint.fr>
Date: Tue, 10 Aug 2021 16:44:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210810143027.nrhkrccb5lxpnjzm@k.n5t.de>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 17AEid5J004791
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGksCgpJIHdpbGwgYnV0IHlvdXIgZW1haWwgYWRkcmVzcyBpcyBoaWRkZWUgYnkgdGhlIGxpc3Qg
bWFuYWdlci4KCllvdSBhcmUgQ2hyaXN0aWFuIFNjaG9lcHBsZWluLCByaWdodD8KCkRpZGllcgot
LQpkaWRpZXJ0YXRzbGludGRvdGZyCgpMZSAxMC8wOC8yMDIxIMOgIDE2OjMwLCBMaW51eCBmb3Ig
YmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4gSGkgRGlkaWVyLAo+IAo+IHRo
ZXJlIHdhcyBubyBzY3JpcHQgYXR0YWNoZWQsIG1heWJlIHRoZSBsaXN0bWFuYWdlciByZW1vdmVk
IGlzdCA6LSguIENhbiB5b3UKPiBzZW5kIG1lIHRoZSBzY3JpcHQgYWxzbyBwbGVhc2U/Cj4gCj4g
SSB3YXMgYWxzbyBleHBlcmltZW50aW5nIHdpdGggUWVtdSBhbmQgV2luZG93cyBkdXJpbmcgdGhl
IGxhc3Qgd2Vla3MgYW5kIGhhZAo+IGEgV2luIDEwIHBybyBydW5uaW5nLCBidXQgc29tZXRpbWVz
IHRoZSBWTSB3YXMgdG8gc2xvdyB0byBoYXZlIGEgZ29vZAo+IHdvcmtpbmcgZXhwaXJpZW5jZSA6
LSguIEkgYW0gdXNpbmcgYSBEZWxsIFhQUyAxMyBsYXB0b3Agd2l0aCAxNiBHQiBtZW1vcnkKPiBh
bmQgYSBJbnRlbGwgSTcgY3B1IHdpdGggMSw5IEdIei4gSSB3YXMgdXNpbmcgdGhlIHZpcnRpbyBk
cml2ZXJzIGZvciBXaW5kb3dzCj4gdG8gc3BlZWQgdXAgdGhpbmdzIGFzIG11Y2ggYXMgcG9zc2li
bGUgYW5kIEkgYWxzbyBkZWFjdGl2YXRlZCBhcyBtYW55Cj4gdW5uZWNlc3NhcnkgdGhpbmdzIGlu
IHRoZSBXaW5kb3dzIFZNLCBidXQgZXNwZWNpYWx5IHdpdGggbXVjaCBkaXNrIEkvTwo+IGV2ZXJ5
dGhpbmcgd2FzIG5vdCBzbmFwcHkgZW5vdWdoIHRvIHdvcmsgOi0oLgo+IAo+IFdoZW4gcnVubmlu
ZyBXaW5kb3dzIGFzIHRoZSBob3N0IHN5c3RlbSBhbmQgdXNpbmcgVk13YXJlIHRvIHZpcnR1YWxp
emUgbGludXgKPiBndWVzdHMgSSBkbyBub3QgaGF2ZSB0aG9zZSBwcm9ibGVtcy4KPiAKPiBIb3cg
YXJlIHlvdXIgYW5kIGFsc28gb3RoZXJzIGV4cGVyaWVuY2VzIHdpdGggdmlydHVhbGl6ZWQgV2lu
ZG93cyBzeXN0ZW1zIG9uCj4gTGludXggaG9zdHM/IEFyZSB0aGUgc3lzdGVtcyBmYXN0IGVub3Vn
aCB0byB3b3JrIHNtb290aGx5IG9yIGRvIHlvdSBhbHNvCj4gdGhvc2Uga2luZCBvZiBwcm9ibGVt
cz8gV2hhdCBzZXR0aW5ncyBoYXZlIHlvdSBjaGFuZ2VkIGluIHRoZSBXaW5kb3dzIGd1ZXN0Cj4g
dG8gaGF2ZSBhIHN5c3RlbSB3aGljaCBpcyBmYXN0IGVub3VnaCBhbmQgd2hhdCBRZW11IHBhcmFt
ZXRlcnMgZG8geW91IHVzZQo+IGVzcGVjaWFseSBmb3IgdGhlIGhhcmRzaXNrIGltYWdlPwo+IAo+
IENoZWVycyBhbmQgdGhhbmtzLAo+IAo+ICAgIFNjaG9lcHAKPiAKPiAKPiBPbiBUdWUsIEF1ZyAx
MCwgMjAyMSBhdCAwMzo1OTo1OVBNICswMjAwLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uIHdyb3RlOgo+PiBIaSBhZ2FpbiBCcmFuZHQsCj4+Cj4+IFRoZSBzY3JpcHQgaXMgYXR0
YWNoZWQKPj4KPj4gSW50cnVjdGlvbnMgZm9yIHVzZToKPj4gMS4gQ3JlYXRlIGEgZGlyZWN0b3J5
IH4vcWVtdQo+PiBBc3N1bWluZyB0aGF0IHlvdXIgdXNlcm5hbWUgaXMgYnJhbmR0OyBodXN0IHR5
cGUgdG8gZG8gdGhhdDoKPj4gbWtkaXIgL2hvbWUvYnJhbmR0L3FlbXUKPj4gb3IganVzdDoKPj4g
bWtkaXIgfi9xZW11Cj4+IEFzIGEgcmVtaW5kZXIsIH4gc3RhbmRzIGZvciAvaG9tZS88dXNlcm5h
bWU+Cj4+IEluIG15IGNhc2UgL3Vzci9kaWRpZXIsIGluIHlvdXJzIEkgYXNzdW1lIC9ob21lL2Jy
YW5kdAo+PiBidXQgYW55d2F5IHRoZSBvdXRwdXQgb2YgdGhpcyBjb21tYW5kIHdpbGwgdGVsbCB5
b3U6Cj4+IGVjaG8gfgo+Pgo+PiAyLiBtb3ZlIHRoZSBXaW5kb3dzIElTTyBmaWxlIGluIH4vcWVt
dSwgIHJlbmFtZWQgfi9xZW11L3dpbiB3aW5kb3dzLmlzbwo+PiBGb3IgaW5zdGFuY2UgaGVyIEkg
ZGlkIHRoaXM6Cj4+Cj4+IC9kYXRhL2ltYWdlc19JU08vV2luZG93czEwX0luc2lkZXJQcmV2aWV3
X0NsaWVudF94NjRfZnItZnJfMjEzNTQuaXNvCj4+Cj4+IDMuIERvd25sb2FkIHRoZSBzY3JpcHQg
d2luZG93cy5zaCBhbmQgc3RvcmUgaXQgc29tZXdoZXJlCj4+IENoYW5nZSB0byB0aGUgZGlyZWN0
b3J5IHdoZXJlIGl0IGlzIGluc3RhbGxlZCBhbmQgcnVuIGl0IGxpa2UgdGhpczoKPj4gc2ggd2lu
ZG93cy5zaAo+PiBUaGVuIHByZXNzIEVudGVyLgo+PiBQcmVzcyAgRW50ZXIgYWdhaW4gYWZ0ZXIg
NSBzZWNvbmRzIHRvIG1ha2Ugc3VyZSBpdCBzdGFydHMgdGhlIFdpbmRvd3MKPj4gV2FpdCBwYXRp
ZW50bHkgdW50aWwgdGhlIGluc3RhbGxlciBkaXNwbGF5cyBpdHMgZmlyc3Qgc2NyZWVuIGluIHRo
ZSBWTS4KPj4KPj4gTm90ZXM6Cj4+IFlvdSBuZWVkIHRvIGJlIGluIGEgZ3JhcGhpY2FsIGVudmly
b25tZW50IGxpa2UgTWF0ZS4KPj4gSWYgdGhlIFZNIHN0ZWFscyB0aGUgZm9jdXMsIHR5cGUgQ3Ry
bCtBbHQrRyB0byBnZXQgaXQgYmFjayBvbiB0aGUgaG9zdC4KPj4KPj4gQWZ0ZXIgV2luZG93cyBp
bnN0YWxsYXRpb24sIHJ1bm5pbmcgdGhlIHNjcmlwdCBzaG91bGQgc3RhcnQgV2luZG93cyBkaXJl
Y3RseQo+PiBpbgo+PiB0aGUgVk0uCj4+Cj4+IENoZWVycywKPj4gRGlkaWVyCj4+Cj4+Cj4+IExl
IDEwLzA4LzIwMjEgw6AgMTU6MDYsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
YSDDqWNyaXTCoDoKPj4+IEhpIEJyYW5kdCwKPj4+Cj4+PiBJIHdpbGwgYXR0YWNoIHRvIG15IG5l
eHQgbWVzc2FnZSBhIHNjcmlwdCB0aGF0IHNldHMgdXAgYSBxZW11IFZNCj4+PiBhbGxvd2luZyB0
byBpbnN0YWxsIHRoZW4gcnVuIFdpbmRvd3MgbGF0ZXIgdG9kYXkgYWZ0ZXIgbW9yZSB0ZXN0aW5n
Lgo+Pj4KPj4+IEl0IHNob3VsZCBiZSB1c2FibGUgaW4gYW55IExpbnV4IGRpc3RyaWJ1dGlvbiB3
aXRoIGEgcmVjZW50IHFlbXUgaW5zdGFsbGVkLgo+Pj4KPj4+IENoZWVycywKPj4+Cj4+PiBEaWRp
ZXIKPj4+Cj4+Pgo+Pj4gTGUgMTAvMDgvMjAyMSDDoCAxMjo1NSwgTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+Pj4+IEhpIGFsbCwKPj4+Pgo+Pj4+Cj4+Pj4g
QXMgSSBzdGF0ZWQgYmVmb3JlLCBJIGFtIHJ1bm5pbmcgU2xpbnQgb24gdGhlIGJhcmUgbWV0YWws
IGhvd2V2ZXIgbXkKPj4+PiB3b3JrIGVudGFpbHMgdGVhY2hpbmcgTlZEQSB0byBjbGllbnRzLCBv
YnZpb3VzbHkgcnVubmluZyBXaW5kb3dzLgo+Pj4+Cj4+Pj4KPj4+PiBUaGVyZWZvciBJIGRlc3Bl
cmF0ZWx5IG5lZWQgYSBXaW5kb3dzIFZNLCBzbyBJIGNhbiBtYWtlIGEgbGl2aW5nLiBJCj4+Pj4g
Y2Fubm90IGZpZ3VyZSBxZW11LCB2aXJ0dWFsLWJveCwgSSBoYXZlIG5vIGlkZWEsIGFuZCBWTVdh
cmUKPj4+PiBXb3Jrc3RhdGlvbiBQbGF5ZXIgZG9lc24ndCB3YW50IHRvIGluc3RhbGwgdW5kZXIg
U2xpbnQuCj4+Pj4KPj4+Pgo+Pj4+IENvdWxkIHNvbWVvbmUgcGxlYXNlLCBwbGVhc2UsIGdpdmUg
bWUgY29uY2lzZSBpbnN0cnVjdGlvbnMgZm9yCj4+Pj4gc2V0dGluZyB1cCBhIFZNIHVzaW5nIHFl
bXUgaW4gU2xpbnQ/Cj4+Pj4KPj4+Pgo+Pj4+IFdhcm0gcmVnYXJkcywKPj4+Pgo+Pj4+Cj4+Pj4g
QnJhbmR0IFN0ZWVua2FtcAo+Pj4+Cj4+Pj4KPj4+PiBTZW50IGZyb20gbXkgZ2FzcyBwb3dlcmVk
IFNsaW50IGhhaXIgZHJ5ZXIuCj4gCj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlz
dEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3QKPiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJl
ZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2Js
aW51eC1saXN0Cj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

