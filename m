Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 9F6CD1750A7
	for <lists+blinux-list@lfdr.de>; Sun,  1 Mar 2020 23:51:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583103084;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ekSm5WgeVLxjEuLy4Q/HicAntL+9kpBBJa+eVKR9FZk=;
	b=M/TcTmmfT/8Pnpxwu9tbiE9DUlEksQlspCFf/RJzM1kMtKEu5+DXLtcjvI2WnkMZ5W5lA4
	BJ5gM/xOnFjZ97LoaYw10jlVaxUZQpHG5pDQ040xBQklS+Oytm48PvUAhST0NeP9h5WEQR
	rUs6CuTdPOwCgNlYPqbY623//4H3STs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-89-Nf14fQrbNKaoRGd3RX8NTg-1; Sun, 01 Mar 2020 17:51:22 -0500
X-MC-Unique: Nf14fQrbNKaoRGd3RX8NTg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 13FA1107ACC5;
	Sun,  1 Mar 2020 22:51:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0979492D1F;
	Sun,  1 Mar 2020 22:51:17 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0F67484493;
	Sun,  1 Mar 2020 22:51:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 021Mp9RT012637 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 1 Mar 2020 17:51:09 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 1EC1810EE824; Sun,  1 Mar 2020 22:51:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1965410EE821
	for <blinux-list@redhat.com>; Sun,  1 Mar 2020 22:51:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 72971101A55D
	for <blinux-list@redhat.com>; Sun,  1 Mar 2020 22:51:06 +0000 (UTC)
Received: from smtp4-g21.free.fr (smtp4-g21.free.fr [212.27.42.4]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-371-WlSt7KqRN3qRgrHRcOy9Aw-1; Sun, 01 Mar 2020 17:51:04 -0500
X-MC-Unique: WlSt7KqRN3qRgrHRcOy9Aw-1
Received: from darkstar.slint.fr (unknown [176.172.247.100])
	(Authenticated sender: appartement.cdm)
	by smtp4-g21.free.fr (Postfix) with ESMTPSA id 5CC0819F54D
	for <blinux-list@redhat.com>; Sun,  1 Mar 2020 23:51:02 +0100 (CET)
Subject: Re: Want to try a GUI. Which one is best?
To: blinux-list@redhat.com
References: <20200301111759.GA12551@abilitiessoft>
	<alpine.NEB.2.21.2003010712220.19233@panix1.panix.com>
	<CAO2sX310Obvpt=w1X=1+Tz7eWgXC5aiBz=53nond=1i0PpfSog@mail.gmail.com>
	<20200301173057.GA14419@abilitiessoft>
	<alpine.NEB.2.21.2003011300110.6533@panix1.panix.com>
	<alpine.NEB.2.21.2003011304590.6533@panix1.panix.com>
	<A1240AA4-BC16-4889-86D6-9AA548E30EDC@gmail.com>
	<80de511c-46b2-48ee-47d2-8f4802de9ec0@slint.fr>
Message-ID: <6e6cdd56-46de-fee9-6d31-8c75f326cba1@free.fr>
Date: Sun, 1 Mar 2020 23:51:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <80de511c-46b2-48ee-47d2-8f4802de9ec0@slint.fr>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from base64 to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 021Mp9RT012637
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sCgpEaWRpZXIgU3BhaWVyLCBTbGludCBtYWludGFpbmVyIGhlcmUuCgpUaGlzIGxvb2tz
IHJhdGhlciBjb252b2x1dGVkIHRvIG1lLgoKQSBsb3Qgc2ltcGxlcjoKMS4gSW5zdGFsbCBTbGlu
dCAoc3BlZWNoIGFuZCBicmFpbGxlIGFyZSBlbmFibGVkIGR1cmluZyBpbnN0YWxsYXRpb24pLgpB
Y2NlcHQgdGhlIGRlZmF1bHQgc2V0dGluZ3Mgd2hlbiBhc2tlZCAoc3RhcnQgaW4gY29uc29sZSBt
b2RlLCBjaG9vc2UKTWF0ZSBhcyBkZWZhdWx0IGdyYXBoaWNhbCBlbnZpcm9ubWVudCkuCjIuIFN0
YXJ0IFNsaW50LgpZb3Ugd2lsbCBiZSBpbiBhIGNvbnNvbGUsIHdpdGggc3BlZWNoIGFuZCBCcmFp
bGxlIGFjdGl2ZS4KMy4gVHlwZSAnc3RhcnR4JyB3aGVuIHlvdSB3YW50LgpZb3Ugd2lsbCBiZSBp
biBNYXRlIHdpdGggdGhlIE9yY2Egc2NyZWVuIHJlYWRlciBhY3RpdmUuCgpBdCB0aW1lIG9mIHdy
aXRpbmcgU2xpbnQgc2hpcHMgTWF0ZSAxLjIyLCBob3BlZnVsbHkgd2lsbCBiZSB1cGdyYWRlZCB0
bwoxLjI0IG5leHQgd2Vlay4KClNsaW50IGluY2x1ZGVzIENvbXBpeiwgd2l0aCBhbGwgYWNjZXNz
aWJpbHR5IGZlYXR1cmVzIHNldCB1cC4KClRvIGtub3cgbW9yZSwgcmVhZDoKaHR0cDovL3NsYWNr
d2FyZS51ay9zbGludC94ODZfNjQvc2xpbnQtMTQuMi4xL1JFQURNRS5pbnN0YWxsYXRpb24KQW5k
IHRoZSBkb2NzIGluOgpodHRwOi8vc2xhY2t3YXJlLnVrL3NsaW50L3g4Nl82NC9zbGludC0xNC4y
LjEvZG9jLwpCZWdpbm5pbmcgd2l0aDoKaHR0cDovL3NsYWNrd2FyZS51ay9zbGludC94ODZfNjQv
c2xpbnQtMTQuMi4xL2RvYy9BY2Nlc3NpYmlsaXR5L0FjY2Vzc2liaWxpdHkKClF1ZXN0aW9ucz8g
UmVnaXN0ZXIgdG8gdGhlIFNsaW50IG1haWxpbmcgbGlzdHMgc2VuZGluZyBhbiBlbWFpbCB0bzoK
ZWNhcnRpc0BmcmVlbGlzdHMub3JnCmZyb20gdGhlIGVtYWlsIGFkZHJlc3MgeW91IHdpbGwgdXNl
IHRvIHNlbmQgbWVzc2FnZXMgdG8gdGhlIGxpc3QsIHdpdGgKanVzdCBpbiB0aGUgU3ViamVjdCBs
aW5lOgpqb2luIHNsaW50CgpCZXN0IHJlZ2FyZHMsCkRpZGllcgoKTGUgMDEvMDMvMjAyMCDDoCAy
MTozMCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdCA6Cj4gT3Vj
aC4gQWxsIHRoYXQganVzdCBzZWVtcyBsaWtlIGEgbG90IG9mIHJvdW5kYWJvdXQgdG8gaGF2ZSB0
byBkby4gSSBpbnN0YWxsIGEgZnVsbCBNQVRFIGRlc2t0b3AgYWxvbmcgd2l0aCBPcmNhLCBzZXQg
b3JnLmdub21lLmRlc2t0b3AuYTExeS5hcHBsaWNhdGlvbnMgc2NyZWVuLXJlYWRlci1lbmFibGVk
IGFuZCBvcmcubWF0ZS5pbnRlcmZhY2UgYWNjZXNzaWJpbGl0eSB0cnVlIGlmIG5lY2Vzc2FyeSAg
YW5kIHVzZSB0aGUgbHhkbSBkaXNwbGF5IG1hbmFnZXIgdG8gc3RhcnQgaXQuIEkgdGhlbiBvbmx5
IGhhdmUgdG8gY2hhbmdlIHRocmVlIGxpbmVzIHRvIGdldCBhIGZ1bGx5IGFjY2Vzc2libGUgZGVz
a3RvcCBydW5uaW5nIGF0IGJvb3QgdGltZS4gRmlyc3QsIEkgdW5jb21tZW50IHRoZSBsaW5lIHRo
YXQgYmVnaW5zIHdpdGggYXV0b2xvZ2luIGFuZCBzZXQgaXQgdHJ1ZS4gVGhlbiBJIGNoYW5nZSB0
aGUgYXV0b21hdGljYWxseSBsb2dnZWQgaW4gdXNlciBmcm9tIGRnb2QgdG8gbXkgdXNlcm5hbWUg
YW5kIHVuY29tbWVudCB0aGF0IGxpbmUuIFRoZW4gdGhlIG9ubHkgb3RoZXIgdGhpbmcgSSBuZWVk
IHRvIGRvIGlzIHRvIHVuY29tbWVudCB0aGUgbGluZSB0aGF0IGJlZ2lucyB3aXRoIHNlc3Npb24g
YW5kIGNoYW5nZSBpdCBmcm9tIC91c3IvYmluL3N0YXJ0bHhkZSB0byAvdXNyL2Jpbi9tYXRlLXNl
c3Npb24uIFRoaXMgYXBwcm9hY2ggb2YgY291cnNlIGRvZXNuJ3Qgd29yayBhbGwgdGhhdCB3ZWxs
IG9uIG11bHRpLXVzZXIgc3lzdGVtcywgYnV0IGluIG1vc3QgY2FzZXMgaXQncyBhbGwgeW91IG5l
ZWQuIEluIHRoaXMgd2F5LCB5b3UgYWx3YXlzIHN0YXJ0IHdpdGggYSBkZXNrdG9wIHJ1bm5pbmcs
IGFuZCBpZiB5b3UgbmVlZCB0byBkbyBhbnl0aGluZyBpbiBhIHRlcm1pbmFsLCB5b3UgY2FuIGp1
c3Qgb3BlbiBtYXRlLXRlcm1pbmFsLiBJIGZpbmQgbXlzZWxmIHVzaW5nIHRoZSB0ZXJtaW5hbCBy
YXRoZXIgaW5mcmVxdWVudGx5IHRoZXNlIGQKPiAgYXlzIGZvciBhbnl0aGluZyBvdGhlciB0aGFu
IGJ1aWxkaW5nIHNvdXJjZSBjb2RlLCBjb21wbGV4IGZpbGUgbWFuYWdlbWVudCB0aGF0IHN0aWxs
IHdvcmtzIGJldHRlciBmcm9tIGEgc2hlbGwgYW5kIHBhY2thZ2UgbWFuYWdlbWVudCwgYWx0aG91
Z2ggdGhlcmUgYXJlIHBhY2thZ2UgbWFuYWdlbWVudCBhcHBsaWNhdGlvbnMgYXZhaWxhYmxlIGZv
ciBtb3N0IGRpc3Ryb3MgdGhhdCBkb24ndCByZXF1aXJlIGEgdGVybWluYWwgYW5kIHdvcmsgcmF0
aGVyIHdlbGwsIGVzcGVjaWFsbHkgZm9yIGZpbmRpbmcgbmV3IHNvZnR3YXJlLiBNb3N0IGFwcGxp
Y2F0aW9ucyB3b3JrIHNvIHdlbGwgd2l0aCBPcmNhIHRoYXQgSSBoYXZlIGZvdW5kIGRlc2t0b3Ag
YXBwbGljYXRpb25zIGdlbmVyYWxseSBlYXNpZXIgdG8gdXNlIHRoYW4gY2hhdHR5IHRlcm1pbmFs
IG91dHB1dCBhbmQgcGFnZS1ieS1wYWdlIHJlYWRpbmcgYW5kIHRoZSBsaWtlLgo+Cj4gT24gTWFy
Y2ggMSwgMjAyMCAxOjA3OjMwIFBNIEVTVCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vz
c2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+IFRoZSBtb3N0IHVzZWZ1bCBh
cHByb2FjaCBmb3IgYWNjZXNzaWJpbGl0eSB1c2VycyB1bmxlc3MgdGhleSB1c2UgYQo+PiBtb3Vz
ZQo+PiBpcyB0byBpbnN0YWxsIHN0YXJ0eCBhbmQgcmF0cG9pc29uIGFuZCB0aGVuIGhhdmUgcmF0
cG9pc29uIHJ1biB3aGljaAo+PiBicmluZ3MgdXAgc3RhcnR4IGFuZCBzdGFydHggdGhlbiBicmlu
Z3MgdXAgbWF0ZS4gIFRoZSByYXRwb2lzb24gaXMgYQo+PiBwYWNrYWdlIHdoaWNoIHdoZW4geW91
IGdldCBpdCB3b3JraW5nIG1ha2VzIHN0YXJ0eCBhY2Nlc3NpYmxlIG1vcmUgc28KPj4gdGhhbiBp
dCBhbHJlYWR5IGlzLgo+Pgo+PiBPbiBTdW4sIDEgTWFyIDIwMjAsIExpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+Cj4+PiBEYXRlOiBTdW4sIDEgTWFyIDIwMjAgMTM6
MDI6NTEKPj4+IEZyb206IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51
eC1saXN0QHJlZGhhdC5jb20+Cj4+PiBUbzogTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vz
c2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4KPj4+IFN1YmplY3Q6IFJlOiBXYW50IHRvIHRy
eSBhIEdVSS4gV2hpY2ggb25lIGlzIGJlc3Q/Cj4+Pgo+Pj4gVGhpcyBpcyByZWFsbHkgc29tZXRo
aW5nIGRlYmlhbiBkb2VzIG5vdCBwcm92aWRlLiAgQXJjaGxpbnV4IHRoYXQgY2FuCj4+IGJlCj4+
PiBkb25lIHdpdGggaW5zdGFsbGluZyBhIGZldyBvZiB0aGUgY29ycmVjdCBwYWNrYWdlcyBhbmQg
SSBkb24ndAo+PiByZW1lbWJlcgo+Pj4gdGhlIGxpc3Qgbm93IGRpZG4ndCBzYXZlIGl0IGluIGJy
YWlsbGUuICBOb3csIHdpdGggc2xpbnQgeW91IGNhbiBkbwo+PiBhbGwKPj4+IG9mIHRoYXQgYW5k
IHRoYXQncyBvbmUgb2YgdGhlIGluc3RhbGxhdGlvbiBjaG9pY2VzLiAgU2xpbnQgZG9lc24ndAo+
PiBoYXZlCj4+PiBnbm9tZSBlaXRoZXIgYnV0IGRvZXMgaGF2ZSBtYXRlLgo+Pj4gaHR0cHM6Ly9z
bGludC5mci8gaXMgdGhlIGZpcnN0IHVybCBhbmQgc2VhcmNoIHRoZSBwYWdlIGZvcgo+PiBhY2Nl
c3NpYmlsaXR5Cj4+PiBhbmQgcmVhZCB3aGF0IHlvdSBmaW5kLgo+Pj4KPj4+IE9uIFN1biwgMSBN
YXIgMjAyMCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+Cj4+
Pj4gRGF0ZTogU3VuLCAxIE1hciAyMDIwIDEyOjMwOjU3Cj4+Pj4gRnJvbTogTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4KPj4+PiBUbzog
TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNv
bT4KPj4+PiBTdWJqZWN0OiBSZTogV2FudCB0byB0cnkgYSBHVUkuIFdoaWNoIG9uZSBpcyBiZXN0
Pwo+Pj4+Cj4+Pj4gSGVsbG8sCj4+Pj4KPj4+PiBUaGFua3MgZm9yIGFsbCB5b3VyIHN1Z2dlc3Rp
b25zLiBJIGhhdmUgRGViaWFuIEJ1c3RlciwgY29tbWFuZC1saW5lCj4+IG9ubHkuIEkgbWF5IGp1
c3Qgd2FpdCB1bnRpbCB0aGUgbmV4dCBEZWJpYW4gdGVzdGluZyBpcyBhdmFpbGFibGUgYW5kCj4+
IHNlZSBpZiB0aGV5IGluY2x1ZGUgTWF0ZS4KPj4+PiBJCj4+Pj4gd2lsbCBiZSB1c2luZyBicmx0
dHksIGFuZCBubyBzcGVlY2guCj4+Pj4KPj4+PiBUaGlzIGxlYXZlcyBvbmUgY29uY2VybiBpbiBt
eSBvcmlnaW5hbCBtZXNzYWdlIGZvciBkaXNjdXNzaW9uLiBJCj4+IHdhbnQgRGViaWFuIHRvIGJv
b3QgaW50byB0aGUgY29tbWFuZC1saW5lLCBidXQgSSB3YW50IHRvIGhhdmUgYSBjb21tYW5kCj4+
IG9yIHNjcmlwdCBmb3Igc3RhcnRpbmcKPj4+PiB0aGUgR1VJIHdoZW4gSSBuZWVkIGl0Lgo+Pj4+
Cj4+Pj4gVGhhbmtzLAo+Pj4+IEpvaG4gSi4gQm95ZXIgPGpvaG4uYm95ZXJAYWJpbGl0aWVzc29m
dC5vcmc+Cj4+Pj4KPj4+PiBPbiBTdW4sIE1hciAwMSwgMjAyMCBhdCAwMTo1NDowN1BNICswMDAw
LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbAo+PiBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4+PiBCZXN0
IEkgY2FuIHRlbGwsIE1hdGUgMS4yNCBpcyBjdXJyZW50bHkgYXZhaWxhYmxlIGluIGJvdGggRGVi
aWFuCj4+Pj4+IFRlc3RpbmcoYWthIEJ1bGwncyBFeWUgd2hpY2ggd2lsbCBldmVudHVhbGx5IGJl
Y29tZSBEZWJpYW4gMTEpCj4+IGFuZAo+Pj4+PiBEZWJpYW4gVW5zdGFibGUoYWthIFNpZCkuCj4+
Pj4+Cj4+Pj4+IEl0J3MgdW5saWtlbHkgc29tZXRoaW5nIGFzIGJpZyBhcyBhIG5ldyB2ZXJzaW9u
IG9mIE1hdGUgd2lsbCBtYWtlCj4+IGl0Cj4+Pj4+IGludG8gRGViaWFuIDkgYWthIFN0cmV0Y2gg
b3Igb2xkc3RhYmxlIG9yIERlYmlhbiAxMCBha2EgQnVzdGVyIG9yCj4+Pj4+IFN0YWJsZSBhcyBE
ZWJpYW4gcHJpb3J0aXplcyBzdGFiaWxpdHkgb3ZlciBjdXR0aW5nIGVkZ2UsIHRob3VnaAo+PiBp
dAo+Pj4+PiBtaWdodCBtYWtlIGl0IGludG8gYmFja3BvcnRzKG1vcmUgbGlrZWx5IGZvciBCdXN0
ZXIgdGhhbiBmb3IKPj4gU3RyZXRjaCwKPj4+Pj4gYnV0IEkgY29uZmVzcyB0byBub3Qga25vd2lu
ZyBob3cgbG9uZyBEZWJpYW4gc3VwcG9ydHMgT2xkc3RhYmxlCj4+IHdoZW4gYQo+Pj4+PiBuZXcg
U3RhYmxlIGlzIHJlbGVhc2VkKS4KPj4+Pj4KPj4+Pj4gVGhhdCBzYWlkLCB3aGlsZSBPcmNhLCB0
aGUgcHJpbWFyeSwgYW5kIHBvc3NpYmx5IG9ubHksIGdyYXBoaWNhbAo+Pj4+PiBzY3JlZW4gcmVh
ZGVyIGZvciBMaW51eCwgaXMgb2ZmaWNpYWxseSBwYXJ0IG9mIEdub21lIGFuZAo+PiBwZXJzdW1h
Ymx5Cj4+Pj4+IG9wdGltaXplZCBmb3IgdGhhdCBlbnZpcm9ubWVudCwgYW5kIHByb2JhYmx5IHdv
cmtzIHNvIHdlbGwgd2l0aAo+PiBNYXRlCj4+Pj4+IGR1ZSB0byBNYXRlJ3Mgb3JpZ2lucyBhcyBh
IEdub21lIGZvcmsoYXMgSSB1bmRlcnN0YW5kIGl0LCBHbm9tZSAzCj4+Pj4+IGJyb3VnaHQgbWFu
eSBjb250cm92ZXJzaWFsIGNoYW5nZXMgdG8gbG9vayBhbmQgZmVlbCBhbmQgTWF0ZQo+PiBzdGFy
dGVkYXMKPj4+Pj4gYSB3YXkgdG8ga2VlcCB0aGUgR25vbWUgMi54IGxvb2sgYW5kIGZlZWwgaW4g
YW4gdXBkYXRlZAo+PiBlbnZpcm9ubWVudCksCj4+Pj4+IE9yY2Egc2hvdWxkLCBpbiB0aGVvcnks
IGJlIGFibGUgdG8gd29yayB3aXRoIGFueSBHVEstYmFzZWQKPj4gRGVza3RvcAo+Pj4+PiBFbnZp
cm9ubWVudCBvciBXaW5kb3cgTWFuYWdlciwgdGhvdWdoIGFueXRoaW5nIFFULWJhc2VkKEtERSBj
aGllZgo+Pj4+PiBhbW9uZyB0aGVtKSBpcyBjdXJyZW50bHkgYSBiaXQgaGl0IG9yIG1pc3MuCj4+
Pj4+Cj4+Pj4+IEdub21lIG9yIE1hdGUgbWlnaHQgYmUgdGhlIGJlc3Qgb3B0aW9ucyBmb3IgYSBi
ZWdpbm5lciBhcyB0aGV5J3JlCj4+IHRoZQo+Pj4+PiBtb3N0IHdlbGwgZG9jdW1lbnRlZCBERXMg
Zm9yIHVzaW5nIHRoZW0gd2l0aCBPcmNhLCBidXQgS25vcHBpeAo+PiB1c2luZyBhCj4+Pj4+IGNv
bWJpbmF0aW9uIG9mIExYREUgYW5kIE9yY2Egd2hlbiBsYXVuY2hpbmcgYSBmdWxsIERlc2t0b3Ag
c2VlbXMKPj4gdG8KPj4+Pj4gd29yayB3ZWxsLCBhbmQgSSd2ZSBoZWFyZCBwZW9wbGUgaGF2ZSBo
YWQgc3VjY2VzcyB3aXRoIHRoZQo+PiByYXRwb2lzb24KPj4+Pj4gd2luZG93IE1hbmFnZXIuCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly93d3cucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

